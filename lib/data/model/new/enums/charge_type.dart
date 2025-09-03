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
    switch (value) {
      case 1:
        return ChargeType.percentage;
      case 2:
        return ChargeType.amount;
      default:
        return ChargeType.amount;
    }
  }
}
