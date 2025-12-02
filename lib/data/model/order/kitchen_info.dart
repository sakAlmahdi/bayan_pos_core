class KitchenInfo {
  int? status;
  String? changeAt;
  ChangeBy? changeBy;
  String? deviceId;
  String? receiveAt;
  String? reason;

  KitchenInfo(
      {this.status,
      this.changeAt,
      this.changeBy,
      this.deviceId,
      this.receiveAt,
      this.reason});

  KitchenInfo.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    changeAt = json['changeAt'];
    changeBy =
        json['changeBy'] != null ? ChangeBy.fromJson(json['changeBy']) : null;
    deviceId = json['deviceId'];
    receiveAt = json['receiveAt'];
    reason = json['reason'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['status'] = status;
    data['changeAt'] = changeAt;
    if (changeBy != null) {
      data['changeBy'] = changeBy!.toJson();
    }
    data['deviceId'] = deviceId;
    data['receiveAt'] = receiveAt;
    data['reason'] = reason;
    return data;
  }
}

class ChangeBy {
  String? id;
  String? name;

  ChangeBy({this.id, this.name});

  ChangeBy.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    return data;
  }
}
