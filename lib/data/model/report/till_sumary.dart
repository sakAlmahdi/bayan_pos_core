import 'package:bayan_pos_core/data/model/report/currency_total_pay.dart';
import 'package:bayan_pos_core/data/model/report/drawer_report_info.dart';
import 'package:bayan_pos_core/data/model/till/till.dart';

class TillSumary {
  Till? till;
  List<SumaryInfoData>? sumary;
  DrawerReportInfo? drawerReportInfo;
  List<CurrencyTotalPay>? curreniesTotat = [];

  TillSumary({
    this.till,
    this.sumary,
    this.drawerReportInfo,
    this.curreniesTotat,
  });

  TillSumary.fromJson(Map<String, dynamic> json) {
    till = json['till'];
    drawerReportInfo = DrawerReportInfo.fromJson(json['drawerReportInfo']);
    if (json['sumary'] != null) {
      sumary = SumaryInfoData.fromList(json['sumary']);
    }
    if (json['curreniesTotat'] != null) {
      curreniesTotat = CurrencyTotalPay.fromList(json['curreniesTotat']);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};

    data['till'] = till;
    data['drawerReportInfo'] = drawerReportInfo?.toJson();
    data['sumary'] = sumary?.map((e) => e.toJson()).toList();
    data['curreniesTotat'] = curreniesTotat?.map((e) => e.toJson()).toList();
    return data;
  }
}

class SumaryInfoData {
  String? tillId;
  String? paymentMehtodId;
  double? total;
  String? name;
  String? fName;

  SumaryInfoData(
      {this.tillId, this.paymentMehtodId, this.total, this.name, this.fName});

  SumaryInfoData.fromJson(Map<String, dynamic> json) {
    tillId = json['till_id'];
    paymentMehtodId = json['payment_mehtod_id'];
    total = json['total'];
    name = json['name'];
    fName = json['f_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['till_id'] = tillId;
    data['payment_mehtod_id'] = paymentMehtodId;
    data['total'] = total;
    data['name'] = name;
    data['f_name'] = fName;
    return data;
  }

  static List<SumaryInfoData> fromList(List<dynamic> data) =>
      data.map((e) => SumaryInfoData.fromJson(e)).toList();
}
