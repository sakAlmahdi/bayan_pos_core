import 'package:bayan_pos_core/data/model/new/charge/order_charge_for_total_dto.dart';
import 'package:bayan_pos_core/data/model/new/charge/order_product_charge_dto.dart';
import 'package:bayan_pos_core/data/model/new/discount/order_product_discount_dto.dart';
import 'package:bayan_pos_core/data/model/new/order/promotion_gift_card_dto.dart';
import 'package:bayan_pos_core/data/model/new/promotion/order_product_response_dto.dart';
import 'package:bayan_pos_core/data/model/new/promotion/order_promotion_applies_dto.dart';
import 'package:bayan_pos_core/data/model/new/tax/order_tax_type_view_dto.dart';
import 'package:flutter_guid/flutter_guid.dart';

class OrderResponseDto {
  double totalPrice;
  double? discountAmount;
  double netTotalPrice;
  double? chargeAmount;
  double? taxableAmount;
  double? taxAmount;
  double finalAmount;
  double? shippingAmount;
  double? shippingDiscountAmount;
  double? shippingDiscountPercentage;
  double? productDiscountAmount;
  double? discountPercentage;
  double? totalDiscountAmount;
  double? promotionDiscountAmount;
  double? timeEventDiscountAmount;
  double? timeEventChargeAmount;
  double? roundingDecimalAmount;
  String? note;
  OrderProductDiscountDto? discount;
  List<OrderProductResponseDto>? products;
  OrderPromotionAppliesDto? promotion;
  PromotionGiftCardDto? giftCard;
  List<OrderProductChargeDto>? charges;
  List<OrderChargeForTotalDto>? chargesForTotals;
  List<OrderTaxTypeViewDto>? taxInfo;

  OrderResponseDto({
    required this.totalPrice,
    this.discountAmount,
    required this.netTotalPrice,
    this.chargeAmount,
    this.taxableAmount,
    this.taxAmount,
    required this.finalAmount,
    this.shippingAmount,
    this.shippingDiscountAmount,
    this.shippingDiscountPercentage,
    this.productDiscountAmount,
    this.discountPercentage,
    this.totalDiscountAmount,
    this.promotionDiscountAmount,
    this.timeEventDiscountAmount,
    this.timeEventChargeAmount,
    this.roundingDecimalAmount,
    this.note,
    this.discount,
    this.products,
    this.promotion,
    this.giftCard,
    this.charges,
    this.chargesForTotals,
    this.taxInfo,
  });

  factory OrderResponseDto.fromJson(Map<String, dynamic> json) {
    return OrderResponseDto(
      totalPrice: json['totalPrice'],
      discountAmount: json['discountAmount'],
      netTotalPrice: json['netTotalPrice'],
      chargeAmount: double.tryParse(json['chargeAmount'].toString()),
      taxableAmount: double.tryParse(json['taxableAmount'].toString()),
      taxAmount: double.tryParse(json['taxAmount'].toString()),
      finalAmount: double.tryParse(json['finalAmount'].toString()) ?? 0,
      shippingAmount: json['shippingAmount'],
      shippingDiscountAmount: json['shippingDiscountAmount'],
      shippingDiscountPercentage: json['shippingDiscountPercentage'],
      productDiscountAmount: json['productDiscountAmount'],
      discountPercentage: json['discountPercentage'],
      totalDiscountAmount: json['totalDiscountAmount'],
      promotionDiscountAmount: json['promotionDiscountAmount'],
      timeEventDiscountAmount: json['timeEventDiscountAmount'],
      timeEventChargeAmount: json['timeEventChargeAmount'],
      roundingDecimalAmount: json['roundingDecimalAmount'],
      note: json['note'],
      discount: json['discount'] != null
          ? OrderProductDiscountDto.fromJson(json['discount'])
          : null,
      products: json['products'] != null
          ? (json['products'] as List)
              .map((e) => OrderProductResponseDto.fromJson(e))
              .toList()
          : null,
      promotion: json['promotion'] != null
          ? OrderPromotionAppliesDto.fromJson(json['promotion'])
          : null,
      giftCard: json['giftCard'] != null
          ? PromotionGiftCardDto.fromJson(json['giftCard'])
          : null,
      charges: json['charges'] != null
          ? (json['charges'] as List)
              .map((e) => OrderProductChargeDto.fromJson(e))
              .toList()
          : null,
      chargesForTotals: json['chargesForTotals'] != null
          ? (json['chargesForTotals'] as List)
              .map((e) => OrderChargeForTotalDto.fromJson(e))
              .toList()
          : null,
      taxInfo: json['taxInfo'] != null
          ? (json['taxInfo'] as List)
              .map((e) => OrderTaxTypeViewDto.fromJson(e))
              .toList()
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'totalPrice': totalPrice,
      'discountAmount': discountAmount,
      'netTotalPrice': netTotalPrice,
      'chargeAmount': chargeAmount,
      'taxableAmount': taxableAmount,
      'taxAmount': taxAmount,
      'finalAmount': finalAmount,
      'shippingAmount': shippingAmount,
      'shippingDiscountAmount': shippingDiscountAmount,
      'shippingDiscountPercentage': shippingDiscountPercentage,
      'productDiscountAmount': productDiscountAmount,
      'discountPercentage': discountPercentage,
      'totalDiscountAmount': totalDiscountAmount,
      'promotionDiscountAmount': promotionDiscountAmount,
      'timeEventDiscountAmount': timeEventDiscountAmount,
      'timeEventChargeAmount': timeEventChargeAmount,
      'roundingDecimalAmount': roundingDecimalAmount,
      'note': note,
      'discount': discount?.toJson(),
      'products': products?.map((e) => e.toJson()).toList(),
      'promotion': promotion?.toJson(),
      'giftCard': giftCard?.toJson(),
      'charges': charges?.map((e) => e.toJson()).toList(),
      'chargesForTotals': chargesForTotals?.map((e) => e.toJson()).toList(),
      'taxInfo': taxInfo?.map((e) => e.toJson()).toList(),
    };
  }

