enum PromotionApplyType { quantity, buy }

PromotionApplyType convertStringToPromotionApplyType(int? key) {
  switch (key) {
    case 0:
      return PromotionApplyType.quantity;
    case 1:
      return PromotionApplyType.buy;
    default:
      return PromotionApplyType.quantity;
  }
}
