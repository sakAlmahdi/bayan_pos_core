import 'package:flutter_guid/flutter_guid.dart';

class SalesTaxTypeEditDto {
  String name;
  double taxableAmount;
  double taxAmount;
  double taxPercentage;
  String taxTypeId;
  String? accountId;
  bool zeroTax;
  String? taxCode;

  SalesTaxTypeEditDto({
    required this.name,
    required this.taxableAmount,
    required this.taxAmount,
    required this.taxPercentage,
    required this.taxTypeId,
    this.accountId,
    this.zeroTax = false,
    this.taxCode,
  });

  // fromJson method
  factory SalesTaxTypeEditDto.fromJson(Map<String, dynamic> json) {
    return SalesTaxTypeEditDto(
      name: json['name'],
      taxableAmount: json['taxableAmount']?.toDouble() ?? 0.0,
      taxAmount: json['taxAmount']?.toDouble() ?? 0.0,
      taxPercentage: json['taxPercentage']?.toDouble() ?? 0.0,
      taxTypeId: json['taxTypeId'] ?? Guid.newGuid.toString(),
      accountId: json['accountId'],
      zeroTax: json['zeroTax'] ?? false,
      taxCode: json['taxCode'],
    );
  }

  // toJson method
  Map<String, dynamic> toJson() {
    return {
      'taxableAmount': taxableAmount,
      'taxAmount': taxAmount,
      'taxPercentage': taxPercentage,
      'taxTypeId': taxTypeId,
      'accountId': accountId,
      'zeroTax': zeroTax,
      'taxCode': taxCode,
    };
  }

  // copyWith method
  SalesTaxTypeEditDto copyWith({
    String? name,
    double? taxableAmount,
    double? taxAmount,
    double? taxPercentage,
    String? taxTypeId,
    String? accountId,
    bool? zeroTax,
    String? taxCode,
  }) {
    return SalesTaxTypeEditDto(
      name: name ?? this.name,
      taxableAmount: taxableAmount ?? this.taxableAmount,
      taxAmount: taxAmount ?? this.taxAmount,
      taxPercentage: taxPercentage ?? this.taxPercentage,
      taxTypeId: taxTypeId ?? this.taxTypeId,
      accountId: accountId ?? this.accountId,
      zeroTax: zeroTax ?? this.zeroTax,
      taxCode: taxCode ?? this.taxCode,
    );
  }
}
