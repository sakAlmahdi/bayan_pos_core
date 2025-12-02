enum PriceLevel { price, priceList, eventPrice }

PriceLevel convertStringToOPriceLevel(int type) {
  switch (type) {
    case 0:
      return PriceLevel.price;
    case 1:
      return PriceLevel.priceList;
    case 2:
      return PriceLevel.eventPrice;
    default:
      return PriceLevel.price;
  }
}

extension PriceLevelExtension on PriceLevel {
  int toKey() {
    switch (this) {
      case PriceLevel.price:
        return 0;
      case PriceLevel.priceList:
        return 1;
      case PriceLevel.eventPrice:
        return 2;
    }
  }
}
