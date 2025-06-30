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
  IntColumn get id => integer().autoIncrement()();

  // Common fields
  RealColumn get totalPrice => real()();
  RealColumn get discountAmount => real().nullable()();
  RealColumn get netTotalPrice => real()();
  RealColumn get chargeAmount => real().nullable()();
  RealColumn get taxableAmount => real().nullable()();
  RealColumn get taxAmount => real().nullable()();
  RealColumn get finalAmount => real()();
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
  TextColumn get orderRef => text().nullable()();
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
  IntColumn get callNumber => integer().nullable()();
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
}

/// جدول منتجات الطلبات الموحد OrderProductEntityV2
/// يمثل كل منتج في الطلب مع ارتباطه بـ OrderEntityV2 عبر orderId
class OrderProductEntityV2 extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get orderRef => text().customConstraint(
      'REFERENCES order_entity_v2(order_ref) ON DELETE CASCADE')();
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
}

// جدول سعر الوحدة للمنتج في الطلب
class OrderProductUnitPriceV2 extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get orderProductId => integer().customConstraint(
      'REFERENCES order_product_entity_v2(id) ON DELETE CASCADE')();
  TextColumn get orderRef => text().customConstraint(
      'REFERENCES order_entity_v2(order_ref) ON DELETE CASCADE')();
  RealColumn get unitPrice => real().nullable()();
  TextColumn get description => text().nullable()();
  TextColumn get unitId => text().nullable()();
  TextColumn get productUnitId => text().nullable()();
  TextColumn get productUnitPriceListId => text().nullable()();
  TextColumn get productUnitPriceListSlapId => text().nullable()();
}

// جدول التسعير المتدرج
class OrderProductTieredPricingV2 extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get orderProductId => integer().customConstraint(
      'REFERENCES order_product_entity_v2(id) ON DELETE CASCADE')();
  TextColumn get orderRef => text().customConstraint(
      'REFERENCES order_entity_v2(order_ref) ON DELETE CASCADE')();
  TextColumn get tieredPricingId => text().nullable()();
  TextColumn get name => text().nullable()();
  RealColumn get unitPrice => real().nullable()();
  RealColumn get netUnitPrice => real().nullable()();
}

// جدول أحداث الوقت
class OrderProductTimeEventV2 extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get orderProductId => integer().customConstraint(
      'REFERENCES order_product_entity_v2(id) ON DELETE CASCADE')();
  TextColumn get orderRef => text().customConstraint(
      'REFERENCES order_entity_v2(order_ref) ON DELETE CASCADE')();
  TextColumn get timeEventId => text()();
  TextColumn get name => text().nullable()();
  RealColumn get unitPrice => real()();
  RealColumn get netUnitPrice => real()();
}

// جدول الخصومات
class OrderProductDiscountV2 extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get orderProductId => integer().customConstraint(
      'REFERENCES order_product_entity_v2(id) ON DELETE CASCADE')();
  TextColumn get orderRef => text().customConstraint(
      'REFERENCES order_entity_v2(order_ref) ON DELETE CASCADE')();
  RealColumn get discountAmount => real().nullable()();
  RealColumn get discountPercentage => real().nullable()();
  TextColumn get discountType => text().nullable()();
  TextColumn get discountId => text().nullable()();
}

// جدول معلومات العروض الترويجية
class OrderProductPromotionInfoV2 extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get orderProductId => integer().customConstraint(
      'REFERENCES order_product_entity_v2(id) ON DELETE CASCADE')();
  TextColumn get orderRef => text().customConstraint(
      'REFERENCES order_entity_v2(order_ref) ON DELETE CASCADE')();
  RealColumn get notAppliesQuantity => real().nullable()();
  RealColumn get appliesAsPurchaseQuantity => real().nullable()();
  RealColumn get appliesAsDiscountQuantity => real().nullable()();
  RealColumn get promotionDiscountAmount => real().nullable()();
  RealColumn get promotionDiscountPercentage => real().nullable()();
  TextColumn get promotionsJson => text()
      .map(const JsonTypeConverter())
      .nullable()(); // يمكن لاحقاً فصلها لجداول
}

// جدول الرسوم
class OrderProductChargeV2 extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get orderProductId => integer().customConstraint(
      'REFERENCES order_product_entity_v2(id) ON DELETE CASCADE')();
  TextColumn get orderRef => text().customConstraint(
      'REFERENCES order_entity_v2(order_ref) ON DELETE CASCADE')();
  TextColumn get chargeId => text().nullable()();
  TextColumn get name => text().nullable()();
  RealColumn get amount => real().nullable()();
  RealColumn get percentage => real().nullable()();
}

// جدول الضرائب
class OrderProductTaxInfoV2 extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get orderProductId => integer().customConstraint(
      'REFERENCES order_product_entity_v2(id) ON DELETE CASCADE')();
  TextColumn get orderRef => text().customConstraint(
      'REFERENCES order_entity_v2(order_ref) ON DELETE CASCADE')();
  RealColumn get taxableAmount => real().nullable()();
  RealColumn get taxAmount => real().nullable()();
  RealColumn get taxPercentage => real().nullable()();
  TextColumn get taxGroupId => text().nullable()();
}

