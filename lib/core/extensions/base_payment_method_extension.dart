import 'package:bayan_pos_core/data/entity/drift_db.dart';
import 'package:bayan_pos_core/data/model/order/payment_method.dart';

extension PaymentMethodEntityDataEx on PaymentMethodEntityData {
  PaymentMethod get toPaymentMethodModle => PaymentMethod.fromJson(toJson());
}

extension ListDrawerOperationEntityDataExtension
    on List<PaymentMethodEntityData> {
  List<PaymentMethod> get toPaymentMehodeList =>
      map((e) => e.toPaymentMethodModle).toList();
}

extension BasePaymentMethodExtension on PaymentMethod {
  PaymentMethodEntityData get toEntityData =>
      PaymentMethodEntityData.fromJson(toJson());
}
