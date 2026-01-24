import 'package:drift/drift.dart';

class AuditLogs extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get operation => text()();
  TextColumn get details => text()();
  TextColumn get tableId => text()();
  TextColumn get orderRef => text()();
  DateTimeColumn get createdAt => dateTime()();
}
