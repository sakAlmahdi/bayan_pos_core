import 'package:bayan_pos_core/data/model/device/activation.dart';
import 'package:bayan_pos_core/data/repository/activation_repository.dart';
import 'package:get_storage/get_storage.dart';

class ActivationGetStrorage extends ActivationRepository {
  String get key => "activationCode";
  var box = GetStorage();

  @override
  Future<String?> getActivationCode() async {
    return box.read(key);
  }

  @override
  Future<bool> saveActivationCode(String code) async {
    try {
      await box.write(key, code);
      return true;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<bool> removeActivationCode() async {
    try {
      await box.remove(key);
      return true;
    } catch (e) {
      return false;
    }
  }

  @override
  activeDevice(Activation activation) {
    // TODO: implement activeDevice
    throw UnimplementedError();
  }
}
