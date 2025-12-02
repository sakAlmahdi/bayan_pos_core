import 'package:bayan_pos_core/data/model/new/order/payment/order_payment_detail_dto.dart';

class OrderPaymentDto {
  String? orderRef;
  String? paymentId;
  String? paymentMethodId;
  int? paymentMethodType;
  String? name;
  String? fName;
  double? currencyAmount;
  String? currencyCode;
  double? exchangeRateToBase;
  double? baseAmount;
  double? receivedAmount;
  double? changeAmount;
  double? tipAmount;
  double? feeAmount;
  String? cashierId;
  String? shiftId;
  String? tillId;
  String? deviceId;
  String? externalTransactionId;
  String? reference;
  bool? isVoided;
  String? voidReason;
  String? createdOn;
  String? createdBy;
  String? notes;
  List<OrderPaymentDetailDto>? details;

  String get getName => name ?? fName ?? '';
  double get getReceivedAmount =>
      (receivedAmount ?? 0) / (exchangeRateToBase ?? 1);
  double get getTipAmountOnBase => (tipAmount ?? 0) / (exchangeRateToBase ?? 1);

  OrderPaymentDto({
    this.orderRef,
    this.paymentId,
    this.paymentMethodId,
    this.paymentMethodType,
    this.name,
    this.fName,
    this.currencyAmount,
    this.currencyCode,
    this.exchangeRateToBase,
    this.baseAmount,
    this.receivedAmount,
    this.changeAmount,
    this.tipAmount,
    this.feeAmount,
    this.cashierId,
    this.shiftId,
    this.tillId,
    this.deviceId,
    this.externalTransactionId,
    this.reference,
    this.isVoided,
    this.voidReason,
    this.createdOn,
    this.createdBy,
    this.notes,
    this.details,
  });

  factory OrderPaymentDto.fromJson(Map<String, dynamic> json) {
    return OrderPaymentDto(
      orderRef: json['orderRef'],
      paymentId: json['paymentId'],
      paymentMethodId: json['paymentMethodId'],
      paymentMethodType: json['paymentMethodType'],
      name: json['name'],
      fName: json['fName'],
      currencyAmount: json['currencyAmount'] != null
          ? (json['currencyAmount'] as num).toDouble()
          : null,
      currencyCode: json['currencyCode'],
      exchangeRateToBase: json['exchangeRateToBase'] != null
          ? (json['exchangeRateToBase'] as num).toDouble()
          : null,
      baseAmount: json['baseAmount'] != null
          ? (json['baseAmount'] as num).toDouble()
          : null,
      receivedAmount: json['receivedAmount'] != null
          ? (json['receivedAmount'] as num).toDouble()
          : null,
      changeAmount: json['changeAmount'] != null
          ? (json['changeAmount'] as num).toDouble()
          : null,
      tipAmount: json['tipAmount'] != null
          ? (json['tipAmount'] as num).toDouble()
          : null,
      feeAmount: json['feeAmount'] != null
          ? (json['feeAmount'] as num).toDouble()
          : null,
      cashierId: json['cashierId'],
      shiftId: json['shiftId'],
      tillId: json['tillId'],
      deviceId: json['deviceId'],
      externalTransactionId: json['externalTransactionId'],
      reference: json['reference'],
      isVoided: json['isVoided'],
      voidReason: json['voidReason'],
      createdOn: json['createdOn'],
      createdBy: json['createdBy'],
      notes: json['notes'],
      details: json['details'] != null
          ? (json['details'] as List)
              .map((e) => OrderPaymentDetailDto.fromJson(e))
              .toList()
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'orderRef': orderRef,
      'paymentId': paymentId,
      'paymentMethodId': paymentMethodId,
      'paymentMethodType': paymentMethodType,
      'name': name,
      'fName': fName,
      'currencyAmount': currencyAmount,
      'currencyCode': currencyCode,
      'exchangeRateToBase': exchangeRateToBase,
      'baseAmount': baseAmount,
      'receivedAmount': receivedAmount,
      'changeAmount': changeAmount,
      'tipAmount': tipAmount,
      'feeAmount': feeAmount,
      'cashierId': cashierId,
      'shiftId': shiftId,
      'tillId': tillId,
      'deviceId': deviceId,
      'externalTransactionId': externalTransactionId,
      'reference': reference,
      'isVoided': isVoided,
      'voidReason': voidReason,
      'createdOn': createdOn,
      'createdBy': createdBy,
      'notes': notes,
      'details': details?.map((e) => e.toJson()).toList(),
    };
  }
}
