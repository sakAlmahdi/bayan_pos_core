enum PromotionApplyTo { order, item, fixedPay }

PromotionApplyTo convertStringToPromotionApplyTo(int? key) {
  switch (key) {
    case 0:
      return PromotionApplyTo.order;
    case 1:
      return PromotionApplyTo.item;
    case 2:
      return PromotionApplyTo.fixedPay;
    default:
      return PromotionApplyTo.order;
  }
}
