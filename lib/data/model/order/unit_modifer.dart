// ignore_for_file: unnecessary_null_comparison

import 'package:bayan_pos_core/core/halper/helpers_method.dart';
import 'package:bayan_pos_core/data/model/order/free_options.dart';
import 'package:bayan_pos_core/data/model/order/option.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class UnitModifer {
  @Id()
  int? idSeq;
  String? id;
  int? minimumOptions;
  int? maximumOptions;
  bool? isUnique;
  bool? isRequired;

  // List<FreeOption>? freeOptions;
  final freeOptions = ToMany<FreeOption>();
  List<String>? defulatOptions;
  List<String>? exceptOptions;
  String? name;
  String? fName;

  final options = ToMany<Option>();
  @Transient()
  String? get getName => BaseHelpersMethods.isSecoundaryLang ? name : fName;
  @Transient()
  List<Option>? get avaliableOptions => options
      .where((element) => !(exceptOptions?.contains(element.id) ?? false))
      .toList();

  UnitModifer({
    this.id,
    this.minimumOptions,
    this.maximumOptions,
    this.isUnique,
    this.isRequired,
    // this.freeOptions,
    this.defulatOptions,
    this.exceptOptions,
    this.name,
    this.fName,
  });

  UnitModifer.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    fName = json['fName'];
    minimumOptions = json['minimumOptions'];
    maximumOptions = json['maximumOptions'];

    isUnique = json['isUnique'];
    isRequired = json['isRequired'];
    if (json['freeOption'] != null) {
      json['freeOption'].forEach((v) {
        freeOptions.add(FreeOption.fromJson(v));
      });
    }
    defulatOptions = json['defulatOptions']?.cast<String>();
    exceptOptions = json['exceptOptions']?.cast<String>();
    if (json['options'] != null) {
      json['options'].forEach((v) {
        options.add(Option.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['name'] = name;
    data['fName'] = fName;
    data['minimumOptions'] = minimumOptions;
    data['maximumOptions'] = maximumOptions;
    data['isUnique'] = isUnique;
    data['isRequired'] = isRequired;
    if (freeOptions != null) {
      data['freeOption'] = freeOptions.map((v) => v.toJson()).toList();
    }
    data['defulatOptions'] = defulatOptions;
    data['exceptOptions'] = exceptOptions;
    data['options'] = options.map((v) => v.toJson()).toList();

    return data;
  }
}
