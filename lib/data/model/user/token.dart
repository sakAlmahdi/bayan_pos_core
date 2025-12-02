class Token {
  late String userId;
  String? token;
  String? refreshToken;
  String? refreshTokenExpiryTime;
  bool? isActive;
  bool? phoneNumberConfirmed;

  Token({
    required this.token,
    required this.userId,
    required this.refreshToken,
    this.isActive = false,
    this.phoneNumberConfirmed = false,
    this.refreshTokenExpiryTime,
  });

  Token.fromJson(Map<String, dynamic> json) {
    token = json['token'];
    userId = json['userId'];
    refreshToken = json['refreshToken'];
    refreshTokenExpiryTime = json['refreshTokenExpiryTime'];
    isActive = json['isActive'] ?? false;
    phoneNumberConfirmed = json['phoneNumberConfirmed'] ?? false;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['token'] = token;
    data['userId'] = userId;
    data['refreshToken'] = refreshToken;
    data['refreshTokenExpiryTime'] = refreshTokenExpiryTime;
    data['isActive'] = isActive;
    data['phoneNumberConfirmed'] = phoneNumberConfirmed;
    return data;
  }
}
