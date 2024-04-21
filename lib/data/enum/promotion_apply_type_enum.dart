enum PromotionApplyType { quantity, buy }

PromotionApplyType convertStringToPromotionApplyType(int? key) {
  switch (key) {
    case 1:
      return PromotionApplyType.quantity;
    case 2:
      return PromotionApplyType.buy;
    default:
      return PromotionApplyType.quantity;
  }
}
