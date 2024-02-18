import 'package:drift/drift.dart';

class DrawerOperationEntity extends Table {
  IntColumn get idSeq => integer().nullable().autoIncrement()();
  TextColumn get referance => text()();
  DateTimeColumn get dateWork => dateTime()();
  IntColumn get type => integer().nullable()();
  RealColumn get amount => real().nullable()();
  TextColumn get resaon => text().nullable()();
  TextColumn get note => text().nullable()();
  TextColumn get deviceId => text().nullable()();
  TextColumn get userId => text().nullable()();
  TextColumn get tillId => text().nullable()();
  TextColumn get shiftId => text().nullable()();

  @override
  List<Set<Column<Object>>>? get uniqueKeys => [
        {referance}
      ];
}
