class ModifiersMapper {
  String? id;
  String? name;
  String? fName;
  Map<String, OptionMapper>? optionsMapper;

  ModifiersMapper({this.id, this.name, this.fName, this.optionsMapper});

  ModifiersMapper.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    fName = json['fName'];
    if (json['options'] != null) {
      optionsMapper = {};
      json['options'].forEach((v) {
        var option = OptionMapper.fromJson(v);
        optionsMapper![option.id!] = option;
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['name'] = name;
    data['fName'] = fName;
    if (optionsMapper != null) {
      data['options'] = optionsMapper?.values.map((e) => e.toJson()).toList();
    }
    return data;
  }
}

class OptionMapper {
  String? id;
  String? name;
  String? fName;
  String? sku;
  double? price;
  int? costType;
  int? modifierType;
  int? instructionType;
  double? cost;
  double? calories;

  OptionMapper(
      {this.id,
      this.name,
      this.fName,
      this.sku,
      this.price,
      this.costType,
      this.modifierType,
      this.instructionType,
      this.cost,
      this.calories});

  OptionMapper.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    fName = json['fName'];
    sku = json['sku'];
    price = double.tryParse(json['price'].toString());
    costType = json['costType'];
    modifierType = json['modifierType'];
    instructionType = json['instructionType'];
    cost = double.tryParse(json['cost'].toString());
    calories = double.tryParse(json['calories'].toString());
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['fName'] = fName;
    data['sku'] = sku;
    data['price'] = price;
    data['costType'] = costType;
    data['modifierType'] = modifierType;
    data['instructionType'] = instructionType;
    data['cost'] = cost;
    data['calories'] = calories;
    return data;
  }
}
