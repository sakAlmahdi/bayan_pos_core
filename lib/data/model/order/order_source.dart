enum OrderSource { cashier, web, callCenter }

OrderSource convertStringToOrderSource(String type) {
  switch (type) {
    case "0":
      return OrderSource.cashier;
    case "1":
      return OrderSource.web;
    case "2":
      return OrderSource.callCenter;

    default:
      return OrderSource.cashier;
  }
}

extension OrderSourceExtension on OrderSource {
  int toKey() {
    switch (this) {
      case OrderSource.cashier:
        return 0;
      case OrderSource.web:
        return 1;
      case OrderSource.callCenter:
        return 2;
    }
  }

  String toName() {
    switch (this) {
      case OrderSource.cashier:
        return "كاشير";
      case OrderSource.web:
        return "كاشير الويب";
      case OrderSource.callCenter:
        return "خدمة العملاء";
    }
  }
}
