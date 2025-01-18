import 'package:bayan_pos_core/data/model/new/tax/sales_tax_type_edit_dto.dart';

class ChargeTaxInfoResponseDto {
  List<SalesTaxTypeEditDto>? taxTypes;
  double taxAmount;
  double taxPercentage;
  double? netAmountRoundingDecimal;

  ChargeTaxInfoResponseDto({
    this.taxTypes,
    this.taxAmount = 0.0,
    this.taxPercentage = 0.0,
    this.netAmountRoundingDecimal,
  });

  // Factory constructor for creating an instance from JSON
  factory ChargeTaxInfoResponseDto.fromJson(Map<String, dynamic> json) {
    return ChargeTaxInfoResponseDto(
      taxTypes: (json['taxTypes'] as List<dynamic>?)
          ?.map((e) => SalesTaxTypeEditDto.fromJson(e))
          .toList(),
      taxAmount: (json['taxAmount'] as num?)?.toDouble() ?? 0.0,
      taxPercentage: (json['taxPercentage'] as num?)?.toDouble() ?? 0.0,
      netAmountRoundingDecimal: json['netAmountRoundingDecimal'],
    );
  }

  // Method to convert the instance to JSON
  Map<String, dynamic> toJson() {
    return {
      'taxTypes': taxTypes?.map((e) => e.toJson()).toList(),
      'taxAmount': taxAmount,
      'taxPercentage': taxPercentage,
      'netAmountRoundingDecimal': netAmountRoundingDecimal,
    };
  }
}
