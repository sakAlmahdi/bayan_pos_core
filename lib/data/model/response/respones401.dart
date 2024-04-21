import 'package:bayan_pos_core/data/enum/exception.dart';

class Respons401 {
  String? source;
  String? exception;
  String? errorId;
  int? statusCode;
  bool? succeeded;
  List<String>? messages;

  ResponseException get exceptionType => getExpetionType();

  Respons401(
      {this.source,
      this.exception,
      this.errorId,
      this.statusCode,
      this.succeeded,
      this.messages});

  Respons401.fromJson(Map<String, dynamic> json) {
    source = json['source'];
    exception = json['exception'];
    errorId = json['errorId'];
    statusCode = json['statusCode'];
    succeeded = json['succeeded'];
    messages = json['messages'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['source'] = source;
    data['exception'] = exception;
    data['errorId'] = errorId;
    data['statusCode'] = statusCode;
    data['succeeded'] = succeeded;
    data['messages'] = messages;
    return data;
  }

  ResponseException getExpetionType() {
    // if(exception=='Authentication Failed.')
    // return ResponseException.authenticationFailed;
    // if()

    switch (exception) {
      case 'Authentication Failed.':
        return ResponseException.authenticationFailed;
      case 'identity.invalidrefreshtoken':
        return ResponseException.invalidRefreshToken;
      case 'invalidcredentials':
        return ResponseException.invalidcredentials;
      case 'identity.usernotactive':
        return ResponseException.identityUserNotActive;

      default:
        ResponseException.none;
    }

    return ResponseException.none;
  }
}
