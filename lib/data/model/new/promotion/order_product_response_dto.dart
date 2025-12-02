import 'package:bayan_pos_core/bayan_pos_core.dart';
import 'package:bayan_pos_core/data/enum/product_price_level.dart';
import 'package:bayan_pos_core/data/model/new/charge/order_product_charge_dto.dart';
import 'package:bayan_pos_core/data/model/new/discount/order_product_discount_dto.dart';
import 'package:bayan_pos_core/data/model/new/order/order_product_unit_price.dart';
import 'package:bayan_pos_core/data/model/new/product/order_product_request_dto.dart';
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
  double? unitPriceExcludeTax;
  double? totalPriceExcludeTax;
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
  List<OrderProductAppliedModifierDto>? appliedModifiers;
  String? notes;
  String? trace;

  double? modifiersUnitPrice;
  double? modifiersTotalPrice;
  double? modifiersDiscountAmount;
  double? modifiersDiscountPercentage;
  double? modifiersNetUnitPrice;
  double? modifiersNetTotalPrice;
  double? modifiersNetUnitPriceExcludeTax;
  double? modifiersNetTotalPriceExcludeTax;
  double? modifiersOrderDiscountAmount;
  double? modifiersTaxableAmount;
  double? modifiersTaxAmount;
  double? modifiersFinalAmount;

  double get unitPriceWithModifiers =>
      unitPrice + modifiersUnitPrice.getZeroIfNull;

  double get totalPriceWithModifiers =>
      totalPrice + modifiersTotalPrice.getZeroIfNull;

  double get discountAmountWithModifiers =>
      (discountAmount.getZeroIfNull + modifiersDiscountAmount.getZeroIfNull);

  double? get discountPercentageWithModifiers =>
      discountPercentage; // Assuming this doesn't need modifiers

  double get netUnitPriceWithModifiers =>
      netUnitPrice + modifiersNetUnitPrice.getZeroIfNull;

  double get netTotalPriceWithModifiers =>
      netTotalPrice + modifiersNetTotalPrice.getZeroIfNull;

  double? get netUnitPriceExcludeTaxWithModifiers =>
      (netUnitPriceExcludeTax?.getZeroIfNull ?? 0.0) +
      modifiersNetUnitPriceExcludeTax.getZeroIfNull;

  double? get netTotalPriceExcludeTaxWithModifiers =>
      (netTotalPriceExcludeTax?.getZeroIfNull ?? 0.0) +
      modifiersNetTotalPriceExcludeTax.getZeroIfNull;

  double get orderDiscountAmountWithModifiers =>
      orderDiscountAmount.getZeroIfNull +
      modifiersOrderDiscountAmount.getZeroIfNull;

  double? get taxableAmountWithModifiers =>
      taxableAmount.getZeroIfNull + modifiersTaxableAmount.getZeroIfNull;

  double? get taxAmountWithModifiers =>
      taxAmount.getZeroIfNull + modifiersTaxAmount.getZeroIfNull;

  double get finalAmountWithModifiers =>
      finalAmount + modifiersFinalAmount.getZeroIfNull;

  String? departmentId;
  String? categoryId;

  bool isCancel = false;
  double get totalDiscount =>
      discountAmount.getZeroIfNull + orderDiscountAmount.getZeroIfNull;

  double get subTotal =>
      (netTotalPriceExcludeTaxWithModifiers.getZeroIfNull +
          taxAmountWithModifiers.getZeroIfNull) -
      discountAmountWithModifiers.getZeroIfNull;

  ProductPriceLevel get getProductPriceLevel {
    if (timeEvent != null) {
      return ProductPriceLevel.eventPrice;
    }
    if (tieredPricing != null) {
      return ProductPriceLevel.tieredPricing;
    }

    if (productUnitPrice != null) {
      if (productUnitPrice!.productUnitPriceListSlapId != null &&
          productUnitPrice!.productUnitPriceListSlapId !=
              Guid.defaultValue.value) {
        return ProductPriceLevel.priceListSlap;
      }
      if (productUnitPrice!.productUnitPriceListId != null &&
          productUnitPrice!.productUnitPriceListId != Guid.defaultValue.value) {
        return ProductPriceLevel.priceList;
      }
    }
    return ProductPriceLevel.unitPrice;
  }

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
    this.appliedModifiers,
    this.modifiersUnitPrice,
    this.modifiersTotalPrice,
    this.modifiersDiscountAmount,
    this.modifiersDiscountPercentage,
    this.modifiersNetUnitPrice,
    this.modifiersNetTotalPrice,
    this.modifiersNetUnitPriceExcludeTax,
    this.modifiersNetTotalPriceExcludeTax,
    this.modifiersOrderDiscountAmount,
    this.modifiersTaxableAmount,
    this.modifiersTaxAmount,
    this.modifiersFinalAmount,
    this.isCancel = false,
    this.unitPriceExcludeTax,
    this.totalPriceExcludeTax,
    this.trace,
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
      appliedModifiers: json['appliedModifiers'] != null
          ? (json['appliedModifiers'] as List)
              .map((e) => OrderProductAppliedModifierDto.fromJson(e))
              .toList()
          : null,
      modifiersUnitPrice:
          double.tryParse(json['modifiersUnitPrice']?.toString() ?? ''),
      modifiersTotalPrice:
          double.tryParse(json['modifiersTotalPrice']?.toString() ?? ''),
      modifiersDiscountAmount:
          double.tryParse(json['modifiersDiscountAmount']?.toString() ?? ''),
      modifiersDiscountPercentage: double.tryParse(
          json['modifiersDiscountPercentage']?.toString() ?? ''),
      modifiersNetUnitPrice:
          double.tryParse(json['modifiersNetUnitPrice']?.toString() ?? ''),
      modifiersNetTotalPrice:
          double.tryParse(json['modifiersNetTotalPrice']?.toString() ?? ''),
      modifiersNetUnitPriceExcludeTax: double.tryParse(
          json['modifiersNetUnitPriceExcludeTax']?.toString() ?? ''),
      modifiersNetTotalPriceExcludeTax: double.tryParse(
          json['modifiersNetTotalPriceExcludeTax']?.toString() ?? ''),
      modifiersOrderDiscountAmount: double.tryParse(
          json['modifiersOrderDiscountAmount']?.toString() ?? ''),
      modifiersTaxableAmount:
          double.tryParse(json['modifiersTaxableAmount']?.toString() ?? ''),
      modifiersTaxAmount:
          double.tryParse(json['modifiersTaxAmount']?.toString() ?? ''),
      modifiersFinalAmount:
          double.tryParse(json['modifiersFinalAmount']?.toString() ?? ''),
      isCancel: json['isCancel'] ?? false,
      unitPriceExcludeTax:
          double.tryParse(json['unitPriceExcludeTax']?.toString() ?? ''),
      totalPriceExcludeTax:
          double.tryParse(json['totalPriceExcludeTax']?.toString() ?? ''),
      trace: json['trace'],
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
      'appliedModifiers': appliedModifiers?.map((e) => e.toJson()).toList(),
      'modifiersUnitPrice': modifiersUnitPrice,
      'modifiersTotalPrice': modifiersTotalPrice,
      'modifiersDiscountAmount': modifiersDiscountAmount,
      'modifiersDiscountPercentage': modifiersDiscountPercentage,
      'modifiersNetUnitPrice': modifiersNetUnitPrice,
      'modifiersNetTotalPrice': modifiersNetTotalPrice,
      'modifiersNetUnitPriceExcludeTax': modifiersNetUnitPriceExcludeTax,
      'modifiersNetTotalPriceExcludeTax': modifiersNetTotalPriceExcludeTax,
      'modifiersOrderDiscountAmount': modifiersOrderDiscountAmount,
      'modifiersTaxableAmount': modifiersTaxableAmount,
      'modifiersTaxAmount': modifiersTaxAmount,
      'modifiersFinalAmount': modifiersFinalAmount,
      'unitPriceWithModifiers': unitPriceWithModifiers,
      'totalPriceWithModifiers': totalPriceWithModifiers,
      'discountAmountWithModifiers': discountAmountWithModifiers,
      'discountPercentageWithModifiers': discountPercentageWithModifiers,
      'netUnitPriceWithModifiers': netUnitPriceWithModifiers,
      'netTotalPriceWithModifiers': netTotalPriceWithModifiers,
      'netUnitPriceExcludeTaxWithModifiers':
          netUnitPriceExcludeTaxWithModifiers,
      'netTotalPriceExcludeTaxWithModifiers':
          netTotalPriceExcludeTaxWithModifiers,
      'orderDiscountAmountWithModifiers': orderDiscountAmountWithModifiers,
      'taxableAmountWithModifiers': taxableAmountWithModifiers,
      'taxAmountWithModifiers': taxAmountWithModifiers,
      'finalAmountWithModifiers': finalAmountWithModifiers,
      'isCancel': isCancel,
      'unitPriceExcludeTax': unitPriceExcludeTax,
      'totalPriceExcludeTax': totalPriceExcludeTax,
      'trace': trace,
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
    List<OrderProductAppliedModifierDto>? appliedModifiers,
    OrderProductTaxInfoDto? taxInfo,
    String? notes,
    String? productRef,
    double? modifiersUnitPrice,
    double? modifiersTotalPrice,
    double? modifiersDiscountAmount,
    double? modifiersDiscountPercentage,
    double? modifiersNetUnitPrice,
    double? modifiersNetTotalPrice,
    double? modifiersNetUnitPriceExcludeTax,
    double? modifiersNetTotalPriceExcludeTax,
    double? modifiersOrderDiscountAmount,
    double? modifiersTaxableAmount,
    double? modifiersTaxAmount,
    double? modifiersFinalAmount,
    bool? isCancel,
    double? unitPriceExcludeTax,
    double? totalPriceExcludeTax,
    String? trace,
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
      appliedModifiers: appliedModifiers ?? this.appliedModifiers,
      modifiersUnitPrice: modifiersUnitPrice ?? this.modifiersUnitPrice,
      modifiersTotalPrice: modifiersTotalPrice ?? this.modifiersTotalPrice,
      modifiersDiscountAmount:
          modifiersDiscountAmount ?? this.modifiersDiscountAmount,
      modifiersDiscountPercentage:
          modifiersDiscountPercentage ?? this.modifiersDiscountPercentage,
      modifiersNetUnitPrice:
          modifiersNetUnitPrice ?? this.modifiersNetUnitPrice,
      modifiersNetTotalPrice:
          modifiersNetTotalPrice ?? this.modifiersNetTotalPrice,
      modifiersNetUnitPriceExcludeTax: modifiersNetUnitPriceExcludeTax ??
          this.modifiersNetUnitPriceExcludeTax,
      modifiersNetTotalPriceExcludeTax: modifiersNetTotalPriceExcludeTax ??
          this.modifiersNetTotalPriceExcludeTax,
      modifiersOrderDiscountAmount:
          modifiersOrderDiscountAmount ?? this.modifiersOrderDiscountAmount,
      modifiersTaxableAmount:
          modifiersTaxableAmount ?? this.modifiersTaxableAmount,
      modifiersTaxAmount: modifiersTaxAmount ?? this.modifiersTaxAmount,
      modifiersFinalAmount: modifiersFinalAmount ?? this.modifiersFinalAmount,
      isCancel: isCancel ?? this.isCancel,
      unitPriceExcludeTax: unitPriceExcludeTax ?? this.unitPriceExcludeTax,
      totalPriceExcludeTax: totalPriceExcludeTax ?? this.totalPriceExcludeTax,
      trace: trace ?? this.trace,
    );
  }

  void addTrace(String trace) {
    this.trace = "${this.trace}\n$trace";
  }
}
