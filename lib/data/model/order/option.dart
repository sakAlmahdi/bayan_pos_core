import 'dart:math';

import 'package:bayan_pos_core/core/halper/helpers_method.dart';
import 'package:bayan_pos_core/data/model/product/modifer_mapper.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class Option {
  @Id()
  int? idSeq;
  String? id;
  String? costType;
  int? modifierType;
  int? instructionType;
  double? price;
  double? cost;
  double? calories;
  bool? inStock;
  bool? isDefault;
  int? displayOrder;
  String? name;
  String? fname;
  double? freeQuantity;
  bool? isFree;
  double? quantity;
  bool? isEqualProductQty;

  @Transient()
  String? get getName => BaseHelpersMethods.isPrimaryLang ? name : fname;
  String? taxGroupId;
  String? imageUrl;

  Option({
    this.id,
    this.costType,
    this.modifierType,
    this.instructionType,
    this.price,
    this.cost,
    this.calories,
    this.inStock,
    this.isDefault,
    this.displayOrder,
    this.taxGroupId,
    this.name,
    this.fname,
    this.freeQuantity,
    this.idSeq,
    this.isFree,
    this.imageUrl,
    this.quantity,
    this.isEqualProductQty,
  });

  Option.fromJson(Map<String, dynamic> json, {OptionMapper? optionsMapper}) {
    // print(
    //     "option-id ${json['id']} optionMapper-id ${optionsMapper?.id} ${optionsMapper?.name} -  ${optionsMapper?.fName}");
    id = json['id'];
    name = json['name'] ?? optionsMapper?.name;
    fname = json['fName'] ?? optionsMapper?.fName;
    costType = json['costType'].toString();
    modifierType = json['modifierType'];
    instructionType = json['instructionType'];
    price = double.tryParse(json['price'].toString()) ?? 0.0;
    cost = double.tryParse(json['cost'].toString()) ?? 0.0;
    calories = double.tryParse(json['calories'].toString()) ?? 0.0;
    inStock = json['inStock'];
    isDefault = json['isDefault'];
    displayOrder = json['displayOrder'];
    taxGroupId = json['taxGroupId'];
    isFree = json['isFree'];
    freeQuantity = double.tryParse(json['freeQuantity'].toString());
    imageUrl = json['imageUrl'];
    quantity = double.tryParse(json['quantity'].toString());
    isEqualProductQty = Random().nextBool();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['name'] = name;
    data['fName'] = fname;
    data['costType'] = costType;
    data['modifierType'] = modifierType;
    data['instructionType'] = instructionType;
    data['price'] = price;
    data['cost'] = cost;
    data['calories'] = calories;
    data['inStock'] = inStock;
    data['isDefault'] = isDefault;
    data['displayOrder'] = displayOrder;
    data['taxGroupId'] = taxGroupId;
    data['freeQuantity'] = freeQuantity;
    data['isFree'] = isFree;
    data['imageUrl'] = imageUrl;
    data['quantity'] = quantity;

    return data;
  }

  Map<String, dynamic> toJsonOrder() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['name'] = name;
    data['fName'] = fname;
    // data['costType'] = costType;
    data['modifierType'] = modifierType;
    // data['instructionType4'] = instructionType;
    data['price'] = price;
    data['cost'] = cost;
    data['calories'] = calories;
    // data['inStock8'] = inStock;
    // data['isDefault9'] = isDefault;
    // data['displayOrder10'] = displayOrder;
    data['taxGroupId'] = taxGroupId;
    data['freeQuantity'] = freeQuantity;
    data['isFree'] = isFree;
    data['imageUrl'] = imageUrl;
    data['quantity'] = quantity;

    return data;
  }
}
