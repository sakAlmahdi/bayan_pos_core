class DeviceType {
  bool? isActive;
  int? displayOrder;
  String? id;
  String? name;
  String? deviceTypeCode;

  DeviceType(
      {this.isActive,
      this.displayOrder,
      this.id,
      this.name,
      this.deviceTypeCode});

  DeviceType.fromJson(Map<String, dynamic> json) {
    isActive = json['isActive'];
    displayOrder = json['displayOrder'];
    id = json['id'];
    name = json['name'];
    deviceTypeCode = json['deviceTypeCode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['isActive'] = isActive;
    data['displayOrder'] = displayOrder;
    data['id'] = id;
    data['name'] = name;
    data['deviceTypeCode'] = deviceTypeCode;
    return data;
  }

  static List<DeviceType> fromList(List<dynamic> data) =>
      data.map((e) => DeviceType.fromJson(e)).toList();
}
