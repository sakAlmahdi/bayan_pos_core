import 'package:bayan_pos_core/data/model/new/enums/charge_type.dart';

class ManualChargeRequestDto {
  String? id;
  String? name;
  ChargeType? type;
  double? value;
  String? reason;
  String? cashierId;

  ManualChargeRequestDto({
    this.id,
    this.name,
    this.type,
    this.value,
    this.reason,
    this.cashierId,
  });

  factory ManualChargeRequestDto.fromJson(Map<String, dynamic> json) {
    return ManualChargeRequestDto(
      id: json['id'],
      name: json['name'],
      type: json['type'] != null ? ChargeType.fromValue(json['type']) : null,
      value: json['value'] != null ? (json['value'] as num).toDouble() : null,
      reason: json['reason'],
      cashierId: json['cashierId'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'type': type?.value,
      'value': value,
      'reason': reason,
      'cashierId': cashierId,
    };
  }

  ManualChargeRequestDto copyWith({
    String? id,
    String? name,
    ChargeType? type,
    double? value,
    String? reason,
    String? cashierId,
    bool? isTaxable,
  }) {
    return ManualChargeRequestDto(
      id: id ?? this.id,
      name: name ?? this.name,
      type: type ?? this.type,
      value: value ?? this.value,
      reason: reason ?? this.reason,
      cashierId: cashierId ?? this.cashierId,
    );
  }
}
