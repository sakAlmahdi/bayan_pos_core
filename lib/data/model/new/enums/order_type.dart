enum OrderType {
  DineIn,
  PickUp,
  Delivery,
  InternalDelivery,
  Car,
  TableOrder,
}

extension OrderTypeExtension on OrderType {
  /// Returns the string name of the enum
  String toName() {
    switch (this) {
      case OrderType.DineIn:
        return 'DineIn';
      case OrderType.PickUp:
        return 'PickUp';
      case OrderType.Delivery:
        return 'Delivery';
      case OrderType.InternalDelivery:
        return 'InternalDelivery';
      case OrderType.Car:
        return 'Car';
      case OrderType.TableOrder:
        return 'TableOrder';
      default:
        return 'Unknown';
    }
  }

  /// Returns the integer key of the enum
  int toKey() {
    switch (this) {
      case OrderType.DineIn:
        return 0;
      case OrderType.PickUp:
        return 1;
      case OrderType.Delivery:
        return 2;
      case OrderType.InternalDelivery:
        return 3;
      case OrderType.Car:
        return 4;
      case OrderType.TableOrder:
        return 5;
      default:
        return -1; // Default/fallback value
    }
  }
}
