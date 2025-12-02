import 'package:bayan_pos_core/data/enum/discount_type.dart';
import 'package:flutter_guid/flutter_guid.dart';

class OrderProductDiscountDto {
  String? id; // Guid is usually stored as a String in Dart
  String? name;
  double? totalPrice;
  double? discountAmount;
  double? discountPercentage;
  double? discountAmountPerUnit;
  DiscountType? discountType;
  bool? taxable;
  String? notes;
  double? minAmountOnProduct;
  double? maxAmountOnProduct;
  double? minAmountOnOrder;
  double? maxAmountOnOrder;

  // Constructor
  OrderProductDiscountDto({
    this.id,
    this.name,
    this.totalPrice,
    this.discountAmount,
    this.discountPercentage,
    this.discountAmountPerUnit,
    this.discountType,
    this.taxable,
    this.notes,
    this.minAmountOnProduct,
    this.maxAmountOnProduct,
    this.minAmountOnOrder,
    this.maxAmountOnOrder,
  });

  // From JSON constructor
  factory OrderProductDiscountDto.fromJson(Map<String, dynamic> json) {
    return OrderProductDiscountDto(
      id: json['id'] as String,
      name: json['name'] as String?,
      totalPrice: (json['totalPrice'] as num?)?.toDouble(),
      discountAmount: (json['discountAmount'] as num?)?.toDouble(),
      discountPercentage: (json['discountPercentage'] as num?)?.toDouble(),
      discountAmountPerUnit:
          (json['discountAmountPerUnit'] as num?)?.toDouble(),
      discountType: convertToDiscountTypeByName(json['discountType']),
      taxable: json['taxable'] as bool?,
      notes: json['notes'] as String?,
      minAmountOnProduct: (json['minAmountOnProduct'] as num?)?.toDouble(),
      maxAmountOnProduct: (json['maxAmountOnProduct'] as num?)?.toDouble(),
      minAmountOnOrder: (json['minAmountOnOrder'] as num?)?.toDouble(),
      maxAmountOnOrder: (json['maxAmountOnOrder'] as num?)?.toDouble(),
    );
  }

  // To JSON method
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'totalPrice': totalPrice,
      'discountAmount': discountAmount,
      'discountPercentage': discountPercentage,
      'discountAmountPerUnit': discountAmountPerUnit,
      'discountType': discountType.toString().split('.').last,
      'taxable': taxable,
      'notes': notes,
      'minAmountOnProduct': minAmountOnProduct,
      'maxAmountOnProduct': maxAmountOnProduct,
      'minAmountOnOrder': minAmountOnOrder,
      'maxAmountOnOrder': maxAmountOnOrder,
    };
  }

  // CopyWith method
  OrderProductDiscountDto copyWith({
    String? id,
    String? name,
    double? totalPrice,
    double? discountAmount,
    double? discountPercentage,
    double? discountAmountPerUnit,
    DiscountType? discountType,
    bool? taxable,
    String? notes,
    double? minAmountOnProduct,
    double? maxAmountOnProduct,
    double? minAmountOnOrder,
    double? maxAmountOnOrder,
  }) {
    return OrderProductDiscountDto(
      id: id ?? this.id,
      name: name ?? this.name,
      totalPrice: totalPrice ?? this.totalPrice,
      discountAmount: discountAmount ?? this.discountAmount,
      discountPercentage: discountPercentage ?? this.discountPercentage,
      discountAmountPerUnit:
          discountAmountPerUnit ?? this.discountAmountPerUnit,
      discountType: discountType ?? this.discountType,
      taxable: taxable ?? this.taxable,
      notes: notes ?? this.notes,
      minAmountOnProduct: minAmountOnProduct ?? this.minAmountOnProduct,
      maxAmountOnProduct: maxAmountOnProduct ?? this.maxAmountOnProduct,
      minAmountOnOrder: minAmountOnOrder ?? this.minAmountOnOrder,
      maxAmountOnOrder: maxAmountOnOrder ?? this.maxAmountOnOrder,
    );
  }
}
