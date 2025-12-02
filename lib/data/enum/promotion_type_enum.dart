enum PromotionType { simple, advance }

PromotionType convertStringToPromotionType(int? key) {
  switch (key) {
    case 1:
      return PromotionType.simple;
    case 2:
      return PromotionType.advance;
    default:
      return PromotionType.simple;
  }
}
