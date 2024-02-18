class CreateDevice {
  String? deviceTypeId;
  String? deviceModelId;
  int? masterDeviceNo;
  String? reference;
  String? name;
  String? fName;
  bool? enableOnlineOrderReceiver;
  String? model;
  String? systemVersion;
  String? appVersion;
  String? build;
  String? latitude;
  String? longitude;

  CreateDevice(
      {this.deviceTypeId,
      this.deviceModelId,
      this.masterDeviceNo,
      this.reference,
      this.name,
      this.fName,
      this.enableOnlineOrderReceiver,
      this.model,
      this.systemVersion,
      this.appVersion,
      this.build,
      this.latitude,
      this.longitude});

  CreateDevice.fromJson(Map<String, dynamic> json) {
    deviceTypeId = json['deviceTypeId'];
    deviceModelId = json['deviceModelId'];
    masterDeviceNo = json['masterDeviceNo'];
    reference = json['reference'];
    name = json['name'];
    fName = json['fName'];
    enableOnlineOrderReceiver = json['enableOnlineOrderReceiver'];
    model = json['model'];
    systemVersion = json['systemVersion'];
    appVersion = json['appVersion'];
    build = json['build'];
    latitude = json['latitude'];
    longitude = json['longitude'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['deviceTypeId'] = deviceTypeId;
    data['deviceModelId'] = deviceModelId;
    data['masterDeviceNo'] = masterDeviceNo;
    data['reference'] = reference;
    data['name'] = name;
    data['fName'] = fName;
    data['enableOnlineOrderReceiver'] = enableOnlineOrderReceiver;
    data['model'] = model;
    data['systemVersion'] = systemVersion;
    data['appVersion'] = appVersion;
    data['build'] = build;
    data['latitude'] = latitude;
    data['longitude'] = longitude;
    return data;
  }
}
