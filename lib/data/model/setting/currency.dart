// currency
import 'package:bayan_pos_core/bayan_pos_core.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class Currencies {
  @Id()
  int? idSeq;
  @Unique(onConflict: ConflictStrategy.replace)
  String? id;
  String? name;
  String? fName;
  String? currencyCode;
  String? displayLocale;
  bool? isDefault;
  String? customFormatting;
  double? exchangeRate;
  double? minExchangeRate;
  double? maxExchangeRate;
  List<int>? dens;

  String? get getName => BaseHelpersMethods.isPrimaryLang ? name : fName;

  Currencies({
    this.id,
    this.name,
    this.fName,
    this.currencyCode,
    this.displayLocale,
    this.isDefault,
    this.customFormatting,
    this.exchangeRate,
    this.minExchangeRate,
    this.maxExchangeRate,
    this.dens,
  });

  Currencies.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    fName = json['fName'];
    currencyCode = json['currencyCode'];
    displayLocale = json['displayLocale'];
    isDefault = json['is_Default'];
    customFormatting = json['customFormatting'];
    // dens = json['dens'].cast<int>();
    if (json['dens'] != null) {
      dens = <int>[];
      json['dens'].forEach((v) {
        dens!.add((double.tryParse(v.toString()) ?? 0).toInt());
      });
    }
    exchangeRate = double.tryParse(json['exchangeRate'].toString()) ?? 0.0;
    minExchangeRate =
        double.tryParse(json['min_ExchangeRate'].toString()) ?? 0.0;
    maxExchangeRate =
        double.tryParse(json['max_ExchangeRate'].toString()) ?? 0.0;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['name'] = name;
    data['fName'] = fName;
    data['currencyCode'] = currencyCode;
    data['displayLocale'] = displayLocale;
    data['is_Default'] = isDefault;
    data['customFormatting'] = customFormatting;
    data['exchangeRate'] = exchangeRate;
    data['min_ExchangeRate'] = minExchangeRate;
    data['max_ExchangeRate'] = maxExchangeRate;
    if (dens != null) {
      data['dens'] = dens!.map((v) => v).toList();
    }
    return data;
  }

  Map<String, dynamic> toJsonOrder() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['currencyCode'] = currencyCode;
    data['is_Default'] = isDefault;
    data['customFormatting'] = customFormatting;
    data['exchangeRate'] = exchangeRate;
    return data;
  }
}
