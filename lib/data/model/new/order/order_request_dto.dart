import 'package:bayan_pos_core/data/enum/order_type.dart';
import 'package:bayan_pos_core/data/model/new/product/order_product_request_dto.dart';
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
  });

  // fromJson factory constructor
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
    );
  }

  // toJson method
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
    };
  }

  // copyWith method
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
    );
  }
}
