import 'package:bayan_pos_core/data/model/new/enums/charge_type.dart';
import 'package:bayan_pos_core/data/model/new/tax/order_product_tax_info_dto.dart';
import 'package:flutter_guid/flutter_guid.dart';

class OrderProductChargeDto {
  Guid? chargeId;
  String? name;
  ChargeType? type;
  double? chargableAmount;
  double? value;
  double? percentage;
  double? chargeAmount;
  String? description;
  OrderProductTaxInfoDto? taxInfo;

  OrderProductChargeDto({
    this.chargeId,
    this.name,
    this.type,
    this.chargableAmount,
    this.value,
    this.percentage,
    this.chargeAmount,
    this.description,
    this.taxInfo,
  });

  // fromJson function
  factory OrderProductChargeDto.fromJson(Map<String, dynamic> json) {
    return OrderProductChargeDto(
      chargeId: Guid(json['ChargeId']),
      name: json['Name'],
      type: ChargeType.values
          .firstWhere((e) => e.toString() == 'ChargeType.${json['Type']}'),
      chargableAmount: (json['ChargableAmount'] as num).toDouble(),
      value: (json['Value'] as num).toDouble(),
      percentage: (json['Percentage'] as num).toDouble(),
      chargeAmount: (json['ChargeAmount'] as num).toDouble(),
      description: json['Description'],
      taxInfo: OrderProductTaxInfoDto.fromJson(json['TaxInfo']),
    );
  }

  // toJson function
  Map<String, dynamic> toJson() {
    return {
      'ChargeId': chargeId.toString(),
      'Name': name,
      'Type': type?.name,
      'ChargableAmount': chargableAmount,
      'Value': value,
      'Percentage': percentage,
      'ChargeAmount': chargeAmount,
      'Description': description,
      'TaxInfo': taxInfo?.toJson(),
    };
  }

  // copyWith function
  OrderProductChargeDto copyWith({
    Guid? chargeId,
    String? name,
    ChargeType? type,
    double? chargableAmount,
    double? value,
    double? percentage,
    double? chargeAmount,
    String? description,
    OrderProductTaxInfoDto? taxInfo,
  }) {
    return OrderProductChargeDto(
      chargeId: chargeId ?? this.chargeId,
      name: name ?? this.name,
      type: type ?? this.type,
      chargableAmount: chargableAmount ?? this.chargableAmount,
      value: value ?? this.value,
      percentage: percentage ?? this.percentage,
      chargeAmount: chargeAmount ?? this.chargeAmount,
      description: description ?? this.description,
      taxInfo: taxInfo ?? this.taxInfo,
    );
  }
}
