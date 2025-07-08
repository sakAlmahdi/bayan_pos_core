import 'package:flutter_guid/flutter_guid.dart';

class OrderProductTaxTypeDto {
  Guid id;
  String name;
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
      id: Guid(json['Id'] as String),
      name: json['Name'] as String,
      taxableAmount: (json['TaxableAmount'] as num).toDouble(),
      percent: (json['Percent'] as num).toDouble(),
      amount: (json['Amount'] as num).toDouble(),
      taxCode: json['Tax_Code'] as String?,
      taxAccount: json['Tax_Account'] as String?,
      zeroTax: json['Zero_Tax'] as bool?,
    );
  }

  /// Method to convert the instance to a JSON map
  Map<String, dynamic> toJson() {
    return {
      'Id': id.value,
      'Name': name,
      'TaxableAmount': taxableAmount,
      'Percent': percent,
      'Amount': amount,
      'Tax_Code': taxCode,
      'Tax_Account': taxAccount,
      'Zero_Tax': zeroTax,
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
