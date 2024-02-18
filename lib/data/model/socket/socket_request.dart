class BaseSocketRequest {
  String? event;
  String? fromIp;
  int? port;
  Map<String, dynamic>? body;
  Map<String, dynamic>? args;

  BaseSocketRequest({this.event, this.body, this.args, this.fromIp, this.port});

  BaseSocketRequest.fromJson(Map<String, dynamic> json) {
    event = json['event'];
    body = json['body'];
    args = json['args'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['event'] = event;
    data['body'] = body;
    data['args'] = args;
    data['fromIp'] = fromIp;
    data['port'] = port;

    return data;
  }

  BaseSocketRequest copyWith({
    String? event,
    String? fromIp,
    int? port,
    Map<String, dynamic>? body,
    Map<String, dynamic>? args,
  }) {
    return BaseSocketRequest(
      event: event ?? this.event,
      fromIp: fromIp ?? this.fromIp,
      port: port ?? this.port,
      body: body ?? this.body,
      args: args ?? this.args,
    );
  }
}
