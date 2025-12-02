import 'package:drift/drift.dart' hide JsonTypeConverter;

import 'drift_db.dart';

class ActivationInfoEntity extends Table {
  IntColumn get idSeq => integer().autoIncrement().nullable()();
  TextColumn get id => text().nullable()();
  TextColumn get name => text().nullable()();
  TextColumn get fName => text().nullable()();
  TextColumn get email => text().nullable()();
  TextColumn get phone => text().nullable()();
  TextColumn get mobile => text().nullable()();
  TextColumn get taxRegName => text().nullable()();
  TextColumn get fTaxRegName => text().nullable()();
  TextColumn get taxCode => text().nullable()();
  TextColumn get onlineOrderStartTime => text().nullable()();
  TextColumn get onlineOrderEndTime => text().nullable()();
  TextColumn get branchPrefix => text().nullable()();
  TextColumn get customerService => text().nullable()();
  TextColumn get countryId => text().nullable()();
  TextColumn get cityId => text().nullable()();
  TextColumn get address => text().nullable()();
  TextColumn get latitude => text().nullable()();
  TextColumn get longitude => text().nullable()();
  TextColumn get headerInvoiceMsg => text().nullable()();
  TextColumn get footerInvoiceMsg => text().nullable()();
  BoolColumn get receiveOnlineOrders => boolean().nullable()();
  TextColumn get devices => text().map(const JsonTypeConverter()).nullable()();
  TextColumn get code => text().nullable()();
  TextColumn get currentDeviceId => text().nullable()();
  TextColumn get company => text().nullable()();
  TextColumn get fCompany => text().nullable()();
  TextColumn get branch => text().nullable()();
  TextColumn get fBranch => text().nullable()();
}
