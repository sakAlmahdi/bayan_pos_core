/// نموذج بيانات لتتبع تاريخ الطباعة للطلبات
/// يحفظ كل عملية طباعة بتفاصيلها الكاملة
class OrderPrintHistoryDto {
  /// معرف فريد لسجل الطباعة
  String? id;

  /// مرجع الطلب
  String? orderRef;

  /// تاريخ ووقت الطباعة
  DateTime? printedAt;

  /// معرف المستخدم الذي قام بالطباعة
  String? printedBy;

  /// اسم المستخدم الذي قام بالطباعة
  String? printedByName;

  /// رقم النسخة (1، 2، 3...)
  int? copyNumber;

  /// هل هي طباعة قبل السداد؟
  bool? isPrePayment;

  /// اسم الطابعة المستخدمة
  String? printerName;

  /// هل نجحت الطباعة؟
  bool? success;

  /// سبب فشل الطباعة (إن وجد)
  String? failureReason;

  /// نوع الطباعة (كامل، جزئي، فئة معينة...)
  String? printType;

  /// ملاحظات إضافية
  String? notes;

  OrderPrintHistoryDto({
    this.id,
    this.orderRef,
    this.printedAt,
    this.printedBy,
    this.printedByName,
    this.copyNumber,
    this.isPrePayment,
    this.printerName,
    this.success,
    this.failureReason,
    this.printType,
    this.notes,
  });

  factory OrderPrintHistoryDto.fromJson(Map<String, dynamic> json) {
    return OrderPrintHistoryDto(
      id: json['id'],
      orderRef: json['orderRef'],
      printedAt:
          json['printedAt'] != null ? DateTime.parse(json['printedAt']) : null,
      printedBy: json['printedBy'],
      printedByName: json['printedByName'],
      copyNumber: json['copyNumber'],
      isPrePayment: json['isPrePayment'],
      printerName: json['printerName'],
      success: json['success'],
      failureReason: json['failureReason'],
      printType: json['printType'],
      notes: json['notes'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'orderRef': orderRef,
      'printedAt': printedAt?.toIso8601String(),
      'printedBy': printedBy,
      'printedByName': printedByName,
      'copyNumber': copyNumber,
      'isPrePayment': isPrePayment,
      'printerName': printerName,
      'success': success,
      'failureReason': failureReason,
      'printType': printType,
      'notes': notes,
    };
  }

  OrderPrintHistoryDto copyWith({
    String? id,
    String? orderRef,
    DateTime? printedAt,
    String? printedBy,
    String? printedByName,
    int? copyNumber,
    bool? isPrePayment,
    String? printerName,
    bool? success,
    String? failureReason,
    String? printType,
    String? notes,
  }) {
    return OrderPrintHistoryDto(
      id: id ?? this.id,
      orderRef: orderRef ?? this.orderRef,
      printedAt: printedAt ?? this.printedAt,
      printedBy: printedBy ?? this.printedBy,
      printedByName: printedByName ?? this.printedByName,
      copyNumber: copyNumber ?? this.copyNumber,
      isPrePayment: isPrePayment ?? this.isPrePayment,
      printerName: printerName ?? this.printerName,
      success: success ?? this.success,
      failureReason: failureReason ?? this.failureReason,
      printType: printType ?? this.printType,
      notes: notes ?? this.notes,
    );
  }
}
