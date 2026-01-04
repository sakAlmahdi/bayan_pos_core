import 'dart:convert';

import 'package:bayan_pos_core/data/enum/printer_type.dart';
import 'package:bayan_pos_core/data/model/setting/printer_copy_config.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class PrinterModel {
  @Id()
  int? idSeq;
  @Unique(onConflict: ConflictStrategy.replace)
  String? id;
  String? name;
  String? fName;
  String? deviceId;
  String? printerModelId;
  int? connectionType;
  String? host;
  int? printerType;
  int? printTo;
  int? port;
  final setting = ToOne<PrinterSettingModel>();

  final copyConfigs = ToMany<PrinterCopyConfigModel>();

  String? printerConnectionJson;
  PrintDataFormat printDataFormat = PrintDataFormat.graphical;

  PrinterConnectionType get getConnectionType =>
      convertToPrinterConnectionType(connectionType);

  PrinterType get getPrinterType => convertStringToPrinterType(printerType);

  PrinterModel({
    this.id,
    this.name,
    this.fName,
    this.deviceId,
    this.printerModelId,
    this.connectionType,
    this.host,
    this.port,
    this.printerType,
    this.printTo,
    this.printDataFormat = PrintDataFormat.graphical,
    this.printerConnectionJson,
  });

  PrinterModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    fName = json['fName'];
    deviceId = json['deviceId'];
    printerModelId = json['printerModelId'];
    connectionType = json['connectionType'];
    host = json['host'];
    port = json['port'];
    printerType = json['printerType'];
    printDataFormat = json['printDataFormat'] != null
        ? (json['printDataFormat'] is int
            ? PrintDataFormat.values[json['printDataFormat']]
            : PrintDataFormat.values.firstWhere(
                (e) => e.name == json['printDataFormat'],
                orElse: () => PrintDataFormat.graphical))
        : PrintDataFormat.graphical;

    printTo = json['printTo'];
    setting.target = json['setting'] != null
        ? PrinterSettingModel.fromJson(json['setting'])
        : null;

    if (json['printerConnectionJson'] != null) {
      printerConnectionJson =
          jsonEncode(json['printerConnectionJson']).toString();
    }
    if (json['copyConfigs'] != null) {
      copyConfigs.addAll((json['copyConfigs'] as List)
          .map((e) => PrinterCopyConfigModel.fromJson(e)));
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
    data['host'] = host;
    data['port'] = port;
    data['printerType'] = printerType;
    data['printTo'] = printTo;
    if (setting.target != null) {
      data['setting'] = setting.target!.toJson();
    }

    if (printerConnectionJson != null) {
      data['printerConnectionJson'] = printerConnectionJson;
    }
    data['printDataFormat'] = printDataFormat.name;
    if (data['printerConnectionJson'] != null) {
      printerConnectionJson =
          jsonEncode(data['printerConnectionJson']).toString();
    }
    if (copyConfigs.isNotEmpty) {
      data['copyConfigs'] = copyConfigs.map((e) => e.toJson()).toList();
    }

    return data;
  }

  static List<PrinterModel> fromList(List<dynamic> data) =>
      data.map((e) => PrinterModel.fromJson(e)).toList();
}

@Entity()
class PrinterSettingModel {
  @Id()
  int? idSeq;
  @Unique(onConflict: ConflictStrategy.replace)
  String? id;
  String? printerId;
  String? paperSize;
  int? scale;
  int? imageCutterFactor;
  int? numberOfCopy;
  String? characterEncoding;
  bool? separateCharacters;
  bool? reverseTextOrder;
  int? blackLevel;
  String? copyConfigsJson;
  bool? openCashDrawerOnPrint;
  double? fontFactor;
  String? fontType;

  // JSON string للنسخ

  PrinterSettingModel({
    this.id,
    this.printerId,
    this.paperSize,
    this.scale,
    this.imageCutterFactor,
    this.numberOfCopy,
    this.characterEncoding,
    this.separateCharacters,
    this.reverseTextOrder,
    this.blackLevel,
    this.copyConfigsJson,
    this.openCashDrawerOnPrint = false,
    this.fontFactor,
    this.fontType,
  });

  PrinterSettingModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    printerId = json['printerId'];
    paperSize = json['paperSize'];
    scale = json['scale'];
    imageCutterFactor = json['imageCutterFactor'];
    numberOfCopy = json['numberOfCopy'];
    copyConfigsJson = json['copyConfigsJson'];
    openCashDrawerOnPrint = json['openCashDrawerOnPrint'];
    fontFactor = json['fontFactor'];
    fontType = json['fontType'];
    characterEncoding = json['characterEncoding'];
    separateCharacters = json['separateCharacters'];
    reverseTextOrder = json['reverseTextOrder'];
    blackLevel = json['blackLevel'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['printerId'] = printerId;
    data['paperSize'] = paperSize;
    data['scale'] = scale;
    data['imageCutterFactor'] = imageCutterFactor;

    data['numberOfCopy'] = numberOfCopy;
    if (copyConfigsJson != null) {
      data['copyConfigsJson'] = copyConfigsJson;
    }
    data['openCashDrawerOnPrint'] = openCashDrawerOnPrint;
    data['fontFactor'] = fontFactor;
    data['fontType'] = fontType;
    data['characterEncoding'] = characterEncoding;
    data['separateCharacters'] = separateCharacters;
    data['reverseTextOrder'] = reverseTextOrder;
    data['blackLevel'] = blackLevel;
    return data;
  }
}

enum PrintDataFormat { graphical, escPos }

enum PaperSize { mm80, mm58, mm57, mm40, mm38, mm32, mm29, mm26, mm24, mm21 }

enum PrinterConnectionType { usb, bluetooth, network }

convertToPrinterConnectionType(int? key) {
  switch (key) {
    case 0:
      return PrinterConnectionType.usb;
    case 1:
      return PrinterConnectionType.bluetooth;
    case 2:
      return PrinterConnectionType.network;
  }
}
