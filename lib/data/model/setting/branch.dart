import 'package:objectbox/objectbox.dart';

@Entity()
class Branch {
  @Id()
  int? idSeq;
  @Unique(onConflict: ConflictStrategy.replace)
  String? id;
  String? name;
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

  Branch(
      {this.idSeq = 0,
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
      this.receiveOnlineOrders});

  Branch.fromJson(Map<String, dynamic> json) {
    id = json['id1'];
    name = json['name2'];
    email = json['email3'];
    phone = json['phone4'];
    mobile = json['mobile5'];
    taxRegName = json['taxRegName6'];
    taxCode = json['taxCode7'];
    onlineOrderStartTime = json['onlineOrderStartTime8'];
    onlineOrderEndTime = json['onlineOrderEndTime9'];
    branchPrefix = json['branch_Prefix10'];
    customerService = json['customerService11'];
    address = json['address12'];
    headerInvoiceMsg = json['headerInvoiceMsg13'];
    footerInvoiceMsg = json['footerInvoiceMsg14'];
    receiveOnlineOrders = json['receiveOnlineOrders15'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id1'] = id;
    data['name2'] = name;
    data['email3'] = email;
    data['phone4'] = phone;
    data['mobile5'] = mobile;
    data['taxRegName6'] = taxRegName;
    data['taxCode7'] = taxCode;
    data['onlineOrderStartTime8'] = onlineOrderStartTime;
    data['onlineOrderEndTime9'] = onlineOrderEndTime;
    data['branch_Prefix10'] = branchPrefix;
    data['customerService11'] = customerService;
    data['address12'] = address;
    data['headerInvoiceMsg13'] = headerInvoiceMsg;
    data['footerInvoiceMsg14'] = footerInvoiceMsg;
    data['receiveOnlineOrders15'] = receiveOnlineOrders;
    return data;
  }
}
