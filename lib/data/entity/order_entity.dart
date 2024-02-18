import 'package:drift/drift.dart' hide JsonTypeConverter;
import 'drift_db.dart';

class OrderEntity extends Table {
  IntColumn get idSeq => integer().nullable().autoIncrement()();
  TextColumn get invoiceNumber => text().nullable()();
  TextColumn get deviceId => text().nullable()();
  DateTimeColumn get startDate => dateTime()();
  DateTimeColumn get timeOfReceipt => dateTime().nullable()();
  TextColumn get parentOrderId => text().nullable()();
  IntColumn get splitIndex => integer().nullable()();
  TextColumn get orderRef => text()();
  TextColumn get callName => text().nullable()();
  IntColumn get orderType => integer()();
  IntColumn get status => integer()();
  IntColumn get orderSource => integer()();
  DateTimeColumn get endTime => dateTime().nullable()();
  TextColumn get deliveryCompanyInfoId =>
      text().map(const JsonTypeConverter()).nullable()();
  TextColumn get selectedPriceListId => text().nullable()();
  TextColumn get creatorBy =>
      text().map(const JsonTypeConverter()).nullable()();
  TextColumn get closeBy => text().map(const JsonTypeConverter()).nullable()();
  TextColumn get tableId => text().nullable()();
  IntColumn get numberVistor => integer().nullable()();
  TextColumn get customer => text().map(const JsonTypeConverter()).nullable()();
  TextColumn get address => text().map(const JsonTypeConverter()).nullable()();
  TextColumn get promotion =>
      text().map(const JsonTypeConverter()).nullable()();
  TextColumn get discount => text().map(const JsonTypeConverter()).nullable()();
  TextColumn get products => text().map(const JsonTypeConverter()).nullable()();
  RealColumn get priceDiscount => real().nullable()();
  RealColumn get pricePromotion => real().nullable()();
  TextColumn get note => text().nullable()();
  TextColumn get kitchenNote => text().nullable()();
  TextColumn get msgCansel => text().nullable()();
  RealColumn get subTotal => real().withDefault(const Constant(0))();
  TextColumn get fees => text().map(const JsonTypeConverter()).nullable()();
  TextColumn get feeValues =>
      text().map(const JsonTypeConverter()).nullable()();
  TextColumn get payments => text().map(const JsonTypeConverter()).nullable()();
  RealColumn get totalFee => real().nullable()();
  RealColumn get taxPrice => real().nullable()();
  RealColumn get totalPaid => real().nullable()();
  TextColumn get checksum => text().nullable()();
  TextColumn get masterChecksum => text().nullable()();
  TextColumn get serverChecksum => text().nullable()();
  TextColumn get shiftId => text().nullable()();
  TextColumn get tillId => text().nullable()();
  RealColumn get totalDiscountForOrderAndProduct => real().nullable()();
  TextColumn get kitchenInfo =>
      text().map(const JsonTypeConverter()).nullable()();

  @override
  List<Set<Column<Object>>>? get uniqueKeys => [
        {orderRef}
      ];
}

class OrderHistoryEntity extends Table {
  IntColumn get idSeq => integer().nullable().autoIncrement()();
  TextColumn get orderRef => text()();
  TextColumn get orderId => text().nullable()();
  TextColumn get userId => text()();
  TextColumn get userName => text().nullable()();
  TextColumn get userFName => text().nullable()();
  TextColumn get order => text().map(const JsonTypeConverter()).nullable()();
  DateTimeColumn get lastEditDate => dateTime().nullable()();
  DateTimeColumn get lastSyncDate => dateTime().nullable()();
  TextColumn get sesstionId => text()();
  TextColumn get checkSumHash => text().nullable()();

  @override
  List<Set<Column<Object>>>? get uniqueKeys => [
        {
          orderRef,
          sesstionId,
          userId,
        }
      ];
}

class OrderNumbers extends Table {
  IntColumn get idSeq => integer().nullable().autoIncrement()();
  TextColumn get orderRef => text()();
  TextColumn get invoiceNumberPerfix => text()();
  TextColumn get prefix => text().nullable()();
  @override
  List<Set<Column<Object>>>? get uniqueKeys => [
        {
          orderRef,
        }
      ];
}

class OrderPayments extends Table {
  IntColumn get idSeq => integer().nullable().autoIncrement()();
  TextColumn get refreance => text()();
  TextColumn get tillId => text()();
  TextColumn get paymentMehtodId => text()();
  TextColumn get orderRef => text()();
  TextColumn get orderId => text().nullable()();
  RealColumn get amount => real().nullable()();
  RealColumn get remainAmt => real().withDefault(const Constant(0.0))();
  RealColumn get amountCurecny => real().withDefault(const Constant(0.0))();
  RealColumn get exchangeRate => real().nullable()();
  TextColumn get currencyCode => text().nullable()();

  @override
  List<Set<Column<Object>>>? get uniqueKeys => [
        {refreance}
      ];
}
