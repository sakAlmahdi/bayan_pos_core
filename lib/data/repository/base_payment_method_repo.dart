import 'package:bayan_pos_core/bayan_pos_core.dart';

abstract class BasePaymentMethodRepo {
  saveAllPaymentsMethods(
      {required List<PaymentMethod> methods,
      SaveMode? saveMode = SaveMode.insert});
  removeAllPaymentMethods();
  Stream<List<PaymentMethod>?> getAllPaymentMethodsStream(
      {String? serach, Map<String, dynamic>? filtter});
  Future<List<PaymentMethod>> getAllPaymentMethods();
}
