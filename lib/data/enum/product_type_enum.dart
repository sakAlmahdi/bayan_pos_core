enum ProductType { product, giftCard, combo }

ProductType convertStringToProductType(int? key) {
  switch (key) {
    case 0:
      return ProductType.product;
    case 1:
      return ProductType.giftCard;
    default:
      return ProductType.product;
  }
}
