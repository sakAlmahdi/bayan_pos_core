import 'package:bayan_pos_core/data/model/new/enums/discount_type.dart';
import 'package:flutter_guid/flutter_guid.dart';

class OrderProductDiscountDto {
  String id; // Guid is usually stored as a String in Dart
  String? name;
  double? totalPrice;
  double? discountAmount;
  double? discountPercentage;
  double? discountAmountPerUnit;
  DiscountType? discountType;
  bool? taxable;
  String? notes;

  // Constructor
  OrderProductDiscountDto({
    required this.id,
    this.name,
    this.totalPrice,
    this.discountAmount,
    this.discountPercentage,
    this.discountAmountPerUnit,
    this.discountType,
    this.taxable,
    this.notes,
  });

  // From JSON constructor
  factory OrderProductDiscountDto.fromJson(Map<String, dynamic> json) {
    return OrderProductDiscountDto(
      id: json['id'] as String,
      name: json['name'] as String,
      totalPrice: (json['totalPrice'] as num).toDouble(),
      discountAmount: (json['discountAmount'] as num).toDouble(),
      discountPercentage: (json['discountPercentage'] as num).toDouble(),
      discountAmountPerUnit: (json['discountAmountPerUnit'] as num).toDouble(),
      discountType: DiscountType.values.firstWhere(
        (e) => e.toString() == 'DiscountType.' + json['discountType'],
        orElse: () => DiscountType.percentage, // default value
      ),
      taxable: json['taxable'] as bool?,
      notes: json['notes'] as String?,
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
    );
  }
}
