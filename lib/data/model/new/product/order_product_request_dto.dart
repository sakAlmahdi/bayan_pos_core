import 'package:flutter_guid/flutter_guid.dart';

class OrderProductRequestDto {
  int tableRowIndex;
  Guid productId;
  Guid unitId;
  double quantity;
  double? freeQuantity;
  double unitPrice;
  double totalPrice;
  double discountAmount;
  double discountPercentage;
  Guid? discountId;
  Guid? taxGroupId;

  OrderProductRequestDto({
    required this.tableRowIndex,
    required this.productId,
    required this.unitId,
    required this.quantity,
    this.freeQuantity,
    required this.unitPrice,
    required this.totalPrice,
    required this.discountAmount,
    required this.discountPercentage,
    this.discountId,
    this.taxGroupId,
  });

  /// Factory constructor to create an instance from JSON
  factory OrderProductRequestDto.fromJson(Map<String, dynamic> json) {
    return OrderProductRequestDto(
      tableRowIndex: json['tableRowIndex'] as int,
      productId: Guid(json['productId'] as String),
      unitId: Guid(json['unitId'] as String),
      quantity: (json['quantity'] as num).toDouble(),
      freeQuantity: json['freeQuantity'] != null
          ? (json['freeQuantity'] as num).toDouble()
          : null,
      unitPrice: (json['unitPrice'] as num).toDouble(),
      totalPrice: (json['totalPrice'] as num).toDouble(),
      discountAmount: (json['discountAmount'] as num).toDouble(),
      discountPercentage: (json['discountPercentage'] as num).toDouble(),
      discountId: json['discountId'] != null
          ? Guid(json['discountId'] as String)
          : null,
      taxGroupId: json['taxGroupId'] != null
          ? Guid(json['taxGroupId'] as String)
          : null,
    );
  }

  /// Convert the instance to JSON
  Map<String, dynamic> toJson() {
    return {
      'tableRowIndex': tableRowIndex,
      'productId': productId.toString(),
      'unitId': unitId.toString(),
      'quantity': quantity,
      'freeQuantity': freeQuantity,
      'unitPrice': unitPrice,
      'totalPrice': totalPrice,
      'discountAmount': discountAmount,
      'discountPercentage': discountPercentage,
      'discountId': discountId?.toString(),
      'taxGroupId': taxGroupId?.toString(),
    };
  }

  /// Create a copy of the instance with updated fields
  OrderProductRequestDto copyWith({
    int? tableRowIndex,
    Guid? productId,
    Guid? unitId,
    double? quantity,
    double? freeQuantity,
    double? unitPrice,
    double? totalPrice,
    double? discountAmount,
    double? discountPercentage,
    Guid? discountId,
    Guid? taxGroupId,
  }) {
    return OrderProductRequestDto(
      tableRowIndex: tableRowIndex ?? this.tableRowIndex,
      productId: productId ?? this.productId,
      unitId: unitId ?? this.unitId,
      quantity: quantity ?? this.quantity,
      freeQuantity: freeQuantity ?? this.freeQuantity,
      unitPrice: unitPrice ?? this.unitPrice,
      totalPrice: totalPrice ?? this.totalPrice,
      discountAmount: discountAmount ?? this.discountAmount,
      discountPercentage: discountPercentage ?? this.discountPercentage,
      discountId: discountId ?? this.discountId,
      taxGroupId: taxGroupId ?? this.taxGroupId,
    );
  }
}
