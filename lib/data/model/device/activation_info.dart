import 'package:bayan_pos_core/data/model/device/device.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ActivationInfo {
  int? id;
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
  bool? receiveOnlineOrders;

  // List<Device>? devices;

  @Backlink("info")
  final allDevices = ToMany<Device>();

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
    if (json['devices'] != null) {
      json['devices'].forEach((v) {
        // devices.add(Device.fromJson(v));
        allDevices.add(Device.fromJson(v));
      });
      // locator<Store>().box<Device>().putMany(devices);
    }
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
    // if (devices != null) {
    //   data['devices'] = devices!.map((v) => v.toJson()).toList();
    // }
    return data;
  }
}
