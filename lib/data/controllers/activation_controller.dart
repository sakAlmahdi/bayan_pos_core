import 'dart:io';
import 'package:android_id/android_id.dart';
import 'package:bayan_pos_core/bayan_pos_core.dart';
import 'package:bayan_pos_core/data/model/device/activation.dart';
import 'package:bayan_pos_core/data/model/device/activation_info.dart';
import 'package:bayan_pos_core/data/model/device/device.dart';
import 'package:bayan_pos_core/data/provider/api/activation_api.dart';
import 'package:bayan_pos_core/data/provider/get_storage/activation_get_storge.dart';
import 'package:bayan_pos_core/data/provider/objectbox/activation_objbox.dart';
import 'package:client_information/client_information.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:objectbox/internal.dart';
import 'package:objectbox/objectbox.dart';

class ActivationController extends GetxController {
  late Dio dio;
  late String pathActiveDevice;
  late MyDatabase database;
  int? deviceCode;

  ActivationController({
    required this.dio,
    required this.pathActiveDevice,
    required this.database,
    this.deviceCode,
  });
  ActivationGetStrorage localRepo = ActivationGetStrorage();
  late ActivationApiProvider reomteRepo;
  late ActivationObjbox ojBoxRepo;
  late TextEditingController pin;

  TextEditingController accountNo = TextEditingController(
    text: '220230',
  );
  List<Device> devices = [];

  String? activationCode;
  ActivationInfo? activationInfoData;
  final isLoading = false.obs;

  String? get branchId => activationInfoData?.id;

  Device? currentDevice;

  @override
  Future<void> onInit() async {
    super.onInit();
    pin = TextEditingController(text: kDebugMode ? "892761" : null);
    reomteRepo = ActivationApiProvider(
      dio: dio,
      pathActiveDevice: pathActiveDevice,
    );
    ojBoxRepo = ActivationObjbox(
      db: database,
    );
    activationInfoData = await ojBoxRepo.getActivationInfo();
    await getDeviceFromDb();
  }

  getDeviceFromDb() {
    getCurentDevice();

    print("${activationInfoData?.devices}");
  }

  getCurentDevice({int? deviceCode}) async {
    deviceCode = deviceCode ?? this.deviceCode;
    String? imei = await getDeviecId();
    currentDevice = activationInfoData?.devices.firstWhereOrNull((element) =>
        // element.imei == imei &&
        (deviceCode == null || element.deviceTypeCode == deviceCode));
    if (currentDevice != null) {
      activationInfoData?.currentDeviceId = currentDevice?.deviceId;
    }
    // currentDevice = DeviceObjBox().getCurentDevice(initDevId: imei);
    return currentDevice;
  }

  Future<bool> checkDeviceActivated() async {
    // activationCode = null;
    var data = await ojBoxRepo.getActivationInfo();
    return data != null;
  }

  saveCode(String code) async {
    bool isSaved = await localRepo.saveActivationCode(code);
    if (isSaved) {
      Get.offAllNamed(Get.arguments['lastRoute']);
    }
  }

  Future<Activation?> activationInfo(String code) async {
    ClientInformation info = await ClientInformation.fetch();
    String? devId = await getDeviecId();
    // Position? position = await getCurentPosition();

    // if (position == null) return null;
    var a = Activation(
      imei: devId ?? '',
      isActive: true,
      displayOrder: 0,
      accountNo: int.tryParse(accountNo.text) ?? 0,
      appVersion: info.applicationVersion,
      build: info.osVersion,
      deviceNo: int.parse(code),
      // deviceNo: 123456,
      latitude: "99.99",
      longitude: "99.99",
      // latitude: position.latitude.toString(),
      // longitude: position.longitude.toString(),
      model: info.deviceName,
      reference: info.deviceId,
      systemVersion: info.osVersion,
    );
    return a;
  }

