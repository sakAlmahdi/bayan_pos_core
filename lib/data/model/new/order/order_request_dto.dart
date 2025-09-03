import 'package:bayan_pos_core/data/enum/order_type.dart';
import 'package:bayan_pos_core/data/model/new/product/order_product_request_dto.dart';
import 'package:bayan_pos_core/data/model/new/charge/manual_charge_request_dto.dart';
import 'package:flutter_guid/flutter_guid.dart';

class OrderRequestDto {
  Guid? branchId;
  Guid? priceListId;
  Guid? customerId;
  String? customerType;
  OrderType? orderType;
  DateTime? createDate;
  double? totalPrice;
  Guid? discountId;
  double? discountAmount;
  double? discountPercentage;
  List<OrderProductRequestDto>? products;
  bool? taxable;
  bool? applyPromotions;
  bool? applyTimeEvents;
  bool? applyCharges;
  bool? customerTaxable;

  String? orderRef;
  String? deviceId;
  DateTime? startDate;
  DateTime? endTime;
  DateTime? timeOfReceipt;
  int? orderSource;

  String? shiftId;
  String? tillId;
  String? tableId;

  int? numberVisitor;

  String? callNumber;

  String? parentOrderId;
  int? splitIndex;

  bool? priceIncludeTax;

  // إضافة الرسوم اليدوية
  List<ManualChargeRequestDto>? manualCharges;

  OrderRequestDto({
    this.branchId,
    this.priceListId,
    this.customerId,
    this.orderType,
    this.createDate,
    this.totalPrice,
    this.discountId,
    this.discountAmount,
    this.discountPercentage,
    this.products,
    this.taxable,
    this.applyPromotions,
    this.applyTimeEvents,
    this.applyCharges,
    this.customerType,
    this.customerTaxable,
    this.orderRef,
    this.deviceId,
    this.startDate,
    this.endTime,
    this.timeOfReceipt,
    this.orderSource,
    this.shiftId,
    this.tillId,
    this.tableId,
    this.numberVisitor,
    this.callNumber,
    this.parentOrderId,
    this.splitIndex,
    this.priceIncludeTax,
    this.manualCharges,
  });

  factory OrderRequestDto.fromJson(Map<String, dynamic> json) {
    return OrderRequestDto(
      branchId: json['branchId'] != null ? Guid(json['branchId']) : null,
      priceListId:
          json['priceListId'] != null ? Guid(json['priceListId']) : null,
      customerId: json['customerId'] != null ? Guid(json['customerId']) : null,
      orderType: json['orderType'] != null
          ? OrderType.values[json['orderType']]
          : null,
      createDate: json['createDate'] != null
          ? DateTime.parse(json['createDate'])
          : null,
      totalPrice: json['totalPrice'],
      discountId: json['discountId'] != null ? Guid(json['discountId']) : null,
      discountAmount: json['discountAmount'],
      discountPercentage: json['discountPercentage'],
      products: json['products'] != null
          ? (json['products'] as List)
              .map((e) => OrderProductRequestDto.fromJson(e))
              .toList()
          : null,
      taxable: json['taxable'],
      applyPromotions: json['applyPromotions'],
      applyTimeEvents: json['applyTimeEvents'],
      applyCharges: json['applyCharges'],
      customerType: json['customerType'],
      customerTaxable: json['customerTaxable'],
      orderRef: json['orderRef'],
      deviceId: json['deviceId'],
      startDate:
          json['startDate'] != null ? DateTime.parse(json['startDate']) : null,
      endTime: json['endTime'] != null ? DateTime.parse(json['endTime']) : null,
      timeOfReceipt: json['timeOfReceipt'] != null
          ? DateTime.parse(json['timeOfReceipt'])
          : null,
      orderSource: json['orderSource'],
      shiftId: json['shiftId'],
      tillId: json['tillId'],
      tableId: json['tableId'],
      numberVisitor: json['numberVisitor'],
      callNumber: json['callNumber'],
      parentOrderId: json['parentOrderId'],
      splitIndex: json['splitIndex'],
      priceIncludeTax: json['priceIncludeTax'],
      // إضافة الرسوم اليدوية
      manualCharges: json['manualCharges'] != null
          ? (json['manualCharges'] as List)
              .map((e) => ManualChargeRequestDto.fromJson(e))
              .toList()
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'branchId': branchId?.toString(),
      'priceListId': priceListId?.toString(),
      'customerId': customerId?.toString(),
      'orderType': orderType?.index,
      'createDate': createDate?.toIso8601String(),
      'totalPrice': totalPrice,
      'discountId': discountId?.toString(),
      'discountAmount': discountAmount,
      'discountPercentage': discountPercentage,
      'products': products?.map((e) => e.toJson()).toList(),
      'taxable': taxable,
      'applyPromotions': applyPromotions,
      'applyTimeEvents': applyTimeEvents,
      'applyCharges': applyCharges,
      'customerType': customerType,
      'customerTaxable': customerTaxable,
      'orderRef': orderRef,
      'deviceId': deviceId,
      'startDate': startDate?.toIso8601String(),
      'endTime': endTime?.toIso8601String(),
      'timeOfReceipt': timeOfReceipt?.toIso8601String(),
      'orderSource': orderSource,
      'shiftId': shiftId,
      'tillId': tillId,
      'tableId': tableId,
      'numberVisitor': numberVisitor,
      'callNumber': callNumber,
      'parentOrderId': parentOrderId,
      'splitIndex': splitIndex,
      'priceIncludeTax': priceIncludeTax,
      // إضافة الرسوم اليدوية
      'manualCharges': manualCharges?.map((e) => e.toJson()).toList(),
    };
  }

  OrderRequestDto copyWith({
    Guid? branchId,
    Guid? priceListId,
    Guid? customerId,
    OrderType? orderType,
    DateTime? createDate,
    double? totalPrice,
    Guid? discountId,
    double? discountAmount,
    double? discountPercentage,
    List<OrderProductRequestDto>? products,
    bool? taxable,
    bool? applyPromotions,
    bool? applyTimeEvents,
    bool? applyCharges,
    String? customerType,
    bool? customerTaxable,
    bool? priceIncludeTax,
    List<ManualChargeRequestDto>? manualCharges,
  }) {
    return OrderRequestDto(
      branchId: branchId ?? this.branchId,
      priceListId: priceListId ?? this.priceListId,
      customerId: customerId ?? this.customerId,
      orderType: orderType ?? this.orderType,
      createDate: createDate ?? this.createDate,
      totalPrice: totalPrice ?? this.totalPrice,
      discountId: discountId ?? this.discountId,
      discountAmount: discountAmount ?? this.discountAmount,
      discountPercentage: discountPercentage ?? this.discountPercentage,
      products: products ?? this.products,
      taxable: taxable ?? this.taxable,
      applyPromotions: applyPromotions ?? this.applyPromotions,
      applyTimeEvents: applyTimeEvents ?? this.applyTimeEvents,
      applyCharges: applyCharges ?? this.applyCharges,
      customerType: customerType ?? this.customerType,
      customerTaxable: customerTaxable ?? this.customerTaxable,
      priceIncludeTax: priceIncludeTax ?? this.priceIncludeTax,
      // إضافة الرسوم اليدوية
      manualCharges: manualCharges ?? this.manualCharges,
    );
  }
}
