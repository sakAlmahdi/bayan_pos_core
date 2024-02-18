class EventHistory {
  String? event;
  String? dateDoEvent;
  String? userId;
  String? userName;
  bool? success;

  EventHistory(
      {this.event, this.dateDoEvent, this.userId, this.userName, this.success});

  EventHistory.fromJson(Map<String, dynamic> json) {
    event = json['event'];
    dateDoEvent = json['dateDoEvent'];
    userId = json['userId'];
    userName = json['userName'];
    success = json['success'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['event'] = event;
    data['dateDoEvent'] = dateDoEvent;
    data['userId'] = userId;
    data['userName'] = userName;
    data['success'] = success;
    return data;
  }
}
