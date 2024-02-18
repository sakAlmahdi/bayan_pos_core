enum DrawerOpertionEnum { add, withdraw, moveCash, openDrawer }

DrawerOpertionEnum convertKeyToDrawerOpertionEnum(int? key) {
  switch (key) {
    case 0:
      return DrawerOpertionEnum.add;
    case 1:
      return DrawerOpertionEnum.withdraw;
    case 2:
      return DrawerOpertionEnum.moveCash;
    case 3:
      return DrawerOpertionEnum.openDrawer;
    default:
      return DrawerOpertionEnum.openDrawer;
  }
}

extension DrawerOpertionEnumEx on DrawerOpertionEnum {
  String toName() {
    switch (this) {
      case DrawerOpertionEnum.add:
        return 'اضافة';
      case DrawerOpertionEnum.withdraw:
        return 'سحب';
      case DrawerOpertionEnum.moveCash:
        return 'نقل النقدية للخزنه';
      case DrawerOpertionEnum.openDrawer:
        return 'فتح الدرج';
    }
  }

  int toKey() {
    switch (this) {
      case DrawerOpertionEnum.add:
        return 0;
      case DrawerOpertionEnum.withdraw:
        return 1;
      case DrawerOpertionEnum.moveCash:
        return 2;
      case DrawerOpertionEnum.openDrawer:
        return 3;
    }
  }
}
