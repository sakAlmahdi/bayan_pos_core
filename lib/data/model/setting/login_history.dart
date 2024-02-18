import 'package:objectbox/objectbox.dart';

@Entity()
class LoginHistory {
  int? id;
  int? idIdentity;
  String? loginTime;
  String? logoutTime;
  String? usertId;
  String? deviceNo;
  String? deviceRef;

  LoginHistory({
    this.id,
    this.idIdentity,
    this.loginTime,
    this.logoutTime,
    this.usertId,
    this.deviceNo,
    this.deviceRef,
  });

  LoginHistory.fromJson(Map<String, dynamic> json) {
    idIdentity = json['idIdentity'];
    loginTime = json['loginTime'];
    logoutTime = json['logoutTime'];
    usertId = json['usertId'];
    deviceNo = json['deviceNo'];
    deviceRef = json['deviceRef'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['idIdentity'] = idIdentity;
    data['loginTime'] = loginTime;
    data['logoutTime'] = logoutTime;
    data['usertId'] = usertId;
    data['deviceNo'] = deviceNo;
    data['deviceRef'] = deviceRef;
    return data;
  }

  LoginHistory copyWith({
    int? id,
    int? idIdentity,
    String? loginTime,
    String? logoutTime,
    String? usertId,
    String? deviceNo,
    String? deviceRef,
  }) {
    return LoginHistory(
      id: id ?? this.id,
      idIdentity: idIdentity ?? this.idIdentity,
      loginTime: loginTime ?? this.loginTime,
      logoutTime: logoutTime ?? this.logoutTime,
      usertId: usertId ?? this.usertId,
      deviceNo: deviceNo ?? this.deviceNo,
      deviceRef: deviceRef ?? this.deviceRef,
    );
  }
}
