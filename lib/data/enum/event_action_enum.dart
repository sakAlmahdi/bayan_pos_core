/// FixedPrice = 1,

/// PriceReductionAmount   = 2,

/// PriceReductionPercentage = 3,

/// PriceincreaseAmount = 4,

/// PriceincreasePercentage = 5,

/// ActiveProducts = 6,

/// DeactivateProducts = 7,

enum EventAction {
  fixedPrice,
  discountPriceFixed,
  discountPricePercentage,
  addFixedPrice,
  addPricePercantage,
  active,
  disactive
}

EventAction converStringToEventAction(int? key) {
  switch (key) {
    case 1:
      return EventAction.fixedPrice;
    case 2:
      return EventAction.discountPriceFixed;
    case 3:
      return EventAction.discountPricePercentage;
    case 4:
      return EventAction.addFixedPrice;
    case 5:
      return EventAction.addPricePercantage;
    case 6:
      return EventAction.active;
    case 7:
      return EventAction.disactive;
    default:
      return EventAction.active;
  }
}

extension EventActionExtension on EventAction {
  String get toName {
    switch (this) {
      case EventAction.fixedPrice:
        return 'سعر ثابت';
      case EventAction.discountPriceFixed:
        return 'خصم مبلغ ثابت';
      case EventAction.discountPricePercentage:
        return 'خصم نسبة مئوية';
      case EventAction.addFixedPrice:
        return 'زيادة مبلغ ثابت';
      case EventAction.addPricePercantage:
        return 'زيادة نسبة مئوية';
      case EventAction.active:
        return 'تفعيل المنتجات';
      case EventAction.disactive:
        return 'إلغاء تفعيل المنتجات';
      default:
        return 'تفعيل المنتجات';
    }
  }
}
