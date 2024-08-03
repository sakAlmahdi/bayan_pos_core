import 'package:bayan_pos_core/core/halper/helpers_method.dart';
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

  @Transient()
  String? get getName => BaseHelpersMethods.isPrimaryLang ? name : fname;
  String? taxGroupId;

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
  });

  Option.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    fname = json['fName'];
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

    return data;
  }
}
