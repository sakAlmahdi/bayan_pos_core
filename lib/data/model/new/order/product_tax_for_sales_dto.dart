import 'dart:convert';

import 'package:bayan_pos_core/data/model/new/tax/sales_tax_type_edit_dto.dart';

class ProductTaxForSalesDto {
  final double taxPercentage;
  final String? taxGroupId;
  final List<SalesTaxTypeEditDto> taxType;

  ProductTaxForSalesDto({
    required this.taxPercentage,
    this.taxGroupId,
    required this.taxType,
  });

  // Factory constructor to create an instance from JSON
  factory ProductTaxForSalesDto.fromJson(Map<String, dynamic> json) {
    return ProductTaxForSalesDto(
      taxPercentage: json['taxPercentage']?.toDouble() ?? 0.0,
      taxGroupId: json['taxGroupId'],
      taxType: (json['taxType'] as List<dynamic>?)
              ?.map((e) => SalesTaxTypeEditDto.fromJson(e))
              .toList() ??
          [],
    );
  }

  // Method to convert the instance to JSON
  Map<String, dynamic> toJson() {
    return {
      'taxPercentage': taxPercentage,
      'taxGroupId': taxGroupId,
      'taxType': taxType.map((e) => e.toJson()).toList(),
    };
  }

  // Method to create a copy of the instance with overridden values
  ProductTaxForSalesDto copyWith({
    double? taxPercentage,
    String? taxGroupId,
    List<SalesTaxTypeEditDto>? taxType,
  }) {
    return ProductTaxForSalesDto(
      taxPercentage: taxPercentage ?? this.taxPercentage,
      taxGroupId: taxGroupId ?? this.taxGroupId,
      taxType: taxType ?? this.taxType,
    );
  }

  @override
  String toString() {
    return jsonEncode(toJson());
  }
}
