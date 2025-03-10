import 'package:get/get.dart';

enum ChargeType {
  percentage(1, 'Percentage'),
  amount(2, 'Amount');

  final int value;
  final String name;

  const ChargeType(this.value, this.name);

  // Method to get enum name
  String toName() => name;

  // Method to get ChargeType from value
  static ChargeType fromValue(int? value) {
    return ChargeType.values.firstWhereOrNull(
          (e) => e.value == value,
        ) ??
        ChargeType.amount;
  }
}
