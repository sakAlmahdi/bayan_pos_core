import 'dart:convert';
import 'package:bayan_pos_core/data/model/new/charge/order_product_charge_dto.dart';
import 'package:bayan_pos_core/data/model/new/discount/order_product_discount_dto.dart';
import 'package:bayan_pos_core/data/model/new/order/order_product_unit_price.dart';
import 'package:bayan_pos_core/data/model/new/promotion/order_product_promotion_info_dto.dart';
import 'package:bayan_pos_core/data/model/new/tax/order_product_tax_info_dto.dart';
import 'package:bayan_pos_core/data/model/new/tiered_pricings/order_product_tiered_pricing_applies_dto.dart';
import 'package:bayan_pos_core/data/model/new/time_event/order_product_time_event_applies_dto.dart';
import 'package:flutter_guid/flutter_guid.dart';

class OrderProductResponseDto {
  String productRef;
  int tableRowIndex;
  String name;
  String productId;
  String unitId;
  double quantity;
  double? freeQuantity;
  double unitPrice;
  double totalPrice;
  double? discountAmount;
  double? discountPercentage;
  double netUnitPrice;
  double netTotalPrice;
  double? netUnitPriceExcludeTax;
  double? netTotalPriceExcludeTax;
  double? orderDiscountAmount;
  double? taxableAmount;
  double? taxAmount;
  double finalAmount;
  double? roundingDecimalAmount;
  OrderProductUnitPriceDto? productUnitPrice;
  OrderProductTieredPricingAppliesDto? tieredPricing;
  OrderProductTimeEventAppliesDto? timeEvent;
  OrderProductDiscountDto? discount;
  OrderProductPromotionInfoDto? promotionInfo;
  List<OrderProductChargeDto>? charges;
  OrderProductTaxInfoDto? taxInfo;
  String? notes;

  /// TODO add to Api  departmentId , categoryId

  String? departmentId;
  String? categoryId;

  OrderProductResponseDto({
    required this.productRef,
    required this.tableRowIndex,
    required this.name,
    required this.productId,
    required this.unitId,
    required this.quantity,
    this.freeQuantity,
    required this.unitPrice,
    required this.totalPrice,
    this.discountAmount,
    this.discountPercentage,
    required this.netUnitPrice,
    required this.netTotalPrice,
    this.netUnitPriceExcludeTax,
    this.netTotalPriceExcludeTax,
    this.orderDiscountAmount,
    this.taxableAmount,
    this.taxAmount,
    required this.finalAmount,
    this.roundingDecimalAmount,
    this.productUnitPrice,
    this.tieredPricing,
    this.timeEvent,
    this.discount,
    this.promotionInfo,
    this.charges,
    this.taxInfo,
    this.notes,
    this.categoryId,
    this.departmentId,
  });

