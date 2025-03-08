class PromotionGiftCardDto {
  String? name;
  String? fName;
  String? barcode;
  String? reference;
  double? price;

  // Constructor
  PromotionGiftCardDto({
    this.name,
    this.fName,
    this.barcode,
    this.reference,
    this.price,
  });

  // From JSON factory method
  factory PromotionGiftCardDto.fromJson(Map<String, dynamic> json) {
    return PromotionGiftCardDto(
      name: json['name'] as String?,
      fName: json['fName'] as String?,
      barcode: json['barcode'] as String?,
      reference: json['reference'] as String?,
      price: (json['price'] as num).toDouble(),
    );
  }

  // To JSON method
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'fName': fName,
      'barcode': barcode,
      'reference': reference,
      'price': price,
    };
  }

  // CopyWith method
  PromotionGiftCardDto copyWith({
    String? name,
    String? fName,
    String? barcode,
    String? reference,
    double? price,
  }) {
    return PromotionGiftCardDto(
      name: name ?? this.name,
      fName: fName ?? this.fName,
      barcode: barcode ?? this.barcode,
      reference: reference ?? this.reference,
      price: price ?? this.price,
    );
  }
}
