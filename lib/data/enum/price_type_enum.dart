enum PriceType { fixed, open }

convertStringToPriceType(int? key) {
  switch (key) {
    case 0:
      return PriceType.fixed;
    case 1:
      return PriceType.open;
    default:
      return PriceType.fixed;
  }
}
