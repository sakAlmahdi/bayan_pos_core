import 'package:bayan_pos_core/data/enum/order_type.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class PosUser1 {
  @Id()
  int? idSeq;
  @Unique(onConflict: ConflictStrategy.replace)
  String? id;
  String? name2;
  String? phoneNumber3;
  String? passwordHash4;
  int? pin5;
  String? pinMD56;
  String? imageUrl7;
  List<String>? orderTypes;
  @Transient()
  List<OrderType?>? get getOrderTypes => [];
  // orderTypes?.map((e) => convertStringToOrderType(e)).toList();
  final branches = ToMany<UserBranche>();
  final roles = ToMany<Roles>();

  PosUser1({
    this.id,
    this.name2,
    this.phoneNumber3,
    this.passwordHash4,
    this.pin5,
    this.pinMD56,
    this.imageUrl7,
    this.orderTypes,
  });

  PosUser1.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name2 = json['name2'];
    phoneNumber3 = json['phoneNumber3'];
    passwordHash4 = json['passwordHash4'];
    pin5 = json['pin5'];
    pinMD56 = json['pinMD5_6'];
    imageUrl7 = json['imageUrl7'];
    if (json['branches'] != null) {
      json['branches'].forEach((v) {
        branches.add(UserBranche.fromJson(v));
      });
    }
    if (json['roles'] != null) {
      json['roles'].forEach((v) {
        roles.add(Roles.fromJson(v));
      });
    }
    if (json['orderTypes'] != null) {
      orderTypes = [];
      json['orderTypes'].forEach((v) {
        orderTypes?.add(v);
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['name2'] = name2;
    data['phoneNumber3'] = phoneNumber3;
    data['passwordHash4'] = passwordHash4;
    data['pin5'] = pin5;
    data['pinMD5_6'] = pinMD56;
    data['imageUrl7'] = imageUrl7;
    if (branches != null) {
      data['branches'] = branches!.map((v) => v.toJson()).toList();
    }
    if (roles != null) {
      data['roles'] = roles!.map((v) => v.toJson()).toList();
    }
    if (orderTypes != null) {
      data['orderTypes'] = orderTypes!.map((v) => v).toList();
    }
    return data;
  }
}

@Entity()
class UserBranche {
  @Id()
  int? idSeq;

  String? id;
  List<String>? groups;

  UserBranche({this.id, this.groups});

  UserBranche.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    if (json['groups'] != null) {
      groups = <String>[];
      json['groups'].forEach((v) {
        groups!.add(v);
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    if (groups != null) {
      data['groups'] = groups!.map((v) => v).toList();
    }
    return data;
  }
}

@Entity()
class Roles {
  @Id()
  int? idSeq;
  String? id;
  String? name;
  List<String>? claims;

  Roles({this.id, this.name, this.claims});

  Roles.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    if (json['claims'] != null) {
      claims = <String>[];
      json['claims'].forEach((e) {
        claims?.add(e.toString());
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['name'] = name;
    data['claims'] = claims;
    return data;
  }
}
