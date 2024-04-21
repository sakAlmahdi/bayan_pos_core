class Activation {
  late String imei;
  bool? isActive;
  int? displayOrder;
  int? accountNo;
  int? deviceNo;
  String? reference;
  String? model;
  String? systemVersion;
  String? appVersion;
  String? build;
  String? latitude;
  String? longitude;

  Activation(
      {required this.imei,
      this.isActive,
      this.displayOrder,
      this.accountNo,
      this.deviceNo,
      this.reference,
      this.model,
      this.systemVersion,
      this.appVersion,
      this.build,
      this.latitude,
      this.longitude});

  Activation.fromJson(Map<String, dynamic> json) {
    imei = json['imei'];
    isActive = json['isActive'];
    displayOrder = json['displayOrder'];
    accountNo = json['accountNo'];
    deviceNo = json['deviceNo'];
    reference = json['reference'];
    model = json['model'];
    systemVersion = json['systemVersion'];
    appVersion = json['appVersion'];
    build = json['build'];
    latitude = json['latitude'];
    longitude = json['longitude'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['imei'] = imei;
    data['isActive'] = isActive;
    data['displayOrder'] = displayOrder;
    data['accountNo'] = accountNo;
    data['deviceNo'] = deviceNo;
    data['reference'] = reference;
    data['model'] = model;
    data['systemVersion'] = systemVersion;
    data['appVersion'] = appVersion;
    data['build'] = build;
    data['latitude'] = latitude;
    data['longitude'] = longitude;
    return data;
  }
}
