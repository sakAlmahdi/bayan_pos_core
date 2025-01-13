import 'package:bayan_pos_core/core/halper/helpers_method.dart';
import 'package:bayan_pos_core/data/enum/days_enum.dart';
import 'package:bayan_pos_core/data/enum/discount_type.dart';
import 'package:bayan_pos_core/data/enum/order_type.dart';
import 'package:bayan_pos_core/data/enum/promotion_apply_to_enum.dart';
import 'package:bayan_pos_core/data/enum/promotion_apply_type_enum.dart';
import 'package:bayan_pos_core/data/enum/promotion_type_enum.dart';
import 'package:bayan_pos_core/data/model/discount/discount.dart';
import 'package:bayan_pos_core/data/model/new/enums/promotion_reward_type_enum.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class Promotion {
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
  int? promotionType;
  int? discountType;
  double? discountPercentage;
  double? discountAmount;
  double? maximumDiscountAmount;
  int? promotionApplyType;
  double? customerQuantity;
  double? customerAmount;
  int? rewardType;
  String? giftCardId;
  List<int>? days;
  List<int>? orderTypes;

  List<String>? priceList;
  final purchaseProducts = ToMany<ProductsOnDiscount>();
  final discountProducts = ToMany<ProductsOnDiscount>();

  List<String>? customers;
  List<String>? customerTypes;

  int? priority = 0;
  int? numberOfProducts;
  int? referenceNumber;

  @Transient()
  List<OrderType> get getOrderTypes =>
      orderTypes
          ?.map(
            (e) => convertStringToOrderType(e) ?? OrderType.dineIn,
          )
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
  PromotionType get getPromotionType =>
      convertStringToPromotionType(promotionType);
  @Transient()
  PromotionApplyType get getPromotionApplyType =>
      convertStringToPromotionApplyType(promotionApplyType);
  @Transient()
  PromotionApplyTo get getPromotionApplyTo =>
      convertStringToPromotionApplyTo(rewardType);

  PromotionRewardType get getRewardType =>
      PromotionRewardType.fromKey(rewardType);

  @Transient()
  DiscountType get getDiscountType => convertToDiscontType(discountType);

  @Transient()
  String? get getName => BaseHelpersMethods.isPrimaryLang ? name : fName;
  @Transient()
  DateTime? get startCompainDate => BaseHelpersMethods.compainDateAndTime(
      date: startDate ?? '', time: startTime ?? '');
  @Transient()
  DateTime? get endCompainDate => BaseHelpersMethods.compainDateAndTime(
      date: endDate ?? '', time: endTime ?? '');

  bool get withModifier => false;

  bool? applyForAllBranches;
  bool? applyForAllCustomers;

  Promotion({
    this.id,
    this.name,
    this.fName,
    this.startDate,
    this.endDate,
    this.startTime,
    this.endTime,
    this.promotionType,
    this.discountType,
    this.discountPercentage,
    this.discountAmount,
    this.maximumDiscountAmount,
    this.promotionApplyType,
    this.customerQuantity,
    this.customerAmount,
    this.rewardType,
    this.days,
    this.orderTypes,
    this.priority,
    this.applyForAllBranches,
    this.customers,
    this.numberOfProducts,
    this.referenceNumber,
    this.applyForAllCustomers,
    this.idSeq,
    this.priceList,
    this.giftCardId,
    this.customerTypes,
  });

  Promotion.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    fName = json['fName'];
    startDate = json['start_Date'];
    endDate = json['end_Date'];
    startTime = json['start_Time'];
    endTime = json['end_Time'];
    promotionType = json['promotionType'];
    discountType = json['discountType'];
    priority = json['priority'];
    discountPercentage =
        double.tryParse(json['discount_Percentage'].toString()) ?? 0.0;
    discountAmount = double.tryParse(json['discount_Amount'].toString()) ?? 0.0;
    maximumDiscountAmount =
        double.tryParse(json['maximum_Discount_Amount'].toString()) ?? 0.0;
    promotionApplyType = json['promotionApplyType'];
    customerQuantity =
        double.tryParse(json['customer_Quantity'].toString()) ?? 0.0;
    customerAmount = double.tryParse(json['customer_Amount'].toString()) ?? 0.0;
    rewardType = json['rewardType'];
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
    if (json['purchaseProducts'] != null) {
      json['purchaseProducts'].forEach((v) {
        purchaseProducts.add(ProductsOnDiscount.fromJson(v));
      });
    }
    if (json['discountProducts'] != null) {
      json['discountProducts'].forEach((v) {
        discountProducts.add(ProductsOnDiscount.fromJson(v));
      });
    }
    if (json['customers'] != null) {
      customers = [];
      json['customers'].forEach((v) {
        customers?.add(v.toString().toLowerCase());
      });
    }
    if (json['customerTypes'] != null) {
      customerTypes = [];
      json['customerTypes'].forEach((v) {
        customerTypes?.add(v.toString());
      });
    }
    if (json['priceList'] != null) {
      priceList = [];
      json['priceList'].forEach((v) {
        priceList?.add(v.toString().toLowerCase());
      });
    }

    applyForAllBranches = json['applyForAllBranches'];
    numberOfProducts = json['number_Of_Products'];
    referenceNumber = json['referenceNumber'];
    applyForAllCustomers = json['applyForAllCustomers'];
    giftCardId = json['giftCardId'];
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
    data['promotionType'] = promotionType;
    data['discountType'] = discountType;
    data['discount_Percentage'] = discountPercentage;
    data['discount_Amount'] = discountAmount;
    data['maximum_Discount_Amount'] = maximumDiscountAmount;
    data['promotionApplyType'] = promotionApplyType;
    data['customer_Quantity'] = customerQuantity;
    data['customer_Amount'] = customerAmount;
    data['rewardType'] = rewardType;
    data['priority'] = priority;
    if (days != null) {
      data['days'] = days!.map((v) => v).toList();
    }
    if (orderTypes != null) {
      data['orderTypes'] = orderTypes!.map((v) => v).toList();
    }
    data['purchaseProducts'] = purchaseProducts!.map((v) => v).toList();
    data['discountProducts'] = discountProducts!.map((v) => v).toList();
    if (customers != null) {
      data['customers'] = customers!.map((v) => v).toList();
    }
    if (customerTypes != null) {
      data['customerTypes'] = customerTypes!.map((v) => v).toList();
    }
    if (priceList != null) {
      data['priceList'] = priceList!.map((v) => v).toList();
    }
    data['applyForAllBranches'] = applyForAllBranches;
    data['customers'] = customers?.map((e) => e.toString()).toList();
    data['number_Of_Products'] = numberOfProducts;
    data['referenceNumber'] = referenceNumber;
    data['applyForAllCustomers'] = applyForAllCustomers;
    data['giftCardId'] = giftCardId;
    return data;
  }

  static List<Promotion> fromList(List<dynamic> data) =>
      data.map((e) => Promotion.fromJson(e)).toList();
}
