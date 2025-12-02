import 'dart:convert';

class ProductListWithImageForSalesViewDto {
  final String id;
  final String name;
  final String promoName;
  final String barcode;
  final String unit;
  final double size;
  final double price;
  final double? promoPrice;
  final double? discountPercentage;
  final double? discountAmount;
  final String imageUrl;

  ProductListWithImageForSalesViewDto({
    required this.id,
    required this.name,
    required this.promoName,
    required this.barcode,
    required this.unit,
    required this.size,
    required this.price,
    this.promoPrice,
    this.discountPercentage,
    this.discountAmount,
    required this.imageUrl,
  });

  // fromJson factory method
  factory ProductListWithImageForSalesViewDto.fromJson(
      Map<String, dynamic> json) {
    return ProductListWithImageForSalesViewDto(
      id: json['id'] as String,
      name: json['name'] as String,
      promoName: json['promoName'] as String,
      barcode: json['barcode'] as String,
      unit: json['unit'] as String,
      size: (json['size'] as num).toDouble(),
      price: (json['price'] as num).toDouble(),
      promoPrice: json['promoPrice'] != null
          ? (json['promoPrice'] as num).toDouble()
          : null,
      discountPercentage: json['discountPercentage'] != null
          ? (json['discountPercentage'] as num).toDouble()
          : null,
      discountAmount: json['discountAmount'] != null
          ? (json['discountAmount'] as num).toDouble()
          : null,
      imageUrl: json['imageUrl'] as String,
    );
  }

  // toJson method
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'promoName': promoName,
      'barcode': barcode,
      'unit': unit,
      'size': size,
      'price': price,
      'promoPrice': promoPrice,
      'discountPercentage': discountPercentage,
      'discountAmount': discountAmount,
      'imageUrl': imageUrl,
    };
  }

  // copyWith method
  ProductListWithImageForSalesViewDto copyWith({
    String? id,
    String? name,
    String? promoName,
    String? barcode,
    String? unit,
    double? size,
    double? price,
    double? promoPrice,
    double? discountPercentage,
    double? discountAmount,
    String? imageUrl,
  }) {
    return ProductListWithImageForSalesViewDto(
      id: id ?? this.id,
      name: name ?? this.name,
      promoName: promoName ?? this.promoName,
      barcode: barcode ?? this.barcode,
      unit: unit ?? this.unit,
      size: size ?? this.size,
      price: price ?? this.price,
      promoPrice: promoPrice ?? this.promoPrice,
      discountPercentage: discountPercentage ?? this.discountPercentage,
      discountAmount: discountAmount ?? this.discountAmount,
      imageUrl: imageUrl ?? this.imageUrl,
    );
  }

  @override
  String toString() {
    return 'ProductListWithImageForSalesViewDto(id: $id, name: $name, promoName: $promoName, barcode: $barcode, unit: $unit, size: $size, price: $price, promoPrice: $promoPrice, discountPercentage: $discountPercentage, discountAmount: $discountAmount, imageUrl: $imageUrl)';
  }
}
