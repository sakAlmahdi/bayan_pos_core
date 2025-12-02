import 'package:bayan_pos_core/data/enum/order_type.dart';
import 'package:bayan_pos_core/export.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class TaxC {
  @Id()
  int? idSeq;
  String? taxName;
  String? name;
  String? fName;
  @Unique(onConflict: ConflictStrategy.replace)
  String? id;
  double? taxPercentage;
  bool? customerTaxable;
  List<int>? orderTypes;
  String? taxCode;
  String? taxAccount;
  bool? isTaxExempt;
  bool? zeroTax;

  /// TODO :: add except Customers api
  List<String>? exceptCustomers;

  String? get getName => BaseHelpersMethods.isPrimaryLang ? name : fName;

  final periods = ToMany<TaxPeriod>();

  TaxC({
    this.id,
    this.name,
    this.fName,
    this.taxName,
    this.taxPercentage,
    this.orderTypes,
    this.customerTaxable,
    this.exceptCustomers,
    this.taxAccount,
    this.taxCode,
  });

  @Transient()
  List<OrderType> get getOrderTypes =>
      orderTypes
          ?.map((e) => convertStringToOrderType(e) ?? OrderType.dineIn)
          .toList() ??
      [];

  TaxC.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    customerTaxable = json['customer_Taxable'];
    taxName = json['taxName'];
    name = json['name'];
    fName = json['fName'];
    taxPercentage = double.tryParse(json['tax_Percentage'].toString());

    if (json['orderTypes'] != null) {
      orderTypes = <int>[];
      json['orderTypes'].forEach((v) {
        orderTypes!.add(v);
      });
    }
    if (json['exceptCustomers'] != null) {
      exceptCustomers = <String>[];
      json['exceptCustomers'].forEach((v) {
        exceptCustomers!.add(v);
      });
    }
    if (json['periods'] != null) {
      json['periods'].forEach((v) {
        periods.add(TaxPeriod.fromJson(v));
      });
    }
    taxCode = json['tax_Code'];
    taxAccount = json['tax_Account'];
    isTaxExempt = json['is_TaxExempt'];
    zeroTax = json['zero_Tax'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['taxName'] = taxName;
    data['customer_Taxable'] = customerTaxable;
    data['tax_Percentage'] = taxPercentage;
    data['name'] = name;
    data['fName'] = fName;
    if (orderTypes != null) {
      data['orderTypes'] = orderTypes!.map((v) => v).toList();
    }
    if (exceptCustomers != null) {
      data['exceptCustomers'] = orderTypes!.map((v) => v).toList();
    }
    data['tax_Code'] = taxCode;
    data['tax_Account'] = taxAccount;
    data['is_TaxExempt'] = isTaxExempt;
    data['zero_Tax'] = zeroTax;
    data['periods'] = periods.map((element) => element.toJson()).toList();
    return data;
  }
}

@Entity()
class TaxGroup {
  @Id()
  int? idSeq;
  @Unique(onConflict: ConflictStrategy.replace)
  String? id;
  List<String>? types = [];
  String? name;
  String? fName;
  @Transient()
  String? get getName => BaseHelpersMethods.isPrimaryLang ? name : fName;
  TaxGroup({this.id, this.idSeq, this.types, this.name, this.fName});

  TaxGroup.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    fName = json['fName'];

    if (json['types'] is List) {
      types = <String>[];
      json['types'].forEach((v) {
        types!.add(v!.toString().toLowerCase());
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['name'] = name;
    data['fName'] = fName;
    data['types'] = types;
    return data;
  }
}

@Entity()
class TaxPeriod {
  @Id()
  int? idSeq;
  String? id;
  String? name;
  String? fName;
  String? startDate;
  String? endDate;

  TaxPeriod({this.id, this.name, this.fName, this.startDate, this.endDate});

  TaxPeriod.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    fName = json['fName'];
    startDate = json['start_Date'];
    endDate = json['end_Date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['fName'] = fName;
    data['start_Date'] = startDate;
    data['end_Date'] = endDate;
    return data;
  }
}
