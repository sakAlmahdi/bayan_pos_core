import 'dart:convert';
import 'dart:io';
import 'package:bayan_pos_core/data/entity/activation_info_entity.dart';
import 'package:bayan_pos_core/data/entity/drawer_operation_entity.dart';
import 'package:bayan_pos_core/data/entity/product_qty_entity.dart';
import 'package:bayan_pos_core/data/entity/settings_entity.dart';
import 'package:bayan_pos_core/data/entity/shift_entity.dart';
import 'package:bayan_pos_core/data/entity/till_entity.dart';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'order_entity.dart';
import 'sync_queue_entity.dart';
import 'order_v2_entity.dart';
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
  OrderProductChargeTaxInfoV2,
  OrderProductTaxTypeV2,
  OrderDiscountV2,
  OrderPromotionAppliesV2,
  OrderPromotionGiftCardV2,
  OrderChargeV2,
  OrderChargeForTotalV2,
  OrderTaxTypeV2,
])
class MyDatabase extends _$MyDatabase {
  MyDatabase() : super(_openConnection());

  @override
  MigrationStrategy get migration => MigrationStrategy(
        onCreate: (Migrator m) async {
          await m.createAll();
        },
        onUpgrade: (Migrator m, int from, int to) async {
          await m.createTable(tillEntity);

          if (from < 15) {
            await m.addColumn(orderEntity, orderEntity.shiftId);
            await m.addColumn(orderEntity, orderEntity.tillId);
          }
          if (from < 16) {
            await m.createTable(tillEntity);
          }
          if (from < 17) {
            await m.createTable(orderPayments);
          }
          if (from < 19) {
            await m.addColumn(
                orderEntity, orderEntity.totalDiscountForOrderAndProduct);
          }
          if (from < 20) {
            await m.addColumn(orderEntity, orderEntity.kitchenInfo);
          }
          if (from < 21) {
            await m.addColumn(orderEntity, orderEntity.currency);
          }
          if (from <= 22) {
            await m.addColumn(orderEntity, orderEntity.paymentCurrency);
          }
          if (from < 24) {
            await m.addColumn(orderEntity, orderEntity.minimumReservationPrice);
          }
          if (from < 25) {
            await m.addColumn(
                paymentMethodEntity, paymentMethodEntity.imageUrl);
          }
          if (from <= 26) {
            await m.addColumn(tillAmountsEntity, tillAmountsEntity.currencyId);
            await m.addColumn(
                tillAmountsEntity, tillAmountsEntity.currencyName);
            await m.addColumn(
                tillAmountsEntity, tillAmountsEntity.currencyFName);
            await m.addColumn(
                tillAmountsEntity, tillAmountsEntity.paymentMethodId);
            await m.addColumn(
                tillAmountsEntity, tillAmountsEntity.paymentMethodName);
            await m.addColumn(
                tillAmountsEntity, tillAmountsEntity.paymentMethodFName);
          }
          if (from <= 27) {
            await m.createTable(syncQueueEntity);
          }
          // Migration for v2 order tables (version 29)
          if (from < 29) {
            await m.createTable(orderEntityV2);
            await m.createTable(orderProductEntityV2);
            await m.createTable(orderProductUnitPriceV2);
            await m.createTable(orderProductTieredPricingV2);
            await m.createTable(orderProductTimeEventV2);
            await m.createTable(orderProductDiscountV2);
            await m.createTable(orderProductPromotionInfoV2);
            await m.createTable(orderProductChargeV2);
            await m.createTable(orderProductTaxInfoV2);
            await m.createTable(orderProductChargeTaxV2);
            await m.createTable(orderProductChargeTaxInfoV2);
            await m.createTable(orderProductTaxTypeV2);
            await m.createTable(orderDiscountV2);
            await m.createTable(orderPromotionAppliesV2);
            await m.createTable(orderPromotionGiftCardV2);
            await m.createTable(orderChargeV2);
            await m.createTable(orderChargeForTotalV2);
            await m.createTable(orderTaxTypeV2);
          }
          // Migration for composite PK in OrderProductEntityV2 (version 30)
          if (from < 30) {
            // 1. إنشاء جداول مؤقتة للاحتفاظ بالبيانات
            await customStatement(
                'CREATE TABLE order_product_entity_v2_backup AS SELECT * FROM order_product_entity_v2;');
            await customStatement(
                'CREATE TABLE order_product_unit_price_v2_backup AS SELECT * FROM order_product_unit_price_v2;');
            await customStatement(
                'CREATE TABLE order_product_tiered_pricing_v2_backup AS SELECT * FROM order_product_tiered_pricing_v2;');
            await customStatement(
                'CREATE TABLE order_product_time_event_v2_backup AS SELECT * FROM order_product_time_event_v2;');
            await customStatement(
                'CREATE TABLE order_product_discount_v2_backup AS SELECT * FROM order_product_discount_v2;');
            await customStatement(
                'CREATE TABLE order_product_promotion_info_v2_backup AS SELECT * FROM order_product_promotion_info_v2;');
            await customStatement(
                'CREATE TABLE order_product_charge_v2_backup AS SELECT * FROM order_product_charge_v2;');
            await customStatement(
                'CREATE TABLE order_product_tax_info_v2_backup AS SELECT * FROM order_product_tax_info_v2;');
            await customStatement(
                'CREATE TABLE order_product_charge_tax_v2_backup AS SELECT * FROM order_product_charge_tax_v2;');
            await customStatement(
                'CREATE TABLE order_product_charge_tax_info_v2_backup AS SELECT * FROM order_product_charge_tax_info_v2;');
            await customStatement(
                'CREATE TABLE order_product_tax_type_v2_backup AS SELECT * FROM order_product_tax_type_v2;');

            // 2. حذف الجداول الأصلية
            await m.drop(orderProductUnitPriceV2);
            await m.drop(orderProductTieredPricingV2);
            await m.drop(orderProductTimeEventV2);
            await m.drop(orderProductDiscountV2);
            await m.drop(orderProductPromotionInfoV2);
            await m.drop(orderProductChargeV2);
            await m.drop(orderProductTaxInfoV2);
            await m.drop(orderProductChargeTaxV2);
            await m.drop(orderProductChargeTaxInfoV2);
            await m.drop(orderProductTaxTypeV2);
            await m.drop(orderProductEntityV2);

            // 3. إعادة إنشاء الجداول الجديدة
            await m.createTable(orderProductEntityV2);
            await m.createTable(orderProductUnitPriceV2);
            await m.createTable(orderProductTieredPricingV2);
            await m.createTable(orderProductTimeEventV2);
            await m.createTable(orderProductDiscountV2);
            await m.createTable(orderProductPromotionInfoV2);
            await m.createTable(orderProductChargeV2);
            await m.createTable(orderProductTaxInfoV2);
            await m.createTable(orderProductChargeTaxV2);
            await m.createTable(orderProductChargeTaxInfoV2);
            await m.createTable(orderProductTaxTypeV2);

            // 4. ترحيل البيانات من الجداول المؤقتة إلى الجداول الجديدة (OrderProductEntityV2 فقط)
            // ملاحظة: يجب أن تتأكد أن الأعمدة متوافقة مع البنية الجديدة (بدون idSeq)
            await customStatement(
                'INSERT INTO order_product_entity_v2 (orderRef, productRef, tableRowIndex, name, productId, unitId, quantity, freeQuantity, unitPrice, totalPrice, discountAmount, discountPercentage, netUnitPrice, netTotalPrice, netUnitPriceExcludeTax, netTotalPriceExcludeTax, orderDiscountAmount, taxableAmount, taxAmount, finalAmount, roundingDecimalAmount, notes, departmentId, categoryId) SELECT orderRef, productRef, tableRowIndex, name, productId, unitId, quantity, freeQuantity, unitPrice, totalPrice, discountAmount, discountPercentage, netUnitPrice, netTotalPrice, netUnitPriceExcludeTax, netTotalPriceExcludeTax, orderDiscountAmount, taxableAmount, taxAmount, finalAmount, roundingDecimalAmount, notes, departmentId, categoryId FROM order_product_entity_v2_backup;');

            // 5. ترحيل بيانات الجداول الأخرى إذا كان هناك توافق أو منطق خاص

            // ترحيل بيانات order_product_unit_price_v2
            await customStatement(
                'INSERT INTO order_product_unit_price_v2 (orderProductId, orderRef, unitPrice, description, unitId, productUnitId, productUnitPriceListId, productUnitPriceListSlapId) SELECT orderProductId, orderRef, unitPrice, description, unitId, productUnitId, productUnitPriceListId, productUnitPriceListSlapId FROM order_product_unit_price_v2_backup;');

            // ترحيل بيانات order_product_tiered_pricing_v2
            await customStatement(
                'INSERT INTO order_product_tiered_pricing_v2 (orderProductId, orderRef, tieredPricingId, name, unitPrice, netUnitPrice) SELECT orderProductId, orderRef, tieredPricingId, name, unitPrice, netUnitPrice FROM order_product_tiered_pricing_v2_backup;');

            // ترحيل بيانات order_product_time_event_v2
            await customStatement(
                'INSERT INTO order_product_time_event_v2 (orderProductId, orderRef, timeEventId, name, unitPrice, netUnitPrice) SELECT orderProductId, orderRef, timeEventId, name, unitPrice, netUnitPrice FROM order_product_time_event_v2_backup;');

            // ترحيل بيانات order_product_discount_v2
            await customStatement(
                'INSERT INTO order_product_discount_v2 (orderProductId, orderRef, discountAmount, discountPercentage, discountType, discountId) SELECT orderProductId, orderRef, discountAmount, discountPercentage, discountType, discountId FROM order_product_discount_v2_backup;');

            // ترحيل بيانات order_product_promotion_info_v2
            await customStatement(
                'INSERT INTO order_product_promotion_info_v2 (orderProductId, orderRef, promotionId, name, discountAmount, discountPercentage) SELECT orderProductId, orderRef, promotionId, name, discountAmount, discountPercentage FROM order_product_promotion_info_v2_backup;');

            // ترحيل بيانات order_product_charge_v2
            await customStatement(
                'INSERT INTO order_product_charge_v2 (orderProductId, orderRef, chargeId, name, type, chargableAmount, value, percentage, chargeAmount, description) SELECT orderProductId, orderRef, chargeId, name, type, chargableAmount, value, percentage, chargeAmount, description FROM order_product_charge_v2_backup;');

            // ترحيل بيانات order_product_tax_info_v2
            await customStatement(
                'INSERT INTO order_product_tax_info_v2 (orderProductId, orderRef, taxInfoId, name, taxAmount, taxPercentage, taxGroupId) SELECT orderProductId, orderRef, taxInfoId, name, taxAmount, taxPercentage, taxGroupId FROM order_product_tax_info_v2_backup;');

            // ترحيل بيانات order_product_charge_tax_v2
            await customStatement(
                'INSERT INTO order_product_charge_tax_v2 (orderProductChargeId, orderRef, taxTypeId, taxTypeName, taxAmount, taxPercentage, taxGroupId) SELECT orderProductChargeId, orderRef, taxTypeId, taxTypeName, taxAmount, taxPercentage, taxGroupId FROM order_product_charge_tax_v2_backup;');

            // ترحيل بيانات order_product_charge_tax_info_v2
            await customStatement(
                'INSERT INTO order_product_charge_tax_info_v2 (orderProductChargeId, orderRef, taxInfoId, name, taxAmount, taxPercentage, taxGroupId) SELECT orderProductChargeId, orderRef, taxInfoId, name, taxAmount, taxPercentage, taxGroupId FROM order_product_charge_tax_info_v2_backup;');

            // ترحيل بيانات order_product_tax_type_v2
            await customStatement(
                'INSERT INTO order_product_tax_type_v2 (orderProductTaxInfoId, orderProductId, orderRef, taxTypeId, taxTypeName, taxAmount, taxPercentage, taxGroupId) SELECT orderProductTaxInfoId, orderProductId, orderRef, taxTypeId, taxTypeName, taxAmount, taxPercentage, taxGroupId FROM order_product_tax_type_v2_backup;');

            // 6. حذف الجداول المؤقتة بعد الترحيل
            await customStatement(
                'DROP TABLE IF EXISTS order_product_entity_v2_backup;');
            await customStatement(
                'DROP TABLE IF EXISTS order_product_unit_price_v2_backup;');
            await customStatement(
                'DROP TABLE IF EXISTS order_product_tiered_pricing_v2_backup;');
            await customStatement(
                'DROP TABLE IF EXISTS order_product_time_event_v2_backup;');
            await customStatement(
                'DROP TABLE IF EXISTS order_product_discount_v2_backup;');
            await customStatement(
                'DROP TABLE IF EXISTS order_product_promotion_info_v2_backup;');
            await customStatement(
                'DROP TABLE IF EXISTS order_product_charge_v2_backup;');
            await customStatement(
                'DROP TABLE IF EXISTS order_product_tax_info_v2_backup;');
            await customStatement(
                'DROP TABLE IF EXISTS order_product_charge_tax_v2_backup;');
            await customStatement(
                'DROP TABLE IF EXISTS order_product_charge_tax_info_v2_backup;');
            await customStatement(
                'DROP TABLE IF EXISTS order_product_tax_type_v2_backup;');
          }
        },
      );

  @override
  int get schemaVersion => 30;

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
    return NativeDatabase.createInBackground(file);
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
