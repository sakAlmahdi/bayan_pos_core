import 'package:bayan_pos_core/bayan_pos_core.dart';
import 'package:flutter_guid/flutter_guid.dart';

class TillValue {
  int? idSeq;
  late String currencyCode;
  late double amt;
  Guid? currencyId;
  String? currencyName;
  String? currencyFName;
  Guid? paymentMethodId;
  String? paymentMethodName;
  String? paymentMethodFName;
  double remainAmt = 0.0;
  double? exchangeRate;
  String? defaultCurrencyCode;
  double? amtCurrncy;

  String? get getNamePaymentMethod =>
      BaseHelpersMethods.isPrimaryLang ? paymentMethodName : paymentMethodFName;

  String? get getNameCurrncy =>
      BaseHelpersMethods.isPrimaryLang ? currencyName : currencyFName;

  bool get getIsDefaultCurrncy => defaultCurrencyCode == currencyCode;

  TillValue({
    required this.amt,
    required this.currencyCode,
    this.remainAmt = 0.0,
    this.currencyName,
    this.currencyFName,
    this.currencyId,
    this.paymentMethodFName,
    this.idSeq,
    this.paymentMethodId,
    this.paymentMethodName,
    this.defaultCurrencyCode,
    this.exchangeRate,
    this.amtCurrncy,
  });

  TillValue.fromJson(Map<String, dynamic> json) {
    amt = double.tryParse(json['amount'].toString()) ?? 0.0;
    remainAmt = double.tryParse(json['remainAmt'].toString()) ?? 0.0;
    currencyCode = json['currencyCode'];
    currencyName = json['currencyName'];
    currencyFName = json['currencyFName'];
    currencyId = Guid(json['currencyId']);
    paymentMethodFName = json['paymentMethodFName'];
    idSeq = json['idSeq'];
    paymentMethodId = Guid(json['paymentMethodId']);
    paymentMethodName = json['paymentMethodName'];
    defaultCurrencyCode = json['defaultCurrencyCode'];
    exchangeRate = json['exchangeRate'];
    amtCurrncy = json['amtCurrncy'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['amount'] = amt;
    data['remainAmt'] = remainAmt;
    data['currencyCode'] = currencyCode;
    data['currencyName'] = currencyName;
    data['currencyFName'] = currencyFName;
    data['currencyId'] = currencyId?.value;
    data['paymentMethodFName'] = paymentMethodFName;
    data['idSeq'] = idSeq;
    data['paymentMethodId'] = paymentMethodId?.value;
    data['paymentMethodName'] = paymentMethodName;
    data['defaultCurrencyCode'] = defaultCurrencyCode;
    data['exchangeRate'] = exchangeRate;
    data['amtCurrncy'] = amtCurrncy;

    return data;
  }

  static List<TillValue> fromList(List<dynamic> data) =>
      data.map((e) => TillValue.fromJson(e)).toList();
}
