import 'package:drift/drift.dart' hide JsonTypeConverter;

class ProductQtyEntity extends Table {
  IntColumn get id => integer().autoIncrement().nullable()();
  RealColumn get qty => real()();
  TextColumn get productId => text()();
  TextColumn get unitId => text()();
  BoolColumn get isAvailable => boolean()();

  @override
  List<Set<Column<Object>>>? get uniqueKeys => [
        {productId, unitId}
      ];
}
