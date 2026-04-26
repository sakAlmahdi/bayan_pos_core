import 'package:drift/drift.dart' hide JsonTypeConverter;
import 'drift_db.dart';

/// جدول الطلبات الموحد UnifiedOrders
/// يجمع بين OrderC و OrderResponseDto ويحتوي على كافة المعلومات التالية:
///
/// 🔹 القيم المالية:
/// - totalPrice: السعر الإجمالي قبل أي خصومات أو ضرائب
/// - discountAmount: مجموع الخصومات المطبقة
/// - netTotalPrice: السعر بعد الخصومات وقبل الضرائب
/// - chargeAmount, taxAmount, finalAmount: الرسوم، الضريبة، والمبلغ النهائي بعد كل شيء
///
/// 🔹 الشحن والخصومات المرتبطة به:
/// - shippingAmount: تكلفة الشحن
/// - shippingDiscountAmount & Percentage: خصومات الشحن
///
/// 🔹 الحقول التشغيلية:
/// - orderType, orderSource, status, paymentStatus, refundStatus, deliveryStatus
///
/// 🔹 معلومات الجدول:
/// - tableId, tableCaption, numberVisitor
///
/// 🔹 بيانات مرتبطة (كـ JSON + ID):
/// - customerId & customerJson
/// - addressId & addressJson
/// - promotionId & promotionJson
/// - giftCardJson
///
/// 🔹 الحقول الزمنية والتقنية:
/// - startDate, endTime, timeOfReceipt
/// - createdOn, createdBy, lastModifiedOn, lastModifiedBy
/// - checksum, masterChecksum, serverChecksum
///
/// ✅ مزايا النموذج:
/// - جاهز للمزامنة (يحفظ كـ JSON)
/// - يدعم التقارير والاستعلام السريع باستخدام الـ IDs
/// - سهل الربط مع API أو ORM

class OrderEntityV2 extends Table {
  // Common fields
  RealColumn get totalPrice => real()();
  RealColumn get discountAmount => real().nullable()();
  RealColumn get netTotalPrice => real()();
  RealColumn get chargeAmount => real().nullable()();
  RealColumn get taxableAmount => real().nullable()();
  RealColumn get taxAmount => real().nullable()();
  RealColumn get finalAmount => real()();
  // Payment summaries (base currency)
  RealColumn get paidAmount => real().nullable()();
  RealColumn get dueAmount => real().nullable()();
  RealColumn get changeAmount => real().nullable()();
  RealColumn get shippingAmount => real().nullable()();
  RealColumn get shippingDiscountAmount => real().nullable()();
  RealColumn get shippingDiscountPercentage => real().nullable()();
  RealColumn get productDiscountAmount => real().nullable()();
  RealColumn get discountPercentage => real().nullable()();
  RealColumn get totalDiscountAmount => real().nullable()();
  RealColumn get promotionDiscountAmount => real().nullable()();
  RealColumn get timeEventDiscountAmount => real().nullable()();
  RealColumn get timeEventChargeAmount => real().nullable()();
  RealColumn get roundingDecimalAmount => real().nullable()();
  TextColumn get note => text().nullable()();

  // From OrderC
  TextColumn get orderRef => text()();
  TextColumn get deviceId => text().nullable()();
  DateTimeColumn get startDate => dateTime().nullable()();
  DateTimeColumn get endTime => dateTime().nullable()();
  DateTimeColumn get timeOfReceipt => dateTime().nullable()();
  IntColumn get orderType => integer().nullable()();
  IntColumn get orderSource => integer().nullable()();
  IntColumn get status => integer().nullable()();
  IntColumn get deliveryStatus => integer().nullable()();
  IntColumn get paymentStatus => integer().nullable()();
  IntColumn get refundStatus => integer().nullable()();
  TextColumn get shiftId => text().nullable()();
  TextColumn get tillId => text().nullable()();
  TextColumn get tableId => text().nullable()();
  TextColumn get tableCaption => text().nullable()();
  IntColumn get numberVisitor => integer().nullable()();
  RealColumn get minimumReservationPrice => real().nullable()();
  TextColumn get callName => text().nullable()();
  TextColumn get callNumber => text().nullable()();
  TextColumn get cancelReasonId => text().nullable()();
  TextColumn get msgCancel => text().nullable()();
  TextColumn get kitchenNote => text().nullable()();
  TextColumn get casherNote => text().nullable()();
  TextColumn get supervisorId => text().nullable()();
  TextColumn get parentOrderId => text().nullable()();
  IntColumn get splitIndex => integer().nullable()();
  TextColumn get checksum => text().nullable()();
  TextColumn get masterChecksum => text().nullable()();
  TextColumn get serverChecksum => text().nullable()();
  RealColumn get totalCalories => real().nullable()();
  BoolColumn get priceIncludeTax => boolean().nullable()();

