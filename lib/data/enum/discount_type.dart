///  Percentage = 1,
/// Amount = 2,

enum DiscountType {
  percentage,
  price,
  payFixedPrice,
}

DiscountType convertToDiscontType(int? key) {
  switch (key) {
    case 1:
      return DiscountType.percentage;
    case 2:
      return DiscountType.price;
    case 3:
      return DiscountType.payFixedPrice;
    default:
      return DiscountType.price;
  }
}
