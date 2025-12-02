import 'package:bayan_pos_core/core/halper/helpers_method.dart';
import 'package:bayan_pos_core/data/enum/order_type.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class Branch {
  @Id()
  int? idSeq;
  @Unique(onConflict: ConflictStrategy.replace)
  String? id;
  String? name;
  String? fName;
  String? email;
  String? phone;
  String? mobile;
  String? taxRegName;
  String? taxCode;
  String? onlineOrderStartTime;
  String? onlineOrderEndTime;
  String? branchPrefix;
  String? customerService;
  String? address;
  String? headerInvoiceMsg;
  String? footerInvoiceMsg;
  bool? receiveOnlineOrders;
  List<int>? orderTypes;
  @Transient()
  List<OrderType?>? get getOrderTypes =>
      orderTypes?.map((e) => convertStringToOrderType(e)).toList();

  @Transient()
  String? get getName => BaseHelpersMethods.isPrimaryLang ? name : fName;

  Branch({
    this.idSeq = 0,
    this.id,
    this.name,
    this.email,
    this.phone,
    this.mobile,
    this.taxRegName,
    this.taxCode,
    this.onlineOrderStartTime,
    this.onlineOrderEndTime,
    this.branchPrefix,
    this.customerService,
    this.address,
    this.headerInvoiceMsg,
    this.footerInvoiceMsg,
    this.fName,
    this.receiveOnlineOrders,
  });

  Branch.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    phone = json['phone'];
    mobile = json['mobile'];
    taxRegName = json['taxRegName'];
    taxCode = json['taxCode'];
    onlineOrderStartTime = json['onlineOrderStartTime'];
    onlineOrderEndTime = json['onlineOrderEndTime'];
    branchPrefix = json['branch_Prefix'];
    customerService = json['customerService'];
    address = json['address'];
    headerInvoiceMsg = json['headerInvoiceMsg'];
    footerInvoiceMsg = json['footerInvoiceMsg'];
    receiveOnlineOrders = json['receiveOnlineOrders'];
    fName = json['fName'];
    if (json['orderTypes'] != null) {
      orderTypes = [];
      json['orderTypes'].forEach((v) {
        orderTypes?.add(int.parse(v.toString()));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['name'] = name;
    data['email'] = email;
    data['phone'] = phone;
    data['mobile'] = mobile;
    data['taxRegName'] = taxRegName;
    data['taxCode'] = taxCode;
    data['onlineOrderStartTime'] = onlineOrderStartTime;
    data['onlineOrderEndTime'] = onlineOrderEndTime;
    data['branch_Prefix'] = branchPrefix;
    data['customerService'] = customerService;
    data['address'] = address;
    data['headerInvoiceMsg'] = headerInvoiceMsg;
    data['footerInvoiceMsg'] = footerInvoiceMsg;
    data['receiveOnlineOrders'] = receiveOnlineOrders;
    data['fName'] = fName;
    if (orderTypes != null) {
      data['orderTypes'] = orderTypes!.map((v) => v).toList();
    }
    return data;
  }
}
