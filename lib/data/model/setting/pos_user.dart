import 'package:objectbox/objectbox.dart';

@Entity()
class PosUser {
  int? id;
  String? idUser;
  String? fullName;
  String? phoneNumber;
  final tenants = ToMany<Tenants>();
  final branches = ToMany<Branches>();
  String? pinMD5;
  PosUser({
    this.id,
    this.idUser,
    this.fullName,
    this.phoneNumber,
    this.pinMD5,
    // this.tenants,
    // this.branches,
  });

  PosUser.fromJson(Map<String, dynamic> json) {
    idUser = json['id'];
    fullName = json['fullName'];
    phoneNumber = json['phoneNumber'];
    if (json['tenants'] != null) {
      // tenants = <Tenants>[];
      json['tenants'].forEach((v) {
        tenants.add(Tenants.fromJson(v));
      });
    }
    if (json['branches'] != null) {
      // branches = <Branches>[];
      json['branches'].forEach((v) {
        branches.add(Branches.fromJson(v));
      });
    }
    pinMD5 = json['pinMD5'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = idUser;
    data['fullName'] = fullName;
    data['phoneNumber'] = phoneNumber;
    data['tenants'] = tenants.map((v) => v.toJson()).toList();
    data['branches'] = branches.map((v) => v.toJson()).toList();
    data['pinMD5'] = pinMD5;
    return data;
  }

  static List<PosUser> fromList(List<dynamic> data) =>
      data.map((e) => PosUser.fromJson(e)).toList();
}

@Entity()
class Tenants {
  int? id;
  String? tenantId;
  String? tenantName;

  Tenants({this.id, this.tenantId, this.tenantName});

  Tenants.fromJson(Map<String, dynamic> json) {
    tenantId = json['tenantId'];
    tenantName = json['tenantName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['tenantId'] = tenantId;
    data['tenantName'] = tenantName;
    return data;
  }
}

@Entity()
class Branches {
  int? id;
  String? tenantId;
  String? branchId;
  String? branchName;

  Branches({this.id, this.tenantId, this.branchId, this.branchName});

  Branches.fromJson(Map<String, dynamic> json) {
    tenantId = json['tenantId'];
    branchId = json['branchId'];
    branchName = json['branchName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['tenantId'] = tenantId;
    data['branchId'] = branchId;
    data['branchName'] = branchName;
    return data;
  }
}
