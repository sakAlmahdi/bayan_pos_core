import 'dart:convert';

class ProductListForSalesViewDto {
  final String id;
  final String name;
  final String barcode;
  final String unit;
  final double price;

  ProductListForSalesViewDto({
    required this.id,
    required this.name,
    required this.barcode,
    required this.unit,
    required this.price,
  });

  // fromJson factory method
  factory ProductListForSalesViewDto.fromJson(Map<String, dynamic> json) {
    return ProductListForSalesViewDto(
      id: json['id'] as String,
      name: json['name'] as String,
      barcode: json['barcode'] as String,
      unit: json['unit'] as String,
      price: (json['price'] as num).toDouble(),
    );
  }

  // toJson method
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'barcode': barcode,
      'unit': unit,
      'price': price,
    };
  }

  // copyWith method
  ProductListForSalesViewDto copyWith({
    String? id,
    String? name,
    String? barcode,
    String? unit,
    double? price,
  }) {
    return ProductListForSalesViewDto(
      id: id ?? this.id,
      name: name ?? this.name,
      barcode: barcode ?? this.barcode,
      unit: unit ?? this.unit,
      price: price ?? this.price,
    );
  }

  @override
  String toString() {
    return 'ProductListForSalesViewDto(id: $id, name: $name, barcode: $barcode, unit: $unit, price: $price)';
  }
}
