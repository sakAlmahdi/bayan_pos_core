import 'package:drift/drift.dart';

class TillEntity extends Table {
  IntColumn get id => integer().nullable().autoIncrement()();
  TextColumn get reference => text().named('reference')();
  TextColumn get shiftId => text()();
  TextColumn get userId => text()();
  TextColumn get userName => text()();
  TextColumn get openDateOn => text()();
  TextColumn get openTimeOn => text()();
  TextColumn get closeDateOn => text().nullable()();
  TextColumn get closeTimeOn => text().nullable()();
  TextColumn get note => text().nullable()();
  BoolColumn get isClosed => boolean().withDefault(const Constant(false))();
  RealColumn get amount => real().withDefault(const Constant(0))();

  // @override
  // List<Set<Column<Object>>>? get uniqueKeys => [
  //       {reference}
  //     ];
  // @override
  // Set<Column<Object>>? get primaryKey => {reference, id};
}

class TillAmountsEntity extends Table {
  IntColumn get id => integer().nullable().autoIncrement()();
  TextColumn get idTill => text().references(TillEntity, #reference)();
  TextColumn get currencyCode => text()();
  TextColumn get currencyId => text()();
  TextColumn get currencyName => text()();
  TextColumn get currencyFName => text()();
  TextColumn get paymentMethodId => text()();
  TextColumn get paymentMethodName => text()();
  TextColumn get paymentMethodFName => text()();

  RealColumn get amount => real().withDefault(const Constant(0))();

  @override
  List<Set<Column<Object>>>? get uniqueKeys => [
        {idTill, currencyCode, paymentMethodId, amount}
      ];
}

class PaymentMethodEntity extends Table {
  IntColumn get idSeq => integer().nullable().autoIncrement()();
  TextColumn get id => text()();
  TextColumn get name => text()();
  TextColumn get fName => text()();
  IntColumn get paymentType => integer()();
  IntColumn get displayOrder => integer().nullable()();
  BoolColumn get autoOpenCashDrawer => boolean().nullable()();
  BoolColumn get isActive => boolean().nullable()();
  BoolColumn get isDeleted => boolean().nullable()();
  // imageUrl
  TextColumn get imageUrl => text().nullable()();

  @override
  List<Set<Column<Object>>>? get uniqueKeys => [
        {id}
      ];
}
