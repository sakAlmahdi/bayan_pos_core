import 'package:bayan_pos_core/data/enum/order_type.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class UserCashierSetting {
  @Id()
  int? idSeq;
  String? shortName;
  String? fShortName;
  String? salesInvoiceTemplateId;
  String? salesInvoiceTemplateA4Id;
  String? groupId;
  String? priceListId;
  String? warehouseId;
  int? discountPercentageLimit;
  List<int>? orderTypes;
  List<String>? paymentMethods;
  List<String>? restaurantSections;
  List<String>? devices;
  List<String>? groups;
  List<String>? priceLists;
  List<String>? salesInvoiceTemplates;
  List<String>? salesInvoiceTemplatesA4;

  @Transient()
  List<OrderType?>? get getOrderTypes =>
      orderTypes?.map((e) => convertStringToOrderType(e)).toList();

  UserCashierSetting(
      {this.shortName,
      this.fShortName,
      this.salesInvoiceTemplateId,
      this.salesInvoiceTemplateA4Id,
      this.groupId,
      this.priceListId,
      this.warehouseId,
      this.discountPercentageLimit,
      this.orderTypes,
      this.paymentMethods,
      this.restaurantSections,
      this.devices,
      this.groups,
      this.priceLists,
      this.salesInvoiceTemplates,
      this.salesInvoiceTemplatesA4});

  UserCashierSetting.fromJson(Map<String, dynamic> json) {
    shortName = json['shortName'];
    fShortName = json['fShortName'];
    salesInvoiceTemplateId = json['salesInvoiceTemplateId'];
    salesInvoiceTemplateA4Id = json['salesInvoiceTemplateA4Id'];
    groupId = json['groupId'];
    priceListId = json['priceListId'];
    warehouseId = json['warehouseId'];
    discountPercentageLimit = json['discount_Percentage_Limit'];
    if (json['orderTypes'] != null) {
      orderTypes = [];
      json['orderTypes'].forEach((v) {
        orderTypes?.add(int.parse(v.toString()));
      });
    }

    if (json['paymentMethods'] != null) {
      paymentMethods = <String>[];
      json['paymentMethods'].forEach((v) {
        paymentMethods!.add(v!.toString().toLowerCase());
      });
    }
    if (json['restaurantSections'] != null) {
      restaurantSections = <String>[];
      json['restaurantSections'].forEach((v) {
        restaurantSections!.add(v!.toString().toLowerCase());
      });
    }
    if (json['devices'] != null) {
      devices = <String>[];
      json['devices'].forEach((v) {
        devices!.add(v!.toString().toLowerCase());
      });
    }
    if (json['groups'] != null) {
      groups = <String>[];
      json['groups'].forEach((v) {
        groups!.add(v!.toString().toLowerCase());
      });
    }
    if (json['priceLists'] != null) {
      priceLists = <String>[];
      json['priceLists'].forEach((v) {
        priceLists!.add(v!.toString().toLowerCase());
      });
    }
    if (json['salesInvoiceTemplates'] != null) {
      salesInvoiceTemplates = <String>[];
      json['salesInvoiceTemplates'].forEach((v) {
        salesInvoiceTemplates!.add(v!.toString().toLowerCase());
      });
    }
    if (json['salesInvoiceTemplatesA4'] != null) {
      salesInvoiceTemplatesA4 = <String>[];
      json['salesInvoiceTemplatesA4'].forEach((v) {
        salesInvoiceTemplatesA4!.add(v!.toString().toLowerCase());
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['shortName'] = shortName;
    data['fShortName'] = fShortName;
    data['salesInvoiceTemplateId'] = salesInvoiceTemplateId;
    data['salesInvoiceTemplateA4Id'] = salesInvoiceTemplateA4Id;
    data['groupId'] = groupId;
    data['priceListId'] = priceListId;
    data['warehouseId'] = warehouseId;
    data['discount_Percentage_Limit'] = discountPercentageLimit;
    data['orderTypes'] = orderTypes;
    data['paymentMethods'] = paymentMethods;
    data['restaurantSections'] = restaurantSections;
    data['devices'] = devices;
    data['groups'] = groups;
    data['priceLists'] = priceLists;
    data['salesInvoiceTemplates'] = salesInvoiceTemplates;
    data['salesInvoiceTemplatesA4'] = salesInvoiceTemplatesA4;
    return data;
  }
}
