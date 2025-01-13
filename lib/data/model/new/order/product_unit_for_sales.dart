// class ProductUnitForSalesDto {
//   final String id;
//   final String? name;
//   final String? barcode;
//   final double? price;
//   final double? cost;
//   final double? size;
//   final bool? defaultForSales;
//   final bool? isPrimary;
//   final String? imageUrl;
//   final List<ProductUnitPriceListForSalesDto>? priceLists;
//   final List<ProductUnitModifierForSalesDto>? modifiers;

//   ProductUnitForSalesDto({
//     required this.id,
//     this.name,
//     this.barcode,
//     this.price,
//     this.cost,
//     this.size,
//     this.defaultForSales,
//     this.isPrimary,
//     this.imageUrl,
//     this.priceLists,
//     this.modifiers,
//   });

//   // Factory constructor for creating an instance from JSON
//   factory ProductUnitForSalesDto.fromJson(Map<String, dynamic> json) {
//     return ProductUnitForSalesDto(
//       id: json['id'] as String,
//       name: json['name'] as String?,
//       barcode: json['barcode'] as String?,
//       price: (json['price'] as num?)?.toDouble(),
//       cost: (json['cost'] as num?)?.toDouble(),
//       size: (json['size'] as num?)?.toDouble(),
//       defaultForSales: json['defaultForSales'] as bool?,
//       isPrimary: json['isPrimary'] as bool?,
//       imageUrl: json['imageUrl'] as String?,
//       priceLists: (json['priceLists'] as List<dynamic>?)
//           ?.map((e) => ProductUnitPriceListForSalesDto.fromJson(
//               e as Map<String, dynamic>))
//           .toList(),
//       modifiers: (json['modifiers'] as List<dynamic>?)
//           ?.map((e) => ProductUnitModifierForSalesDto.fromJson(
//               e as Map<String, dynamic>))
//           .toList(),
//     );
//   }

//   // Method to convert an instance to JSON
//   Map<String, dynamic> toJson() {
//     return {
//       'id': id,
//       'name': name,
//       'barcode': barcode,
//       'price': price,
//       'cost': cost,
//       'size': size,
//       'defaultForSales': defaultForSales,
//       'isPrimary': isPrimary,
//       'imageUrl': imageUrl,
//       'priceLists': priceLists?.map((e) => e.toJson()).toList(),
//       'modifiers': modifiers?.map((e) => e.toJson()).toList(),
//     };
//   }

//   // Method for creating a copy with updated values
//   ProductUnitForSalesDto copyWith({
//     String? id,
//     String? name,
//     String? barcode,
//     double? price,
//     double? cost,
//     double? size,
//     bool? defaultForSales,
//     bool? isPrimary,
//     String? imageUrl,
//     List<ProductUnitPriceListForSalesDto>? priceLists,
//     List<ProductUnitModifierForSalesDto>? modifiers,
//   }) {
//     return ProductUnitForSalesDto(
//       id: id ?? this.id,
//       name: name ?? this.name,
//       barcode: barcode ?? this.barcode,
//       price: price ?? this.price,
//       cost: cost ?? this.cost,
//       size: size ?? this.size,
//       defaultForSales: defaultForSales ?? this.defaultForSales,
//       isPrimary: isPrimary ?? this.isPrimary,
//       imageUrl: imageUrl ?? this.imageUrl,
//       priceLists: priceLists ?? this.priceLists,
//       modifiers: modifiers ?? this.modifiers,
//     );
//   }
// }