  factory OrderProductResponseDto.fromJson(Map<String, dynamic> json) {
    return OrderProductResponseDto(
      productRef: Guid(json['productRef']).value,
      tableRowIndex: json['tableRowIndex'],
      name: json['name'],
      productId: json['productId'],
      unitId: json['unitId'],
      quantity: double.tryParse(json['quantity'].toString()) ?? 0.0,
      freeQuantity: double.tryParse(json['freeQuantity'].toString()),
      unitPrice: double.tryParse(json['unitPrice'].toString()) ?? 0.0,
      totalPrice: double.tryParse(json['totalPrice'].toString()) ?? 0.0,
      discountAmount: double.tryParse(json['discountAmount'].toString()),
      discountPercentage:
          double.tryParse(json['discountPercentage'].toString()),
      netUnitPrice: double.tryParse(json['netUnitPrice'].toString()) ?? 0.0,
      netTotalPrice: double.tryParse(json['netTotalPrice'].toString()) ?? 0.0,
      netUnitPriceExcludeTax:
          double.tryParse(json['netUnitPriceExcludeTax'].toString()),
      netTotalPriceExcludeTax:
          double.tryParse(json['netTotalPriceExcludeTax'].toString()),
      orderDiscountAmount:
          double.tryParse(json['orderDiscountAmount'].toString()),
      taxableAmount: double.tryParse(json['taxableAmount'].toString()),
      taxAmount: double.tryParse(json['taxAmount'].toString()),
      finalAmount: double.tryParse(json['finalAmount'].toString()) ?? 0.0,
      roundingDecimalAmount:
          double.tryParse(json['roundingDecimalAmount'].toString()),
      productUnitPrice: json['productUnitPrice'] != null
          ? OrderProductUnitPriceDto.fromJson(json['productUnitPrice'])
          : null,
      tieredPricing: json['tieredPricing'] != null
          ? OrderProductTieredPricingAppliesDto.fromJson(json['tieredPricing'])
          : null,
      timeEvent: json['timeEvent'] != null
          ? OrderProductTimeEventAppliesDto.fromJson(json['timeEvent'])
          : null,
      discount: json['discount'] != null
          ? OrderProductDiscountDto.fromJson(json['discount'])
          : null,
      promotionInfo: json['promotionInfo'] != null
          ? OrderProductPromotionInfoDto.fromJson(json['promotionInfo'])
          : null,
      charges: json['charges'] != null
          ? (json['charges'] as List)
              .map((e) => OrderProductChargeDto.fromJson(e))
              .toList()
          : null,
      taxInfo: json['taxInfo'] != null
          ? OrderProductTaxInfoDto.fromJson(json['taxInfo'])
          : null,
      notes: json['notes'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'productRef': productRef,
      'tableRowIndex': tableRowIndex,
      'name': name,
      'productId': productId,
      'unitId': unitId,
      'quantity': quantity,
      'freeQuantity': freeQuantity,
      'unitPrice': unitPrice,
      'totalPrice': totalPrice,
      'discountAmount': discountAmount,
      'discountPercentage': discountPercentage,
      'netUnitPrice': netUnitPrice,
      'netTotalPrice': netTotalPrice,
      'netUnitPriceExcludeTax': netUnitPriceExcludeTax,
      'netTotalPriceExcludeTax': netTotalPriceExcludeTax,
      'orderDiscountAmount': orderDiscountAmount,
      'taxableAmount': taxableAmount,
      'taxAmount': taxAmount,
      'finalAmount': finalAmount,
      'roundingDecimalAmount': roundingDecimalAmount,
      'productUnitPrice': productUnitPrice?.toJson(),
      'tieredPricing': tieredPricing?.toJson(),
      'timeEvent': timeEvent?.toJson(),
      'discount': discount?.toJson(),
      'promotionInfo': promotionInfo?.toJson(),
      'charges': charges?.map((e) => e.toJson()).toList(),
      'taxInfo': taxInfo?.toJson(),
      'notes': notes,
    };
  }

  OrderProductResponseDto copyWith({
    int? tableRowIndex,
    String? name,
    String? productId,
    String? unitId,
    double? quantity,
    double? freeQuantity,
    double? unitPrice,
    double? totalPrice,
    double? discountAmount,
    double? discountPercentage,
    double? netUnitPrice,
    double? netTotalPrice,
    double? netUnitPriceExcludeTax,
    double? netTotalPriceExcludeTax,
    double? orderDiscountAmount,
    double? taxableAmount,
    double? taxAmount,
    double? finalAmount,
    double? roundingDecimalAmount,
    OrderProductUnitPriceDto? productUnitPrice,
    OrderProductTieredPricingAppliesDto? tieredPricing,
    OrderProductTimeEventAppliesDto? timeEvent,
    OrderProductDiscountDto? discount,
    OrderProductPromotionInfoDto? promotionInfo,
    List<OrderProductChargeDto>? charges,
    OrderProductTaxInfoDto? taxInfo,
    String? notes,
    String? productRef,
  }) {
    return OrderProductResponseDto(
      productRef: productRef ?? this.productRef,
      tableRowIndex: tableRowIndex ?? this.tableRowIndex,
      name: name ?? this.name,
      productId: productId ?? this.productId,
      unitId: unitId ?? this.unitId,
      quantity: quantity ?? this.quantity,
      freeQuantity: freeQuantity ?? this.freeQuantity,
      unitPrice: unitPrice ?? this.unitPrice,
      totalPrice: totalPrice ?? this.totalPrice,
      discountAmount: discountAmount ?? this.discountAmount,
      discountPercentage: discountPercentage ?? this.discountPercentage,
      netUnitPrice: netUnitPrice ?? this.netUnitPrice,
      netTotalPrice: netTotalPrice ?? this.netTotalPrice,
      netUnitPriceExcludeTax:
          netUnitPriceExcludeTax ?? this.netUnitPriceExcludeTax,
      netTotalPriceExcludeTax:
          netTotalPriceExcludeTax ?? this.netTotalPriceExcludeTax,
      orderDiscountAmount: orderDiscountAmount ?? this.orderDiscountAmount,
      taxableAmount: taxableAmount ?? this.taxableAmount,
      taxAmount: taxAmount ?? this.taxAmount,
      finalAmount: finalAmount ?? this.finalAmount,
      roundingDecimalAmount:
          roundingDecimalAmount ?? this.roundingDecimalAmount,
      productUnitPrice: productUnitPrice ?? this.productUnitPrice,
      tieredPricing: tieredPricing ?? this.tieredPricing,
      timeEvent: timeEvent ?? this.timeEvent,
      discount: discount ?? this.discount,
      promotionInfo: promotionInfo ?? this.promotionInfo,
      charges: charges ?? this.charges,
      taxInfo: taxInfo ?? this.taxInfo,
      notes: notes ?? this.notes,
    );
  }
}
