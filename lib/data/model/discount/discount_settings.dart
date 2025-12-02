import 'package:objectbox/objectbox.dart';

@Entity()
class DiscountSetting {
  @Id()
  int? idSeq;
  bool? enableDiscount;
  bool? enablePromotion;
  bool? enableCoupon;
  bool? enableTimeEvent;
  bool? enableDiscountInSalesInvoice;
  bool? enableDiscountInPurchaseInvoice;
  bool? enableDiscountInSalesInvoiceProducts;
  bool? enableDiscountInPurchaseInvoiceItems;
  bool? enableFreeQuantityInSalesInvoiceItems;
  bool? enableFreeQuantityInPurchaseInvoiceItems;

  DiscountSetting(
      {this.enableDiscount,
      this.enablePromotion,
      this.enableCoupon,
      this.enableTimeEvent,
      this.enableDiscountInSalesInvoice,
      this.enableDiscountInPurchaseInvoice,
      this.enableDiscountInSalesInvoiceProducts,
      this.enableDiscountInPurchaseInvoiceItems,
      this.enableFreeQuantityInSalesInvoiceItems,
      this.enableFreeQuantityInPurchaseInvoiceItems});

  DiscountSetting.fromJson(Map<String, dynamic> json) {
    enableDiscount = json['enable_Discount'];
    enablePromotion = json['enable_Promotion'];
    enableCoupon = json['enable_Coupon'];
    enableTimeEvent = json['enable_TimeEvent'];
    enableDiscountInSalesInvoice = json['enable_Discount_InSalesInvoice'];
    enableDiscountInPurchaseInvoice = json['enable_Discount_InPurchaseInvoice'];
    enableDiscountInSalesInvoiceProducts =
        json['enable_Discount_InSalesInvoiceProducts'];
    enableDiscountInPurchaseInvoiceItems =
        json['enable_Discount_InPurchaseInvoiceItems'];
    enableFreeQuantityInSalesInvoiceItems =
        json['enable_Free_Quantity_InSalesInvoiceItems'];
    enableFreeQuantityInPurchaseInvoiceItems =
        json['enable_Free_Quantity_InPurchaseInvoiceItems'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['enable_Discount'] = enableDiscount;
    data['enable_Promotion'] = enablePromotion;
    data['enable_Coupon'] = enableCoupon;
    data['enable_TimeEvent'] = enableTimeEvent;
    data['enable_Discount_InSalesInvoice'] = enableDiscountInSalesInvoice;
    data['enable_Discount_InPurchaseInvoice'] = enableDiscountInPurchaseInvoice;
    data['enable_Discount_InSalesInvoiceProducts'] =
        enableDiscountInSalesInvoiceProducts;
    data['enable_Discount_InPurchaseInvoiceItems'] =
        enableDiscountInPurchaseInvoiceItems;
    data['enable_Free_Quantity_InSalesInvoiceItems'] =
        enableFreeQuantityInSalesInvoiceItems;
    data['enable_Free_Quantity_InPurchaseInvoiceItems'] =
        enableFreeQuantityInPurchaseInvoiceItems;
    return data;
  }
}
