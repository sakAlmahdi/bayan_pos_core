/// 0 [ethernet],
/// 1 [wifi],
/// 2 [bluetooth],
/// 3 [usb],

enum PrinterInterface { ethernet, wifi, bluetooth, usb }

PrinterInterface convertStringToPrinterInterface(int? key) {
  switch (key) {
    case 0:
      return PrinterInterface.ethernet;
    case 1:
      return PrinterInterface.wifi;
    case 2:
      return PrinterInterface.bluetooth;
    case 3:
      return PrinterInterface.usb;
    default:
      return PrinterInterface.ethernet;
  }
}

extension PrinterInterfaceEx on PrinterInterface {
  String toName() {
    switch (this) {
      case PrinterInterface.wifi:
        return "Wifi";
      case PrinterInterface.ethernet:
        return "Ethernet";
      case PrinterInterface.bluetooth:
        return "Bluetooth";
      case PrinterInterface.usb:
        return "USB";
    }
  }

  int toKey() {
    switch (this) {
      case PrinterInterface.wifi:
        return 1;
      case PrinterInterface.ethernet:
        return 0;
      case PrinterInterface.bluetooth:
        return 3;
      case PrinterInterface.usb:
        return 4;
    }
  }
}
