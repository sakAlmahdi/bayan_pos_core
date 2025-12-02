import 'package:bayan_pos_core/data/model/device/activation.dart';

abstract class ActivationRepository {
  Future<String?> getActivationCode();

  activeDevice(Activation activation);
  Future<bool> saveActivationCode(String code);
  Future<bool> removeActivationCode();
}
