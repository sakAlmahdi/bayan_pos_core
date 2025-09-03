import 'package:bayan_pos_core/data/model/new/enums/charge_type.dart';
import 'package:bayan_pos_core/data/model/new/tax/order_product_tax_info_dto.dart';

class ManualChargeResponseDto {
  String? id;
  String? name;
  ChargeType? type;
  double? value;
  double? calculatedAmount;
  String? reason;
  String? cashierId;
  String? cashierName;
  DateTime? appliedDate;
  bool? isTaxable;
  double? taxAmount;
  double? totalAmountWithTax;
  OrderProductTaxInfoDto? taxInfo;

  ManualChargeResponseDto({
    this.id,
    this.name,
    this.type,
    this.value,
    this.calculatedAmount,
    this.reason,
    this.cashierId,
    this.cashierName,
    this.appliedDate,
    this.isTaxable,
    this.taxAmount,
    this.totalAmountWithTax,
    this.taxInfo,
  });

  factory ManualChargeResponseDto.fromJson(Map<String, dynamic> json) {
    return ManualChargeResponseDto(
      id: json['id'],
      name: json['name'],
      type: json['type'] != null ? ChargeType.fromValue(json['type']) : null,
      value: json['value'] != null ? (json['value'] as num).toDouble() : null,
      calculatedAmount: json['calculatedAmount'] != null
          ? (json['calculatedAmount'] as num).toDouble()
          : null,
      reason: json['reason'],
      cashierId: json['cashierId'],
      cashierName: json['cashierName'],
      appliedDate: json['appliedDate'] != null
          ? DateTime.parse(json['appliedDate'])
          : null,
      isTaxable: json['isTaxable'],
      taxAmount: json['taxAmount'] != null
          ? (json['taxAmount'] as num).toDouble()
          : null,
      totalAmountWithTax: json['totalAmountWithTax'] != null
          ? (json['totalAmountWithTax'] as num).toDouble()
          : null,
      taxInfo: json['taxInfo'] != null
          ? OrderProductTaxInfoDto.fromJson(json['taxInfo'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'type': type?.value,
      'value': value,
      'calculatedAmount': calculatedAmount,
      'reason': reason,
      'cashierId': cashierId,
      'cashierName': cashierName,
      'appliedDate': appliedDate?.toIso8601String(),
      'isTaxable': isTaxable,
      'taxAmount': taxAmount,
      'totalAmountWithTax': totalAmountWithTax,
      'taxInfo': taxInfo?.toJson(),
    };
  }

  ManualChargeResponseDto copyWith({
    String? id,
    String? name,
    ChargeType? type,
    double? value,
    double? calculatedAmount,
    String? reason,
    String? cashierId,
    String? cashierName,
    DateTime? appliedDate,
    bool? isTaxable,
    double? taxAmount,
    double? totalAmountWithTax,
    OrderProductTaxInfoDto? taxInfo,
  }) {
    return ManualChargeResponseDto(
      id: id ?? this.id,
      name: name ?? this.name,
      type: type ?? this.type,
      value: value ?? this.value,
      calculatedAmount: calculatedAmount ?? this.calculatedAmount,
      reason: reason ?? this.reason,
      cashierId: cashierId ?? this.cashierId,
      cashierName: cashierName ?? this.cashierName,
      appliedDate: appliedDate ?? this.appliedDate,
      isTaxable: isTaxable ?? this.isTaxable,
      taxAmount: taxAmount ?? this.taxAmount,
      totalAmountWithTax: totalAmountWithTax ?? this.totalAmountWithTax,
      taxInfo: taxInfo ?? this.taxInfo,
    );
  }
}
