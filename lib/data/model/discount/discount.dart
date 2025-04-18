import 'package:bayan_pos_core/bayan_pos_core.dart';
import 'package:bayan_pos_core/core/halper/helpers_method.dart';
import 'package:bayan_pos_core/data/enum/days_enum.dart';
import 'package:bayan_pos_core/data/enum/discount_scpoe.dart';
import 'package:bayan_pos_core/data/enum/discount_type.dart';
import 'package:bayan_pos_core/data/enum/order_type.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class Discount {
  @Id()
  int? idSeq;
  @Unique(onConflict: ConflictStrategy.replace)
  String? id;
  String? name;
  String? fName;
  String? startDate;
  String? endDate;
  String? startTime;
  String? endTime;
  int? discountAppliedTo;
  int? discountType;
  double? discountPercentage;
  double? discountAmount;
  double? maximumDiscountAmount;
  double? maximumDiscountAmountProduct;
  double? minimalOrderAmount;
  double? minimalProductPrice;

  bool? taxable;

  final products = ToMany<ProductsOnDiscount>();
  List<int>? days;
  List<int>? orderTypes;
  List<String>? priceList;
  List<String>? customers;
  List<String>? departments;
  List<String>? categories;
  List<String>? groups;

  @Transient()
  DiscountType get getDiscountType => convertToDiscontType(discountType);
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
  DateTime get getStratDateAndTime =>
      BaseHelpersMethods.compainDateAndTime(date: startDate!, time: startTime!);
  @Transient()
  DateTime get getEndDateAndTime =>
      BaseHelpersMethods.compainDateAndTime(date: endDate!, time: endTime!);

  @Transient()
  String? get getName => BaseHelpersMethods.isPrimaryLang ? name : fName;

  @Transient()
  DiscountScpoce get getScope => convertCodeToDiscountScope(discountAppliedTo);

  @Transient()
  double get getValue => getDiscountType == DiscountType.percentage
      ? discountPercentage ?? 0
      : discountAmount ?? 0;

  String? deviceCreatedOn;
  String? deviceCreatedBy;

  bool? applyForAllProducts;
  bool? applyForAllCustomers;

  Discount({
    this.id,
    this.name,
    this.fName,
    this.startDate,
    this.endDate,
    this.startTime,
    this.endTime,
    this.discountAppliedTo,
    this.discountType,
    this.discountPercentage,
    this.discountAmount,
    this.maximumDiscountAmount,
    this.minimalOrderAmount,
    this.taxable,
    this.days,
    this.orderTypes,
    this.priceList,
    this.customers,
    this.departments,
    this.categories,
    this.deviceCreatedOn,
    this.deviceCreatedBy,
    this.minimalProductPrice,
    this.groups,
    this.maximumDiscountAmountProduct,
  });

  Discount.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    fName = json['fName'];
    startDate = json['start_Date'];
    endDate = json['end_Date'];
    startTime = json['start_Time'];
    endTime = json['end_Time'];
    discountAppliedTo = json['discountAppliedTo'];
    discountType = int.tryParse(json['discount_Type'].toString());
    discountPercentage =
        double.tryParse(json['discount_Percentage'].toString()) ?? 0.0;
    discountAmount = double.tryParse(json['discount_Amount'].toString()) ?? 0.0;
    maximumDiscountAmount =
        double.tryParse(json['maximum_Discount_Amount'].toString()) ?? 0.0;
    minimalOrderAmount =
        double.tryParse(json['minimal_Order_Amount'].toString()) ?? 0.0;
    taxable = json['taxable'];
    maximumDiscountAmountProduct = json['maximum_Discount_Amount_Product'];
    if (json['products'] != null) {
      json['products'].forEach((v) {
        products.add(ProductsOnDiscount.fromJson(v));
      });
    }
    if (json['days'] != null) {
      days = <int>[];
      json['days'].forEach((v) {
        days!.add(v);
      });
    }
    if (json['orderTypes'] != null) {
      orderTypes = <int>[];
      json['orderTypes'].forEach((v) {
        orderTypes!.add(v);
      });
    }
    if (json['priceList'] != null) {
      priceList = <String>[];
      json['priceList'].forEach((v) {
        priceList!.add(v!.toString().toLowerCase());
      });
    }
    if (json['customers'] != null) {
      customers = <String>[];
      json['customers'].forEach((v) {
        customers!.add(v!.toString().toLowerCase());
      });
    }
    if (json['departments'] != null) {
      departments = <String>[];
      json['departments'].forEach((v) {
        departments!.add(v!.toString().toLowerCase());
      });
    }
    if (json['categories'] != null) {
      categories = <String>[];
      json['categories'].forEach((v) {
        categories!.add(v!.toString().toLowerCase());
      });
    }
    if (json['groups'] != null) {
      groups = <String>[];
      json['groups'].forEach((v) {
        customers!.add(v.toString().toLowerCase());
      });
    }

    minimalProductPrice = json['minimal_Product_Price'];

    deviceCreatedOn = json['deviceCreatedOn'];
    deviceCreatedBy = json['deviceCreatedBy'];
    applyForAllProducts = json['applyForAllProducts'];
    applyForAllCustomers = json['applyForAllCustomers'];

    if (startTime == null && startDate != null) {
      DateTime date = DateTime.parse(startDate!);
      startTime = date.formateTimeSystem;
    }
    if (endTime == null && endDate != null) {
      DateTime date = DateTime.parse(endDate!);
      endTime = date.formateTimeSystem;
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['name'] = name;
    data['fName'] = fName;
    data['start_Date'] = startDate;
    data['end_Date'] = endDate;
    data['start_Time'] = startTime;
    data['end_Time'] = endTime;
    data['discountAppliedTo'] = discountAppliedTo;
    data['discount_Type'] = discountType;
    data['discount_Percentage'] = discountPercentage;
    data['discount_Amount'] = discountAmount;
    data['maximum_Discount_Amount'] = maximumDiscountAmount;
    data['minimal_Order_Amount'] = minimalOrderAmount;
    data['taxable'] = taxable;
    data['maximum_Discount_Amount_Product'] = maximumDiscountAmountProduct;

    if (days != null) {
      data['days'] = days!.map((v) => v).toList();
    }
    if (orderTypes != null) {
      data['orderTypes'] = orderTypes!.map((v) => v).toList();
    }
    if (priceList != null) {
      data['priceList'] = priceList!.map((v) => v).toList();
    }
    if (customers != null) {
      data['customers'] = customers!.map((v) => v).toList();
    }
    if (products != null) {
      data['products'] = products!.map((v) => v.toJson()).toList();
    }
    if (departments != null) {
      data['departments'] = departments!.map((v) => v).toList();
    }
    if (categories != null) {
      data['categories'] = categories!.map((v) => v).toList();
    }
    if (groups != null) {
      data['groups'] = groups!.map((v) => v).toList();
    }
    data['getOrderTypes'] = getOrderTypes.map((e) => e.toName()).toList();
    data['getDays'] = getOrderDays.map((e) => e.name).toList();

    data['deviceCreatedOn'] =
        DateTime.tryParse(deviceCreatedOn.toString())?.toIso8601String();
    data['deviceCreatedBy'] = deviceCreatedBy;
    data['applyForAllProducts'] = applyForAllProducts;
    data['applyForAllCustomers'] = applyForAllCustomers;
    data['minimal_Product_Price'] = minimalProductPrice;
    return data;
  }
}

@Entity()
class ProductsOnDiscount {
  @Id()
  int? idSeq;
  String? id;
  List<String>? units;

  ProductsOnDiscount({this.id, this.units});

  ProductsOnDiscount.fromJson(Map<String, dynamic> json) {
    id = json['id'].toString().toLowerCase();
    if (json['units'] != null) {
      units = <String>[];
      json['units'].forEach((v) {
        units!.add(v.toString().toLowerCase());
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['units'] = units;
    return data;
  }
}
