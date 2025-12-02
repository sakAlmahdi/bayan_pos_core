import 'package:flutter_guid/flutter_guid.dart';

class OrderProductTaxTypeDto {
  Guid id;
  String? name;
  double taxableAmount;
  double percent;
  double amount;
  String? taxCode;
  String? taxAccount;
  bool? zeroTax;

  OrderProductTaxTypeDto({
    required this.id,
    required this.name,
    required this.taxableAmount,
    required this.percent,
    required this.amount,
    this.taxCode,
    this.taxAccount,
    this.zeroTax,
  });

  /// Factory method to create an instance from a JSON map
  factory OrderProductTaxTypeDto.fromJson(Map<String, dynamic> json) {
    return OrderProductTaxTypeDto(
      id: Guid(json['id'] as String?),
      name: json['name'] as String?,
      taxableAmount: (json['taxableAmount'] as num).toDouble(),
      percent: (json['percent'] as num).toDouble(),
      amount: (json['amount'] as num).toDouble(),
      taxCode: json['tax_Code'] as String?,
      taxAccount: json['tax_Account'] as String?,
      zeroTax: json['zero_Tax'] as bool?,
    );
  }

  /// Method to convert the instance to a JSON map
  Map<String, dynamic> toJson() {
    return {
      'id': id.value,
      'name': name,
      'taxableAmount': taxableAmount,
      'percent': percent,
      'amount': amount,
      'tax_Code': taxCode,
      'tax_Account': taxAccount,
      'zero_Tax': zeroTax,
    };
  }

  /// Copy method for creating a modified copy of the object
  OrderProductTaxTypeDto copyWith({
    Guid? id,
    String? name,
    double? taxableAmount,
    double? percent,
    double? amount,
    String? taxCode,
    String? taxAccount,
    bool? zeroTax,
  }) {
    return OrderProductTaxTypeDto(
      id: id ?? this.id,
      name: name ?? this.name,
      taxableAmount: taxableAmount ?? this.taxableAmount,
      percent: percent ?? this.percent,
      amount: amount ?? this.amount,
      taxCode: taxCode ?? this.taxCode,
      taxAccount: taxAccount ?? this.taxAccount,
      zeroTax: zeroTax ?? this.zeroTax,
    );
  }
}
