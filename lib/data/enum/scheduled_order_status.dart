/// حالات الطلب المجدول
enum ScheduledOrderStatus {
  /// معلق - تم جدولة الطلب ولكن لم يحن موعده بعد
  pending(0, 'معلق', 'Pending'),

  /// جاهز للتفعيل - حان موعد الطلب ويمكن تفعيله
  ready(1, 'جاهز للتفعيل', 'Ready'),

  /// تم التفعيل - تم تحويل الطلب المجدول إلى طلب نشط
  activated(2, 'تم التفعيل', 'Activated'),

  /// ملغي - تم إلغاء الجدولة
  cancelled(3, 'ملغي', 'Cancelled'),

  /// منتهي - انتهى موعد الطلب دون تفعيل
  expired(4, 'منتهي', 'Expired');

  final int value;
  final String nameAr;
  final String nameEn;

  const ScheduledOrderStatus(this.value, this.nameAr, this.nameEn);

  /// تحويل من القيمة الرقمية إلى enum
  static ScheduledOrderStatus fromValue(int? value) {
    return ScheduledOrderStatus.values.firstWhere(
      (e) => e.value == value,
      orElse: () => ScheduledOrderStatus.pending,
    );
  }

  /// الحصول على الاسم حسب اللغة
  String getName({bool isArabic = true}) {
    return isArabic ? nameAr : nameEn;
  }

  /// تحويل إلى قيمة رقمية
  int toKey() => value;
}
