import 'package:bayan_pos_core/data/model/user/token.dart';

class User {
  String? idUser;
  String? fullName;
  String? countryId;
  String? cityId;
  String? phoneNumber;
  String? email;
  bool? emailConfirmed;
  String? address;
  String? birthDate;
  String? imageUrl;
  String? image;
  Token? token;
  String? pinMD5;
  String? branchName;

  User.none();

  User({
    required this.fullName,
    required this.countryId,
    required this.cityId,
    required this.phoneNumber,
    this.email,
    this.emailConfirmed,
    this.address,
    this.birthDate,
    this.imageUrl,
    this.image,
    this.token,
    this.idUser,
    this.pinMD5,
    this.branchName,
  });

  User.fromJson(Map<String, dynamic> json) {
    idUser = json['id'];
    fullName = json['fullName'];
    countryId = json['countryId'];
    cityId = json['cityId'];
    phoneNumber = json['phoneNumber'];
    email = json['email'];
    emailConfirmed = json['emailConfirmed'];
    address = json['address'];
    birthDate = json['birthDate'];
    imageUrl = json['imageUrl'];
    image = json['image'];
    if (json['token'] != null) {
      token = Token.fromJson(json['token']);
    }
    pinMD5 = json['pinMD5'];
    branchName = json['branchName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = idUser;
    data['fullName'] = fullName;
    data['countryId'] = countryId;
    data['cityId'] = cityId;
    data['phoneNumber'] = phoneNumber;
    data['email'] = email;
    data['emailConfirmed'] = emailConfirmed;
    data['address'] = address;
    data['birthDate'] = birthDate;
    data['imageUrl'] = imageUrl;
    data['image'] = image;
    data['token'] = token?.toJson();
    data['pinMD5'] = pinMD5;
    data['branchName'] = branchName;
    return data;
  }

  User copyWith({
    String? idUser,
    String? fullName,
    String? countryId,
    String? cityId,
    String? phoneNumber,
    String? email,
    bool? emailConfirmed,
    String? address,
    String? birthDate,
    String? imageUrl,
    String? image,
    Token? token,
    String? pinMD5,
    String? branchName,
  }) {
    return User(
      idUser: idUser ?? this.idUser,
      fullName: fullName ?? this.fullName,
      countryId: countryId ?? this.countryId,
      cityId: cityId ?? this.cityId,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      email: email ?? this.email,
      emailConfirmed: emailConfirmed ?? this.emailConfirmed,
      address: address ?? this.address,
      birthDate: birthDate ?? this.birthDate,
      imageUrl: imageUrl ?? this.imageUrl,
      image: image ?? this.image,
      token: token ?? this.token,
      pinMD5: pinMD5 ?? this.pinMD5,
      branchName: branchName ?? this.branchName,
    );
  }
}
