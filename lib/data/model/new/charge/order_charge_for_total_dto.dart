import 'package:bayan_pos_core/data/model/new/tax/order_product_tax_info_dto.dart';

class OrderChargeForTotalDto {
  String? id; // Using String for Guid
  String? name;
  double? amount;
  double? taxAmount;
  OrderProductTaxInfoDto? taxInfo;

  OrderChargeForTotalDto({
    this.id,
    this.name,
    this.amount,
    this.taxAmount,
    this.taxInfo,
  });

  // fromJson: Converts a Map into an OrderChargeForTotalDto
  factory OrderChargeForTotalDto.fromJson(Map<String, dynamic> json) {
    return OrderChargeForTotalDto(
      id: json['id'] as String,
      name: json['name'] as String,
      amount: (json['amount'] as num).toDouble(),
      taxAmount: (json['taxAmount'] as num).toDouble(),
      taxInfo: json['taxInfo'] != null
          ? OrderProductTaxInfoDto.fromJson(json['taxInfo'])
          : null,
    );
  }

  // toJson: Converts OrderChargeForTotalDto into a Map
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'amount': amount,
      'taxAmount': taxAmount,
      'taxInfo': taxInfo?.toJson(),
    };
  }

  // copyWith: Creates a new instance with updated values
  OrderChargeForTotalDto copyWith({
    String? id,
    String? name,
    double? amount,
    double? taxAmount,
    OrderProductTaxInfoDto? taxInfo,
  }) {
    return OrderChargeForTotalDto(
      id: id ?? this.id,
      name: name ?? this.name,
      amount: amount ?? this.amount,
      taxAmount: taxAmount ?? this.taxAmount,
      taxInfo: taxInfo ?? this.taxInfo,
    );
  }
}
