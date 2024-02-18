class TillValue {
  int? idSeq;
  late String currencyCode;
  late double amt;
  double remainAmt = 0.0;
  TillValue(
      {required this.amt, required this.currencyCode, this.remainAmt = 0.0});

  TillValue.fromJson(Map<String, dynamic> json) {
    amt = double.tryParse(json['amount'].toString()) ?? 0.0;
    remainAmt = double.tryParse(json['remainAmt'].toString()) ?? 0.0;
    currencyCode = json['currencyCode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['amount'] = amt;
    data['remainAmt'] = remainAmt;
    data['currencyCode'] = currencyCode;

    return data;
  }

  static List<TillValue> fromList(List<dynamic> data) =>
      data.map((e) => TillValue.fromJson(e)).toList();
}
