import 'package:bayan_pos_core/core/halper/helpers_method.dart';
import 'package:bayan_pos_core/data/enum/days_enum.dart';
import 'package:bayan_pos_core/data/enum/fee_enum_type.dart';
import 'package:bayan_pos_core/data/enum/order_type.dart';
import 'package:bayan_pos_core/data/enum/price_type_enum.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class Fee {
  @Id()
  int? idSeq;
  @Unique(onConflict: ConflictStrategy.replace)
  String? id;
  String? name;
  String? fName;
  int? type;
  int? valueType;
  double? value;
  double? percentage;
  List<int>? orderTypes;
  List<int>? days;
  List<String>? products;
  String? taxGroupId;
  bool? applyAuto;
  bool? applyToSubtotal;
  bool? applyForProducts;
  bool? printSeparatelyInTotalInvoice;
  bool? amountIncludeInProductPrice;
  double? minAmountPerProduct;
  double? maxAmountPerProduct;

  @Transient()
  PriceType get getPriceType => convertStringToPriceType(valueType);
  @Transient()
  FeeType get getFeeType => convertStringToFeeType(type);
  @Transient()
  List<OrderType> get getOrderTypes =>
      orderTypes
          ?.map((e) => convertStringToOrderType(e) ?? OrderType.dineIn)
          .toList() ??
      [];
  @Transient()
  List<Day> get getOrderDays =>
      days?.map((e) => convertStringToDay(e)).toList() ?? [];

  @Transient()
  String? get getName => BaseHelpersMethods.isPrimaryLang ? name : fName;
  Fee();

  Fee.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    type = int.tryParse(json['feeType'].toString());
    valueType = json['valueType'];
    value = double.tryParse(json['value'].toString()) ?? 0.0;
    percentage = double.tryParse(json['percentage'].toString()) ?? 0.0;
    if (json['orderTypes'] != null) {
      orderTypes = <int>[];
      json['orderTypes'].forEach((v) {
        orderTypes?.add(int.parse(v.toString()));
      });
    }

    if (json['days'] != null) {
      days = <int>[];
      json['days'].forEach((v) {
        days!.add(v);
      });
    }
    if (json['products'] != null) {
      products = <String>[];
      json['products'].forEach((v) {
        products!.add(v);
      });
    }
    taxGroupId = json['taxGroupId'];
    applyAuto = json['applyAuto'];
    applyToSubtotal = json['applyToSubtotal'];
    fName = json['fName'];
    applyForProducts = json['applyForProducts'];
    printSeparatelyInTotalInvoice = json['printSeparatelyInTotalInvoice'];
    amountIncludeInProductPrice = json['amountIncludeInProductPrice'];
    minAmountPerProduct =
        double.tryParse(json['minAmountPerProduct'].toString()) ?? 0.0;
    maxAmountPerProduct =
        double.tryParse(json['maxAmountPerProduct'].toString()) ?? 0.0;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['name'] = name;
    data['feeType'] = type;
    data['valueType'] = valueType;
    data['value'] = value;
    data['percentage'] = value;
    data['orderTypes'] = orderTypes;
    data['days'] = days;
    data['taxGroupId'] = taxGroupId;
    data['applyAuto'] = applyAuto;
    data['applyToSubtotal'] = applyToSubtotal;
    data['fName'] = fName;
    data['products'] = products;
    data['applyForProducts'] = applyForProducts;
    data['printSeparatelyInTotalInvoice'] = printSeparatelyInTotalInvoice;
    data['applyForProducts'] = amountIncludeInProductPrice;
    data['maxAmountPerProduct'] = maxAmountPerProduct;
    return data;
  }
}
