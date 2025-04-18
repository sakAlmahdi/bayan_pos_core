import 'package:bayan_pos_core/data/enum/order_type.dart';
import 'package:bayan_pos_core/data/model/setting/user_cashier_setting.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class PosUser {
  @Id()
  int? idSeq;
  String? id;
  String? name;
  String? phoneNumber;
  @Property(uid: 775656280)
  String? pin;
  String? imageUrl;
  List<int>? orderTypes;
  String? appslanguageCode;
  String? appsDataLanguageCode;
  String? dashboardlanguageCode;
  // List<String>? paymentMethods;
  // List<String>? restaurantSections;
  // List<String>? groups;
  // List<String>? priceLists;
  // List<String>? salesInvoiceTemplates;
  // List<String>? salesInvoiceTemplatesA4;

  @Transient()
  List<OrderType?>? get getOrderTypes => [];

  final roles = ToMany<Roles>();

  final cashierSetting = ToOne<UserCashierSetting>();

  PosUser({
    this.id,
    this.name,
    this.phoneNumber,
    this.pin,
    this.imageUrl,
    this.appsDataLanguageCode,
    this.appslanguageCode,
    this.dashboardlanguageCode,
    this.orderTypes,
    // this.paymentMethods,
    // this.restaurantSections,
    // this.groups,
    // this.priceLists,
    // this.salesInvoiceTemplates,
    // this.salesInvoiceTemplatesA4,
  });

  PosUser.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    phoneNumber = json['phoneNumber'];

    pin = json['pin'];
    // pinMD5 = json['pinMD5'];
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
    if (json['cashierSetting'] != null) {
      cashierSetting.target =
          UserCashierSetting.fromJson(json['cashierSetting']);
    }
    // if (json['paymentMethods'] != null) {
    //   paymentMethods = <String>[];
    //   json['paymentMethods'].forEach((v) {
    //     paymentMethods?.add(v.toString().toLowerCase());
    //   });
    // }
    // if (json['restaurantSections'] != null) {
    //   restaurantSections = <String>[];
    //   json['restaurantSections'].forEach((v) {
    //     restaurantSections?.add(v.toString().toLowerCase());
    //   });
    // }

    // if (json['groups'] != null) {
    //   groups = <String>[];
    //   json['groups'].forEach((v) {
    //     groups?.add(v.toString().toLowerCase());
    //   });
    // }
    // if (json['priceLists'] != null) {
    //   priceLists = <String>[];
    //   json['priceLists'].forEach((v) {
    //     priceLists?.add(v.toString().toLowerCase());
    //   });
    // }
    // if (json['salesInvoiceTemplates'] != null) {
    //   salesInvoiceTemplates = <String>[];
    //   json['salesInvoiceTemplates'].forEach((v) {
    //     salesInvoiceTemplates?.add(v.toString().toLowerCase());
    //   });
    // }
    // if (json['salesInvoiceTemplatesA4'] != null) {
    //   salesInvoiceTemplatesA4 = <String>[];
    //   json['salesInvoiceTemplatesA4'].forEach((v) {
    //     salesInvoiceTemplatesA4?.add(v.toString().toLowerCase());
    //   });
    // }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['phoneNumber'] = phoneNumber;

    data['pin'] = pin;

    data['imageUrl'] = imageUrl;
    data['orderTypes'] = orderTypes;
    data['roles'] = roles.map((v) => v.toJson()).toList();
    data['appsDataLanguageCode'] = appsDataLanguageCode;
    data['appslanguageCode'] = appslanguageCode;
    data['dashboardlanguageCode'] = dashboardlanguageCode;
    if (cashierSetting.target != null) {
      data['cashierSetting'] = cashierSetting.target!.toJson();
    }
    // data['paymentMethods'] = paymentMethods;
    // data['restaurantSections'] = restaurantSections;
    // data['groups'] = groups;
    // data['priceLists'] = priceLists;
    // data['salesInvoiceTemplates'] = salesInvoiceTemplates;
    // data['salesInvoiceTemplatesA4'] = salesInvoiceTemplatesA4;

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
  String? code;

  final claims = ToMany<Claims>();

  Roles({
    this.id,
    this.name,
    this.code,
  });

  Roles.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    if (json['claims'] != null) {
      json['claims'].forEach((v) {
        claims.add(Claims.fromJson(v));
      });
    }
    code = json['code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['claims'] = claims.map((v) => v.toJson()).toList();
    data['code'] = code;
    return data;
  }
}

@Entity()
class Claims {
  @Id()
  int? idSeq;
  String? controller;
  List<String>? actions = [];

  Claims({this.controller, this.actions});

  Claims.fromJson(Map<String, dynamic> json) {
    controller = json['controller'];
    if (json['actions'] != null) {
      actions = <String>[];
      json['actions'].forEach((v) {
        actions!.add(v);
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['controller'] = controller;
    data['actions'] = actions;
    return data;
  }
}
