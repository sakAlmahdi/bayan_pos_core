enum PromotionApplyTo { order, item, fixedPay }

PromotionApplyTo convertStringToPromotionApplyTo(int? key) {
  switch (key) {
    case 1:
      return PromotionApplyTo.order;
    case 2:
      return PromotionApplyTo.item;
    case 3:
      return PromotionApplyTo.fixedPay;
    default:
      return PromotionApplyTo.order;
  }
}
