import 'package:bayan_pos_core/bayan_pos_core.dart';
import 'package:bayan_pos_core/data/enum/order_type.dart';
import 'package:bayan_pos_core/data/model/device/activation_info.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class Device {
  int? id;
  @Unique(onConflict: ConflictStrategy.replace)
  String? deviceId;
  String? deviceTypeId;
  String? deviceModelId;
  int? deviceTypeCode;
  int? masterDeviceNo;
  String? reference;
  String? name;
  String? fName;
  bool? enableOnlineOrderReceiver;
  String? model;
  String? systemVersion;
  String? appVersion;
  String? build;
  String? latitude;
  String? longitude;
  String? connectionIPAddress;
  int? connectionPort;
  int? connectionType;
  String? imei;
  List<int>? orderTypes;
  int? get callNumberStart => setting.target?.dailyStartCallNumber ?? 1;
  int? get callNumberReset => setting.target?.dailyReCallNumber ?? 1000;
  bool? get forceRestCallNumberEveryDay =>
      setting.target?.forceRestCallNumberEveryDay;

  String? get invoiceNumberPrefixSymbol =>
      setting.target?.invoiceNumberPerfixSymoble;
  String? get invoiceNumberPrefix => setting.target?.invoiceNumberPerfix;
  String? refrencePrefix;

  // bool? get autoIp => connectionType == 'wifi';
  bool? get autoIp => connectionType == 1;
  String? ip;

  @Transient()
  List<OrderType?>? get getOrderTypes =>
      orderTypes?.map((e) => convertStringToOrderType(e)).toList();

  final info = ToOne<ActivationInfo>();

  final setting = ToOne<DeviceSetting>();

  String? get getName => BaseHelpersMethods.isPrimaryLang ? name : fName;

  List<String>? products;
  List<String>? categories;
  List<String>? departments;
  List<String>? users;
  List<String>? resturnatSections;

  Device({
    this.id,
    this.deviceId,
    this.deviceTypeId,
    this.deviceModelId,
    this.masterDeviceNo,
    this.reference,
    this.name,
    this.fName,
    this.enableOnlineOrderReceiver,
    this.model,
    this.systemVersion,
    this.appVersion,
    this.build,
    this.latitude,
    this.longitude,
    this.connectionIPAddress,
    this.connectionPort,
    this.connectionType,
    this.orderTypes,
    this.imei,
    this.deviceTypeCode,
    this.refrencePrefix,
    this.categories,
    this.departments,
    this.products,
    this.resturnatSections,
    this.users,
  });

  Device.fromJson(Map<String, dynamic> json) {
    // id = json['id'];
    deviceId = json['id'];
    deviceTypeId = json['deviceTypeId'];
    deviceModelId = json['deviceModelId'];
    masterDeviceNo = json['masterDeviceNo'];
    reference = json['reference'];
    deviceTypeCode = json['deviceTypeCode'];
    name = json['name'];
    fName = json['fName'];
    enableOnlineOrderReceiver = json['enableOnlineOrderReceiver'];
    model = json['model'];
    systemVersion = json['systemVersion'];
    appVersion = json['appVersion'];
    build = json['build'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    connectionIPAddress = json['connectionIPAddress'];
    connectionPort = json['connectionPort'] ?? 4567;
    connectionType = json['connectionType'];
    // autoIp = json['autoIp'];
    ip = json['ip'];

    imei = json['imei'];
    // imei = json['id'];
    if (json['orderTypes'] != null) {
      orderTypes = [];
      json['orderTypes'].forEach((v) {
        orderTypes?.add(int.parse(v.toString()));
      });
    }
    if (json['products'] != null) {
      products = [];
      json['products'].forEach((v) {
        products?.add(v);
      });
    }
    if (json['categoeries'] != null) {
      categories = [];
      json['categoeries'].forEach((v) {
        categories?.add(v);
      });
    }
    if (json['departments'] != null) {
      departments = [];
      json['departments'].forEach((v) {
        departments?.add(v);
      });
    }

    refrencePrefix = json['refrencePerfix'];
    if (json['settings'] != null) {
      setting.target = DeviceSetting.fromJson(json['settings']);
    }

    if (json['users'] != null) {
      users = <String>[];
      json['users'].forEach((v) {
        users!.add(v!.toString().toLowerCase());
      });
    }
    if (json['resturnatSections'] != null) {
      resturnatSections = <String>[];
      json['resturnatSections'].forEach((v) {
        resturnatSections!.add(v!.toString().toLowerCase());
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = deviceId;
    data['deviceTypeId'] = deviceTypeId;
    data['deviceTypeCode'] = deviceTypeCode;
    data['deviceModelId'] = deviceModelId;
    data['masterDeviceNo'] = masterDeviceNo;
    data['reference'] = reference;
    data['name'] = name;
    data['fName'] = fName;
    data['enableOnlineOrderReceiver'] = enableOnlineOrderReceiver;
    data['model'] = model;
    data['systemVersion'] = systemVersion;
    data['appVersion'] = appVersion;
    data['build'] = build;
    data['latitude'] = latitude;
    data['longitude'] = longitude;
    data['connectionIPAddress'] = connectionIPAddress;
    data['connectionPort'] = connectionPort;
    data['connectionType'] = connectionType;
    data['imei'] = imei;
    data['autoIp'] = autoIp;
    data['ip'] = ip;
    if (orderTypes != null) {
      data['orderTypes'] = orderTypes!.map((v) => v).toList();
    }
    if (products != null) {
      data['products'] = products!.map((v) => v).toList();
    }
    if (categories != null) {
      data['categoeries'] = products!.map((v) => v).toList();
    }
    if (departments != null) {
      data['departments'] = products!.map((v) => v).toList();
    }
    data['callNumberStart'] = callNumberStart;
    data['callNumberReset'] = callNumberReset;
    data['forceRestCallNumberEveryDay'] = forceRestCallNumberEveryDay;
    data["invoiceNumberPerfixSymoble"] = invoiceNumberPrefixSymbol;
    data["invoiceNumberPerfix"] = invoiceNumberPrefix;
    data["refrencePerfix"] = refrencePrefix;
    data['users'] = users;
    data['resturnatSections'] = resturnatSections;
    return data;
  }

  static List<Device> fromList(List<dynamic> data) =>
      data.map((e) => Device.fromJson(e)).toList();
}

@Entity()
class DeviceSetting {
  @Id()
  int? idSeq;
  int? dailyStartCallNumber;
  int? dailyReCallNumber;
  String? newOrderDefaultType;
  String? printLanguage;
  String? defaultTag;
  String? emailForDailyReport;
  String? emailForShiftReport;
  String? emailForTillReport;
  bool? autoConnectToDevices;
  bool? enableBarcodeScanner;
  bool? acceptOnlineOrders;
  bool? sentOnlineOrdersToKitchen;
  bool? printOnlineOrdersUponReceipt;
  bool? disableAutoPrintInvoice;
  bool? readCallNumberFromMasterCasher;
  bool? printReceiptVoucherTransactions;
  bool? forceSelectPriceList;
  bool? forceSelectChareOnProductSale;
  bool? forceRestCallNumberEveryDay;
  String? invoiceNumberPerfixSymoble;
  String? invoiceNumberPerfix;
  bool? refrencePerfix;

  DeviceSetting({
    this.idSeq,
    this.dailyStartCallNumber,
    this.dailyReCallNumber,
    this.newOrderDefaultType,
    this.printLanguage,
    this.defaultTag,
    this.emailForDailyReport,
    this.emailForShiftReport,
    this.emailForTillReport,
    this.autoConnectToDevices,
    this.enableBarcodeScanner,
    this.acceptOnlineOrders,
    this.sentOnlineOrdersToKitchen,
    this.printOnlineOrdersUponReceipt,
    this.disableAutoPrintInvoice,
    this.readCallNumberFromMasterCasher,
    this.printReceiptVoucherTransactions,
    this.forceSelectPriceList,
    this.forceSelectChareOnProductSale,
    this.forceRestCallNumberEveryDay,
    this.invoiceNumberPerfixSymoble,
    this.invoiceNumberPerfix,
    this.refrencePerfix,
  });

  DeviceSetting.fromJson(Map<String, dynamic> json) {
    dailyStartCallNumber = json['daily_Start_Call_Number'];
    dailyReCallNumber = json['daily_Re_Call_Number'];
    newOrderDefaultType = json['new_Order_Default_Type']?.toString();
    printLanguage = json['print_language'];
    defaultTag = json['default_Tag'];
    emailForDailyReport = json['email_For_Daily_Report'];
    emailForShiftReport = json['email_For_Shift_Report'];
    emailForTillReport = json['email_For_Till_Report'];
    autoConnectToDevices = json['auto_Connect_To_Devices'];
    enableBarcodeScanner = json['enable_Barcode_Scanner'];
    acceptOnlineOrders = json['accept_Online_Orders'];
    sentOnlineOrdersToKitchen = json['sent_Online_OrdersToKitchen'];
    printOnlineOrdersUponReceipt = json['print_Online_Orders_Upon_Receipt'];
    disableAutoPrintInvoice = json['disable_Auto_Print_Invoice'];
    readCallNumberFromMasterCasher =
        json['read_Call_Number_From_Master_Casher'];
    printReceiptVoucherTransactions =
        json['print_Receipt_Voucher_Transactions'];
    forceSelectPriceList = json['force_Select_Price_List'];
    forceSelectChareOnProductSale = json['force_Select_Chare_On_Product_Sale'];
    forceRestCallNumberEveryDay = json['forceRestCallNumberEveryDay'];
    invoiceNumberPerfixSymoble = json['invoiceNumberPerfixSymoble'];
    invoiceNumberPerfix = json['invoiceNumberPerfix'];
    refrencePerfix = json['refrencePerfix'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['daily_Start_Call_Number'] = dailyStartCallNumber;
    data['daily_Re_Call_Number'] = dailyReCallNumber;
    data['new_Order_Default_Type'] = newOrderDefaultType;
    data['print_language'] = printLanguage;
    data['default_Tag'] = defaultTag;
    data['email_For_Daily_Report'] = emailForDailyReport;
    data['email_For_Shift_Report'] = emailForShiftReport;
    data['email_For_Till_Report'] = emailForTillReport;
    data['auto_Connect_To_Devices'] = autoConnectToDevices;
    data['enable_Barcode_Scanner'] = enableBarcodeScanner;
    data['accept_Online_Orders'] = acceptOnlineOrders;
    data['sent_Online_OrdersToKitchen'] = sentOnlineOrdersToKitchen;
    data['print_Online_Orders_Upon_Receipt'] = printOnlineOrdersUponReceipt;
    data['disable_Auto_Print_Invoice'] = disableAutoPrintInvoice;
    data['read_Call_Number_From_Master_Casher'] =
        readCallNumberFromMasterCasher;
    data['print_Receipt_Voucher_Transactions'] =
        printReceiptVoucherTransactions;
    data['force_Select_Price_List'] = forceSelectPriceList;
    data['force_Select_Chare_On_Product_Sale'] = forceSelectChareOnProductSale;
    data['forceRestCallNumberEveryDay'] = forceRestCallNumberEveryDay;
    data['invoiceNumberPerfixSymoble'] = invoiceNumberPerfixSymoble;
    data['invoiceNumberPerfix'] = invoiceNumberPerfix;
    data['refrencePerfix'] = refrencePerfix;

    return data;
  }
}