  // JSON-embedded fields
  TextColumn get customerId => text().nullable()();
  TextColumn get customerJson =>
      text().map(const JsonTypeConverter()).nullable()();
  TextColumn get addressId => text().nullable()();
  TextColumn get addressJson =>
      text().map(const JsonTypeConverter()).nullable()();
  TextColumn get promotionId => text().nullable()();
  TextColumn get promotionJson =>
      text().map(const JsonTypeConverter()).nullable()();
  TextColumn get giftCardJson =>
      text().map(const JsonTypeConverter()).nullable()();

  // Metadata
  TextColumn get createdOn => text().nullable()();
  TextColumn get createdBy => text().nullable()();
  TextColumn get lastModifiedOn => text().nullable()();
  TextColumn get lastModifiedBy => text().nullable()();
  TextColumn get openedOn => text().nullable()();
  TextColumn get openedBy => text().nullable()();
  TextColumn get closedBy => text().nullable()();
  TextColumn get deliveryCompanyId => text().nullable()();
  TextColumn get deliveryCompanyJson =>
      text().map(const JsonTypeConverter()).nullable()();

  // Print State Management Fields (added for POS printing and payment workflow)
  /// حالة الطباعة: 0=غير مطبوع، 1=مطبوع قبل السداد، 2=مدفوع
  IntColumn get printState =>
      integer().nullable().withDefault(const Constant(0))();

  /// عدد مرات الطباعة قبل السداد
  IntColumn get prePaymentPrintCount =>
      integer().nullable().withDefault(const Constant(0))();

  /// عدد مرات الطباعة بعد السداد
  IntColumn get postPaymentPrintCount =>
      integer().nullable().withDefault(const Constant(0))();

  /// تاريخ أول طباعة قبل السداد
  DateTimeColumn get firstPrintedAt => dateTime().nullable()();

  /// تاريخ آخر طباعة
  DateTimeColumn get lastPrintedAt => dateTime().nullable()();

  /// معرف آخر من قام بالطباعة
  TextColumn get lastPrintedBy => text().nullable()();

  /// هل الطلب مقفل ضد التعديل؟
  BoolColumn get isLocked =>
      boolean().nullable().withDefault(const Constant(false))();

  /// تاريخ القفل
  DateTimeColumn get lockedAt => dateTime().nullable()();

  /// سبب إلغاء الطباعة
  TextColumn get unprintReason => text().nullable()();

  /// تاريخ إلغاء الطباعة
  DateTimeColumn get unprintedAt => dateTime().nullable()();

  /// من قام بإلغاء الطباعة
  TextColumn get unprintedBy => text().nullable()();

  // حقول الجدولة (Scheduled Orders)
  /// هل الطلب مجدول للتنفيذ في وقت لاحق؟
  BoolColumn get isScheduled =>
      boolean().nullable().withDefault(const Constant(false))();

  /// التاريخ والوقت المحدد لتنفيذ الطلب المجدول
  DateTimeColumn get scheduledFor => dateTime().nullable()();

  /// معرف المستخدم الذي قام بجدولة الطلب
  TextColumn get scheduledBy => text().nullable()();

  /// تاريخ ووقت جدولة الطلب
  DateTimeColumn get scheduledAt => dateTime().nullable()();

  /// حالة الطلب المجدول (0=معلق، 1=جاهز للتفعيل، 2=تم التفعيل، 3=ملغي، 4=منتهي)
  IntColumn get scheduledStatus =>
      integer().nullable().withDefault(const Constant(0))();

