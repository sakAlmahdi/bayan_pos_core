///  Percentage = 0,
/// Amount = 1,

enum ChargeType {
  percentage,
  price,
}

ChargeType convertStringToChargeType(int? key) {
  switch (key) {
    case 0:
      return ChargeType.percentage;
    case 1:
      return ChargeType.price;
    default:
      return ChargeType.price;
  }
}
