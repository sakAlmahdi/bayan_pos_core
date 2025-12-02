import 'package:flutter_guid/flutter_guid.dart';

class ChargeTaxRequestDto {
  final double? chargeAmount;
  final Guid? chargeId;
  final Guid? customerId;
  final Guid? taxGroupId;

  // Constructor
  ChargeTaxRequestDto({
    this.chargeAmount,
    this.chargeId,
    this.customerId,
    this.taxGroupId,
  });

  // fromJson method
  factory ChargeTaxRequestDto.fromJson(Map<String, dynamic> json) {
    return ChargeTaxRequestDto(
      chargeAmount: json['chargeAmount'] as double?,
      chargeId: Guid(json['chargeId']),
      customerId: Guid(json['customerId'] as String?),
      taxGroupId: Guid(json['taxGroupId'] as String?),
    );
  }

  // toJson method
  Map<String, dynamic> toJson() {
    return {
      'chargeAmount': chargeAmount,
      'chargeId': chargeId.toString(),
      'customerId': customerId.toString(),
      'taxGroupId': taxGroupId.toString(),
    };
  }

  // copyWith method
  ChargeTaxRequestDto copyWith({
    double? chargeAmount,
    Guid? chargeId,
    Guid? customerId,
    Guid? taxGroupId,
  }) {
    return ChargeTaxRequestDto(
      chargeAmount: chargeAmount ?? this.chargeAmount,
      chargeId: chargeId ?? this.chargeId,
      customerId: customerId ?? this.customerId,
      taxGroupId: taxGroupId ?? this.taxGroupId,
    );
  }
}
