import 'package:drift/drift.dart';

class DeviceEntity extends Table {
  IntColumn get idSeq => integer().autoIncrement()();
  TextColumn get deviceId => text().unique()();
  TextColumn get deviceTypeId => text().nullable()();
  TextColumn get deviceModelId => text().nullable()();
  IntColumn get deviceTypeCode => integer().nullable()();
  IntColumn get masterDeviceNo => integer().nullable()();
  TextColumn get deviceNo => text().nullable()();
  TextColumn get reference => text().nullable()();
  TextColumn get name => text().nullable()();
  TextColumn get fName => text().nullable()();
  BoolColumn get enableOnlineOrderReceiver => boolean().nullable()();
  TextColumn get model => text().nullable()();
  TextColumn get systemVersion => text().nullable()();
  TextColumn get appVersion => text().nullable()();
  TextColumn get build => text().nullable()();
  TextColumn get latitude => text().nullable()();
  TextColumn get longitude => text().nullable()();
  TextColumn get connectionIPAddress => text().nullable()();
  IntColumn get connectionPort => integer().nullable()();
  IntColumn get connectionType => integer().nullable()();
  TextColumn get imei => text().nullable()();
  TextColumn get ip => text().nullable()();
  TextColumn get refrencePrefix => text().nullable()();
  
  // JSON lists
  TextColumn get orderTypes => text().nullable()();
  TextColumn get products => text().nullable()();
  TextColumn get categories => text().nullable()();
  TextColumn get departments => text().nullable()();
  TextColumn get users => text().nullable()();
  TextColumn get resturnatSections => text().nullable()();
  
  // Settings (Flattened for simplicity or could be another table)
  TextColumn get settings => text().nullable()(); // Store DeviceSetting as JSON
}
