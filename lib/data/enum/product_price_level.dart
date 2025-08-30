enum ProductPriceLevel {
  unitPrice,
  priceList,
  priceListSlap,
  tieredPricing,
  eventPrice,
}

ProductPriceLevel convertStringToProductPriceLevel(String? key) {
  switch (key) {
    case 'unitPrice':
      return ProductPriceLevel.unitPrice;
    case 'priceList':
      return ProductPriceLevel.priceList;
    case 'priceListSlap':
      return ProductPriceLevel.priceListSlap;
    case 'tieredPricing':
      return ProductPriceLevel.tieredPricing;
    case 'eventPrice':
      return ProductPriceLevel.eventPrice;
  }

  return ProductPriceLevel.unitPrice;
}

extension ProductPriceLevelExtension on ProductPriceLevel {
  String toName() {
    switch (this) {
      case ProductPriceLevel.unitPrice:
        return 'وحدة القياس';
      case ProductPriceLevel.priceList:
        return 'قائمة الأسعار';
      case ProductPriceLevel.priceListSlap:
        return 'شرائح قائمة الأسعار ';
      case ProductPriceLevel.tieredPricing:
        return 'شرائح الاسعار';
      case ProductPriceLevel.eventPrice:
        return 'الفعالية الموقتة';
    }
  }
}
