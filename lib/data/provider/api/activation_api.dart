import 'package:bayan_pos_core/data/model/device/activation.dart';
import 'package:bayan_pos_core/data/model/device/activation_info.dart';
import 'package:bayan_pos_core/data/repository/activation_repository.dart';

import 'package:dio/dio.dart';

class ActivationApiProvider extends ActivationRepository {
  late Dio dio;
  late String pathActiveDevice;
  ActivationApiProvider({required this.dio, required this.pathActiveDevice});

  //// 402501

  @override
  Future<String?> getActivationCode() {
    throw UnimplementedError();
  }

  @override
  Future<bool> removeActivationCode() {
    throw UnimplementedError();
  }

  @override
  Future<bool> saveActivationCode(String code) {
    throw UnimplementedError();
  }

  @override
  activeDevice(Activation activation) async {
    try {
      Response response = await dio.put(
        pathActiveDevice,
        data: activation.toJson(),
      );

      final json = response.data;
      bool isSucceeded = json['succeeded'];
      if (response.statusCode != 200 || isSucceeded == false) {
        throw json['messages'];
      } else {
        return ActivationInfo.fromJson(json['data']);
      }
    } catch (e) {
      // throw HandlerExptionsHepler().getMsgError(e);
      rethrow;
    }
  }

  Future<bool?> checkDeviceActive(String devCode) async {
    try {
      Response response = await dio.put(
        "/v1/device/isactivated/$devCode",
      );

      final json = response.data;
      bool isSucceeded = json['succeeded'];
      if (response.statusCode != 200 || isSucceeded == false) {
        throw json['messages'];
      } else {
        return json['data'];
      }
    } catch (e) {
      print(e.toString());

      return null;
    }
  }
}
