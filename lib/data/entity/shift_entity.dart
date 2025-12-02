import 'package:drift/drift.dart';

class ShiftEntity extends Table {
  IntColumn get id => integer().nullable().autoIncrement()();
  TextColumn get shiftId => text().nullable()();
  TextColumn get prefix => text().nullable()();
  TextColumn get reference => text().nullable()();
  TextColumn get userId => text().nullable()();
  TextColumn get userName => text().nullable()();
  TextColumn get branchName => text().nullable()();
  TextColumn get clockedInDateAt => text().nullable()();
  TextColumn get clockedInTimeAt => text().nullable()();
  TextColumn get clockedOutDateAt => text().nullable()();
  TextColumn get clockedOutTimeAt => text().nullable()();
  BoolColumn get isClockedOut => boolean().nullable()();

  @override
  List<Set<Column<Object>>>? get uniqueKeys => [
        {reference}
      ];
}
