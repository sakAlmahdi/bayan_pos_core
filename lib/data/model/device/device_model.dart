class DeviceModel {
  bool? isActive;
  int? displayOrder;
  String? id;
  String? name;
  String? deviceTypeId;
  String? deviceTypeName;
  String? code;
  List<SupportedConnection>? supportedConnection;

  DeviceModel(
      {this.isActive,
      this.displayOrder,
      this.id,
      this.name,
      this.deviceTypeId,
      this.deviceTypeName,
      this.code,
      this.supportedConnection});

  DeviceModel.fromJson(Map<String, dynamic> json) {
    isActive = json['isActive'];
    displayOrder = json['displayOrder'];
    id = json['id'];
    name = json['name'];
    deviceTypeId = json['deviceTypeId'];
    deviceTypeName = json['deviceTypeName'];
    code = json['code'];
    if (json['supportedConnection'] != null) {
      supportedConnection = <SupportedConnection>[];
      json['supportedConnection'].forEach((v) {
        supportedConnection!.add(SupportedConnection.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['isActive'] = isActive;
    data['displayOrder'] = displayOrder;
    data['id'] = id;
    data['name'] = name;
    data['deviceTypeId'] = deviceTypeId;
    data['deviceTypeName'] = deviceTypeName;
    data['code'] = code;
    if (supportedConnection != null) {
      data['supportedConnection'] =
          supportedConnection!.map((v) => v.toJson()).toList();
    }
    return data;
  }

  static List<DeviceModel> fromList(List<dynamic> data) =>
      data.map((e) => DeviceModel.fromJson(e)).toList();
}

class SupportedConnection {
  String? connectionType;
  bool? isDeleted;

  SupportedConnection({this.connectionType, this.isDeleted});

  SupportedConnection.fromJson(Map<String, dynamic> json) {
    connectionType = json['connectionType'];
    isDeleted = json['isDeleted'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['connectionType'] = connectionType;
    data['isDeleted'] = isDeleted;
    return data;
  }
}
