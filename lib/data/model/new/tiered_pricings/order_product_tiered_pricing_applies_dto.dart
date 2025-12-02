class OrderProductTieredPricingAppliesDto {
  String? id;
  String? name;
  double? unitPrice;
  double? netUnitPrice;

  OrderProductTieredPricingAppliesDto({
    this.id,
    this.name,
    this.unitPrice,
    this.netUnitPrice,
  });

  // fromJson method
  factory OrderProductTieredPricingAppliesDto.fromJson(
      Map<String, dynamic> json) {
    return OrderProductTieredPricingAppliesDto(
      id: json['id'] as String?,
      name: json['name'] as String?,
      unitPrice: (json['unitPrice'] as num?)?.toDouble(),
      netUnitPrice: (json['netUnitPrice'] as num?)?.toDouble(),
    );
  }

  // toJson method
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'unitPrice': unitPrice,
      'netUnitPrice': netUnitPrice,
    };
  }

  // copyWith method
  OrderProductTieredPricingAppliesDto copyWith({
    String? id,
    String? name,
    double? unitPrice,
    double? netUnitPrice,
  }) {
    return OrderProductTieredPricingAppliesDto(
      id: id ?? this.id,
      name: name ?? this.name,
      unitPrice: unitPrice ?? this.unitPrice,
      netUnitPrice: netUnitPrice ?? this.netUnitPrice,
    );
  }
}
