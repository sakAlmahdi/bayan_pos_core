import 'dart:async';

import 'package:bayan_pos_core/bayan_pos_core.dart';
import 'package:bayan_pos_core/core/extensions/drift_database_ex.dart';
import 'package:bayan_pos_core/core/keys.dart';
import 'package:bayan_pos_core/data/repository/base_till_repo.dart';
import 'package:drift/drift.dart';

class BaseTillDriftProvider extends BaseTillRepo {
  final MyDatabase db;
  BaseTillDriftProvider(this.db);

  @override
  Future<Till?> closeTill(
    String userId,
    List<TillValue> tillAmounts, {
    String? note,
  }) async {
    try {
      Till? till = await hasTill(userId);
      if (till == null) {
        throw 'لا يوجد عهدة لهذا المستخدم';
      }
      till = till.copyWith(
        closeDateOn: DateTime.now().toString().formateDateOnly,
        closeTimeOn: DateTime.now().toString().formateTimeOnly,
        isClosed: true,
        note: note ?? till.note,
      );
      // till.tillAmounts.addAll(tillAmounts);
      await db.transaction(() async {
        try {
          // for (var i = 0; i < tillAmounts.length; i++) {
          //   await db.into(db.paymentMethodEntity).insert(
          //       PaymentMethodEntityData.fromJson(
          //           tillAmounts[i].method.target?.toJson() ?? {}),
          //       mode: InsertMode.insertOrReplace);
          // }

          for (var i = 0; i < tillAmounts.length; i++) {
            TillAmountsEntityData entityData = TillAmountsEntityData(
              idTill: till!.reference.toString(),
              currencyCode: tillAmounts[i].currencyCode,
              currencyFName: tillAmounts[i].currencyFName!,
              currencyId: tillAmounts[i].currencyId!.value,
              currencyName: tillAmounts[i].currencyName!,
              paymentMethodId: tillAmounts[i].paymentMethodId!.value,
              paymentMethodName: tillAmounts[i].paymentMethodName!,
              paymentMethodFName: tillAmounts[i].paymentMethodFName!,
              amount: tillAmounts[i].amt,
            );
            await db.into(db.tillAmountsEntity).insertWithSyncQueue(
                  entityData,
                  mode: InsertMode.insertOrReplace,
                  data: entityData.toJson(),
                  db: db,
                  entityId: entityData.idTill,
                  table: db.tillEntity,
                );
          }
        } catch (e) {
          print(e.toString());
        }
      });

      await db
          .into(db.tillEntity)
          .insert(till.toTillEntityData, mode: InsertMode.insertOrReplace);

      return till;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<Till>?> getAllTillOpened() async {
    var query = db.select(db.tillEntity);
    query.where((tbl) => tbl.isClosed.equals(false));

    return (await query.get()).toTillList;
  }

  @override
  Stream<List<Till>?> getTillsStream(String? userId,
      {Map<String, dynamic>? filter}) {
    // var query = db.select(db.tillEntity);
    // query = filterFunc(query: query, userId: userId, filter: filter);
    // return query.watch().map((event) => event.toTillList);

    var query = db.select(db.tillEntity).join([
      leftOuterJoin(
        db.tillAmountsEntity,
        db.tillAmountsEntity.idTill.equalsExp(db.tillEntity.reference),
      )
    ]);
    if (userId != null) {
      query = query..where(db.tillEntity.userId.equals(userId));
    }
    if (filter != null) {
      if (filter[FilterKeys.inDate] != null) {
        query.where(db.tillEntity.openDateOn
            .contains(filter[FilterKeys.inDate].toString().formateDateOnly));
      }
      if (filter[FilterKeys.dateFrom] != null) {
        query.where(
            db.tillEntity.openDateOn.isBiggerOrEqual(filter['dateFrom']));
      }
      if (filter[FilterKeys.dateFrom] != null) {
        query.where(
            db.tillEntity.openDateOn.isBiggerOrEqual(filter['dateFrom']));
      }
      if (filter[FilterKeys.dateFrom] != null) {
        query.where(
            db.tillEntity.closeDateOn.isSmallerOrEqual(filter['dateTo']));
      }
      if (filter[FilterKeys.active] != null) {
        query.where(db.tillEntity.isClosed.equals(filter['active']));
      }
    }
// query = filterFunc(query: query, userId: userId, filter: filter);
    final completer = Completer<List<Till>?>();
    query.orderBy([
      OrderingTerm(expression: db.tillEntity.id, mode: OrderingMode.desc),
    ]);
    var stream = query.watch();
    List<Till> tillsData = [];
    stream.listen((rows) {
      final tills = {
        for (var row in rows)
          row.readTable(db.tillEntity).reference: row.readTable(db.tillEntity)
      };
      for (var till in tills.values) {
        Till t = till.toTillModle;
        var s = rows
            .where((element) =>
                element.readTableOrNull(db.tillAmountsEntity)?.idTill ==
                t.reference)
            .toList()
            .map((e) => e.readTable(db.tillAmountsEntity))
            .toList();
        t.tillAmounts?.addAll(s.toTillAmountList.toList() ?? []);
        tillsData.add(t);
      }
      // tillsData.addAll(tills.values.toList().toTillList);

      return completer.complete(tillsData);
    }, onError: (error) {
      completer.completeError(error);
    });
    return futureToStream(completer.future);
  }

  @override
  Future<Till?> hasTill(String? userId) async {
    if (userId == null) return null;
    var query = db.select(db.tillEntity);
    query
        .where((tbl) => tbl.userId.equals(userId) & tbl.isClosed.equals(false));
    var data = await query.get();
    return data.isNotEmpty ? data.first.toTillModle : null;
  }

  @override
  Future<Till?> openTill({
    required String shiftId,
    String? userId,
    String? userName,
    String? note,
    required double amount,
  }) async {
    try {
      Till? till = await hasTill(userId);

      if (till != null) {
        return till;
      }
      till = Till(
        // id: 0,
        userId: userId,
        note: note,
        reference: BaseHelpersMethods.createRefId(),
        shiftId: shiftId,
        openDateOn: DateTime.now().toString()?.formateDateOnly,
        openTimeOn: DateTime.now().toString().formateTimeOnly,
        userName: userName,
        isClosed: false,
        amount: amount,
      );
      await db.into(db.tillEntity).insertWithSyncQueue(
            till.toTillEntityData,
            mode: InsertMode.insertOrReplace,
            data: till.toTillEntityData.toJson(),
            db: db,
            entityId: till.reference!,
            table: db.tillEntity,
          );
      return till;
    } catch (e) {
      throw e.toString();
    }
  }

  @override
  Future<List<Till>?> tillUserHistory(String? userId,
      {Map<String, dynamic>? filter}) async {
    // var query = db.select(db.tillEntity);
    // query = filterFunc(query: query, userId: userId, filter: filter);

    // return (await query.get()).toTillList;
    var query = db.select(db.tillEntity).join([
      innerJoin(
        db.tillAmountsEntity,
        db.tillAmountsEntity.idTill.equalsExp(db.tillEntity.reference),
      )
    ]);

    final completer = Completer<List<Till>?>();
    var stream = query.watch();
    List<Till> tillsData = [];
    stream.listen((rows) {
      final tills = {
        for (var row in rows)
          row.readTable(db.tillEntity).reference: row.readTable(db.tillEntity)
      };
      for (var till in tills.values) {
        Till t = till.toTillModle;
        var s = rows
            .where((element) =>
                element.readTable(db.tillAmountsEntity).idTill == t.reference)
            .toList()
            .map((e) => e.readTable(db.tillAmountsEntity))
            .toList();
        t.tillAmounts?.addAll(s.toTillAmountList.toList());
        tillsData.add(t);
      }

      return completer.complete(tillsData);
    }, onError: (error) {
      completer.completeError(error);
    });
    return completer.future;
  }

  SimpleSelectStatement<$TillEntityTable, TillEntityData> filterFunc(
      {required SimpleSelectStatement<$TillEntityTable, TillEntityData> query,
      String? userId,
      Map<String, dynamic>? filter}) {
    if (userId != null) {
      query.where((tbl) => tbl.userId.equals(userId));
    }
    if (filter != null) {
      if (filter[FilterKeys.inDate] != null) {
        query.where((tbl) => tbl.openDateOn
            .contains(filter[FilterKeys.inDate].toString().formateDateOnly));
      }
      if (filter[FilterKeys.dateFrom] != null) {
        query
            .where((tbl) => tbl.openDateOn.isBiggerOrEqual(filter['dateFrom']));
      }
      if (filter[FilterKeys.dateFrom] != null) {
        query
            .where((tbl) => tbl.openDateOn.isBiggerOrEqual(filter['dateFrom']));
      }
      if (filter[FilterKeys.dateFrom] != null) {
        query
            .where((tbl) => tbl.closeDateOn.isSmallerOrEqual(filter['dateTo']));
      }
      if (filter[FilterKeys.active] != null) {
        query.where((tbl) => tbl.isClosed.equals(filter['active']));
      }
    }

    if (filter?['numRows'] != null && filter?['page'] != null) {
      query.limit(
        filter!['numRows'],
        offset: filter['page'] * filter['numRows'],
      );
    }
    return query;
  }

  @override
  Future<List<Till>?> gitTillsByDate(DateTime dateTime,
      {Map<String, dynamic>? filter}) async {
    String dateOnly = dateTime.toString().formateDateOnly;

    var query = db.select(db.tillEntity).join([
      innerJoin(
        db.tillAmountsEntity,
        db.tillAmountsEntity.idTill.equalsExp(db.tillEntity.reference),
      )
    ]);

    if (filter?['tillId'] != null) {
      String id = filter!['tillId'].toString();
      query.where((db.tillEntity.openDateOn.contains(dateOnly) |
              db.tillEntity.closeDateOn.contains(dateOnly)) &
          db.tillEntity.reference.equals(id));
    } else {
      query.where(db.tillEntity.openDateOn.contains(dateOnly) |
          db.tillEntity.closeDateOn.contains(dateOnly));
    }

    final completer = Completer<List<Till>?>();
    var stream = query.watch();
    List<Till> tillsData = [];
    stream.listen((rows) {
      final tills = {
        for (var row in rows)
          row.readTable(db.tillEntity).reference: row.readTable(db.tillEntity)
      };
      for (var till in tills.values) {
        Till t = till.toTillModle;
        var s = rows
            .where((element) =>
                element.readTable(db.tillAmountsEntity).idTill == t.reference)
            .toList()
            .map((e) => e.readTable(db.tillAmountsEntity))
            .toList();
        t.tillAmounts?.addAll(s.toTillAmountList.toList());
        tillsData.add(t);
      }

      return completer.complete(tillsData);
    }, onError: (error) {
      completer.completeError(error);
    });
    return completer.future;
  }

  @override
  Future<Till?> getTillById(String tillId) async {
    var query = db.select(db.tillEntity);
    query.where((tbl) => tbl.reference.equals(tillId));
    var data = await query.get();
    return data.isNotEmpty ? data.first.toTillModle : null;
  }

  @override
  List<Object?> get props => [db];
}

Stream<T> futureToStream<T>(Future<T> future) async* {
  yield await future;
}
