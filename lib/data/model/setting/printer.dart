import 'package:bayan_pos_core/data/enum/order_type.dart';
import 'package:bayan_pos_core/data/enum/print_to_enum.dart';
import 'package:bayan_pos_core/data/enum/printer_interface.dart';
import 'package:bayan_pos_core/data/enum/printer_type.dart';
import 'package:bayan_pos_core/data/model/setting/printer_setting.dart';
import 'package:bayan_pos_core/export.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class Printer {
  @Id()
  int? idSeq;
  @Unique(onConflict: ConflictStrategy.replace)
  String? id;
  String? name;
  String? fName;
  String? deviceId;
  String? printerModelId;
  int? connectionType;
  String? ipAddress;

  ///TODO: printerType ,products , departments, categoeries , print To not add on api
  ///
  int? printerType;
  int? printTo;
  int? port;
  PrinterSetting? setting;
  List<PrintInSeparate>? products;
  List<PrintInSeparate>? departments;
  List<PrintInSeparate>? categories;
  List<PrintInSeparate>? menus;

  List<int>? orderTypes;
  final settings = ToMany<PrinterSetting>();
  PrinterType get getPrinterType => convertStringToPrinterType(printerType);
  PrinterInterface get getPrinterInterface =>
      convertStringToPrinterInterface(connectionType);
  PrintTo get getPrintTo => convertStringToPrintTo(printTo);

  @Transient()
  List<OrderType> get getOrderTypes =>
      orderTypes
          ?.map((e) => convertStringToOrderType(e) ?? OrderType.dineIn)
          .toList() ??
      [];

  String? get getName => BaseHelpersMethods.isPrimaryLang ? name : fName;

  Printer({
    this.id,
    this.name,
    this.fName,
    this.deviceId,
    this.printerModelId,
    this.connectionType,
    this.ipAddress,
    this.port,
    this.setting,
    this.printerType,
    this.printTo,
    this.orderTypes,
    this.menus,
  });

  Printer.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    fName = json['fName'];
    deviceId = json['deviceId'];
    printerModelId = json['printerModelId'];
    connectionType = json['connectionType'];
    ipAddress = json['ipAddress'];
    port = json['port'];
    printerType = json['printerType'];
    printTo = json['printTo'];
    setting = json['setting'] != null
        ? PrinterSetting.fromJson(json['setting'])
        : null;
    if (json['products'] != null) {
      products = <PrintInSeparate>[];
      json['products'].forEach((v) {
        products!.add(PrintInSeparate.fromJson(v));
      });
    }
    if (json['departments'] != null) {
      departments = <PrintInSeparate>[];
      json['departments'].forEach((v) {
        departments!.add(PrintInSeparate.fromJson(v));
      });
    }
    if (json['categoeries'] != null) {
      categories = <PrintInSeparate>[];
      json['categoeries'].forEach((v) {
        categories!.add(PrintInSeparate.fromJson(v));
      });
    }
    if (json['menus'] != null) {
      menus = <PrintInSeparate>[];
      json['menus'].forEach((v) {
        menus!.add(PrintInSeparate.fromJson(v));
      });
    }
    if (json['orderTypes'] != null) {
      orderTypes = <int>[];
      json['orderTypes'].forEach((v) {
        orderTypes!.add(v);
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['name'] = name;
    data['fName'] = fName;
    data['deviceId'] = deviceId;
    data['printerModelId'] = printerModelId;
    data['connectionType'] = connectionType;
    data['ipAddress'] = ipAddress;
    data['port'] = port;
    data['printerType'] = printerType;
    data['printTo'] = printTo;
    if (setting != null) {
      data['setting'] = setting!.toJson();
    }
    if (products != null) {
      data['products'] = products!.map((v) => v).toList();
    }
    if (departments != null) {
      data['departments'] = departments!.map((v) => v).toList();
    }
    if (categories != null) {
      data['categoeries'] = categories!.map((v) => v).toList();
    }

    if (orderTypes != null) {
      data['orderTypes'] = orderTypes!.map((v) => v).toList();
    }
    return data;
  }

  static List<Printer> fromList(List<dynamic> data) =>
      data.map((e) => Printer.fromJson(e)).toList();
}

@Entity()
class PrintInSeparate {
  @Id()
  int? idSeq;
  String? id;
  bool? printInSeparate;

  PrintInSeparate({this.id, this.printInSeparate});

  PrintInSeparate.fromJson(Map<String, dynamic> json) {
    id = json['id'].toString().toLowerCase();
    printInSeparate = json['printInSeparate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['printInSeparate'] = this.printInSeparate;
    return data;
  }
}
