enum PromotionType { simple, advance }

PromotionType convertStringToPromotionType(int? key) {
  switch (key) {
    case 0:
      return PromotionType.simple;
    case 1:
      return PromotionType.advance;
    default:
      return PromotionType.simple;
  }
}
