import 'dart:convert';

import 'package:bayan_pos_core/core/halper/helpers_method.dart';

class OrderProductUnitPriceDto {
  double? unitPrice;
  String? description;
  String? unitId;
  String? productUnitId;
  String? productUnitPriceListId;
  String? productUnitPriceListSlapId;
  // TODO:: ADD ON API
  String? name;
  String? fName;

  String? get getName => BaseHelpersMethods.isPrimaryLang ? name : fName;

  OrderProductUnitPriceDto({
    this.unitPrice,
    this.description,
    this.unitId,
    this.productUnitId,
    this.productUnitPriceListId,
    this.productUnitPriceListSlapId,
    this.name,
    this.fName,
  });

  // Factory constructor for creating an instance from JSON
  factory OrderProductUnitPriceDto.fromJson(Map<String, dynamic> json) {
    return OrderProductUnitPriceDto(
      unitPrice: (json['unitPrice'] as num?)?.toDouble(),
      description: json['description'] as String?,
      unitId: json['unitId'] as String?,
      productUnitId: json['productUnitId'] as String?,
      productUnitPriceListId: json['productUnitPriceListId'] as String?,
      productUnitPriceListSlapId: json['productUnitPriceListSlapId'] as String?,
      name: json['name'] as String?,
      fName: json['fName'] as String?,
    );
  }

  // Method to convert an instance to JSON
  Map<String, dynamic> toJson() {
    return {
      'unitPrice': unitPrice,
      'description': description,
      'unitId': unitId,
      'productUnitId': productUnitId,
      'productUnitPriceListId': productUnitPriceListId,
      'productUnitPriceListSlapId': productUnitPriceListSlapId,
      'name': name,
      'fName': fName,
    };
  }

  // Method for creating a copy with updated values
  OrderProductUnitPriceDto copyWith({
    double? unitPrice,
    String? description,
    String? unitId,
    String? productUnitId,
    String? productUnitPriceListId,
    String? productUnitPriceListSlapId,
    String? name,
    String? fName,
  }) {
    return OrderProductUnitPriceDto(
      unitPrice: unitPrice ?? this.unitPrice,
      description: description ?? this.description,
      unitId: unitId ?? this.unitId,
      productUnitId: productUnitId ?? this.productUnitId,
      productUnitPriceListId:
          productUnitPriceListId ?? this.productUnitPriceListId,
      productUnitPriceListSlapId:
          productUnitPriceListSlapId ?? this.productUnitPriceListSlapId,
      name: name ?? this.name,
      fName: fName ?? this.fName,
    );
  }

  @override
  String toString() {
    return jsonEncode(toJson());
  }
}
