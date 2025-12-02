import 'dart:convert' as jsonDcode;

class OrderSumary {
  int? orderType;
  int? count;
  int? guest;
  double? subTotal;
  double? totalCharges;
  double? totalDiscount;
  double? totalTax;
  double? total;
  double? avgPerOrder;
  double? avg;
  GrossSalesWithOutTaxInfo? grossSalesWithOutTaxInfo;
  OrderSumaryDiscountInfo? discountInfo;

  OrderSumary(
      {this.orderType,
      this.count,
      this.guest,
      this.subTotal,
      this.totalCharges,
      this.totalDiscount,
      this.totalTax,
      this.total,
      this.avgPerOrder,
      this.avg,
      this.grossSalesWithOutTaxInfo});

  OrderSumary.fromJson(Map<String, dynamic> json) {
    orderType = json['order_type'];
    count = json['count'];
    guest = json['guest'];
    subTotal = json['sub_total'];
    totalCharges = json['totalCharges'];
    totalDiscount = json['totalDiscount'];
    totalTax = json['totalTax'];
    total = json['total'];
    avgPerOrder = json['avgPerOrder'];
    avg = json['avg'];
    grossSalesWithOutTaxInfo = json['grossSalesWithOutTaxInfo'] != null
        ? GrossSalesWithOutTaxInfo.fromJson(
            jsonDcode.json.decode(json['grossSalesWithOutTaxInfo']))
        : null;
    discountInfo = json['discountInfo'] != null
        ? OrderSumaryDiscountInfo.fromJson(
            jsonDcode.json.decode(json['discountInfo']))
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['order_type'] = orderType;
    data['count'] = count;
    data['guest'] = guest;
    data['sub_total'] = subTotal;
    data['totalCharges'] = totalCharges;
    data['totalDiscount'] = totalDiscount;
    data['totalTax'] = totalTax;
    data['total'] = total;
    data['avgPerOrder'] = avgPerOrder;
    data['avg'] = avg;
    if (grossSalesWithOutTaxInfo != null) {
      data['grossSalesWithOutTaxInfo'] = grossSalesWithOutTaxInfo!.toJson();
    }
    if (discountInfo != null) {
      data['discountInfo'] = discountInfo!.toJson();
    }
    return data;
  }
}

class GrossSalesWithOutTaxInfo {
  double? grossSalesWithOutTax;
  int? grossSalesCount;
  double? netSalesTotal;
  int? netSalesCount;

  GrossSalesWithOutTaxInfo(
      {this.grossSalesWithOutTax,
      this.grossSalesCount,
      this.netSalesTotal,
      this.netSalesCount});

  GrossSalesWithOutTaxInfo.fromJson(Map<String, dynamic> json) {
    grossSalesWithOutTax = json['grossSalesWithOutTax'];
    grossSalesCount = json['grossSalesCount'];
    netSalesTotal = json['netSalesTotal'];
    netSalesCount = json['netSalesCount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['grossSalesWithOutTax'] = grossSalesWithOutTax;
    data['grossSalesCount'] = grossSalesCount;
    data['netSalesTotal'] = netSalesTotal;
    data['netSalesCount'] = netSalesCount;
    return data;
  }
}

class OrderSumaryDiscountInfo {
  double? totalDiscount;
  int? count;

  OrderSumaryDiscountInfo({this.totalDiscount, this.count});
  OrderSumaryDiscountInfo.fromJson(Map<String, dynamic> json) {
    totalDiscount = double.tryParse(json['totalDiscount'].toString()) ?? 0.0;
    count = json['count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['totalDiscount'] = totalDiscount;
    data['count'] = count;

    return data;
  }
}
