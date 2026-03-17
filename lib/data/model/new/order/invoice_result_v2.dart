import 'package:json_annotation/json_annotation.dart';

class InvoiceResultV2 {
  final String orderRef;
  final String? invoiceNumber;
  final String? invoiceUUID;
  final int? invoiceCounterValue;
  final String? invoiceHash;
  final String? previousInvoiceHash;
  final double? finalAmount;
  final DateTime? invoiceDate;

  InvoiceResultV2({
    required this.orderRef,
    this.invoiceNumber,
    this.invoiceUUID,
    this.invoiceCounterValue,
    this.invoiceHash,
    this.previousInvoiceHash,
    this.finalAmount,
    this.invoiceDate,
  });

  InvoiceResultV2.fromJson(Map<String, dynamic> json)
      : orderRef = json['orderRef'] as String,
        invoiceNumber = json['invoiceNumber'] as String?,
        invoiceUUID = json['invoiceUUID'] as String?,
        invoiceCounterValue = json['invoiceCounterValue'] as int?,
        invoiceHash = json['invoiceHash'] as String?,
        previousInvoiceHash = json['previousInvoiceHash'] as String?,
        finalAmount = (json['finalAmount'] as num?)?.toDouble(),
        invoiceDate = json['invoiceDate'] == null
            ? null
            : DateTime.parse(json['invoiceDate'] as String);

  Map<String, dynamic> toJson() {
    return {
      'orderRef': orderRef,
      'invoiceNumber': invoiceNumber,
      'invoiceUUID': invoiceUUID,
      'invoiceCounterValue': invoiceCounterValue,
      'invoiceHash': invoiceHash,
      'previousInvoiceHash': previousInvoiceHash,
      'finalAmount': finalAmount,
      'invoiceDate': invoiceDate?.toIso8601String(),
    };
  }
}
