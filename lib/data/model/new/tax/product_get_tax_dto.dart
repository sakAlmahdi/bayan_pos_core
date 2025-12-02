import 'package:flutter_guid/flutter_guid.dart';

class ProductGetTaxDto {
  late bool applyTax;
  late bool applyTaxForFreeQuantity;
  double? freeQuantity;
  double? discountAmount;
  late double quantity;
  late Guid productId;
  late double unitPrice;
  bool? applyTaxForDiscount;
  Guid? customerId;
  Guid? taxGroupId;

  ProductGetTaxDto({
    required this.applyTax,
    required this.applyTaxForFreeQuantity,
    required this.freeQuantity,
    required this.discountAmount,
    required this.quantity,
    required this.productId,
    required this.unitPrice,
    this.customerId,
    this.applyTaxForDiscount,
    this.taxGroupId,
  });

  // fromJson
  factory ProductGetTaxDto.fromJson(Map<String, dynamic> json) {
    return ProductGetTaxDto(
      applyTax: json['applyTax'] as bool,
      applyTaxForFreeQuantity: json['applyTaxForFreeQuantity'] as bool,
      freeQuantity: json['freeQuantity'] as double,
      discountAmount: (json['discountAmount'] as num).toDouble(),
      quantity: json['quantity'] as double,
      productId: Guid(json['productId'] as String),
      unitPrice: (json['unitPrice'] as num).toDouble(),
      customerId: Guid(json['customerId'] as String),
      applyTaxForDiscount: json['applyTaxForDiscount'],
      taxGroupId: Guid(json['taxGroupId'] as String?),
    );
  }

  // toJson
  Map<String, dynamic> toJson() {
    return {
      'applyTax': applyTax,
      'applyTaxForFreeQuantity': applyTaxForFreeQuantity,
      'freeQuantity': freeQuantity,
      'discountAmount': discountAmount,
      'quantity': quantity,
      'productId': productId.toString(),
      'unitPrice': unitPrice,
      'customerId': customerId.toString(),
      'applyTaxForDiscount': applyTaxForDiscount,
      'taxGroupId': taxGroupId?.toString(),
    };
  }

  // copyWith
  ProductGetTaxDto copyWith({
    bool? applyTax,
    bool? applyTaxForFreeQuantity,
    double? freeQuantity,
    double? discountAmount,
    double? quantity,
    Guid? productId,
    double? unitPrice,
    Guid? customerId,
    bool? applyTaxForDiscount,
    Guid? taxGroupId,
  }) {
    return ProductGetTaxDto(
      applyTax: applyTax ?? this.applyTax,
      applyTaxForFreeQuantity:
          applyTaxForFreeQuantity ?? this.applyTaxForFreeQuantity,
      freeQuantity: freeQuantity ?? this.freeQuantity,
      discountAmount: discountAmount ?? this.discountAmount,
      quantity: quantity ?? this.quantity,
      productId: productId ?? this.productId,
      unitPrice: unitPrice ?? this.unitPrice,
      customerId: customerId ?? this.customerId,
      applyTaxForDiscount: applyTaxForDiscount ?? this.applyTaxForDiscount,
      taxGroupId: taxGroupId ?? this.taxGroupId,
    );
  }
}
