import 'package:bayan_pos_core/core/halper/helpers_method.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class DeliveryCompany {
  @Id()
  int? idSeq;
  @Unique(onConflict: ConflictStrategy.replace)
  String? id;
  String? name;
  String? fName;
  String? mobile;
  String? email;
  String? countryId;
  String? imageUrl;
  double? commissionRate;

  @Transient()
  String? get getName => BaseHelpersMethods.isSecoundaryLang ? name : fName;

  DeliveryCompany(
      {this.idSeq = 0,
      this.id,
      this.name,
      this.fName,
      this.mobile,
      this.email,
      this.countryId,
      this.imageUrl,
      this.commissionRate});

  DeliveryCompany.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    fName = json['fName'];
    mobile = json['mobile'];
    email = json['email'];
    countryId = json['countryId'];
    imageUrl = json['imageUrl'];
    commissionRate = double.tryParse(json['commissionRate'].toString()) ?? 0.0;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['name'] = name;
    data['fName'] = fName;
    data['mobile'] = mobile;
    data['email'] = email;
    data['countryId'] = countryId;
    data['imageUrl'] = imageUrl;
    data['commissionRate'] = commissionRate;
    return data;
  }

  Map<String, dynamic> toJsonOrder() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['name'] = name;
    data['fName'] = fName;
    data['imageUrl'] = imageUrl;
    return data;
  }
}
