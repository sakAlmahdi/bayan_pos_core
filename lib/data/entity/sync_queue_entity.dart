import 'package:drift/drift.dart' hide JsonTypeConverter;
import 'drift_db.dart';

class SyncQueueEntity extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get entity => text()();
  TextColumn get entityId => text()();
  TextColumn get process => text()(); // Create, Update, Delete
  DateTimeColumn get createdAt => dateTime()();
  TextColumn get userId => text().nullable()();
  BoolColumn get synced => boolean().withDefault(Constant(false))();
  TextColumn get checksumLocal => text().nullable()();
  TextColumn get checksumBaseCashier => text().nullable()();
  TextColumn get checksumCloud => text().nullable()();
  TextColumn get data => text().map(const JsonTypeConverter())();

  @override
  Set<Column> get primaryKey => {id};

  @override
  List<Set<Column<Object>>>? get uniqueKeys => [
        {entity, entityId}
      ];
}
