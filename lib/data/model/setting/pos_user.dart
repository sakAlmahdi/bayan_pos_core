import 'package:bayan_pos_core/data/enum/order_type.dart';
import 'package:bayan_pos_core/data/model/setting/pos_user1.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class PosUser {
  @Id()
  int? idSeq;
  String? id;
  String? name;
  String? phoneNumber;
  String? passwordHash;
  int? pin;
  String? pinMD5;
  String? imageUrl;
  List<int>? orderTypes;
  String? appslanguageCode;
  String? appsDataLanguageCode;
  String? dashboardlanguageCode;

  @Transient()
  List<OrderType?>? get getOrderTypes => [];

  final roles = ToMany<Roles>();

  PosUser({
    this.id,
    this.name,
    this.phoneNumber,
    this.passwordHash,
    this.pin,
    this.pinMD5,
    this.imageUrl,
    this.appsDataLanguageCode,
    this.appslanguageCode,
    this.dashboardlanguageCode,
    this.orderTypes,
  });

  PosUser.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    phoneNumber = json['phoneNumber'];
    passwordHash = json['passwordHash'];
    pin = json['pin'];
    pinMD5 = json['pinMD5'];
    imageUrl = json['imageUrl'];
    appsDataLanguageCode = json['appsDataLanguageCode'];
    appslanguageCode = json['appslanguageCode'];
    dashboardlanguageCode = json['dashboardlanguageCode'];

    if (json['orderTypes'] != null) {
      orderTypes = <int>[];
      json['orderTypes'].forEach((v) {
        orderTypes?.add(int.parse(v.toString()));
      });
    }

    if (json['roles'] != null) {
      json['roles'].forEach((v) {
        roles.add(Roles.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['phoneNumber'] = phoneNumber;
    data['passwordHash'] = passwordHash;
    data['pin'] = pin;
    data['pinMD5'] = pinMD5;
    data['imageUrl'] = imageUrl;
    data['orderTypes'] = orderTypes;
    data['roles'] = roles.map((v) => v.toJson()).toList();
    data['appsDataLanguageCode'] = appsDataLanguageCode;
    data['appslanguageCode'] = appslanguageCode;
    data['dashboardlanguageCode'] = dashboardlanguageCode;
    return data;
  }

  static List<PosUser> fromList(List<dynamic> data) =>
      data.map((e) => PosUser.fromJson(e)).toList();
}

@Entity()
class Roles {
  @Id()
  int? idSeq;
  String? id;
  String? name;

  final claims = ToMany<Claims>();

  Roles({
    this.id,
    this.name,
  });

  Roles.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    if (json['claims'] != null) {
      json['claims'].forEach((v) {
        claims.add(Claims.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['claims'] = claims.map((v) => v.toJson()).toList();
    return data;
  }
}

@Entity()
class Claims {
  @Id()
  int? idSeq;
  String? id;
  String? name;

  Claims({this.id, this.name});

  Claims.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['name'] = name;
    return data;
  }
}
