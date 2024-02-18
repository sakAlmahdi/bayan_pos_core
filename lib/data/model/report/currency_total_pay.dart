class CurrencyTotalPay {
  int? status;
  String? currencyCode;
  double? total;
  String? tillId;
  String? orderRef;
  CurrencyTotalPay.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    currencyCode = json['currency_code'];
    total = json['total'];
    tillId = json['till_id'];
    orderRef = json['order_ref'];
  }

  static List<CurrencyTotalPay> fromList(List<dynamic> data) =>
      data.map((e) => CurrencyTotalPay.fromJson(e)).toList();
  Map<String, dynamic> toJson() {
    return {
      "status": status,
      "currency_code": currencyCode,
      "total": total,
      "till_id": tillId,
      "order_ref": orderRef,
    };
  }
}
