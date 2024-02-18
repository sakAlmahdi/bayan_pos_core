// import 'package:get/get.dart';
// import 'package:tafisama/app/core/values/strings/app_info_strings.dart';

// /// 0 [casher] The cashier printer that will print the full invoice
// /// 1 [kitchen] Kitchen printer that will print specific items

// enum PrinterType { cashier, kitchen, orderInfo, stickers }

// PrinterType convertStringToPrinterType(String? key) {
//   switch (key) {
//     case "0":
//       return PrinterType.cashier;
//     case "1":
//       return PrinterType.kitchen;
//     case "2":
//       return PrinterType.orderInfo;
//     case "3":
//       return PrinterType.stickers;
//     default:
//       return PrinterType.cashier;
//   }
// }

// extension PrinterTypeExtension on PrinterType {
//   int toKey() {
//     switch (this) {
//       case PrinterType.cashier:
//         return 0;
//       case PrinterType.kitchen:
//         return 1;
//       case PrinterType.orderInfo:
//         return 2;
//       case PrinterType.stickers:
//         return 3;
//     }
//   }

//   String toName() {
//     switch (this) {
//       case PrinterType.cashier:
//         return TranslateKeys.cashier.tr;
//       case PrinterType.kitchen:
//         return TranslateKeys.kitchen.tr;
//       case PrinterType.orderInfo:
//         return TranslateKeys.orderInformation.tr;

//       case PrinterType.stickers:
//         return TranslateKeys.sticker.tr;
//     }
//   }
// }
