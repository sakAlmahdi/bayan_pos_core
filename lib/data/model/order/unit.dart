import 'package:bayan_pos_core/core/extensions/base_map_extension.dart';
import 'package:bayan_pos_core/data/model/order/price_list_value.dart';
import 'package:bayan_pos_core/data/model/order/unit_modifer.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class Unit {
  @Id()
  int? idSeq;
  String? id;
  String? name;
  String? fname;
  String? barcode;
  double? price;
  double? cost;
  double? factor;
  bool? defaultForSales;
  bool? defaultForPurchase;
  bool? defaultForStore;

  final priceList = ToMany<PriceListValue>();
  final modifiers = ToMany<UnitModifer>();
  @Transient()
  String? get getName => name;

  Unit({
    this.id,
    this.barcode,
    this.price,
    this.cost,
    this.factor,
    this.defaultForSales,
    this.defaultForPurchase,
    this.defaultForStore,
    this.name,
    this.fname,
  });

  Unit.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    barcode = json['barcode'];
    name = json['name'];
    fname = json['fname'];
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
        modifiers.add(UnitModifer.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['name'] = name;
    data['fname'] = fname;
    data['barcode'] = barcode;
    data['price'] = price;
    data['cost'] = cost;
    data['factor'] = factor;
    data['defaultForSales'] = defaultForSales;
    data['defaultForPurchase'] = defaultForPurchase;
    data['defaultForStore'] = defaultForStore;
    data['priceLists'] = priceList.map((v) => v.toJson()).toList();
    data['modifiers'] = modifiers.map((v) => v.toJson()).toList();
    return data;
  }

  Map<String, dynamic> toJsonOrder() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['name'] = name;
    data['fName'] = fname;
    // data['barcode'] = barcode;
    data['price'] = price;
    data['cost'] = cost;
    // data['factor'] = factor;
    // data['defaultForSales'] = defaultForSales;
    // data['defaultForPurchase'] = defaultForPurchase;
    // data['defaultForStore'] = defaultForStore;
    data['priceLists'] = priceList.map((v) => v.toJson().removeNull()).toList();
    data['modifiers'] = modifiers.map((v) => v.toJson()).toList();
    // data['modifiers'] = modifiers.map((v) => v.toJsonOrder()).toList();
    return data;
  }
}
