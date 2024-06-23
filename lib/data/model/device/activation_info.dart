import 'package:bayan_pos_core/bayan_pos_core.dart';
import 'package:bayan_pos_core/data/model/device/device.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ActivationInfo {
  @Id()
  int? idSeq;
  String? id;
  String? name;
  String? fName;
  String? email;
  String? phone;
  String? mobile;
  String? taxRegName;
  String? fTaxRegName;
  String? taxCode;
  String? onlineOrderStartTime;
  String? onlineOrderEndTime;
  String? branchPrefix;
  String? customerService;
  String? countryId;
  String? cityId;
  String? address;
  String? latitude;
  String? longitude;
  String? headerInvoiceMsg;
  String? footerInvoiceMsg;
  String? code;
  String? currentDeviceId;
  bool? receiveOnlineOrders;

  String? company;
  String? fCompany;
  String? branch;
  String? fBranch;

  // List<Device>? devices;

  @Backlink("info")
  final devices = ToMany<Device>();
  @Transient()
  String? get getName => BaseHelpersMethods.isPrimaryLang ? name : fName;
  @Transient()
  String? get getCompanyName =>
      BaseHelpersMethods.isPrimaryLang ? company : fCompany;
  String? get getBranchName =>
      BaseHelpersMethods.isPrimaryLang ? branch : fBranch;

  ActivationInfo({
    this.id,
    this.name,
    this.fName,
    this.email,
    this.phone,
    this.mobile,
    this.taxRegName,
    this.fTaxRegName,
    this.taxCode,
    this.onlineOrderStartTime,
    this.onlineOrderEndTime,
    this.branchPrefix,
    this.customerService,
    this.countryId,
    this.cityId,
    this.address,
    this.latitude,
    this.longitude,
    this.headerInvoiceMsg,
    this.footerInvoiceMsg,
    this.receiveOnlineOrders,
    this.code,
    this.currentDeviceId,
    this.company,
    this.fCompany,
    this.branch,
    this.fBranch,

    // this.devices
  });

  ActivationInfo.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    fName = json['fName'];
    email = json['email'];
    phone = json['phone'];
    mobile = json['mobile'];
    taxRegName = json['taxRegName'];
    fTaxRegName = json['fTaxRegName'];
    taxCode = json['taxCode'];
    onlineOrderStartTime = json['onlineOrderStartTime'];
    onlineOrderEndTime = json['onlineOrderEndTime'];
    branchPrefix = json['branch_Prefix'];
    customerService = json['customerService'];
    countryId = json['countryId'];
    cityId = json['cityId'];
    address = json['address'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    headerInvoiceMsg = json['headerInvoiceMsg'];
    footerInvoiceMsg = json['footerInvoiceMsg'];
    receiveOnlineOrders = json['receiveOnlineOrders'];
    code = json['code'];
    currentDeviceId = json['currentDeviceId'];
    if (json['devices'] != null) {
      json['devices'].forEach((v) {
        // devices.add(Device.fromJson(v));
        devices.add(Device.fromJson(v));
      });
      // locator<Store>().box<Device>().putMany(devices);
    }

    company = json['company'];
    fCompany = json['fCompany'];
    branch = json['branch'];
    fBranch = json['fBranch'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['name'] = name;
    data['fName'] = fName;
    data['email'] = email;
    data['phone'] = phone;
    data['mobile'] = mobile;
    data['taxRegName'] = taxRegName;
    data['fTaxRegName'] = fTaxRegName;
    data['taxCode'] = taxCode;
    data['onlineOrderStartTime'] = onlineOrderStartTime;
    data['onlineOrderEndTime'] = onlineOrderEndTime;
    data['branch_Prefix'] = branchPrefix;
    data['customerService'] = customerService;
    data['countryId'] = countryId;
    data['cityId'] = cityId;
    data['address'] = address;
    data['latitude'] = latitude;
    data['longitude'] = longitude;
    data['headerInvoiceMsg'] = headerInvoiceMsg;
    data['footerInvoiceMsg'] = footerInvoiceMsg;
    data['receiveOnlineOrders'] = receiveOnlineOrders;
    data['code'] = code;
    data['currentDeviceId'] = currentDeviceId;
    data['devices'] = devices!.map((v) => v.toJson()).toList();
    data['company'] = company;
    data['fCompany'] = fCompany;
    data['branch'] = branch;
    data['fBranch'] = fBranch;

    return data;
  }
}
