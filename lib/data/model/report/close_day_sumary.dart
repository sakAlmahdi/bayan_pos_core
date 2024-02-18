import 'package:bayan_pos_core/data/model/report/till_sumary.dart';

class CloseDaySuamry {
  String? openAt;
  String? closeAt;
  List<PaymentsMethodInfo>? paymentsMethodInfo;
  Payments? payments;
  List<TillSumary>? tillsSumary;

  CloseDaySuamry({
    this.openAt,
    this.closeAt,
    this.paymentsMethodInfo,
    this.payments,
    this.tillsSumary,
  });

  CloseDaySuamry.fromJson(Map<String, dynamic> json) {
    openAt = json['openAt'];
    closeAt = json['closeAt'];
    if (json['paymentsMethodInfo'] != null) {
      paymentsMethodInfo = <PaymentsMethodInfo>[];
      json['paymentsMethodInfo'].forEach((v) {
        paymentsMethodInfo!.add(PaymentsMethodInfo.fromJson(v));
      });
    }
    payments =
        json['payments'] != null ? Payments.fromJson(json['payments']) : null;
    if (json['tillsSumary'] != null) {
      tillsSumary = <TillSumary>[];
      json['tillsSumary'].forEach((v) {
        tillsSumary!.add(TillSumary.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['openAt'] = openAt;
    data['closeAt'] = closeAt;
    if (paymentsMethodInfo != null) {
      data['paymentsMethodInfo'] =
          paymentsMethodInfo!.map((v) => v.toJson()).toList();
    }
    if (payments != null) {
      data['payments'] = payments!.toJson();
    }
    if (tillsSumary != null) {
      data['tillsSumary'] = tillsSumary?.map((e) => e.toJson()).toList();
    }
    return data;
  }
}

class PaymentsMethodInfo {
  String? paymentMehtodId;
  double? total;
  String? name;
  String? fName;

  PaymentsMethodInfo({this.paymentMehtodId, this.total, this.name, this.fName});

  PaymentsMethodInfo.fromJson(Map<String, dynamic> json) {
    paymentMehtodId = json['paymentMehtodId'];
    total = json['total'];
    name = json['name'];
    fName = json['fName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['paymentMehtodId'] = paymentMehtodId;
    data['total'] = total;
    data['name'] = name;
    data['fName'] = fName;
    return data;
  }
}

class Payments {
  double? totalDiscount;
  double? totalReturn;
  double? totalDiscountReturn;
  double? netReturen;
  double? netPayment;
  double? totalCashDrops;
  double? totalPay;

  Payments({
    this.totalDiscount,
    this.totalReturn,
    this.totalDiscountReturn,
    this.netReturen,
    this.netPayment,
    this.totalCashDrops,
    this.totalPay,
  });

  Payments.fromJson(Map<String, dynamic> json) {
    totalDiscount = json['totalDiscount'];
    totalReturn = json['totalReturn'];
    totalDiscountReturn = json['totalDiscountReturn'];
    netReturen = json['netReturen'];
    netPayment = json['netPayment'];
    totalCashDrops = json['totalCashDrops'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['totalDiscount'] = totalDiscount;
    data['totalReturn'] = totalReturn;
    data['totalDiscountReturn'] = totalDiscountReturn;
    data['netReturen'] = netReturen;
    data['netPayment'] = netPayment;
    data['totalCashDrops'] = totalCashDrops;
    return data;
  }
}
