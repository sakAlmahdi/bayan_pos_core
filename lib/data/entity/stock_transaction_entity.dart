import 'package:drift/drift.dart';

class StockTransactionEntity extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get productId => text()();
  TextColumn get unitId => text()();
  TextColumn get addonId => text().nullable()();
  TextColumn get modifierId => text().nullable()();
  RealColumn get changeQty => real()();
  TextColumn get referenceType => text()(); // Sale, Adjustment, Return, Sync
  TextColumn get referenceId => text().nullable()();
  DateTimeColumn get createdAt => dateTime()();
}
