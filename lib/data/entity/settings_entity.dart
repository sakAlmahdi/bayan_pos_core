import 'package:drift/drift.dart' hide JsonTypeConverter;
import 'drift_db.dart';

class SettingEntity extends Table {
  IntColumn get idSeq => integer().nullable().autoIncrement()();
  TextColumn get idUser => text()();
  TextColumn get shortcuts =>
      text().map(const JsonTypeConverter()).nullable()();

  @override
  List<Set<Column<Object>>>? get uniqueKeys => [
        {idUser}
      ];
}
