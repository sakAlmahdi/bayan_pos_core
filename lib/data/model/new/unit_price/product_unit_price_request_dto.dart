import 'package:bayan_pos_core/data/enum/order_type.dart';
import 'package:flutter_guid/flutter_guid.dart';

// Represents the product unit price request data.

class ProductUnitPriceRequestDto {
  Guid? branchId; // Optional branch GUID.
  Guid? priceListId; // Optional price list GUID.
  Guid? customerId; // Optional customer GUID.
  OrderType orderType; // Type of the order.
  DateTime createDate; // Request creation date.
  Guid productId; // Product GUID.
  Guid unitId; // Unit GUID.
  double quantity; // Product quantity.
  double unitPrice;
  String? customerType; // Product unit price.

  ProductUnitPriceRequestDto({
    this.branchId,
    this.priceListId,
    this.customerId,
    required this.orderType,
    required this.createDate,
    required this.productId,
    required this.unitId,
    required this.quantity,
    required this.unitPrice,
    this.customerType,
  });

  // Creates an instance from a JSON map.
  factory ProductUnitPriceRequestDto.fromJson(Map<String, dynamic> json) {
    return ProductUnitPriceRequestDto(
      branchId: json['branchId'] != null ? Guid(json['branchId']) : null,
      priceListId:
          json['priceListId'] != null ? Guid(json['priceListId']) : null,
      customerId: json['customerId'] != null ? Guid(json['customerId']) : null,
      orderType: OrderType.values[json['orderType']],
      createDate: DateTime.parse(json['createDate']),
      productId: Guid(json['productId']),
      unitId: Guid(json['unitId']),
      quantity: json['quantity'],
      unitPrice: json['unitPrice'],
    );
  }

  // Converts the instance to a JSON map.
  Map<String, dynamic> toJson() {
    return {
      'branchId': branchId?.toString(),
      'priceListId': priceListId?.toString(),
      'customerId': customerId?.toString(),
      'orderType': orderType.index,
      'createDate': createDate.toIso8601String(),
      'productId': productId.toString(),
      'unitId': unitId.toString(),
      'quantity': quantity,
      'unitPrice': unitPrice,
    };
  }

  // Creates a copy of the instance with overridden values.
  ProductUnitPriceRequestDto copyWith({
    Guid? branchId,
    Guid? priceListId,
    Guid? customerId,
    OrderType? orderType,
    DateTime? createDate,
    Guid? productId,
    Guid? unitId,
    double? quantity,
    double? unitPrice,
  }) {
    return ProductUnitPriceRequestDto(
      branchId: branchId ?? this.branchId,
      priceListId: priceListId ?? this.priceListId,
      customerId: customerId ?? this.customerId,
      orderType: orderType ?? this.orderType,
      createDate: createDate ?? this.createDate,
      productId: productId ?? this.productId,
      unitId: unitId ?? this.unitId,
      quantity: quantity ?? this.quantity,
      unitPrice: unitPrice ?? this.unitPrice,
    );
  }
}
