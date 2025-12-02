import 'package:bayan_pos_core/data/model/new/tax/order_product_tax_type_dto.dart';

class OrderProductTaxInfoDto {
  double? taxableAmount;
  double? taxAmount;
  double? taxPercentage;
  String?
      taxGroupId; // Dart does not have a native `Guid`, using String for UUID.
  List<OrderProductTaxTypeDto>? appliesTaxTypes;

  OrderProductTaxInfoDto({
    this.taxableAmount,
    this.taxAmount,
    this.taxPercentage,
    this.taxGroupId,
    this.appliesTaxTypes,
  });

  // Factory constructor for creating an instance from JSON
  factory OrderProductTaxInfoDto.fromJson(Map<String, dynamic> json) {
    return OrderProductTaxInfoDto(
      taxableAmount: (json['taxableAmount'] as num?)?.toDouble(),
      taxAmount: (json['taxAmount'] as num?)?.toDouble(),
      taxPercentage: (json['taxPercentage'] as num?)?.toDouble(),
      taxGroupId: json['taxGroupId'] as String?,
      appliesTaxTypes: (json['appliesTaxTypes'] as List<dynamic>?)
          ?.map(
              (e) => OrderProductTaxTypeDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  // Convert the object to JSON format
  Map<String, dynamic> toJson() {
    return {
      'taxableAmount': taxableAmount,
      'taxAmount': taxAmount,
      'taxPercentage': taxPercentage,
      'taxGroupId': taxGroupId,
      'appliesTaxTypes': appliesTaxTypes?.map((e) => e.toJson()).toList(),
    };
  }

  // CopyWith method for cloning the object with optional modifications
  OrderProductTaxInfoDto copyWith({
    double? taxableAmount,
    double? taxAmount,
    double? taxPercentage,
    String? taxGroupId,
    List<OrderProductTaxTypeDto>? appliesTaxTypes,
  }) {
    return OrderProductTaxInfoDto(
      taxableAmount: taxableAmount ?? this.taxableAmount,
      taxAmount: taxAmount ?? this.taxAmount,
      taxPercentage: taxPercentage ?? this.taxPercentage,
      taxGroupId: taxGroupId ?? this.taxGroupId,
      appliesTaxTypes: appliesTaxTypes ?? this.appliesTaxTypes,
    );
  }
}
