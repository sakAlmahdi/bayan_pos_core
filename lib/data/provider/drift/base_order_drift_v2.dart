import 'package:bayan_pos_core/data/entity/drift_db.dart';
import 'package:bayan_pos_core/data/repository/base_order_repo_v2.dart';
import 'package:drift/drift.dart';
import 'package:uuid/uuid.dart';
import 'package:synchronized/synchronized.dart';
import '../../model/new/order/invoice_result_v2.dart';
import '../../utils/zatca_helper.dart';

class BaseOrderDriftV2 extends BaseOrderRepoV2 {
  final MyDatabase db;
  BaseOrderDriftV2(this.db);

  /// قفل برمجي لضمان معالجة الفواتير واحداً تلو الآخر (FIFO) لمنع التعارضات المتزامنة
  static final _invoiceLock = Lock();

  @override
  Future<InvoiceResultV2> finalizeInvoice(String orderRef) async {
    // جلب الطلب المحدث في النهاية لترجيعه
    OrderEntityV2Data? finalOrderData;

    // استخدام القفل البرمجي قبل الدخول في معاملة قاعدة البيانات
    await _invoiceLock.synchronized(() async {
      await db.transaction(() async {
        // 1. جلب الطلب الحالي والتحقق من Idempotency
        final orderQuery = db.select(db.orderEntityV2)
          ..where((tbl) => tbl.orderRef.equals(orderRef));
        final order = await orderQuery.getSingleOrNull();

        if (order == null) throw Exception('الطلب غير موجود: $orderRef');

        // إذا كان الطلب مفوتر مسبقاً، نقوم بترجيعه كما هو
        if (order.invoiceNumber != null) {
          finalOrderData = order;
          return;
        }

        // 2. جلب معرف الفرع (Branch ID) لضمان تسلسل موحد
        final activation =
            await db.select(db.activationInfoEntity).getSingleOrNull();
        final String branchIdentifier = activation?.branch ?? "GLOBAL_BRANCH";

        // 3. جلب أو إنشاء سجل التسلسل للفرع (Locking for Concurrency on Branch level)
        var sequence = await (db.select(db.invoiceSequenceV2)
              ..where((tbl) => tbl.branchId.equals(branchIdentifier)))
            .getSingleOrNull();

        if (sequence == null) {
          // أول فاتورة لهذا الفرع
          await db
              .into(db.invoiceSequenceV2)
              .insert(InvoiceSequenceV2Companion.insert(
                branchId: branchIdentifier,
                lastICV: const Value(0),
                lastInvoiceNumber: const Value(1000),
                lastHash: const Value("0"),
                lastUpdatedAt: Value(DateTime.now()),
              ));

          sequence = await (db.select(db.invoiceSequenceV2)
                ..where((tbl) => tbl.branchId.equals(branchIdentifier)))
              .getSingle();
        }

        // 4. حساب القيم الجديدة
        final int nextICV = sequence.lastICV + 1;
        final int nextInvoiceNumber = sequence.lastInvoiceNumber + 1;
        final String prevHash = sequence.lastHash;
        final String uuid = const Uuid().v4();

        // إنشاء الـ Hash الخاص بهيئة الزكاة للمرحلة الثانية
        final currentHash = ZatcaHelper.generateInvoiceHash(
          orderRef: orderRef,
          order: order,
          icv: nextICV,
          prevHash: prevHash,
        );

        // 5. تحديث جدول التسلسل (Atomic Update for the branch)
        await (db.update(db.invoiceSequenceV2)
              ..where((tbl) => tbl.branchId.equals(branchIdentifier)))
            .write(InvoiceSequenceV2Companion(
          lastICV: Value(nextICV),
          lastInvoiceNumber: Value(nextInvoiceNumber),
          lastHash: Value(currentHash),
          lastUpdatedAt: Value(DateTime.now()),
        ));

        // 6. تحديث سجل الطلب ببيانات الفاتورة النهائية
        await (db.update(db.orderEntityV2)
              ..where((tbl) => tbl.orderRef.equals(orderRef)))
            .write(OrderEntityV2Companion(
          invoiceNumber: Value(nextInvoiceNumber.toString()),
          invoiceUUID: Value(uuid),
          invoiceCounterValue: Value(nextICV),
          invoiceHash: Value(currentHash),
          previousInvoiceHash: Value(prevHash),
          printState: const Value(2), // تم الفوترة
        ));

        // جلب البيانات النهائية بعد التحديث لضمان دقتها
        finalOrderData = await (db.select(db.orderEntityV2)
              ..where((tbl) => tbl.orderRef.equals(orderRef)))
            .getSingle();
      });
    });

    if (finalOrderData == null) {
      throw Exception('فشل في استعادة بيانات الفاتورة النهائية للطلب: $orderRef');
    }

    // تحويل البيانات إلى المودل المختصر
    return InvoiceResultV2(
      orderRef: finalOrderData!.orderRef,
      invoiceNumber: finalOrderData!.invoiceNumber,
      invoiceUUID: finalOrderData!.invoiceUUID,
      invoiceCounterValue: finalOrderData!.invoiceCounterValue,
      invoiceHash: finalOrderData!.invoiceHash,
      previousInvoiceHash: finalOrderData!.previousInvoiceHash,
      finalAmount: finalOrderData!.finalAmount,
      invoiceDate: finalOrderData!.startDate,
    );
  }
}
