////
/// DineIn = 0,
/// PickUp = 1,
/// Delivery = 2,
/// InternalDelivery=3,
/// Car=4,
/// TableOrder = 5
///

enum OrderType {
  dineIn,
  pickUp,
  delivery,
  internalDelivery,
  car,
  tableOrder,
}

OrderType? convertStringToOrderType(int? type) {
  switch (type) {
    case 0:
      return OrderType.dineIn;
    case 1:
      return OrderType.pickUp;
    case 2:
      return OrderType.delivery;
    case 3:
      return OrderType.internalDelivery;
    case 4:
      return OrderType.car;
    case 5:
      return OrderType.tableOrder;
  }
  return null;
}

OrderType? convertKeyToOrderType(int key) {
  switch (key) {
    case 0:
      return OrderType.dineIn;
    case 1:
      return OrderType.pickUp;
    case 2:
      return OrderType.delivery;
    case 3:
      return OrderType.internalDelivery;
    case 4:
      return OrderType.car;
    case 5:
      return OrderType.tableOrder;
  }
  return OrderType.dineIn;
}

int convertOrderTypeToKey(OrderType type) {
  switch (type) {
    case OrderType.dineIn:
      return 0;
    case OrderType.pickUp:
      return 1;
    case OrderType.delivery:
      return 2;
    case OrderType.internalDelivery:
      return 3;
    case OrderType.car:
      return 4;
    case OrderType.tableOrder:
      return 5;
  }
}

extension OrderTypeExtension on OrderType {
  int toKey() {
    switch (this) {
      case OrderType.dineIn:
        return 0;
      case OrderType.pickUp:
        return 1;
      case OrderType.delivery:
        return 2;
      case OrderType.internalDelivery:
        return 3;
      case OrderType.car:
        return 4;
      case OrderType.tableOrder:
        return 5;
    }
  }

  String toName() {
    switch (this) {
      case OrderType.dineIn:
        return "محلي";
      case OrderType.pickUp:
        return "استلام";
      case OrderType.delivery:
        return "شركات التوصيل";
      case OrderType.tableOrder:
        return "طلبات الطاولة";
      case OrderType.internalDelivery:
        return "توصيل داخلي";
      case OrderType.car:
        return "سيارة";
      default:
        return "";
    }
  }
}
