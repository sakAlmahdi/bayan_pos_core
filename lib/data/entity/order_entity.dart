import 'package:drift/drift.dart' hide JsonTypeConverter;
import 'drift_db.dart';

class OrderEntity extends Table {
  IntColumn get posTransactionType => integer().nullable()();
  IntColumn get idSeq => integer().nullable().autoIncrement()();
  TextColumn get invoiceNumber => text().nullable()();
  TextColumn get deviceId => text().nullable()();
  DateTimeColumn get startDate => dateTime()();
  DateTimeColumn get timeOfReceipt => dateTime().nullable()();
  TextColumn get parentOrderId => text().nullable()();
  IntColumn get splitIndex => integer().nullable()();
  TextColumn get orderRef => text()();
  TextColumn get callName => text().nullable()();
  IntColumn get callNumber => integer().nullable()();
  IntColumn get orderType => integer()();
  IntColumn get status => integer()();
  IntColumn get paymentStatus => integer().nullable()();
  IntColumn get refundStatus => integer().nullable()();
  IntColumn get deliveryStatus => integer().nullable()();
  IntColumn get orderSource => integer().nullable()();
  DateTimeColumn get endTime => dateTime().nullable()();
  TextColumn get deliveryCompanyInfoId =>
      text().map(const JsonTypeConverter()).nullable()();
  TextColumn get priceListId => text().nullable()();
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
  TextColumn get currency => text().map(const JsonTypeConverter()).nullable()();
  TextColumn get paymentCurrency =>
      text().map(const JsonTypeConverter()).nullable()();
  RealColumn get minimumReservationPrice => real().nullable()();

  TextColumn get giftCard => text().map(const JsonTypeConverter()).nullable()();
  RealColumn get roundingAmount => real().nullable()();
  RealColumn get tipAmount => real().nullable()();
  RealColumn get donationAmount => real().nullable()();
  TextColumn get donationForId => text().nullable()();
  TextColumn get supervisorId => text().nullable()();
  TextColumn get reference => text().nullable()();
  TextColumn get trackingStatusId => text().nullable()();
  TextColumn get orderStatusTracking =>
      text().map(const JsonTypeConverter()).nullable()();
  TextColumn get waiters => text().map(const JsonTypeConverter()).nullable()();

  TextColumn get couponId => text().nullable()();
  TextColumn get createdOn => text().nullable()();
  TextColumn get createdBy => text().nullable()();
  TextColumn get lastModifiedBy => text().nullable()();
  TextColumn get lastModifiedOn => text().nullable()();
  TextColumn get table => text().map(const JsonTypeConverter()).nullable()();
  TextColumn get delivery => text().map(const JsonTypeConverter()).nullable()();
  TextColumn get customerName => text().nullable()();
  TextColumn get customerPhone => text().nullable()();

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