  /// تاريخ ووقت تفعيل الطلب المجدول
  DateTimeColumn get activatedAt => dateTime().nullable()();

  /// معرف المستخدم الذي قام بتفعيل الطلب
  TextColumn get activatedBy => text().nullable()();

  /// ملاحظات حول الجدولة
  TextColumn get scheduledNotes => text().nullable()();

  // ZATCA Phase 2 Invoice Fields
  /// رقم الفاتورة (متسلسل تصاعدياً على مستوى الفرع أو الجهاز)
  TextColumn get invoiceNumber => text().nullable()();

  /// معرف الفاتورة العالمي الفريد (UUID v4)
  // تم تحديد الاسم يدوياً ليطابق الهجرة في drift_db.dart ويمنع Drift من توليد invoice_u_u_i_d
  TextColumn get invoiceUUID => text().nullable().named('invoice_uuid')();

  /// عداد الفواتير (ICV) يبدأ من 1 ويزيد بمقدار 1 لكل فاتورة
  IntColumn get invoiceCounterValue => integer().nullable()();

  /// الـ Hash الخاص بالفاتورة الحالية لضمان عدم التلاعب
  TextColumn get invoiceHash => text().nullable()();

  /// الـ Hash الخاص بالفاتورة السابقة لإنشاء سلسلة مترابطة
  TextColumn get previousInvoiceHash => text().nullable()();

  @override
  Set<Column<Object>>? get primaryKey => {orderRef};
}

