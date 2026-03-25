import 'dart:convert';
import 'dart:io';
import 'package:bayan_pos_core/data/entity/activation_info_entity.dart';
import 'package:bayan_pos_core/data/entity/drawer_operation_entity.dart';
import 'package:bayan_pos_core/data/entity/product_qty_entity.dart';
import 'package:bayan_pos_core/data/entity/settings_entity.dart';
import 'package:bayan_pos_core/data/entity/shift_entity.dart';
import 'package:bayan_pos_core/data/entity/stock_transaction_entity.dart';
import 'package:bayan_pos_core/data/entity/till_entity.dart';
import 'package:bayan_pos_core/data/entity/end_of_day_entity.dart';
import 'package:bayan_pos_core/data/entity/device_entity.dart';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'order_entity.dart';
import 'sync_queue_entity.dart';
import 'order_v2_entity.dart';
import 'table_assignments_entity.dart';
import 'audit_logs_entity.dart';
part 'drift_db.g.dart';

@DriftDatabase(tables: [
  OrderEntity,
  OrderHistoryEntity,
  OrderNumbers,
  ShiftEntity,
  TillEntity,
  TillAmountsEntity,
  PaymentMethodEntity,
  SettingEntity,
  OrderPayments,
  DrawerOperationEntity,
  ActivationInfoEntity,
  ProductQtyEntity,
  SyncQueueEntity,
  OrderEntityV2,
  OrderProductEntityV2,
  OrderProductUnitPriceV2,
  OrderProductTieredPricingV2,
  OrderProductTimeEventV2,
  OrderProductDiscountV2,
  OrderProductPromotionInfoV2,
  OrderProductChargeV2,
  OrderProductTaxInfoV2,
  OrderProductChargeTaxV2,
  OrderProductTaxTypeV2,
  OrderDiscountV2,
  OrderPromotionAppliesV2,
  OrderPromotionGiftCardV2,
  OrderChargeV2,
  OrderChargeForTotalV2,
  OrderTaxTypeV2,
  OrderProductModifierV2,
  OrderProductModifierOptionV2,
  OrderPaymentV2,
  OrderPaymentDetailV2,
  TableAssignments,
  AuditLogs,
  OrderPrintHistoryV2,
  EndOfDayEntity,
  StockTransactionEntity,
  InvoiceSequenceV2,
  DeviceEntity,
])
class MyDatabase extends _$MyDatabase {
  MyDatabase() : super(_openConnection());

  @override
  MigrationStrategy get migration => MigrationStrategy(
      onCreate: (Migrator m) async {
        // تفعيل المفاتيح الأجنبية عند إنشاء قاعدة البيانات
        await customStatement('PRAGMA foreign_keys = ON');
        await m.createAll();
      },
      onUpgrade: (Migrator m, int from, int to) async {});

  @override
  int get schemaVersion =>
      49; // تحديث إصدار المخطط لإضافة جدول الأجهزة (Devices)

  @override
  void notifyUpdates(Set<TableUpdate> updates) {
    // TODO: implement notifyUpdates
    super.notifyUpdates(updates);
  }

  // <-- Add this
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));

    // إنشاء قاعدة البيانات مع تفعيل المفاتيح الأجنبية
    final database = NativeDatabase.createInBackground(file);

    return database;
  });
}

class JsonTypeConverter<T> extends TypeConverter<T?, String?> {
  const JsonTypeConverter();

  @override
  T? fromSql(String? fromDb) {
    if (fromDb == null) {
      return null;
    }

    return json.decode(fromDb) as T;
  }

  @override
  String? toSql(T? value) {
    if (value == null) {
      return null;
    }

    return json.encode(value);
  }
}

class DateTimeTypeConverter implements TypeConverter<int?, DateTime?> {
  const DateTimeTypeConverter();

  @override
  fromSql(DateTime? fromDb) {
    if (fromDb == null) {
      return null;
    }
    return fromDb.millisecondsSinceEpoch;
  }

  @override
  DateTime? toSql(value) {
    if (value == null) {
      return null;
    }

    return DateTime.fromMillisecondsSinceEpoch(value);
  }
}
