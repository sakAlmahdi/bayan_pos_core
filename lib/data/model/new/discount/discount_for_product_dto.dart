import 'package:flutter_guid/flutter_guid.dart';

class DiscountForProductDto {
  int referenceNumber;
  Guid id;
  Guid? productId;
  Guid? discountProductId;
  String name;
  DateTime startDate;
  bool? applyForAllCustomers;
  bool? applyForAllBranches;
  bool? applyForAllProducts;

  DiscountForProductDto({
    required this.referenceNumber,
    required this.id,
    this.productId,
    this.discountProductId,
    required this.name,
    required this.startDate,
    this.applyForAllCustomers,
    this.applyForAllBranches,
    this.applyForAllProducts,
  });

  factory DiscountForProductDto.fromJson(Map<String, dynamic> json) {
    return DiscountForProductDto(
      referenceNumber: json['referenceNumber'] as int,
      id: Guid(json['id'] as String),
      productId:
          json['productId'] != null ? Guid(json['productId'] as String) : null,
      discountProductId: json['discountProductId'] != null
          ? Guid(json['discountProductId'] as String)
          : null,
      name: json['name'] as String,
      startDate: DateTime.parse(json['startDate'] as String),
      applyForAllCustomers: json['applyForAllCustomers'] as bool?,
      applyForAllBranches: json['applyForAllBranches'] as bool?,
      applyForAllProducts: json['applyForAllProducts'] as bool?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'referenceNumber': referenceNumber,
      'id': id.toString(),
      'productId': productId?.toString(),
      'discountProductId': discountProductId?.toString(),
      'name': name,
      'startDate': startDate.toIso8601String(),
      'applyForAllCustomers': applyForAllCustomers,
      'applyForAllBranches': applyForAllBranches,
      'applyForAllProducts': applyForAllProducts,
    };
  }

  DiscountForProductDto copyWith({
    int? referenceNumber,
    Guid? id,
    Guid? productId,
    Guid? discountProductId,
    String? name,
    DateTime? startDate,
    bool? applyForAllCustomers,
    bool? applyForAllBranches,
    bool? applyForAllProducts,
  }) {
    return DiscountForProductDto(
      referenceNumber: referenceNumber ?? this.referenceNumber,
      id: id ?? this.id,
      productId: productId ?? this.productId,
      discountProductId: discountProductId ?? this.discountProductId,
      name: name ?? this.name,
      startDate: startDate ?? this.startDate,
      applyForAllCustomers: applyForAllCustomers ?? this.applyForAllCustomers,
      applyForAllBranches: applyForAllBranches ?? this.applyForAllBranches,
      applyForAllProducts: applyForAllProducts ?? this.applyForAllProducts,
    );
  }
}
