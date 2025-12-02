class OrderTaxTypeViewDto {
  String? type;
  String? name;
  double? amount;

  // Constructor
  OrderTaxTypeViewDto({
    required this.type,
    required this.name,
    required this.amount,
  });

  // fromJson method
  factory OrderTaxTypeViewDto.fromJson(Map<String, dynamic> json) {
    return OrderTaxTypeViewDto(
      type: json['Type'] as String?,
      name: json['Name'] as String?,
      amount: (json['Amount'] as num?)?.toDouble(),
    );
  }

  // toJson method
  Map<String, dynamic> toJson() {
    return {
      'Type': type,
      'Name': name,
      'Amount': amount,
    };
  }

  // copyWith method
  OrderTaxTypeViewDto copyWith({
    String? type,
    String? name,
    double? amount,
  }) {
    return OrderTaxTypeViewDto(
      type: type ?? this.type,
      name: name ?? this.name,
      amount: amount ?? this.amount,
    );
  }

  @override
  String toString() {
    return 'OrderTaxTypeViewDto(type: $type, name: $name, amount: $amount)';
  }
}
