import 'package:objectbox/objectbox.dart';

@Entity()
class Language {
  @Id()
  int? idSeq;
  String? name;
  String? fName;
  String? languageCulture;
  String? uniqueSeoCode;
  bool? rtl;

  Language(
      {this.name,
      this.fName,
      this.languageCulture,
      this.uniqueSeoCode,
      this.rtl});

  Language.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    fName = json['fName'];
    languageCulture = json['languageCulture'];
    uniqueSeoCode = json['uniqueSeoCode'];
    rtl = json['rtl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['fName'] = fName;
    data['languageCulture'] = languageCulture;
    data['uniqueSeoCode'] = uniqueSeoCode;
    data['rtl'] = rtl;
    return data;
  }
}
