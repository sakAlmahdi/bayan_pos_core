class OrderPromotionAppliesDto {
  String? id; // Using String instead of Guid
  String? name;
  double? totalPrice;
  double? discountAmount;
  double? discountPercentage;

  OrderPromotionAppliesDto({
    this.id,
    this.name,
    this.totalPrice,
    this.discountAmount,
    this.discountPercentage,
  });

  // Factory constructor for creating an instance from a JSON map
  factory OrderPromotionAppliesDto.fromJson(Map<String, dynamic> json) {
    return OrderPromotionAppliesDto(
      id: json['id'] as String?,
      name: json['name'] as String? ?? '',
      totalPrice: (json['totalPrice'] as num?)?.toDouble() ?? 0.0,
      discountAmount: (json['discountAmount'] as num?)?.toDouble(),
      discountPercentage: (json['discountPercentage'] as num?)?.toDouble(),
    );
  }

  // Method for converting an instance to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'totalPrice': totalPrice,
      'discountAmount': discountAmount,
      'discountPercentage': discountPercentage,
    };
  }

  // CopyWith method for creating modified copies of an instance
  OrderPromotionAppliesDto copyWith({
    String? id,
    String? name,
    double? totalPrice,
    double? discountAmount,
    double? discountPercentage,
  }) {
    return OrderPromotionAppliesDto(
      id: id ?? this.id,
      name: name ?? this.name,
      totalPrice: totalPrice ?? this.totalPrice,
      discountAmount: discountAmount ?? this.discountAmount,
      discountPercentage: discountPercentage ?? this.discountPercentage,
    );
  }
}
