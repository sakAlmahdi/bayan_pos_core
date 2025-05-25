import 'package:bayan_pos_core/core/extensions/base_payment_method_extension.dart';
import 'package:bayan_pos_core/data/entity/drift_db.dart';
import 'package:bayan_pos_core/data/enum/save_mode.dart';
import 'package:bayan_pos_core/data/model/order/payment_method.dart';
import 'package:bayan_pos_core/data/repository/base_payment_method_repo.dart';

import 'package:drift/drift.dart';

class BasePaymentMethodDriftProvider extends BasePaymentMethodRepo {
  final MyDatabase db;
  BasePaymentMethodDriftProvider(this.db);
  @override
  Future<List<PaymentMethod>> getAllPaymentMethods() async {
    var query = db.select(db.paymentMethodEntity);
    return (await query.get()).toPaymentMehodeList;
  }

  @override
  Stream<List<PaymentMethod>?> getAllPaymentMethodsStream(
      {String? serach, Map<String, dynamic>? filtter}) {
    // TODO: implement getAllPaymentMethodsStream
    throw UnimplementedError();
  }

  @override
  removeAllPaymentMethods() {
    var q = db.delete(db.paymentMethodEntity);
    q.go();
  }

  @override
  saveAllPaymentsMethods(
      {required List<PaymentMethod> methods,
      SaveMode? saveMode = SaveMode.insert}) async {
    if (saveMode == SaveMode.replace) removeAllPaymentMethods();

    for (var i = 0; i < methods.length; i++) {
      await db.into(db.paymentMethodEntity).insert(
          PaymentMethodEntityData.fromJson(
            methods[i].toJson(),
          ),
          mode: InsertMode.insertOrReplace);
    }
  }
}
