import 'package:drift/drift.dart';

/// جدول تقارير إنهاء اليوم
/// يحفظ تقرير إنه

// اء اليوم الكامل مع جميع التفاصيل المحاسبية
class EndOfDayEntity extends Table {
  // المفتاح الأساسي
  TextColumn get eodId => text()();

  // التواريخ
  DateTimeColumn get businessDate => dateTime()();
  DateTimeColumn get completedAt => dateTime()();

  // المستخدم والجهاز
  TextColumn get completedBy => text()();
  TextColumn get deviceId => text().nullable()();
  TextColumn get branchId => text().nullable()();

  // البيانات المفصلة (محفوظة كـ JSON)
  TextColumn get salesSummaryJson => text()();
  TextColumn get paymentsSummaryJson => text()();
  TextColumn get returnsSummaryJson => text()();
  TextColumn get discountsSummaryJson => text()();
  TextColumn get taxesSummaryJson => text()();
  TextColumn get drawerOperationsSummaryJson => text()();
  TextColumn get reconciliationSummaryJson => text()();
  TextColumn get tillsSummaryJson => text()();

  // إجماليات سريعة للاستعلام والفلترة
  RealColumn get totalSales => real()();
  RealColumn get totalPayments => real()();
  RealColumn get totalVariance => real()();
  IntColumn get totalTillsClosed => integer().nullable()();

  // الحالة والملاحظات
  TextColumn get status => text()(); // pending, completed, verified
  TextColumn get notes => text().nullable()();
  TextColumn get alertsJson => text().nullable()();

  // التزامن
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get syncedAt => dateTime().nullable()();

  @override
  Set<Column> get primaryKey => {eodId};
}
