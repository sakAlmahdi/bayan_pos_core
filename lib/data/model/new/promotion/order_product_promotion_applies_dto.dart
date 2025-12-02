import 'package:bayan_pos_core/data/enum/promotion_product_type_enum.dart';

import 'package:flutter_guid/flutter_guid.dart';

class OrderProductPromotionAppliesDto {
  Guid id;
  String name;
  double quantity;
  double unitPrice;
  double netUnitPrice;
  double totalPrice;
  double discountAmount;
  double discountPercentage;
  double netTotalPrice;
  PromotionProductType productType;

  OrderProductPromotionAppliesDto({
    required this.id,
    required this.name,
    required this.quantity,
    required this.unitPrice,
    required this.netUnitPrice,
    required this.totalPrice,
    required this.discountAmount,
    required this.discountPercentage,
    required this.netTotalPrice,
    required this.productType,
  });

  // Factory method to create an instance from JSON
  factory OrderProductPromotionAppliesDto.fromJson(Map<String, dynamic> json) {
    return OrderProductPromotionAppliesDto(
      id: Guid(json['id']),
      name: json['name'],
      quantity: (json['quantity'] as num).toDouble(),
      unitPrice: (json['unitPrice'] as num).toDouble(),
      netUnitPrice: (json['netUnitPrice'] as num).toDouble(),
      totalPrice: (json['totalPrice'] as num).toDouble(),
      discountAmount: (json['discountAmount'] as num).toDouble(),
      discountPercentage: (json['discountPercentage'] as num).toDouble(),
      netTotalPrice: (json['netTotalPrice'] as num).toDouble(),
      productType: json['productType'].toString().contains('Discount')
          ? PromotionProductType.discount
          : PromotionProductType.purchase,
    );
  }

  // Convert the instance to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id.toString(),
      'name': name,
      'quantity': quantity,
      'unitPrice': unitPrice,
      'netUnitPrice': netUnitPrice,
      'totalPrice': totalPrice,
      'discountAmount': discountAmount,
      'discountPercentage': discountPercentage,
      'netTotalPrice': netTotalPrice,
      'productType': productType.toString().split('.').last,
    };
  }

  // CopyWith method to create a new modified instance
  OrderProductPromotionAppliesDto copyWith({
    Guid? id,
    String? name,
    double? quantity,
    double? unitPrice,
    double? netUnitPrice,
    double? totalPrice,
    double? discountAmount,
    double? discountPercentage,
    double? netTotalPrice,
    PromotionProductType? productType,
  }) {
    return OrderProductPromotionAppliesDto(
      id: id ?? this.id,
      name: name ?? this.name,
      quantity: quantity ?? this.quantity,
      unitPrice: unitPrice ?? this.unitPrice,
      netUnitPrice: netUnitPrice ?? this.netUnitPrice,
      totalPrice: totalPrice ?? this.totalPrice,
      discountAmount: discountAmount ?? this.discountAmount,
      discountPercentage: discountPercentage ?? this.discountPercentage,
      netTotalPrice: netTotalPrice ?? this.netTotalPrice,
      productType: productType ?? this.productType,
    );
  }
}
