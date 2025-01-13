// import 'dart:convert';

// import 'package:bayan_pos_core/data/model/new/order/order_product_unit_price.dart';
// import 'package:bayan_pos_core/data/model/new/order/product_unit_for_sales.dart';

// class ProductForSalesDto {
//   final String id;
//   final String? name;
//   final int? validityDays;
//   final String? imageUrl;
//   final bool? enableSalesDiscount;
//   final double? discountPercentageLimit;
//   final bool enableChangePrice;
//   final bool enableFreeQuantity;
//   final bool? enableIMEISerial;
//   final bool? enableDateExpire;
//   final List<ProductUnitForSalesDto>? units;
//   final OrderProductUnitPriceDto? defaultUnitPriceInfo;
//   final double? taxPercentage;

//   ProductForSalesDto({
//     required this.id,
//     this.name,
//     this.validityDays,
//     this.imageUrl,
//     this.enableSalesDiscount,
//     this.discountPercentageLimit,
//     this.enableChangePrice = false,
//     this.enableFreeQuantity = false,
//     this.enableIMEISerial,
//     this.enableDateExpire,
//     this.units,
//     this.defaultUnitPriceInfo,
//     this.taxPercentage,
//   });

//   // Factory constructor for creating an instance from JSON
//   factory ProductForSalesDto.fromJson(Map<String, dynamic> json) {
//     return ProductForSalesDto(
//       id: json['id'] as String,
//       name: json['name'] as String?,
//       validityDays: json['validityDays'] as int?,
//       imageUrl: json['imageUrl'] as String?,
//       enableSalesDiscount: json['enableSalesDiscount'] as bool?,
//       discountPercentageLimit:
//           (json['discountPercentageLimit'] as num?)?.toDouble(),
//       enableChangePrice: json['enableChangePrice'] as bool? ?? false,
//       enableFreeQuantity: json['enableFreeQuantity'] as bool? ?? false,
//       enableIMEISerial: json['enableIMEISerial'] as bool?,
//       enableDateExpire: json['enableDateExpire'] as bool?,
//       units: (json['units'] as List<dynamic>?)
//           ?.map((unit) =>
//               ProductUnitForSalesDto.fromJson(unit as Map<String, dynamic>))
//           .toList(),
//       defaultUnitPriceInfo: json['defaultUnitPriceInfo'] != null
//           ? OrderProductUnitPriceDto.fromJson(
//               json['defaultUnitPriceInfo'] as Map<String, dynamic>)
//           : null,
//       taxPercentage: (json['taxPercentage'] as num?)?.toDouble(),
//     );
//   }

//   // Method to convert an instance to JSON
//   Map<String, dynamic> toJson() {
//     return {
//       'id': id,
//       'name': name,
//       'validityDays': validityDays,
//       'imageUrl': imageUrl,
//       'enableSalesDiscount': enableSalesDiscount,
//       'discountPercentageLimit': discountPercentageLimit,
//       'enableChangePrice': enableChangePrice,
//       'enableFreeQuantity': enableFreeQuantity,
//       'enableIMEISerial': enableIMEISerial,
//       'enableDateExpire': enableDateExpire,
//       'units': units?.map((unit) => unit.toJson()).toList(),
//       'defaultUnitPriceInfo': defaultUnitPriceInfo?.toJson(),
//       'taxPercentage': taxPercentage,
//     };
//   }

//   // Method for creating a copy with updated values
//   ProductForSalesDto copyWith({
//     String? id,
//     String? name,
//     int? validityDays,
//     String? imageUrl,
//     bool? enableSalesDiscount,
//     double? discountPercentageLimit,
//     bool? enableChangePrice,
//     bool? enableFreeQuantity,
//     bool? enableIMEISerial,
//     bool? enableDateExpire,
//     List<ProductUnitForSalesDto>? units,
//     OrderProductUnitPriceDto? defaultUnitPriceInfo,
//     double? taxPercentage,
//   }) {
//     return ProductForSalesDto(
//       id: id ?? this.id,
//       name: name ?? this.name,
//       validityDays: validityDays ?? this.validityDays,
//       imageUrl: imageUrl ?? this.imageUrl,
//       enableSalesDiscount: enableSalesDiscount ?? this.enableSalesDiscount,
//       discountPercentageLimit:
//           discountPercentageLimit ?? this.discountPercentageLimit,
//       enableChangePrice: enableChangePrice ?? this.enableChangePrice,
//       enableFreeQuantity: enableFreeQuantity ?? this.enableFreeQuantity,
//       enableIMEISerial: enableIMEISerial ?? this.enableIMEISerial,
//       enableDateExpire: enableDateExpire ?? this.enableDateExpire,
//       units: units ?? this.units,
//       defaultUnitPriceInfo: defaultUnitPriceInfo ?? this.defaultUnitPriceInfo,
//       taxPercentage: taxPercentage ?? this.taxPercentage,
//     );
//   }
// }