/// جدول منتجات الطلبات الموحد OrderProductEntityV2
/// يمثل كل منتج في الطلب مع ارتباطه بـ OrderEntityV2 عبر orderId
class OrderProductEntityV2 extends Table {
  TextColumn get orderRef => text()
      .nullable()
      .references(OrderEntityV2, #orderRef, onDelete: KeyAction.cascade)();
  TextColumn get productRef => text().nullable()();
  IntColumn get tableRowIndex => integer()();
  TextColumn get name => text()();
  TextColumn get productId => text()();
  TextColumn get unitId => text()();
  RealColumn get quantity => real()();
  RealColumn get freeQuantity => real().nullable()();
  RealColumn get unitPrice => real()();
  RealColumn get totalPrice => real()();
  RealColumn get discountAmount => real().nullable()();
  RealColumn get discountPercentage => real().nullable()();
  RealColumn get netUnitPrice => real()();
  RealColumn get netTotalPrice => real()();
  RealColumn get netUnitPriceExcludeTax => real().nullable()();
  RealColumn get netTotalPriceExcludeTax => real().nullable()();
  RealColumn get orderDiscountAmount => real().nullable()();
  RealColumn get taxableAmount => real().nullable()();
  RealColumn get taxAmount => real().nullable()();
  RealColumn get finalAmount => real()();
  RealColumn get roundingDecimalAmount => real().nullable()();
  TextColumn get notes => text().nullable()();
  TextColumn get departmentId => text().nullable()();
  TextColumn get categoryId => text().nullable()();

  @override
  Set<Column> get primaryKey => {orderRef, productRef};
}

// جدول سعر الوحدة للمنتج في الطلب
class OrderProductUnitPriceV2 extends Table {
  TextColumn get orderRef => text()
      .nullable()
      .references(OrderEntityV2, #orderRef, onDelete: KeyAction.cascade)();
  TextColumn get productRef => text().nullable()();
  RealColumn get unitPrice => real().nullable()();
  TextColumn get description => text().nullable()();
  TextColumn get unitId => text().nullable()();
  TextColumn get productUnitId => text().nullable()();
  TextColumn get productUnitPriceListId => text().nullable()();
  TextColumn get productUnitPriceListSlapId => text().nullable()();
  TextColumn get name => text().nullable()();
  TextColumn get fName => text().nullable()();

  @override
  Set<Column> get primaryKey => {orderRef, productRef};
}

// جدول التسعير المتدرج
class OrderProductTieredPricingV2 extends Table {
  TextColumn get orderRef => text()
      .nullable()
      .references(OrderEntityV2, #orderRef, onDelete: KeyAction.cascade)();
  TextColumn get productRef => text().nullable()();
  TextColumn get tieredPricingId => text().nullable()();
  TextColumn get name => text().nullable()();
  RealColumn get unitPrice => real().nullable()();
  RealColumn get netUnitPrice => real().nullable()();

  @override
  Set<Column> get primaryKey => {orderRef, productRef};
}

// جدول أحداث الوقت
class OrderProductTimeEventV2 extends Table {
  TextColumn get orderRef => text()
      .nullable()
      .references(OrderEntityV2, #orderRef, onDelete: KeyAction.cascade)();
  TextColumn get productRef => text().nullable()();
  TextColumn get timeEventId => text()();
  TextColumn get name => text().nullable()();
  RealColumn get unitPrice => real()();
  RealColumn get netUnitPrice => real()();

  @override
  Set<Column> get primaryKey => {orderRef, productRef};
}

// جدول الخصومات
class OrderProductDiscountV2 extends Table {
  TextColumn get orderRef => text()
      .nullable()
      .references(OrderEntityV2, #orderRef, onDelete: KeyAction.cascade)();
  TextColumn get productRef => text().nullable()();
  TextColumn get name => text().nullable()();
  TextColumn get fName => text().nullable()();
  RealColumn get discountAmount => real().nullable()();
  RealColumn get discountPercentage => real().nullable()();
  TextColumn get discountType => text().nullable()();
  TextColumn get discountId => text().nullable()();

  @override
  Set<Column> get primaryKey => {orderRef, productRef};
}

// جدول معلومات العروض الترويجية
class OrderProductPromotionInfoV2 extends Table {
  TextColumn get orderRef => text()
      .nullable()
      .references(OrderEntityV2, #orderRef, onDelete: KeyAction.cascade)();
  TextColumn get productRef => text().nullable()();
  RealColumn get notAppliesQuantity => real().nullable()();
  RealColumn get appliesAsPurchaseQuantity => real().nullable()();
  RealColumn get appliesAsDiscountQuantity => real().nullable()();
  RealColumn get promotionDiscountAmount => real().nullable()();
  RealColumn get promotionDiscountPercentage => real().nullable()();
  TextColumn get promotionsJson => text()
      .map(const JsonTypeConverter())
      .nullable()(); // يمكن لاحقاً فصلها لجداول

  @override
  Set<Column> get primaryKey => {orderRef, productRef};
}

// جدول الرسوم
class OrderProductChargeV2 extends Table {
  TextColumn get orderRef => text()
      .nullable()
      .references(OrderEntityV2, #orderRef, onDelete: KeyAction.cascade)();
  TextColumn get productRef => text().nullable()();
  TextColumn get chargeId => text().nullable()();
  TextColumn get name => text().nullable()();
  RealColumn get amount => real().nullable()();
  RealColumn get percentage => real().nullable()();

  @override
  Set<Column> get primaryKey => {orderRef, productRef, chargeId};
}

// جدول الضرائب
class OrderProductTaxInfoV2 extends Table {
  TextColumn get orderRef => text()
      .nullable()
      .references(OrderEntityV2, #orderRef, onDelete: KeyAction.cascade)();
  TextColumn get productRef => text().nullable()();
  TextColumn get modifierId => text().nullable()();
  TextColumn get optionId => text().nullable()();
  RealColumn get taxableAmount => real().nullable()();
  RealColumn get taxAmount => real().nullable()();
  RealColumn get taxPercentage => real().nullable()();
  TextColumn get taxGroupId => text().nullable()();

  @override
  Set<Column> get primaryKey => {orderRef, productRef};
}

// جدول ضرائب رسوم المنتج في الطلب
class OrderProductChargeTaxV2 extends Table {
  TextColumn get orderRef => text()
      .nullable()
      .references(OrderEntityV2, #orderRef, onDelete: KeyAction.cascade)();
  TextColumn get productRef => text().nullable()();
  TextColumn get taxId => text().nullable()();
  TextColumn get name => text().nullable()();
  RealColumn get amount => real().nullable()();
  RealColumn get percentage => real().nullable()();

  @override
  Set<Column> get primaryKey => {orderRef, productRef, taxId};
}

// جدول تفاصيل أنواع الضرائب لكل رسم على منتج الطلب
class OrderProductChargeTaxInfoV2 extends Table {
  TextColumn get orderRef => text()
      .nullable()
      .references(OrderEntityV2, #orderRef, onDelete: KeyAction.cascade)();
  TextColumn get productRef => text().nullable()();
  TextColumn get taxTypeId => text().nullable()();
  TextColumn get taxTypeName => text().nullable()();
  RealColumn get taxAmount => real().nullable()();
  RealColumn get taxPercentage => real().nullable()();
  TextColumn get taxGroupId => text().nullable()();

  @override
  Set<Column> get primaryKey => {orderRef, productRef, taxTypeId};
}

// جدول أنواع الضرائب المطبقة على منتج الطلب
class OrderProductTaxTypeV2 extends Table {
  TextColumn get productRef => text().nullable()();
  TextColumn get modifierId => text().nullable()();
  TextColumn get optionId => text().nullable()();
  TextColumn get taxAccount => text().nullable()();
  TextColumn get taxCode => text().nullable()();
  TextColumn get orderRef => text()
      .nullable()
      .references(OrderEntityV2, #orderRef, onDelete: KeyAction.cascade)();
  TextColumn get taxTypeId => text().nullable()();
  TextColumn get taxTypeName => text().nullable()();
  RealColumn get taxAmount => real().nullable()();
  RealColumn get taxPercentage => real().nullable()();
  RealColumn get taxableAmount => real()();
  TextColumn get taxGroupId => text().nullable()();
  BoolColumn get isTaxExempt => boolean().nullable()();
  BoolColumn get isZeroTax => boolean().nullable()();
  BoolColumn get isNotApplyForThisCustomer => boolean().nullable()();
  BoolColumn get isNotApplyForThisOrderType => boolean().nullable()();
  BoolColumn get isNotApplyForThisPeriod => boolean().nullable()();

  @override
  Set<Column> get primaryKey => {orderRef, productRef, taxTypeId};
}

// جدول خصومات الطلب
class OrderDiscountV2 extends Table {
  TextColumn get orderRef => text()
      .nullable()
      .references(OrderEntityV2, #orderRef, onDelete: KeyAction.cascade)();
  TextColumn get discountId => text().nullable()();
  TextColumn get name => text().nullable()();
  TextColumn get fName => text().nullable()();
  RealColumn get totalPrice => real().nullable()();
  RealColumn get discountAmount => real().nullable()();
  RealColumn get discountPercentage => real().nullable()();
  RealColumn get discountAmountPerUnit => real().nullable()();
  TextColumn get discountType => text().nullable()();
  BoolColumn get taxable => boolean().nullable()();
  TextColumn get notes => text().nullable()();

  @override
  Set<Column> get primaryKey => {orderRef, discountId};
}

// جدول العروض الترويجية للطلب
class OrderPromotionAppliesV2 extends Table {
  TextColumn get orderRef => text()
      .nullable()
      .references(OrderEntityV2, #orderRef, onDelete: KeyAction.cascade)();
  TextColumn get promotionId => text().nullable()();
  TextColumn get name => text().nullable()();
  RealColumn get totalPrice => real().nullable()();
  RealColumn get discountAmount => real().nullable()();
  RealColumn get discountPercentage => real().nullable()();

  @override
  Set<Column> get primaryKey => {orderRef, promotionId};
}

// جدول بطاقات الهدايا للطلب
class OrderPromotionGiftCardV2 extends Table {
  TextColumn get orderRef => text()
      .nullable()
      .references(OrderEntityV2, #orderRef, onDelete: KeyAction.cascade)();
  TextColumn get name => text().nullable()();
  TextColumn get fName => text().nullable()();
  TextColumn get barcode => text().nullable()();
  TextColumn get reference => text().nullable()();
  RealColumn get price => real().nullable()();

  @override
  Set<Column> get primaryKey => {orderRef, reference};
}

// جدول رسوم الطلب
class OrderChargeV2 extends Table {
  TextColumn get orderRef => text()
      .nullable()
      .references(OrderEntityV2, #orderRef, onDelete: KeyAction.cascade)();
  TextColumn get chargeId => text().nullable()();
  TextColumn get name => text().nullable()();
  TextColumn get type => text().nullable()();
  RealColumn get chargableAmount => real().nullable()();
  RealColumn get value => real().nullable()();
  RealColumn get percentage => real().nullable()();
  RealColumn get chargeAmount => real().nullable()();
  TextColumn get description => text().nullable()();

  @override
  Set<Column> get primaryKey => {orderRef, chargeId};
}

// جدول رسوم الإجمالي للطلب
class OrderChargeForTotalV2 extends Table {
  TextColumn get orderRef => text()
      .nullable()
      .references(OrderEntityV2, #orderRef, onDelete: KeyAction.cascade)();
  TextColumn get chargeId => text().nullable()();
  TextColumn get name => text().nullable()();
  RealColumn get amount => real().nullable()();
  RealColumn get taxAmount => real().nullable()();

  @override
  Set<Column> get primaryKey => {orderRef, chargeId};
}

// جدول أنواع الضرائب للطلب
class OrderTaxTypeV2 extends Table {
  TextColumn get orderRef => text()
      .references(OrderEntityV2, #orderRef, onDelete: KeyAction.cascade)();
  TextColumn get taxTypeId => text().nullable()();
  TextColumn get taxTypeName => text().nullable()();
  RealColumn get taxableAmount => real().nullable()();
  RealColumn get percent => real().nullable()();
  RealColumn get amount => real().nullable()();
  TextColumn get taxCode => text().nullable()();
  TextColumn get taxAccount => text().nullable()();
  BoolColumn get zeroTax => boolean().nullable()();

  @override
  Set<Column> get primaryKey => {orderRef, taxTypeId};
}

/// جدول الإضافات (modifiers) للمنتج في الطلب
class OrderProductModifierV2 extends Table {
  TextColumn get orderRef => text()
      .nullable()
      .references(OrderEntityV2, #orderRef, onDelete: KeyAction.cascade)();
  TextColumn get productRef => text().nullable()();
  TextColumn get modifierId => text().nullable()();
  TextColumn get name => text().nullable()();
  TextColumn get fName => text().nullable()();
  TextColumn get notes => text().nullable()();
  RealColumn get discountAmount => real().nullable()();
  RealColumn get discountPercentage => real().nullable()();
  RealColumn get netUnitPrice => real().nullable()();
  RealColumn get netTotalPrice => real().nullable()();
  RealColumn get netUnitPriceExcludeTax => real().nullable()();
  RealColumn get netTotalPriceExcludeTax => real().nullable()();
  RealColumn get orderDiscountAmount => real().nullable()();
  RealColumn get taxableAmount => real().nullable()();
  RealColumn get taxAmount => real().nullable()();
  RealColumn get finalAmount => real().nullable()();

  @override
  Set<Column> get primaryKey => {orderRef, productRef, modifierId};
}

/// جدول خيارات الإضافة (options) المرتبطة بكل modifier
class OrderProductModifierOptionV2 extends Table {
  TextColumn get orderRef => text()
      .nullable()
      .references(OrderEntityV2, #orderRef, onDelete: KeyAction.cascade)();
  TextColumn get productRef => text().nullable()();
  TextColumn get modifierId => text().nullable()();
  TextColumn get optionId => text().nullable()();
  TextColumn get name => text().nullable()();
  TextColumn get fName => text().nullable()();
  RealColumn get quantity => real()();
  RealColumn get freeQuantity => real().nullable()();
  RealColumn get unitPrice => real()();
  RealColumn get totalPrice => real()();
  RealColumn get discountAmount => real().nullable()();
  RealColumn get discountPercentage => real().nullable()();
  RealColumn get netUnitPrice => real()();
  RealColumn get netTotalPrice => real()();
  RealColumn get netUnitPriceExcludeTax => real().nullable()();
  RealColumn get netTotalPriceExcludeTax => real().nullable()();
  RealColumn get orderDiscountAmount => real().nullable()();
  RealColumn get orderDiscountPercentage => real().nullable()();
  RealColumn get taxableAmount => real().nullable()();
  RealColumn get taxAmount => real().nullable()();
  RealColumn get finalAmount => real()();
  TextColumn get taxGroupId => text().nullable()();
  TextColumn get notes => text().nullable()();

  @override
  Set<Column> get primaryKey => {orderRef, productRef, modifierId, optionId};
}

// جدول مدفوعات الطلب (يدعم تعدد المدفوعات وتعدد العملات)
class OrderPaymentV2 extends Table {
  TextColumn get orderRef => text()
      .nullable()
      .references(OrderEntityV2, #orderRef, onDelete: KeyAction.cascade)();
  TextColumn get paymentId => text().nullable()();
  TextColumn get paymentMethodId => text().nullable()();
  IntColumn get paymentMethodType => integer().nullable()();
  TextColumn get name => text().nullable()();
  TextColumn get fName => text().nullable()();
  RealColumn get currencyAmount => real().nullable()();
  TextColumn get currencyCode => text().nullable()();
  RealColumn get exchangeRateToBase => real().nullable()();
  RealColumn get baseAmount => real().nullable()();
  RealColumn get receivedAmount => real().nullable()();
  RealColumn get changeAmount => real().nullable()();
  RealColumn get tipAmount => real().nullable()();
  RealColumn get feeAmount => real().nullable()();
  TextColumn get cashierId => text().nullable()();
  TextColumn get shiftId => text().nullable()();
  TextColumn get tillId => text().nullable()();
  TextColumn get deviceId => text().nullable()();
  TextColumn get externalTransactionId => text().nullable()();
  TextColumn get reference => text().nullable()();
  BoolColumn get isVoided => boolean().nullable()();
  TextColumn get voidReason => text().nullable()();
  TextColumn get createdOn => text().nullable()();
  TextColumn get createdBy => text().nullable()();
  TextColumn get notes => text().nullable()();

  @override
  Set<Column> get primaryKey => {orderRef, paymentId};
}

// تفاصيل إضافية اختيارية للدفعات (Key/Value أو JSON)
class OrderPaymentDetailV2 extends Table {
  TextColumn get orderRef => text()
      .nullable()
      .references(OrderEntityV2, #orderRef, onDelete: KeyAction.cascade)();
  TextColumn get paymentId => text().nullable()();
  TextColumn get key => text().nullable()();
  TextColumn get value => text().nullable()();

  @override
  Set<Column> get primaryKey => {orderRef, paymentId, key};
}

/// سجل عمليات الطباعة
class OrderPrintHistoryV2 extends Table {
  TextColumn get id => text()();
  TextColumn get orderRef => text()
      .nullable()
      .references(OrderEntityV2, #orderRef, onDelete: KeyAction.cascade)();
  DateTimeColumn get printedAt => dateTime().nullable()();
  TextColumn get printedBy => text().nullable()();
  TextColumn get printedByName => text().nullable()();
  IntColumn get copyNumber => integer().nullable()();
  BoolColumn get isPrePayment => boolean().nullable()();
  TextColumn get printerName => text().nullable()();
  BoolColumn get success => boolean().nullable()();
  TextColumn get failureReason => text().nullable()();

  /// نوع الوثيقة (Check, Invoice, etc.)
  TextColumn get printType => text().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

/// جدول إدارة تسلسل الفواتير (ZATCA Phase 2)
/// يستخدم لضمان سلامة التسلسل ومنع التعارضات والـ Race Conditions
class InvoiceSequenceV2 extends Table {
  /// معرف الفرع (المفتاح الأساسي لضمان تسلسل واحد لكل فرع)
  TextColumn get branchId => text()();

  /// آخر قيمة لعداد الفواتير (ICV)
  IntColumn get lastICV => integer().withDefault(const Constant(0))();

  /// آخر رقم فاتورة تم إصداره
  IntColumn get lastInvoiceNumber =>
      integer().withDefault(const Constant(1000))();

  /// آخر Hash تم إنتاجه لربط السلسلة (Hash Chain)
  TextColumn get lastHash => text().withDefault(const Constant("0"))();

  /// تاريخ آخر تحديث
  DateTimeColumn get lastUpdatedAt => dateTime().nullable()();

  @override
  Set<Column> get primaryKey => {branchId};
}
