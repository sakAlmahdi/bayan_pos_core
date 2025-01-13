import 'package:flutter_guid/flutter_guid.dart';

class ProductUnitPriceFromSlapRequestDto {
  Guid productId;
  Guid unitId;
  double quantity;
  double unitPrice;

  ProductUnitPriceFromSlapRequestDto({
    required this.productId,
    required this.unitId,
    required this.quantity,
    required this.unitPrice,
  });

  // Factory constructor for creating an instance from JSON
  factory ProductUnitPriceFromSlapRequestDto.fromJson(
      Map<String, dynamic> json) {
    return ProductUnitPriceFromSlapRequestDto(
      productId: Guid(json['productId']),
      unitId: Guid(json['unitId']),
      quantity: (json['quantity'] as num).toDouble(),
      unitPrice: (json['unitPrice'] as num).toDouble(),
    );
  }

  // Method to convert the instance to JSON
  Map<String, dynamic> toJson() {
    return {
      'productId': productId.toString(),
      'unitId': unitId.toString(),
      'quantity': quantity,
      'unitPrice': unitPrice,
    };
  }

  // CopyWith method for creating a modified copy of the instance
  ProductUnitPriceFromSlapRequestDto copyWith({
    Guid? productId,
    Guid? unitId,
    double? quantity,
    double? unitPrice,
  }) {
    return ProductUnitPriceFromSlapRequestDto(
      productId: productId ?? this.productId,
      unitId: unitId ?? this.unitId,
      quantity: quantity ?? this.quantity,
      unitPrice: unitPrice ?? this.unitPrice,
    );
  }
}