  Future<String?> getDeviecId() async {
    var deviceInfo = DeviceInfoPlugin();
    if (Platform.isIOS) {
      var iosDeviceInfo = await deviceInfo.iosInfo;
      return iosDeviceInfo.identifierForVendor; // unique ID on iOS
    } else {
      const _androidIdPlugin = AndroidId();

      return await _androidIdPlugin.getId();

      // var androidDeviceInfo = await deviceInfo.androidInfo;

      // return androidDeviceInfo.androidId;
      // unique ID on Android
      //
      // return "abecb3bb37ec2d9a";
    }
  }

  active({
    required Function(ActivationInfo info) onSuccess,
    required Function(dynamic error) onError,
  }) async {
    // if (!(pin.text.length == 6)) return;
    try {
      isLoading.value = true;
      Activation? activation = await activationInfo(pin.text);
      if (activation != null) {
        activationInfoData = await reomteRepo.activeDevice(activation);
        if (activationInfoData != null) {
          // await createToken(code);

          activationInfoData!.code = pin.text;
          saveCode(pin.text);
          getCurentDevice();
          ojBoxRepo.saveActivationInfo(activationInfoData!);
          getDeviceFromDb();
          onSuccess.call(activationInfoData!);
        }
      } else {
        throw 'Activation Failed';
      }

      isLoading.value = false;
    } catch (e) {
      onError.call(e);
      isLoading.value = false;
      rethrow;
    }
  }

  // Future<Position?> getCurentPosition() async {
  //   return Position(
  //       longitude: 9010,
  //       latitude: 90131,
  //       timestamp: DateTime.now(),
  //       accuracy: 0,
  //       altitude: 0,
  //       heading: 0,
  //       speed: 10,
  //       speedAccuracy: 20);
  //   await openSerLocation();
  //   bool serviceEnabled;
  //   LocationPermission permission;

  //   serviceEnabled = await Geolocator.isLocationServiceEnabled();
  //   if (!serviceEnabled) {
  //     showSnakBarErorr(msg: 'Location services are disabled.');
  //     return Future.error('Location services are disabled.');
  //   }

  //   permission = await Geolocator.checkPermission();
  //   if (permission == LocationPermission.denied) {
  //     permission = await Geolocator.requestPermission();
  //     if (permission == LocationPermission.denied) {
  //       showSnakBarErorr(msg: 'Location permissions are denied');
  //       return Future.error('Location permissions are denied');
  //     }
  //   }

  //   if (permission == LocationPermission.deniedForever) {
  //     showSnakBarErorr(
  //         msg:
  //             'Location permissions are permanently denied, we cannot request permissions.');

  //     return Future.error(
  //         'Location permissions are permanently denied, we cannot request permissions.');
  //   }
  //   return await Geolocator.getCurrentPosition();
  // }

  // openSerLocation() async {
  //   Location location = Location();
  //   bool ison = await location.serviceEnabled();

  //   if (!ison) {
  //     ison = await location.requestService();
  //     if (!ison) {
  //       await Get.defaultDialog(
  //         title: "${GlobalStrings.alert.tr}",
  //         middleText: "${TranslateKeys.siteActivationRequired.tr}",
  //         textConfirm: TranslateKeys.activate.tr,
  //         textCancel: GlobalStrings.cansel.tr,
  //         confirmTextColor: Colors.white,
  //         cancelTextColor: Colors.white,
  //         onConfirm: () {
  //           Get.back();
  //           openSerLocation();
  //         },
  //         onCancel: () {
  //           Get.back();
  //         },
  //       );
  //     }
  //   }
  // }

  checkIsActiveOnline({
    Function()? isNotActive,
    Function(dynamic error)? onError,
  }) async {
    try {
      if (activationInfoData?.code == null) throw 'no code save';
      bool? isActive =
          await reomteRepo.checkDeviceActive(activationInfoData!.code!);
      if (isActive == false) {
        await ojBoxRepo.removeActivationInfo();
        isNotActive?.call();
      }
    } catch (e) {
      onError?.call(e);
    }
  }
}