  OrderResponseDto copyWith({
    double? totalPrice,
    double? discountAmount,
    double? netTotalPrice,
    double? chargeAmount,
    double? taxableAmount,
    double? taxAmount,
    double? finalAmount,
    double? shippingAmount,
    double? shippingDiscountAmount,
    double? shippingDiscountPercentage,
    double? productDiscountAmount,
    double? discountPercentage,
    double? totalDiscountAmount,
    double? promotionDiscountAmount,
    double? timeEventDiscountAmount,
    double? timeEventChargeAmount,
    double? roundingDecimalAmount,
    String? note,
    OrderProductDiscountDto? discount,
    List<OrderProductResponseDto>? products,
    OrderPromotionAppliesDto? promotion,
    PromotionGiftCardDto? giftCard,
    List<OrderProductChargeDto>? charges,
    List<OrderChargeForTotalDto>? chargesForTotals,
    List<OrderTaxTypeViewDto>? taxInfo,
  }) {
    return OrderResponseDto(
      totalPrice: totalPrice ?? this.totalPrice,
      discountAmount: discountAmount ?? this.discountAmount,
      netTotalPrice: netTotalPrice ?? this.netTotalPrice,
      chargeAmount: chargeAmount ?? this.chargeAmount,
      taxableAmount: taxableAmount ?? this.taxableAmount,
      taxAmount: taxAmount ?? this.taxAmount,
      finalAmount: finalAmount ?? this.finalAmount,
      shippingAmount: shippingAmount ?? this.shippingAmount,
      shippingDiscountAmount:
          shippingDiscountAmount ?? this.shippingDiscountAmount,
      shippingDiscountPercentage:
          shippingDiscountPercentage ?? this.shippingDiscountPercentage,
      productDiscountAmount:
          productDiscountAmount ?? this.productDiscountAmount,
      discountPercentage: discountPercentage ?? this.discountPercentage,
      totalDiscountAmount: totalDiscountAmount ?? this.totalDiscountAmount,
      promotionDiscountAmount:
          promotionDiscountAmount ?? this.promotionDiscountAmount,
      timeEventDiscountAmount:
          timeEventDiscountAmount ?? this.timeEventDiscountAmount,
      timeEventChargeAmount:
          timeEventChargeAmount ?? this.timeEventChargeAmount,
      roundingDecimalAmount:
          roundingDecimalAmount ?? this.roundingDecimalAmount,
      note: note ?? this.note,
      discount: discount ?? this.discount,
      products: products ?? this.products,
      promotion: promotion ?? this.promotion,
      giftCard: giftCard ?? this.giftCard,
      charges: charges ?? this.charges,
      chargesForTotals: chargesForTotals ?? this.chargesForTotals,
      taxInfo: taxInfo ?? this.taxInfo,
    );
  }
}
