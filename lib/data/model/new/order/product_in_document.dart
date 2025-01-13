class ProductInDocumentDto {
  final int tableRowIndex;
  final String id;
  final String name;
  final String unit;
  final double quantity;
  final double unitPrice;
  final double totalPrice;
  final double discountAmount;

  ProductInDocumentDto({
    required this.tableRowIndex,
    required this.id,
    required this.name,
    required this.unit,
    required this.quantity,
    required this.unitPrice,
    required this.totalPrice,
    required this.discountAmount,
  });

  // Factory constructor for creating an instance from JSON
  factory ProductInDocumentDto.fromJson(Map<String, dynamic> json) {
    return ProductInDocumentDto(
      tableRowIndex: json['tableRowIndex'] as int,
      id: json['id'] as String,
      name: json['name'] as String,
      unit: json['unit'] as String,
      quantity: (json['quantity'] as num).toDouble(),
      unitPrice: (json['unitPrice'] as num).toDouble(),
      totalPrice: (json['totalPrice'] as num).toDouble(),
      discountAmount: (json['discountAmount'] as num).toDouble(),
    );
  }

  // Method to convert an instance to JSON
  Map<String, dynamic> toJson() {
    return {
      'tableRowIndex': tableRowIndex,
      'id': id,
      'name': name,
      'unit': unit,
      'quantity': quantity,
      'unitPrice': unitPrice,
      'totalPrice': totalPrice,
      'discountAmount': discountAmount,
    };
  }

  // Method for creating a copy with updated values
  ProductInDocumentDto copyWith({
    int? tableRowIndex,
    String? id,
    String? name,
    String? unit,
    double? quantity,
    double? unitPrice,
    double? totalPrice,
    double? discountAmount,
  }) {
    return ProductInDocumentDto(
      tableRowIndex: tableRowIndex ?? this.tableRowIndex,
      id: id ?? this.id,
      name: name ?? this.name,
      unit: unit ?? this.unit,
      quantity: quantity ?? this.quantity,
      unitPrice: unitPrice ?? this.unitPrice,
      totalPrice: totalPrice ?? this.totalPrice,
      discountAmount: discountAmount ?? this.discountAmount,
    );
  }
}
