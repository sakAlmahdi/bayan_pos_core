import 'dart:convert';
import 'dart:io';
import 'package:bayan_pos_core/data/entity/activation_info_entity.dart';
import 'package:bayan_pos_core/data/entity/drawer_operation_entity.dart';
import 'package:bayan_pos_core/data/entity/product_qty_entity.dart';
import 'package:bayan_pos_core/data/entity/settings_entity.dart';
import 'package:bayan_pos_core/data/entity/shift_entity.dart';
import 'package:bayan_pos_core/data/entity/till_entity.dart';
import 'package:bayan_pos_core/data/entity/end_of_day_entity.dart';
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
])
class MyDatabase extends _$MyDatabase {
  MyDatabase() : super(_openConnection());

  @override
  MigrationStrategy get migration =>
      MigrationStrategy(onCreate: (Migrator m) async {
        // تفعيل المفاتيح الأجنبية عند إنشاء قاعدة البيانات
        await customStatement('PRAGMA foreign_keys = ON');
        await m.createAll();
      }, onUpgrade: (Migrator m, int from, int to) async {
        // لا، الشرط if (from < 34) لن يتحقق عندما تكون النسخة ٣٤.
        // سيتم تنفيذ الكود فقط إذا كانت النسخة السابقة أقل من ٣٤ (أي ٣٣ أو أقل).
        if (from < 34) {
          await m.createTable(orderPaymentV2);
          await m.createTable(orderPaymentDetailV2);
        }
        // إضافة الحقول الجديدة لجدول OrderProductModifierV2
        if (from < 35) {
          // التحقق من وجود الأعمدة قبل إضافتها
          try {
            await customStatement(
                'ALTER TABLE order_product_modifier_v2 ADD COLUMN discount_amount REAL');
          } catch (_) {}
          try {
            await customStatement(
                'ALTER TABLE order_product_modifier_v2 ADD COLUMN discount_percentage REAL');
          } catch (_) {}
          try {
            await customStatement(
                'ALTER TABLE order_product_modifier_v2 ADD COLUMN net_unit_price REAL');
          } catch (_) {}
          try {
            await customStatement(
                'ALTER TABLE order_product_modifier_v2 ADD COLUMN net_total_price REAL');
          } catch (_) {}
          try {
            await customStatement(
                'ALTER TABLE order_product_modifier_v2 ADD COLUMN net_unit_price_exclude_tax REAL');
          } catch (_) {}
          try {
            await customStatement(
                'ALTER TABLE order_product_modifier_v2 ADD COLUMN net_total_price_exclude_tax REAL');
          } catch (_) {}
          try {
            await customStatement(
                'ALTER TABLE order_product_modifier_v2 ADD COLUMN order_discount_amount REAL');
          } catch (_) {}
          try {
            await customStatement(
                'ALTER TABLE order_product_modifier_v2 ADD COLUMN taxable_amount REAL');
          } catch (_) {}
          try {
            await customStatement(
                'ALTER TABLE order_product_modifier_v2 ADD COLUMN tax_amount REAL');
          } catch (_) {}
          try {
            await customStatement(
                'ALTER TABLE order_product_modifier_v2 ADD COLUMN final_amount REAL');
          } catch (_) {}
        }
        // إضافة الحقول الجديدة لجدول OrderProductModifierOptionV2
        if (from < 36) {
          try {
            await customStatement(
                'ALTER TABLE order_product_modifier_option_v2 ADD COLUMN net_unit_price_exclude_tax REAL');
          } catch (_) {}
          try {
            await customStatement(
                'ALTER TABLE order_product_modifier_option_v2 ADD COLUMN net_total_price_exclude_tax REAL');
          } catch (_) {}
          try {
            await customStatement(
                'ALTER TABLE order_product_modifier_option_v2 ADD COLUMN order_discount_amount REAL');
          } catch (_) {}
          try {
            await customStatement(
                'ALTER TABLE order_product_modifier_option_v2 ADD COLUMN order_discount_percentage REAL');
          } catch (_) {}
          try {
            await customStatement(
                'ALTER TABLE order_product_modifier_option_v2 ADD COLUMN tax_group_id TEXT');
          } catch (_) {}
        }

        // إضافة الحقول الجديدة لجدول الضرائب
        if (from < 37) {
          // تعديل OrderProductTaxInfoV2
          try {
            await customStatement(
                'ALTER TABLE order_product_tax_info_v2 ADD COLUMN modifier_id TEXT');
          } catch (_) {}
          try {
            await customStatement(
                'ALTER TABLE order_product_tax_info_v2 ADD COLUMN option_id TEXT');
          } catch (_) {}

          // تعديل OrderProductTaxTypeV2
          try {
            await customStatement(
                'ALTER TABLE order_product_tax_type_v2 ADD COLUMN modifier_id TEXT');
          } catch (_) {}
          try {
            await customStatement(
                'ALTER TABLE order_product_tax_type_v2 ADD COLUMN option_id TEXT');
          } catch (_) {}
        }

        if (from < 39) {
          try {
            await customStatement(
                'ALTER TABLE order_entity_v2 ADD COLUMN paid_amount REAL');
          } catch (_) {}
          try {
            await customStatement(
                'ALTER TABLE order_entity_v2 ADD COLUMN due_amount REAL');
          } catch (_) {}
          try {
            await customStatement(
                'ALTER TABLE order_entity_v2 ADD COLUMN change_amount REAL');
          } catch (_) {}
        }

        if (from < 40) {
          await m.createTable(tableAssignments);
          await m.createTable(auditLogs);
        }

        if (from < 41) {
          try {
            await customStatement(
                'ALTER TABLE order_entity_v2 ADD COLUMN opened_on TEXT');
          } catch (_) {}
          try {
            await customStatement(
                'ALTER TABLE order_entity_v2 ADD COLUMN opened_by TEXT');
          } catch (_) {}
          try {
            await customStatement(
                'ALTER TABLE order_entity_v2 ADD COLUMN closed_on TEXT');
          } catch (_) {}
          try {
            await customStatement(
                'ALTER TABLE order_entity_v2 ADD COLUMN closed_by TEXT');
          } catch (_) {}
          // Ensure potentially missing metadata fields are added
          try {
            await customStatement(
                'ALTER TABLE order_entity_v2 ADD COLUMN created_on TEXT');
          } catch (_) {}
          try {
            await customStatement(
                'ALTER TABLE order_entity_v2 ADD COLUMN created_by TEXT');
          } catch (_) {}
          try {
            await customStatement(
                'ALTER TABLE order_entity_v2 ADD COLUMN last_modified_on TEXT');
          } catch (_) {}
          try {
            await customStatement(
                'ALTER TABLE order_entity_v2 ADD COLUMN last_modified_by TEXT');
          } catch (_) {}
        }

        if (from < 42) {
          await m.createTable(orderPrintHistoryV2);
        }

        if (from < 43) {
          try {
            await customStatement(
                'ALTER TABLE order_entity_v2 ADD COLUMN post_payment_print_count INTEGER');
          } catch (_) {}
          try {
            await customStatement(
                'ALTER TABLE order_print_history_v2 ADD COLUMN print_type TEXT');
          } catch (_) {}
        }

        // إضافة جدول إنهاء اليوم
        if (from < 44) {
          await m.createTable(endOfDayEntity);
        }
      });

  @override
  int get schemaVersion => 44; // تحديث إصدار المخطط - إضافة جدول إنهاء اليوم

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
