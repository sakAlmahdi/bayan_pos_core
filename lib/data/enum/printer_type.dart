import 'package:get/get.dart';

/// 0 [casher] The cashier printer that will print the full invoice
/// 1 [kitchen] Kitchen printer that will print specific items
///
/// casher = 0,
//  kitchen = 1,
//  report = 2,

enum PrinterType { cashier, kitchen, report, orderInfo, stickers }

PrinterType convertStringToPrinterType(int? key) {
  switch (key) {
    case 0:
      return PrinterType.cashier;
    case 1:
      return PrinterType.kitchen;
    case 2:
      return PrinterType.orderInfo;
    case 3:
      return PrinterType.report;
    case 4:
      return PrinterType.stickers;
    default:
      return PrinterType.cashier;
  }
}

extension PrinterTypeEx on PrinterType {
  int toKey() {
    switch (this) {
      case PrinterType.cashier:
        return 0;
      case PrinterType.kitchen:
        return 1;
      case PrinterType.orderInfo:
        return 2;
      case PrinterType.stickers:
        return 3;
      case PrinterType.report:
        return 4;
    }
  }

  String toName() {
    switch (this) {
      case PrinterType.cashier:
        return "كاشير".tr;
      case PrinterType.kitchen:
        return "المطبخ".tr;
      case PrinterType.orderInfo:
        return "معلومات الطلب".tr;
      case PrinterType.stickers:
        return "ملصقات".tr;
      case PrinterType.report:
        return "طابعة التقارير".tr;
    }
  }
}
