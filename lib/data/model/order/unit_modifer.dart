// ignore_for_file: unnecessary_null_comparison

import 'package:bayan_pos_core/bayan_pos_core.dart';
import 'package:bayan_pos_core/core/halper/helpers_method.dart';
import 'package:bayan_pos_core/data/model/order/free_options.dart';
import 'package:bayan_pos_core/data/model/order/option.dart';
import 'package:bayan_pos_core/data/model/product/modifer_mapper.dart';
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
  List<FreeOption> get freeOptions => extractFreeQty();
  List<String>? get defaultOptions => options
      .where((element) => element.isDefault == true)
      .map((e) => e.id!)
      .toList();
  List<String>? exceptOptions;
  String? name;
  String? fName;
  bool? equalToProductQuantity;

  final options = ToMany<Option>();
  @Transient()
  String? get getName => BaseHelpersMethods.isPrimaryLang ? name : fName;
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
    this.exceptOptions,
    this.name,
    this.fName,
    this.equalToProductQuantity,
  });

  UnitModifer.fromJson(Map<String, dynamic> json,
      {ModifiersMapper? modifiersMapper}) {
    id = json['id'];
    name = json['name'] ?? modifiersMapper?.name;
    fName = json['fName'] ?? modifiersMapper?.fName;
    minimumOptions = json['minimumOptions'];
    maximumOptions = json['maximumOptions'];

    isUnique = json['isUnique'];
    isRequired = json['isRequired'];
    if (json['freeOption'] != null) {
      json['freeOption'].forEach((v) {
        freeOptions.add(FreeOption.fromJson(v));
      });
    }

    exceptOptions = json['exceptOptions']?.cast<String>();
    if (json['options'] != null) {
      json['options'].forEach((v) {
        String id = v['id'];
        options.add(Option.fromJson(v,
            optionsMapper: modifiersMapper?.optionsMapper?[id]));
      });
    }

    equalToProductQuantity = json['equalToProductQuantity'];

    extractFreeQty();
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
    data['exceptOptions'] = exceptOptions;
    data['options'] = options.map((v) => v.toJson()).toList();
    data['equalToProductQuantity'] = equalToProductQuantity;
    return data;
  }

  List<FreeOption> extractFreeQty() => options
      .where((op) => op.freeQuantity.getZeroIfNull > 0)
      .map((e) => FreeOption(freeQuantity: e.freeQuantity, optionId: e.id))
      .toList();
}
