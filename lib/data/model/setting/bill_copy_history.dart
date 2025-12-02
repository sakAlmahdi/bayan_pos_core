import 'package:objectbox/objectbox.dart';

@Entity()
class BillCopyHistory {
  int? id;
  @Index()
  String? billRef;
  String? billNo;
  String? billeDate;

  BillCopyHistory({this.id, this.billRef, this.billeDate, this.billNo});

  BillCopyHistory.fromJson(Map<String, dynamic> json) {
    billRef = json['billRef'];
    billNo = json['billNo'];
    billeDate = json['billeDate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['billRef'] = billRef;
    data['billNo'] = billNo;
    data['billeDate'] = billeDate;
    return data;
  }
}
