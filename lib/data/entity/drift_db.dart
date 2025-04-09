import 'dart:convert';
import 'dart:io';
import 'package:bayan_pos_core/data/entity/activation_info_entity.dart';
import 'package:bayan_pos_core/data/entity/drawer_operation_entity.dart';
import 'package:bayan_pos_core/data/entity/product_qty_entity.dart';
import 'package:bayan_pos_core/data/entity/settings_entity.dart';
import 'package:bayan_pos_core/data/entity/shift_entity.dart';
import 'package:bayan_pos_core/data/entity/till_entity.dart';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'order_entity.dart';
part 'drift_db.g.dart';

@DriftDatabase(tables: [
  OrderEntity,
  OrderHistoryEntity,
  OrderNumbers,
  ShiftEntity,
  TillEntity,
  TillAmountsEntity,
  PaymentMethodEntity,
  SettingEntity,
  OrderPayments,
  DrawerOperationEntity,
  ActivationInfoEntity,
  ProductQtyEntity,
])
class MyDatabase extends _$MyDatabase {
  MyDatabase() : super(_openConnection());

  @override
  MigrationStrategy get migration => MigrationStrategy(
        onCreate: (Migrator m) async {
          await m.createAll();
        },
        onUpgrade: (Migrator m, int from, int to) async {
          await m.createTable(tillEntity);

          // await customStatement(
          //   """
          //     DELETE FROM order_entity
          //     WHERE id_seq NOT IN (
          //       SELECT max(id_seq)
          //       FROM order_entity
          //       GROUP BY order_ref
          //     )
          //     """,
          // );

          // await customStatement("""
          //     PRAGMA foreign_keys=OFF;

          //     BEGIN;

          //     CREATE TABLE _order_entity_new (
          //         id_seq INTEGER PRIMARY KEY AUTOINCREMENT
          //       , start_date INTEGER NOT NULL
          //       , time_of_receipt INTEGER
          //       , parent_order_id TEXT
          //       , split_index INTEGER
          //       , order_ref TEXT NOT NULL
          //       , call_name TEXT
          //       , order_type INTEGER NOT NULL
          //       , status INTEGER NOT NULL
          //       , order_source INTEGER NOT NULL
          //       , end_time INTEGER
          //       , delivery_company_info_id INTEGER
          //       , selected_price_list_id TEXT
          //       , creator_by TEXT
          //       , close_by TEXT
          //       , table_id TEXT
          //       , number_vistor INTEGER
          //       , customer TEXT
          //       , address TEXT
          //       , promotion TEXT
          //       , discount TEXT
          //       , products TEXT
          //       , price_discount REAL
          //       , price_promotion REAL
          //       , note TEXT
          //       , kitchen_note TEXT
          //       , msg_cansel TEXT
          //       , sub_total REAL NOT NULL DEFAULT(0.0)
          //       , fees TEXT
          //       , fee_values TEXT
          //       , payments TEXT
          //       , total_fee REAL
          //       , tax_price REAL
          //       , total_paid REAL
          //       , UNIQUE(order_ref)
          //     );

          //     INSERT INTO _order_entity_new (
          //         id_seq
          //       , start_date
          //       , time_of_receipt
          //       , parent_order_id
          //       , split_index
          //       , order_ref
          //       , call_name
          //       , order_type
          //       , status
          //       , order_source
          //       , end_time
          //       , delivery_company_info_id
          //       , selected_price_list_id
          //       , creator_by
          //       , close_by
          //       , table_id
          //       , number_vistor
          //       , customer
          //       , address
          //       , promotion
          //       , discount
          //       , products
          //       , price_discount
          //       , price_promotion
          //       , note
          //       , kitchen_note
          //       , msg_cansel
          //       , sub_total
          //       , fees
          //       , fee_values
          //       , payments
          //       , total_fee
          //       , tax_price
          //       , total_paid
          //     )
          //     SELECT
          //         id_seq
          //       , start_date
          //       , time_of_receipt
          //       , parent_order_id
          //       , split_index
          //       , order_ref
          //       , call_name
          //       , order_type
          //       , status
          //       , order_source
          //       , end_time
          //       , delivery_company_info_id
          //       , selected_price_list_id
          //       , creator_by
          //       , close_by
          //       , table_id
          //       , number_vistor
          //       , customer
          //       , address
          //       , promotion
          //       , discount
          //       , products
          //       , price_discount
          //       , price_promotion
          //       , note
          //       , kitchen_note
          //       , msg_cansel
          //       , sub_total
          //       , fees
          //       , fee_values
          //       , payments
          //       , total_fee
          //       , tax_price
          //       , total_paid
          //     FROM order_entity;

          //     DROP TABLE order_entity;

          //     PRAGMA legacy_alter_table = ON;

          //     ALTER TABLE _order_entity_new RENAME TO order_entity;

          //     PRAGMA legacy_alter_table = OFF;

          //     COMMIT;

          //     PRAGMA foreign_keys=ON;

//""");

          if (from < 15) {
            await m.addColumn(orderEntity, orderEntity.shiftId);
            await m.addColumn(orderEntity, orderEntity.tillId);
          }
          if (from < 16) {
            await m.createTable(tillEntity);
          }
          if (from < 17) {
            await m.createTable(orderPayments);
          }
          if (from < 19) {
            await m.addColumn(
                orderEntity, orderEntity.totalDiscountForOrderAndProduct);
          }
          if (from < 20) {
            await m.addColumn(orderEntity, orderEntity.kitchenInfo);
          }
          if (from < 21) {
            await m.addColumn(orderEntity, orderEntity.currency);
          }
          if (from <= 22) {
            await m.addColumn(orderEntity, orderEntity.paymentCurrency);
          }
          if (from < 24) {
            await m.addColumn(orderEntity, orderEntity.minimumReservationPrice);
          }
          if (from < 25) {
            await m.addColumn(
                paymentMethodEntity, paymentMethodEntity.imageUrl);
          }
        },
      );

  @override
  int get schemaVersion => 25;
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase.createInBackground(file);
  });
}

class JsonTypeConverter<T> extends TypeConverter<T?, String?> {
  const JsonTypeConverter();

  @override
  T? fromSql(String? fromDb) {
    if (fromDb == null) {
      return null;
    }

    return json.decode(fromDb) as T;
  }

  @override
  String? toSql(T? value) {
    if (value == null) {
      return null;
    }

    return json.encode(value);
  }
}

class DateTimeTypeConverter implements TypeConverter<int?, DateTime?> {
  const DateTimeTypeConverter();

  @override
  fromSql(DateTime? fromDb) {
    if (fromDb == null) {
      return null;
    }
    return fromDb.millisecondsSinceEpoch;
  }

  @override
  DateTime? toSql(value) {
    if (value == null) {
      return null;
    }

    return DateTime.fromMillisecondsSinceEpoch(value);
  }
}
