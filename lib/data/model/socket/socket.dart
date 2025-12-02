class BaseSocketResponse {
  bool? isSecuss;
  String? event;
  String? toIp;
  int? toProt;
  String? fromIp;
  int? fromPort;
  String? message;
  int? statusCode;
  int? ca;
  dynamic data;

  BaseSocketResponse(
      {this.isSecuss,
      this.event,
      this.toIp,
      this.toProt,
      this.fromIp,
      this.fromPort,
      this.message,
      this.statusCode,
      this.ca,
      this.data});

  BaseSocketResponse.fromJson(Map<String, dynamic> json) {
    isSecuss = json['isSecuss'];
    event = json['event'];
    toIp = json['toIp'];
    toProt = json['toProt'];
    fromIp = json['fromIp'];
    fromPort = json['fromPort'];
    message = json['message'];
    statusCode = json['statusCode'];
    ca = json['ca'];
    data = json['data'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['isSecuss'] = isSecuss;
    data['event'] = event;
    data['toIp'] = toIp;
    data['toProt'] = toProt;
    data['fromIp'] = fromIp;
    data['fromPort'] = fromPort;
    data['message'] = message;
    data['statusCode'] = statusCode;
    data['ca'] = ca;
    data['data'] = this.data;
    return data;
  }
}
