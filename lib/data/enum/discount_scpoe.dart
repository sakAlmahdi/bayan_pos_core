///  Order = 1,
//// Item = 2,
//// OrderItem = 3

enum DiscountScpoce {
  order,
  itemOrder,
  orderAndItemOrder,
}

int convertDiscountScopeToCode(DiscountScpoce scope) {
  switch (scope) {
    case DiscountScpoce.order:
      return 1;
    case DiscountScpoce.itemOrder:
      return 2;
    case DiscountScpoce.orderAndItemOrder:
      return 3;
  }
}

DiscountScpoce convertCodeToDiscountScope(int? key) {
  switch (key) {
    case 1:
      return DiscountScpoce.order;
    case 2:
      return DiscountScpoce.itemOrder;
    case 3:
      return DiscountScpoce.orderAndItemOrder;
    default:
      return DiscountScpoce.order;
  }
}
