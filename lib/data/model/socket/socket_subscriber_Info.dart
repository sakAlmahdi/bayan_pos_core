class SocketSubscriberInfo {
  String? ip;
  String? imei;
  int? port;
  String? deviceId;
  String? userId;

  SocketSubscriberInfo(
      {this.ip, this.imei, this.port, this.deviceId, this.userId});

  SocketSubscriberInfo.fromJson(Map<String, dynamic> json) {
    ip = json['ip'];
    imei = json['imei'];
    port = json['port'];
    deviceId = json['deviceId'];
    userId = json['userId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['ip'] = ip;
    data['imei'] = imei;
    data['port'] = port;
    data['deviceId'] = deviceId;
    data['userId'] = userId;
    return data;
  }
}
