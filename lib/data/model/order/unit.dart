import 'package:bayan_pos_core/core/extensions/base_map_extension.dart';
import 'package:bayan_pos_core/data/enum/price_type_enum.dart';
import 'package:bayan_pos_core/data/model/order/price_list_value.dart';
import 'package:bayan_pos_core/data/model/order/unit_mapper.dart';
import 'package:bayan_pos_core/data/model/order/unit_modifer.dart';
import 'package:bayan_pos_core/data/model/product/modifer_mapper.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class Unit {
  @Id()
  int? idSeq;
  String? id;
  String? name;
  String? fName;
  String? barcode;
  double? price;
  double? cost;
  double? factor;
  bool? defaultForSales;
  bool? defaultForPurchase;
  bool? defaultForStore;
  bool? showAlertPreparationTime;
  int? priceType;

  String? deviceCreatedOn;
  String? deviceCreatedBy;

  final priceList = ToMany<PriceListValue>();
  final modifiers = ToMany<UnitModifer>();
  @Transient()
  String? get getName => name;

  @Transient()
  PriceType get getPriceType => convertStringToPriceType(priceType);

  Unit(
      {this.id,
      this.barcode,
      this.price,
      this.cost,
      this.factor,
      this.defaultForSales,
      this.defaultForPurchase,
      this.defaultForStore,
      this.name,
      this.fName,
      this.showAlertPreparationTime,
      this.priceType,
      this.deviceCreatedOn,
      this.deviceCreatedBy});

  Unit.fromJson(Map<String, dynamic> json,
      {Map<String, UnitMapper>? unitsMapper,
      Map<String, ModifiersMapper>? modifiersMapper}) {
    id = json['id'];
    barcode = json['barcode'];
    name = json['name'] ?? unitsMapper?[id]?.name;
    fName = json['fName'] ?? unitsMapper?[id]?.name;
    showAlertPreparationTime = json['showAlertPreparationTime'];
    priceType = json['priceType'];
    price = double.tryParse(json['price'].toString()) ?? 0.0;
    cost = double.tryParse(json['cost'].toString()) ?? 0.0;
    factor = double.tryParse(json['factor'].toString()) ?? 0.0;
    defaultForSales = json['defaultForSales'];
    defaultForPurchase = json['defaultForPurchase'];
    defaultForStore = json['defaultForStore'];
    if (json['priceLists'] != null) {
      json['priceLists'].forEach((v) {
        priceList.add(PriceListValue.fromJson(v));
      });
    }
    if (json['modifiers'] != null) {
      json['modifiers'].forEach((v) {
        String id = v['id'];
        modifiers.add(
            UnitModifer.fromJson(v, modifiersMapper: modifiersMapper?[id]));
      });
    }

    deviceCreatedOn = json['deviceCreatedOn'];
    deviceCreatedBy = json['deviceCreatedBy'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['name'] = name;
    data['fName'] = fName;
    data['barcode'] = barcode;
    data['price'] = price;
    data['cost'] = cost;
    data['factor'] = factor;
    data['defaultForSales'] = defaultForSales;
    data['defaultForPurchase'] = defaultForPurchase;
    data['defaultForStore'] = defaultForStore;
    data['showAlertPreparationTime'] = showAlertPreparationTime;
    data['priceType'] = priceType;
    data['priceLists'] = priceList.map((v) => v.toJson()).toList();
    data['modifiers'] = modifiers.map((v) => v.toJson()).toList();
    data['deviceCreatedOn'] = deviceCreatedOn;
    data['deviceCreatedBy'] = deviceCreatedBy;
    return data;
  }

  Map<String, dynamic> toJsonOrder() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['name'] = name;
    data['fName'] = fName;
    data['barcode'] = barcode;
    data['price'] = price;
    data['cost'] = cost;
    data['factor'] = factor;
    // data['defaultForSales'] = defaultForSales;
    // data['defaultForPurchase'] = defaultForPurchase;
    // data['defaultForStore'] = defaultForStore;
    data['priceLists'] = priceList.map((v) => v.toJson().removeNull()).toList();
    data['modifiers'] = modifiers.map((v) => v.toJson()).toList();
    // data['modifiers'] = modifiers.map((v) => v.toJsonOrder()).toList();
    return data;
  }

  convertStringToPriceType(int? key) {
    switch (key) {
      case 0:
        return PriceType.fixed;
      case 1:
        return PriceType.open;
      default:
        return PriceType.fixed;
    }
  }
}
