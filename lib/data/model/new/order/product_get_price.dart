import 'dart:convert';

import 'package:bayan_pos_core/data/model/new/enums/order_type.dart';
import 'package:bayan_pos_core/data/model/new/order/product_in_document.dart';

class ProductGetPriceDto {
  final String? branchId;
  final String productId;
  final String unitId;
  final double quantity;
  final double unitPrice;
  final String? priceListId;
  final String? customerId;
  final OrderType orderType;
  final DateTime createDate;
  final List<ProductInDocumentDto> products;

  ProductGetPriceDto({
    this.branchId,
    required this.productId,
    required this.unitId,
    required this.quantity,
    required this.unitPrice,
    this.priceListId,
    this.customerId,
    required this.orderType,
    required this.createDate,
    required this.products,
  });

  // Factory constructor for creating an instance from JSON
  factory ProductGetPriceDto.fromJson(Map<String, dynamic> json) {
    return ProductGetPriceDto(
      branchId: json['branchId'] as String?,
      productId: json['productId'] as String,
      unitId: json['unitId'] as String,
      quantity: (json['quantity'] as num).toDouble(),
      unitPrice: (json['unitPrice'] as num).toDouble(),
      priceListId: json['priceListId'] as String?,
      customerId: json['customerId'] as String?,
      orderType: OrderType.values
          .firstWhere((e) => e.toString() == 'OrderType.' + json['orderType']),
      createDate: DateTime.parse(json['createDate'] as String),
      products: (json['products'] as List<dynamic>)
          .map((product) =>
              ProductInDocumentDto.fromJson(product as Map<String, dynamic>))
          .toList(),
    );
  }

  // Method to convert an instance to JSON
  Map<String, dynamic> toJson() {
    return {
      'branchId': branchId,
      'productId': productId,
      'unitId': unitId,
      'quantity': quantity,
      'unitPrice': unitPrice,
      'priceListId': priceListId,
      'customerId': customerId,
      'orderType': orderType.toString().split('.').last,
      'createDate': createDate.toIso8601String(),
      'products': products.map((product) => product.toJson()).toList(),
    };
  }

  // Method for creating a copy with updated values
  ProductGetPriceDto copyWith({
    String? branchId,
    String? productId,
    String? unitId,
    double? quantity,
    double? unitPrice,
    String? priceListId,
    String? customerId,
    OrderType? orderType,
    DateTime? createDate,
    List<ProductInDocumentDto>? products,
  }) {
    return ProductGetPriceDto(
      branchId: branchId ?? this.branchId,
      productId: productId ?? this.productId,
      unitId: unitId ?? this.unitId,
      quantity: quantity ?? this.quantity,
      unitPrice: unitPrice ?? this.unitPrice,
      priceListId: priceListId ?? this.priceListId,
      customerId: customerId ?? this.customerId,
      orderType: orderType ?? this.orderType,
      createDate: createDate ?? this.createDate,
      products: products ?? this.products,
    );
  }
}