// جدول ضرائب رسوم المنتج في الطلب
class OrderProductChargeTaxV2 extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get orderProductChargeId => integer().customConstraint(
      'REFERENCES order_product_charge_v2(id) ON DELETE CASCADE')();
  TextColumn get orderRef => text().customConstraint(
      'REFERENCES order_entity_v2(order_ref) ON DELETE CASCADE')();
  TextColumn get taxId => text().nullable()();
  TextColumn get name => text().nullable()();
  RealColumn get amount => real().nullable()();
  RealColumn get percentage => real().nullable()();
}

// جدول تفاصيل أنواع الضرائب لكل رسم على منتج الطلب
class OrderProductChargeTaxInfoV2 extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get orderProductChargeTaxId => integer().customConstraint(
      'REFERENCES order_product_charge_tax_v2(id) ON DELETE CASCADE')();
  IntColumn get orderProductChargeId => integer().customConstraint(
      'REFERENCES order_product_charge_v2(id) ON DELETE CASCADE')();
  IntColumn get orderProductId => integer().customConstraint(
      'REFERENCES order_product_entity_v2(id) ON DELETE CASCADE')();
  TextColumn get orderRef => text().customConstraint(
      'REFERENCES order_entity_v2(order_ref) ON DELETE CASCADE')();
  TextColumn get taxTypeId => text().nullable()();
  TextColumn get taxTypeName => text().nullable()();
  RealColumn get taxAmount => real().nullable()();
  RealColumn get taxPercentage => real().nullable()();
  TextColumn get taxGroupId => text().nullable()();
}

// جدول أنواع الضرائب المطبقة على منتج الطلب
class OrderProductTaxTypeV2 extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get orderProductTaxInfoId => integer().customConstraint(
      'REFERENCES order_product_tax_info_v2(id) ON DELETE CASCADE')();
  IntColumn get orderProductId => integer().customConstraint(
      'REFERENCES order_product_entity_v2(id) ON DELETE CASCADE')();
  TextColumn get orderRef => text().customConstraint(
      'REFERENCES order_entity_v2(order_ref) ON DELETE CASCADE')();
  TextColumn get taxTypeId => text().nullable()();
  TextColumn get taxTypeName => text().nullable()();
  RealColumn get taxAmount => real().nullable()();
  RealColumn get taxPercentage => real().nullable()();
  TextColumn get taxGroupId => text().nullable()();
}

// جدول خصومات الطلب
class OrderDiscountV2 extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get orderRef => text().customConstraint(
      'REFERENCES order_entity_v2(order_ref) ON DELETE CASCADE')();
  TextColumn get discountId => text().nullable()();
  TextColumn get name => text().nullable()();
  RealColumn get totalPrice => real().nullable()();
  RealColumn get discountAmount => real().nullable()();
  RealColumn get discountPercentage => real().nullable()();
  RealColumn get discountAmountPerUnit => real().nullable()();
  TextColumn get discountType => text().nullable()();
  BoolColumn get taxable => boolean().nullable()();
  TextColumn get notes => text().nullable()();
}

// جدول العروض الترويجية للطلب
class OrderPromotionAppliesV2 extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get orderRef => text().customConstraint(
      'REFERENCES order_entity_v2(order_ref) ON DELETE CASCADE')();
  TextColumn get promotionId => text().nullable()();
  TextColumn get name => text().nullable()();
  RealColumn get totalPrice => real().nullable()();
  RealColumn get discountAmount => real().nullable()();
  RealColumn get discountPercentage => real().nullable()();
}

// جدول بطاقات الهدايا للطلب
class OrderPromotionGiftCardV2 extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get orderRef => text().customConstraint(
      'REFERENCES order_entity_v2(order_ref) ON DELETE CASCADE')();
  TextColumn get name => text().nullable()();
  TextColumn get fName => text().nullable()();
  TextColumn get barcode => text().nullable()();
  TextColumn get reference => text().nullable()();
  RealColumn get price => real().nullable()();
}

// جدول رسوم الطلب
class OrderChargeV2 extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get orderRef => text().customConstraint(
      'REFERENCES order_entity_v2(order_ref) ON DELETE CASCADE')();
  TextColumn get chargeId => text().nullable()();
  TextColumn get name => text().nullable()();
  TextColumn get type => text().nullable()();
  RealColumn get chargableAmount => real().nullable()();
  RealColumn get value => real().nullable()();
  RealColumn get percentage => real().nullable()();
  RealColumn get chargeAmount => real().nullable()();
  TextColumn get description => text().nullable()();
}

// جدول رسوم الإجمالي للطلب
class OrderChargeForTotalV2 extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get orderRef => text().customConstraint(
      'REFERENCES order_entity_v2(order_ref) ON DELETE CASCADE')();
  TextColumn get chargeId => text().nullable()();
  TextColumn get name => text().nullable()();
  RealColumn get amount => real().nullable()();
  RealColumn get taxAmount => real().nullable()();
}

// جدول أنواع الضرائب للطلب
class OrderTaxTypeV2 extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get orderRef => text().customConstraint(
      'REFERENCES order_entity_v2(order_ref) ON DELETE CASCADE')();
  TextColumn get taxTypeId => text().nullable()();
  TextColumn get taxTypeName => text().nullable()();
  RealColumn get taxableAmount => real().nullable()();
  RealColumn get percent => real().nullable()();
  RealColumn get amount => real().nullable()();
  TextColumn get taxCode => text().nullable()();
  TextColumn get taxAccount => text().nullable()();
  BoolColumn get zeroTax => boolean().nullable()();
}
