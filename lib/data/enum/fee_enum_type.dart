///  Percentage = 0,
/// Amount = 1,

enum FeeType {
  percentage,
  price,
}

FeeType convertStringToFeeType(int? key) {
  switch (key) {
    case 0:
      return FeeType.percentage;
    case 1:
      return FeeType.price;
    default:
      return FeeType.price;
  }
}
