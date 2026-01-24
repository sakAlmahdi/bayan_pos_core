/// حالة الطباعة للطلب
/// يحدد ما إذا كان الطلب مطبوعاً قبل السداد أم لا
enum PrintState {
  /// لم يتم الطباعة بعد - يمكن التعديل بحرية
  notPrinted,

  /// تمت الطباعة قبل السداد - مقفل ضد التعديل
  printed,

  /// تم السداد - الحالة النهائية
  paid
}

/// تحويل من int إلى PrintState
PrintState convertIntToPrintState(int value) {
  switch (value) {
    case 0:
      return PrintState.notPrinted;
    case 1:
      return PrintState.printed;
    case 2:
      return PrintState.paid;
    default:
      return PrintState.notPrinted;
  }
}

/// Extension methods لـ PrintState
extension PrintStateExtension on PrintState {
  /// تحويل إلى int
  int toKey() {
    switch (this) {
      case PrintState.notPrinted:
        return 0;
      case PrintState.printed:
        return 1;
      case PrintState.paid:
        return 2;
    }
  }

  /// اسم الحالة بالعربية
  String toName() {
    switch (this) {
      case PrintState.notPrinted:
        return 'غير مطبوع';
      case PrintState.printed:
        return 'مطبوع';
      case PrintState.paid:
        return 'مدفوع';
    }
  }

  /// هل يمكن التعديل على الطلب؟
  bool get canEdit => this == PrintState.notPrinted;

  /// هل يمكن الطباعة قبل السداد؟
  bool get canPrintPrePayment =>
      this == PrintState.notPrinted || this == PrintState.printed;

  /// هل يمكن السداد؟
  bool get canProcessPayment => this == PrintState.printed;

  /// هل الطلب مقفل ضد التعديل؟
  bool get isLocked => this == PrintState.printed;
}
