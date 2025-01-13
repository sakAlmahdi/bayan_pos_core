class OrderProductTimeEventAppliesDto {
  String id;
  String name;
  double unitPrice;
  double netUnitPrice;

  OrderProductTimeEventAppliesDto({
    required this.id,
    required this.name,
    required this.unitPrice,
    required this.netUnitPrice,
  });

  /// Creates an instance of [OrderProductTimeEventAppliesDto] from a JSON map.
  factory OrderProductTimeEventAppliesDto.fromJson(Map<String, dynamic> json) {
    return OrderProductTimeEventAppliesDto(
      id: json['id'] as String,
      name: json['name'] as String,
      unitPrice: (json['unitPrice'] as num).toDouble(),
      netUnitPrice: (json['netUnitPrice'] as num).toDouble(),
    );
  }

  /// Converts the [OrderProductTimeEventAppliesDto] instance into a JSON map.
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'unitPrice': unitPrice,
      'netUnitPrice': netUnitPrice,
    };
  }

  /// Returns a copy of the current instance with updated properties.
  OrderProductTimeEventAppliesDto copyWith({
    String? id,
    String? name,
    double? unitPrice,
    double? netUnitPrice,
  }) {
    return OrderProductTimeEventAppliesDto(
      id: id ?? this.id,
      name: name ?? this.name,
      unitPrice: unitPrice ?? this.unitPrice,
      netUnitPrice: netUnitPrice ?? this.netUnitPrice,
    );
  }
}
