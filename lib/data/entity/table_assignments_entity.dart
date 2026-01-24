import 'package:drift/drift.dart';

class TableAssignments extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get tableId => text()();
  TextColumn get employeeId => text()();
  TextColumn get orderRef => text().nullable()();
  DateTimeColumn get assignedAt => dateTime()();
  DateTimeColumn get releasedAt => dateTime().nullable()();
}
