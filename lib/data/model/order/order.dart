import 'package:bayan_pos_core/bayan_pos_core.dart';
import 'package:bayan_pos_core/core/extensions/base_date_time_extension.dart';
import 'package:bayan_pos_core/core/extensions/base_map_extension.dart';
import 'package:bayan_pos_core/core/extensions/base_num_extension.dart';
import 'package:bayan_pos_core/data/enum/order_satate.dart';
import 'package:bayan_pos_core/data/enum/order_type.dart';
import 'package:bayan_pos_core/data/enum/price_level.dart';
import 'package:bayan_pos_core/data/enum/product_kitchen_status_enum.dart';
import 'package:bayan_pos_core/data/model/customer/adderss.dart';
import 'package:bayan_pos_core/data/model/customer/customer.dart';
import 'package:bayan_pos_core/data/model/discount/discount.dart';
import 'package:bayan_pos_core/data/model/discount/promotion.dart';
import 'package:bayan_pos_core/data/model/discount/time_event.dart';
import 'package:bayan_pos_core/data/model/order/applied_modifer.dart';
import 'package:bayan_pos_core/data/model/order/extract_product.dart';
import 'package:bayan_pos_core/data/model/order/fee.dart';
import 'package:bayan_pos_core/data/model/order/kitchen_info.dart';
import 'package:bayan_pos_core/data/model/order/order_source.dart';
import 'package:bayan_pos_core/data/model/order/payment_method.dart';
import 'package:bayan_pos_core/data/model/order/unit.dart';
import 'package:bayan_pos_core/data/model/send_order/send_order.dart';

import 'package:bayan_pos_core/data/model/setting/currency.dart';
import 'package:objectbox/objectbox.dart';
import '../delivery/delivery_company.dart';

@Entity()
class OrderC {
  @Id()
  int? posTransactionType;
  int? idSeq;
  String? invoiceNumber;
  String? deviceId;
  late DateTime startDate;
  DateTime? timeOfReceipt;
  String? parentOrderId;
  int? splitIndex;
  @Unique(onConflict: ConflictStrategy.replace)
  late String orderRef;
  String? callName;
  int? callNumber;
  late int orderType;
  late int status;
  late int orderSource;
  DateTime? endTime;
  final deliveryCompanyInfo = ToOne<DeliveryCompanyInfo>();
  String? priceListId;
  Map<String, dynamic>? creatorBy;
  Map<String, dynamic>? closeBy;
  String? tableId;
  String? tableCaption;
  int? numberVistor;
  double? minimumReservationPrice;
  // Customer? customer;
  final customer = ToOne<Customer>();
  final address = ToOne<Address>();
  final promotion = ToOne<Promotion>();
  final discount = ToOne<Discount>();
  SendGiftCard? giftCard;
  final products = ToMany<AppliedProduct>();
  double? priceDiscount;
  double? pricePromotion;
  String? note;
  String? kitchenNote;
  String? msgCansel;
  double subTotal = 0;
  final fees = ToMany<Fee>();
  final feeValues = ToMany<FeeValue>();
  final payments = ToMany<PaymentValue>();
  String? checksum;
  String? masterChecksum;
  String? serverChecksum;
  double? totalFee = 0;
  double? taxPrice = 0;
  double? totalPaid;
  String? shiftId;
  String? tillId;
  KitchenInfo? kitchenInfo;
  double? totalCalories;
  Currencies? currency;
  Currencies? paymentCurrency;

  /////
  int? paymentStatus;
  int? refundStatus;
  int? deliveryStatus;
  double? roundingAmount;
  double? tipAmount;
  double? donationAmount;
  String? donationForId;
  String? supervisorId;
  String? reference;
  String? casherNote;
  String? trackingStatusId;
  List<OrderStatusTracking>? orderStatusTracking;
  List<Waiters>? waiters;
  String? couponId;
  String? createdOn;
  String? createdBy;
  String? lastModifiedBy;
  String? lastModifiedOn;
  SendTable? table;
  SendDelivery? delivery;

  String? customerName;
  String? customerPhone;

  double get total =>
      (subTotal - discountTotal) +
      taxPrice.getZeroIfNull +
      totalFee.getZeroIfNull;
  double get discountTotal =>
      priceDiscount.getZeroIfNull + pricePromotion.getZeroIfNull;
  double? totalDiscountForOrderAndProduct;
  double get totalTaxableAmt => products.isEmpty
      ? 0
      : products
          .map((element) => element.totalTaxableAmt)
          .reduce((value, element) => value + element);
  double get remainPrice => totalPaid.getZeroIfNull > total.getZeroIfNull
      ? totalPaid.getZeroIfNull - total.getZeroIfNull
      : 0;
  OrderType get getOrderType =>
      convertStringToOrderType(orderType) ?? OrderType.dineIn;
  OrderStatusC get getStatus => convertStringToOrderStatus(status);
  OrderSource get getOrderSource =>
      convertStringToOrderSource(orderSource.toString());
  OrderC() {
    orderRef = BaseHelpersMethods.createRefId();
  }
  OrderC copyWith({
    int? posTransactionType,
    int? idSeq,
    int? orderType,
    int? status,
    int? orderSource,
    DateTime? startDate,
    String? orderRef,
    DateTime? endTime,
    DeliveryCompanyInfo? deliveryCompanyInfo,
    String? priceListId,
    Map<String, dynamic>? creatorBy,
    Map<String, dynamic>? closeBy,
    String? tableId,
    int? numberVistor,
    Customer? customer,
    Address? address,
    Promotion? promotion,
    Discount? discount,
    List<AppliedProduct>? products,
    double? priceDiscount,
    double? pricePromotion,
    String? note,
    String? kitchenNote,
    String? msgCansel,
    double? subTotal,
    List<Fee>? fees,
    List<FeeValue>? feeValues,
    double? totalFee,
    double? taxPrice,
    List<PaymentValue>? payments,
    double? totalPaid,
    String? parentOrderId,
    int? splitIndex,
    String? invoiceNumber,
    String? checksum,
    String? masterChecksum,
    String? serverChecksum,
    String? shiftId,
    String? tillId,
    String? tableCaption,
    double? totalDiscountForOrderAndProduct,
    KitchenInfo? kitchenInfo,
    double? totalCalories,
    double? minimumReservationPrice,
    SendGiftCard? giftCard,
    String? customerName,
    String? customerPhone,
  }) {
    return OrderC()
      ..posTransactionType = posTransactionType ?? this.posTransactionType
      ..idSeq = idSeq ?? this.idSeq
      ..orderType = orderType ?? this.orderType
      ..invoiceNumber = invoiceNumber ?? this.invoiceNumber
      ..status = status ?? this.status
      ..orderSource = orderSource ?? this.orderSource
      ..startDate = startDate ?? this.startDate
      ..orderRef = orderRef ?? this.orderRef
      ..endTime = endTime ?? this.endTime
      ..deliveryCompanyInfo.target =
          deliveryCompanyInfo ?? this.deliveryCompanyInfo.target
      ..priceListId = priceListId ?? this.priceListId
      ..creatorBy = creatorBy ?? this.creatorBy
      ..closeBy = closeBy ?? this.closeBy
      ..tableId = tableId ?? this.tableId
      ..numberVistor = numberVistor ?? this.numberVistor
      ..customer.target = customer ?? this.customer.target
      ..address.target = address ?? this.address.target
      ..promotion.target = promotion ?? this.promotion.target
      ..discount.target = discount ?? this.discount.target
      ..giftCard = giftCard ?? this.giftCard
      ..products
          .addAll(products ?? this.products.map((e) => e.copyWith()).toList())
      ..priceDiscount = priceDiscount ?? this.priceDiscount
      ..pricePromotion = pricePromotion ?? this.pricePromotion
      ..note = note ?? this.note
      ..kitchenNote = kitchenNote ?? this.kitchenNote
      ..msgCansel = msgCansel ?? this.msgCansel
      ..subTotal = subTotal ?? this.subTotal
      ..fees.addAll(fees ?? List.of(this.fees))
      ..feeValues.addAll(feeValues ?? List.of(this.feeValues))
      ..totalFee = totalFee ?? this.totalFee
      ..taxPrice = taxPrice ?? this.taxPrice
      ..payments.addAll(payments ?? List.of(this.payments))
      ..totalPaid = totalPaid ?? this.totalPaid
      ..parentOrderId = parentOrderId ?? this.parentOrderId
      ..splitIndex = splitIndex ?? this.splitIndex
      ..checksum = checksum ?? this.checksum
      ..masterChecksum = masterChecksum ?? this.masterChecksum
      ..serverChecksum = serverChecksum ?? this.serverChecksum
      ..tillId = tillId ?? this.tillId
      ..shiftId = shiftId ?? this.shiftId
      ..tableCaption = tableCaption ?? this.tableCaption
      ..totalDiscountForOrderAndProduct = totalDiscountForOrderAndProduct ??
          this.totalDiscountForOrderAndProduct
      ..kitchenInfo = kitchenInfo ?? this.kitchenInfo
      ..totalCalories = totalCalories ?? this.totalCalories
      ..minimumReservationPrice =
          minimumReservationPrice ?? this.minimumReservationPrice
      ..currency = currency ?? this.currency
      ..callNumber = callNumber ?? this.callNumber
      ..customerName = customerName ?? this.customerName
      ..customerPhone = customerPhone ?? this.customerPhone;
  }

  OrderC.fromJson(Map<String, dynamic> json) {
    idSeq = json['idSeq'];
    startDate = json['startDate'] != null
        ? DateTime.fromMillisecondsSinceEpoch(json['startDate'])
        : DateTime.now();
    timeOfReceipt = json['timeOfReceipt'] != null
        ? DateTime.fromMillisecondsSinceEpoch(json['timeOfReceipt'])
        : DateTime.now();
    invoiceNumber = json['invoiceNumber'];
    deviceId = json['deviceId'];
    parentOrderId = json['parentOrderId'];
    splitIndex = json['splitIndex'];
    orderRef = json['orderRef'];
    callName = json['callName'];
    orderType = json['orderType'];
    status = json['status'];
    orderSource = json['orderSource'];
    endTime = json['endTime'] is int
        ? DateTime.fromMillisecondsSinceEpoch(json['endTime'])
        : json['endTime'];
    deliveryCompanyInfo.target = json['deliveryCompanyInfoId'] != null
        ? DeliveryCompanyInfo.fromJson(json['deliveryCompanyInfoId'])
        : null;
    priceListId = json['priceListId'];
    creatorBy = json['creatorBy'];
    closeBy = json['closeBy'];
    tableId = json['tableId'];
    numberVistor = json['numberVistor'];
    customer.target =
        json['customer'] != null ? Customer.fromJson(json['customer']) : null;
    address.target =
        json['address'] != null ? Address.fromJson(json['address']) : null;
    promotion.target = json['promotion'] != null
        ? Promotion.fromJson(json['promotion'])
        : null;
    discount.target =
        json['discount'] != null ? Discount.fromJson(json['discount']) : null;
    if (json['products'] != null) {
      json['products'].forEach((v) {
        products.add(AppliedProduct.fromJson(v));
      });
    }
    priceDiscount = double.tryParse(json['priceDiscount'].toString()) ?? 0.0;
    pricePromotion = double.tryParse(json['pricePromotion'].toString()) ?? 0.0;
    note = json['note'];
    kitchenNote = json['kitchenNote'];
    msgCansel = json['msgCansel'];
    subTotal = double.tryParse(json['subTotal'].toString()) ?? 0.0;
    if (json['fees'] != null) {
      json['fees'].forEach((v) {
        fees.add(Fee.fromJson(v));
      });
    }
    if (json['feeValues'] != null) {
      json['feeValues'].forEach((v) {
        feeValues.add(FeeValue.fromJson(v));
      });
    }
    if (json['payments'] != null) {
      json['payments'].forEach((v) {
        payments.add(PaymentValue.fromJson(v));
      });
    }
    if (json['kitchenInfo'] != null) {
      kitchenInfo = KitchenInfo.fromJson(json['kitchenInfo']);
    }
    totalFee = double.tryParse(json['totalFee'].toString()) ?? 0.0;
    taxPrice = double.tryParse(json['taxPrice'].toString()) ?? 0.0;
    checksum = json['checksum'];
    masterChecksum = json['masterChecksum'];
    serverChecksum = json['serverChecksum'];
    shiftId = json['shiftId'];
    tillId = json['tillId'];
    tableCaption = json['tableCaption'];
    totalPaid = json['totalPaid'];
    totalDiscountForOrderAndProduct = json['totalDiscountForOrderAndProduct'];
    totalCalories = json['totalCalories'];
    minimumReservationPrice = json['minimumReservationPrice'];
    if (json['currency'] != null) {
      currency = Currencies.fromJson(json['currency']);
    }
    callNumber = json['callNumber'];

    if (json['giftCard'] != null) {
      giftCard = SendGiftCard.fromJson(json['giftCard']);
    }
    paymentStatus = json['paymentStatus'];
    refundStatus = json['refundStatus'];
    deliveryStatus = json['deliveryStatus'];
    roundingAmount = json['roundingAmount'];
    tipAmount = json['tipAmount'];
    donationAmount = json['donationAmount'];
    donationForId = json['donationForId'];
    supervisorId = json['supervisorId'];
    reference = json['reference'];
    casherNote = json['casherNote'];
    trackingStatusId = json['trackingStatusId'];
    if (json['orderStatusTracking'] != null) {
      orderStatusTracking = [];
      json['orderStatusTracking'].forEach((v) {
        orderStatusTracking?.add(OrderStatusTracking.fromJson(v));
      });
    }

    waiters = json['waiters'];
    couponId = json['couponId'];
    createdOn = json['createdOn'];
    createdBy = json['createdBy'];
    lastModifiedBy = json['lastModifiedBy'];
    lastModifiedOn = json['lastModifiedOn'];
    if (json['table'] != null) {
      table = SendTable.fromJson(json['table']);
    }
    delivery = json['delivery'];
    callNumber = json['callNumber'];
    callName = json['callName'];
    customerName = json['customerName'];
    customerPhone = json['customerPhone'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['idSeq'] = idSeq;
    data['startDate'] =
        startDate.roundDateTimeToNearestSecond.millisecondsSinceEpoch;
    data['timeOfReceipt'] = timeOfReceipt?.millisecondsSinceEpoch;
    data['invoiceNumber'] = invoiceNumber;
    data['deviceId'] = deviceId;
    data['parentOrderId'] = parentOrderId;
    data['splitIndex'] = splitIndex;
    data['orderRef'] = orderRef;
    data['callName'] = callName;
    data['orderType'] = orderType;
    data['status'] = status;
    data['orderSource'] = orderSource;
    data['endTime'] = endTime?.millisecondsSinceEpoch;
    data['deliveryCompanyInfoId'] =
        deliveryCompanyInfo.target?.toJson().removeNull().removeNull();
    data['priceListId'] = priceListId;
    data['creatorBy'] = creatorBy;
    data['closeBy'] = closeBy;
    data['tableId'] = tableId;
    data['numberVistor'] = numberVistor;
    data['tableCaption'] = tableCaption;
    if (customer.target != null) {
      data['customer'] = customer.target!.toJson().removeNull();
    }
    if (address.target != null) {
      data['address'] = address.target!.toJson().removeNull();
    }
    if (promotion.target != null) {
      data['promotion'] = promotion.target!.toJson().removeNull();
    }
    if (discount.target != null) {
      data['discount'] = discount.target!.toJson().removeNull();
    }
    data['products'] = products.map((v) => v.toJson().removeNull()).toList();
    data['priceDiscount'] = priceDiscount ?? 0.0;
    data['pricePromotion'] = pricePromotion ?? 0.0;
    data['note'] = note;
    data['kitchenNote'] = kitchenNote;
    data['msgCansel'] = msgCansel;
    data['subTotal'] = subTotal;
    data['fees'] = fees.map((v) => v.toJson().removeNull()).toList();
    data['feeValues'] = feeValues.map((v) => v.toJson().removeNull()).toList();
    data['payments'] = payments.map((v) => v.toJson().removeNull()).toList();
    data['totalFee'] = totalFee ?? 0.0;
    data['taxPrice'] = taxPrice ?? 0.0;
    data['checksum'] = checksum;
    data['masterChecksum'] = masterChecksum;
    data['serverChecksum'] = serverChecksum;
    data['shiftId'] = shiftId;
    data['tillId'] = tillId;
    data['totalPaid'] = totalPaid;
    data['totalDiscountForOrderAndProduct'] = totalDiscountForOrderAndProduct;
    data['kitchenInfo'] = kitchenInfo?.toJson();
    data['totalCalories'] = totalCalories;
    data['minimumReservationPrice'] = minimumReservationPrice;
    data['currency'] = currency;
    if (currency != null) {
      data['currency'] = currency!.toJson();
    }

    data['callNumber'] = callNumber;
    data['giftCard'] = giftCard?.toJson().removeNull();

    data['paymentStatus'] = paymentStatus;
    data['refundStatus'] = refundStatus;
    data['deliveryStatus'] = deliveryStatus;
    data['donationAmount'] = donationAmount;
    data['donationForId'] = donationForId;
    data['supervisorId'] = supervisorId;
    data['trackingStatusId'] = trackingStatusId;
    data['orderStatusTracking'] =
        orderStatusTracking?.map((e) => e.toJson()).toList();
    data['waiters'] = waiters;
    data['couponId'] = couponId;
    data['createdOn'] = createdOn;
    data['createdBy'] = createdBy;
    data['lastModifiedBy'] = lastModifiedBy;
    data['lastModifiedOn'] = lastModifiedOn;
    if (table != null) {
      data['table'] = table!.toJson();
    }

    // customerName = json['customerName'];
    // customerPhone = json['customerPhone'];

    data['customerName'] = customerName;
    data['customerPhone'] = customerPhone;

    return data;
  }

  Map<String, dynamic> toJsonOrder() {
    final Map<String, dynamic> data = {};
    data['idSeq'] = idSeq;
    data['startDate'] =
        startDate.roundDateTimeToNearestSecond.millisecondsSinceEpoch;
    data['timeOfReceipt'] = timeOfReceipt?.millisecondsSinceEpoch;
    data['invoiceNumber'] = invoiceNumber;
    data['deviceId'] = deviceId;
    data['parentOrderId'] = parentOrderId;
    data['splitIndex'] = splitIndex;
    data['orderRef'] = orderRef;
    data['callName'] = callName;
    data['orderType'] = orderType;
    data['status'] = status;
    data['orderSource'] = orderSource;
    data['endTime'] = endTime?.millisecondsSinceEpoch;
    data['deliveryCompanyInfoId'] =
        deliveryCompanyInfo.target?.toJsonOrder().removeNull().removeNull();
    data['priceListId'] = priceListId;
    data['creatorBy'] = creatorBy?.removeNull();
    data['closeBy'] = closeBy?.removeNull();
    data['tableId'] = tableId;
    data['tableCaption'] = tableCaption;
    data['numberVistor'] = numberVistor;
    if (customer.target != null) {
      data['customer'] = customer.target!.toJsonOrder().removeNull();
    }
    if (address.target != null) {
      data['address'] = address.target!.toJson().removeNull();
    }
    if (promotion.target != null) {
      data['promotion'] = promotion.target!.toJson().removeNull();
    }
    if (discount.target != null) {
      data['discount'] = discount.target!.toJson().removeNull();
    }
    data['products'] =
        products.map((v) => v.toJsonOrder().removeNull()).toList();
    data['priceDiscount'] = priceDiscount ?? 0.0;
    data['pricePromotion'] = pricePromotion ?? 0.0;
    data['note'] = note;
    data['kitchenNote'] = kitchenNote;
    data['msgCansel'] = msgCansel;
    data['subTotal'] = subTotal;
    data['fees'] = fees.map((v) => v.toJson().removeNull()).toList();
    data['feeValues'] = feeValues.map((v) => v.toJson().removeNull()).toList();
    data['payments'] = payments.map((v) => v.toJson().removeNull()).toList();
    data['totalFee'] = totalFee ?? 0.0;
    data['totalPaid'] = totalPaid ?? 0.0;
    data['taxPrice'] = taxPrice ?? 0.0;
    data['checksum'] = checksum;
    data['masterChecksum'] = masterChecksum;
    data['serverChecksum'] = serverChecksum;
    data['total'] = total;
    data['shiftId'] = shiftId;
    data['tillId'] = tillId;
    data['totalDiscountForOrderAndProduct'] = totalDiscountForOrderAndProduct;
    data['kitchenInfo'] = kitchenInfo?.toJson();
    data['totalCalories'] = totalCalories;
    data['minimumReservationPrice'] = minimumReservationPrice;
    data['currency'] = currency?.toJsonOrder();
    data['giftCard'] = giftCard?.toJson().removeNull();
    data['paymentStatus'] = paymentStatus;
    data['refundStatus'] = refundStatus;
    data['deliveryStatus'] = deliveryStatus;
    data['donationAmount'] = donationAmount;
    data['donationForId'] = donationForId;
    data['supervisorId'] = supervisorId;
    data['trackingStatusId'] = trackingStatusId;
    data['orderStatusTracking'] = orderStatusTracking;
    data['waiters'] = waiters;
    data['couponId'] = couponId;
    data['createdOn'] = createdOn;
    data['createdBy'] = createdBy;
    data['lastModifiedBy'] = lastModifiedBy;
    data['lastModifiedOn'] = lastModifiedOn;
    if (table != null) {
      data['table'] = table!.toJson();
    }

    data['customerName'] = customerName;
    data['customerPhone'] = customerPhone;

    return data;
  }

  static List<OrderC> fromList(List<dynamic> data) =>
      data.map((e) => OrderC.fromJson(e)).toList();

  SendOrder convertToSendOrder() => SendOrder.fromOrder(this);
}

///  -------  unit Price -----
///  [unitPrice] as define in product unit
///  Unit Price before apply discount and before apply fee and before apply tax
///  1***if app option [priceIncludeTax] =true ,thats mean UnitPrice include tax
///  [unitPriceExclTax]=[unitPrice]/(1+([unitTaxPercentage]/100))
///  2***if app option PriceIncludeTax =false ,thats mean [unitPrice] exclude tax
///  [unitPriceExclTax]=[unitPrice]
///
///   -------  total Price --------
//// [totalPrice] = [unitPrice] * [quantity]
///  [totalPriceExclTax] = [unitPriceExclTax] * [quantity]
///
///   -------  Fees -----
///  [feePercentage]= total of fees percentage apply  for product
///  [feeAmount] apply for 1 quantity of product before apply tax
///  [feeUnitAmount]=total amount of fees apply for products  for 1 quantity of product
///  [feeUnitTaxAmount]=total taxamount of fees apply for products  for 1 quantity of product
///  [feeTotalAmount]=total of fees apply  for product the must be amount before apply tax
///  [feeTotalTaxAmount]=total of fees taxamount apply  for product
///
///    -------  Modifier -----
/// [modifierOptions] amount apply for 1 quantity of product  before apply tax
/// modifier option TotalPrice  before apply tax of modifier options apply on product
/// [taxAmount] of modifier options apply for 1 quantity of  product
/// sum of  TotalPriceExclTax
/// modifier option TotalPrice  before apply tax of modifier options apply on product
/// sum of   TaxAmount of modifier options apply on product
///

///<<<<<<<<<<<<<<****Discount*****>>>>>>>>>>>>>>>>>>
/// total of Discount Percentage apply on product
/// Discount amount apply for 1 quantity of product
/// DiscountUnitAmount=UnitPriceExclTax * DiscountTotalPercentage
/// total of Discount amount apply on product
/// DiscountAmount=TotalPriceExclTax * DiscountTotalPercentage

@Entity()
class AppliedProduct {
  @Id()
  int? idSeq;
  final product = ToOne<ExtractProduct>();
  final unit = ToOne<Unit>();
  final appliedModifer = ToMany<AppliedModifer>();

  late double quantity;
  late String prodRef;
  bool? priceWithTax = false;
  bool? isCansel = false;
  String? msgCansel;
  late int priceLevel;

  final event = ToOne<TimeEvent>();

  final discount = ToOne<Discount>();
  final promotion = ToOne<Promotion>();
  final taxInfo = ToOne<TaxInfo>();
  final throwbackInfo = ToOne<ThrowbackInfo>();

  String? giftCardCode;
  double? price = 0;
  double? optionPrice = 0;
  double? priceDiscount = 0;
  double? pricePromotion = 0;
  double? feeTax;
  double? taxPrice;
  double? taxableAmt = 0;
  double? freeQuantity;
  double get totalDiscount =>
      pricePromotion.getZeroIfNull + priceDiscount.getZeroIfNull;
  double get getUnitPrice => (price ?? 0) / quantity;
  double get getUnitPriceWithOptionPrice =>
      getUnitPrice + (optionPrice ?? 0) / quantity;

  double get totalTaxableAmt => (taxableAmt ?? 0) + taxableAmtForModifier;
  bool? isFixedPrice = false;
  bool? canEditQty = true;

  double? barcodePrice;

  String get getProductName =>
      "${product.target?.name ?? ''} @ ${unit.target?.name ?? ''} * ${unit.target?.factor.removeTrailingZeros}";
  String get getProductFName =>
      "${product.target?.fName ?? ''} @ ${unit.target?.fName ?? ''} * ${unit.target?.factor.removeTrailingZeros}";

  double get taxableAmtForModifier => appliedModifer.isEmpty
      ? 0
      : appliedModifer
          .map((element) => element.totalTaxableAmt)
          .reduce((value, element) => value + element);

  double get taxPercentage => (taxInfo.target?.values?.isEmpty ?? true)
      ? 0
      : taxInfo.target!.values!
          .where((element) => element.isAppliedTax)
          .map((e) => e.taxPercentage!)
          .reduce((value, element) => value + element);

  double get feesPercentage => (fees?.isEmpty ?? true)
      ? 0
      : fees!.map((e) => e.value!).reduce((value, element) => value + element);

  double get getTotalOptionUnitPrice => appliedModifer.isEmpty
      ? 0
      : appliedModifer
          .map((element) => element.getTotalOptionUnitPrice)
          .reduce((value, element) => value + element);

  String? note;

  KitchenInfo? kitchenInfo;

  double get subTotal =>
      (price.getZeroIfNull + optionPrice.getZeroIfNull) -
      (priceDiscount.getZeroIfNull + pricePromotion.getZeroIfNull);

  double get subTotalWithTax => subTotal + taxPrice.getZeroIfNull;

  double get remainQty => quantity - freeQuantity.getZeroIfNull;

  PriceLevel get getPriceLevel => convertStringToOPriceLevel(priceLevel);

  ProductKitchenStatusEnum get productKitchenStatus =>
      convertKeyToProductKitchenStatus(kitchenInfo?.status);

  // news add

  String? deliveryNote;
  String? reservedNote;
  String? deviceCreatedOn;
  String? deviceCreatedBy;

  List<Fee>? fees;
  List<FeeValue>? feeValues;
  // double? feeAmount;
  double? totalFees;
  SendPriceList? priceList;

  ///  NEW

  double? receivedQuantity;
  double? refundedQuantity;
  double? stockQuantity;

  double get realQty => quantity - freeQuantity.getZeroIfNull > 0
      ? quantity - freeQuantity.getZeroIfNull
      : 0;

  double? unitPrice;
  double? unitPriceExclTax;
  double? get totalPrice => (unitPrice ?? 0) * quantity;
  double? get totalPriceExclTax => (unitPriceExclTax ?? 0) * quantity;
  double? get feeTotalPercentage => feesPercentage;
  double? feeUnitAmount;
  double? get feeUnitTaxAmount => feeTax;
  double? get feeTotalAmount => feeUnitAmount.getZeroIfNull * quantity;
  double? get feeTotalTaxAmount => feeUnitTaxAmount.getZeroIfNull * quantity;
  double? modifierOptionsUnitAmountExclTax;
  double? modifierOptionsUnitTaxAmount;
  double? get modifierOptionsTotalPriceExclTax =>
      modifierOptionsUnitAmountExclTax.getZeroIfNull * quantity;
  double? get modifierOptionsTotalTaxAmount =>
      modifierOptionsUnitTaxAmount.getZeroIfNull * quantity;

  double? get discountTotalPercentage => discount.target == null
      ? null
      : discount.target?.getDiscountType == DiscountType.percentage
          ? discount.target?.discountPercentage
          : 0;
  double? get discountUnitAmount => discount.target == null
      ? null
      : discount.target?.getDiscountType == DiscountType.percentage
          ? unitPriceExclTax.getZeroIfNull *
              discountTotalPercentage.getZeroIfNull
          : discount.target?.discountAmount;
  double? get discountTotalAmount =>
      discountUnitAmount.getZeroIfNull * quantity;
  double? get promotionTotalPercentage => promotion.target == null
      ? null
      : promotion.target?.getDiscountType == DiscountType.percentage
          ? promotion.target?.discountPercentage
          : 0;
  double? get promotionUnitAmount => promotion.target == null
      ? null
      : promotion.target?.getDiscountType == DiscountType.percentage
          ? unitPriceExclTax.getZeroIfNull *
              discountTotalPercentage.getZeroIfNull
          : promotion.target?.discountAmount;
  double? get promotionTotalAmount =>
      promotionUnitAmount.getZeroIfNull * quantity;
  double? timeEventTotalPercentage;
  double? timeEventUnitAmount;
  double? get timeEventTotalAmount =>
      timeEventUnitAmount.getZeroIfNull * quantity;
  double get netUnitPrice =>
      unitPriceExclTax.getZeroIfNull +
      modifierOptionsUnitAmountExclTax.getZeroIfNull +
      feeUnitAmount.getZeroIfNull -
      timeEventUnitAmount.getZeroIfNull -
      discountUnitAmount.getZeroIfNull -
      promotionUnitAmount.getZeroIfNull;
  double? get netTotalPriceExclTax => netUnitPrice * quantity;
  double? unitPriceTaxAmount;
  double? get totalPriceTaxAmount =>
      unitPriceTaxAmount == null ? null : unitPriceTaxAmount! * quantity;
  double get unitPriceInclTax =>
      netUnitPrice + unitPriceTaxAmount.getZeroIfNull;
  double get totalPriceInclTax => unitPriceInclTax * quantity;
  bool? priceIncludesTax;

  AppliedProduct({
    required this.quantity,
    required this.prodRef,
    this.isCansel,
    this.msgCansel,
    this.note,
    this.optionPrice,
    this.price,
    this.priceDiscount,
    this.priceLevel = 0,
    this.pricePromotion,
    this.priceWithTax,
    this.taxPrice,
    this.giftCardCode,
    this.freeQuantity,
    this.kitchenInfo,
    this.taxableAmt,
    this.canEditQty = true,
    this.isFixedPrice = false,
    this.barcodePrice,
    this.deliveryNote,
    this.reservedNote,
    this.deviceCreatedOn,
    this.deviceCreatedBy,
    this.fees,
    this.feeValues,
    this.feeUnitAmount,
    this.priceList,
    this.feeTax,
    this.totalFees,
  });
  AppliedProduct copyWith({
    ExtractProduct? product,
    Unit? unit,
    List<AppliedModifer>? appliedModifer,
    double? quantity,
    String? prodRef,
    bool? priceWithTax,
    bool? isCansel,
    String? msgCansel,
    int? priceLevel,
    TimeEvent? event,
    Discount? discount,
    Promotion? promotion,
    String? giftCardCode,
    double? price,
    double? optionPrice,
    double? priceDiscount,
    double? pricePromotion,
    double? taxPrice,
    TaxInfo? taxInfo,
    String? note,
    ThrowbackInfo? throwbackInfo,
    double? freeQuantity,
    KitchenInfo? kitchenInfo,
    double? taxableAmt,
    bool? canEditQty,
    bool? isFixedPrice,
    double? barcodePrice,
    String? deliveryNote,
    String? reservedNote,
    String? deviceCreatedOn,
    String? deviceCreatedBy,
    List<Fee>? fees,
    List<FeeValue>? feeValues,
    double? feeAmount,
    SendPriceList? priceList,
    double? totalFees,
  }) {
    return AppliedProduct(
      quantity: quantity ?? this.quantity,
      prodRef: prodRef ?? this.prodRef,
      priceWithTax: priceWithTax ?? this.priceWithTax,
      isCansel: isCansel ?? this.isCansel,
      msgCansel: msgCansel ?? this.msgCansel,
      priceLevel: priceLevel ?? this.priceLevel,
      giftCardCode: giftCardCode ?? this.giftCardCode,
      price: price ?? this.price,
      optionPrice: optionPrice ?? this.optionPrice,
      priceDiscount: priceDiscount ?? this.priceDiscount,
      pricePromotion: pricePromotion ?? this.pricePromotion,
      taxPrice: taxPrice ?? this.taxPrice,
      note: note ?? this.note,
      freeQuantity: freeQuantity ?? this.freeQuantity,
      taxableAmt: taxableAmt ?? this.taxableAmt,
      canEditQty: canEditQty ?? this.canEditQty,
      isFixedPrice: isFixedPrice ?? this.isFixedPrice,
      barcodePrice: barcodePrice ?? this.barcodePrice,
      deliveryNote: deliveryNote ?? this.deliveryNote,
      reservedNote: reservedNote ?? this.reservedNote,
      deviceCreatedOn: deviceCreatedOn ?? this.deviceCreatedOn,
      deviceCreatedBy: deviceCreatedBy ?? this.deviceCreatedBy,
      fees: fees ?? this.fees,
      feeValues: feeValues ?? this.feeValues,
      feeUnitAmount: feeAmount ?? feeUnitAmount,
      priceList: priceList ?? this.priceList,
      totalFees: totalFees ?? this.totalFees,
    )
          ..product.target = product ?? this.product.target
          ..unit.target = unit ?? this.unit.target
          ..event.target = event ?? this.event.target
          ..discount.target = discount ?? this.discount.target
          ..promotion.target = promotion ?? this.promotion.target
          ..discount.target = discount ?? this.discount.target
          ..taxInfo.target = taxInfo ?? this.taxInfo.target
          ..throwbackInfo.target = throwbackInfo ?? this.throwbackInfo.target
          ..kitchenInfo = kitchenInfo ?? this.kitchenInfo
        // ..appliedModifer = appliedModifer ?? this.appliedModifer

        ;
  }

  AppliedProduct.fromJson(Map<String, dynamic> json) {
    product.target = json['product'] != null
        ? ExtractProduct.fromJson(json['product'])
        : null;
    unit.target = json['unit'] != null ? Unit.fromJson(json['unit']) : null;

    if (json['appliedModifer'] != null) {
      json['appliedModifer'].forEach((v) {
        appliedModifer.add(AppliedModifer.fromJson(v));
      });
    }
    quantity = double.tryParse(json['quantity'].toString()) ?? 0.0;
    prodRef = json['prodRef'];
    priceWithTax = json['priceWithTax'];
    isCansel = json['isCansel'];
    msgCansel = json['msgCansel'];
    priceLevel = json['priceLevel'];

    event.target =
        json['event'] != null ? TimeEvent.fromJson(json['event']) : null;
    discount.target =
        json['discount'] != null ? Discount.fromJson(json['discount']) : null;
    promotion.target = json['promotion'] != null
        ? Promotion.fromJson(json['promotion'])
        : null;
    taxInfo.target =
        json['taxInfo'] != null ? TaxInfo.fromJson(json['taxInfo']) : null;
    throwbackInfo.target = json['throwbackInfo'] != null
        ? ThrowbackInfo.fromJson(json['throwbackInfo'])
        : null;

    giftCardCode = json['giftCardCode'];
    price = double.tryParse(json['price'].toString()) ?? 0.0;
    optionPrice = double.tryParse(json['optionPrice'].toString()) ?? 0.0;
    priceDiscount = double.tryParse(json['priceDiscount'].toString()) ?? 0.0;
    pricePromotion = double.tryParse(json['pricePromotion'].toString()) ?? 0.0;
    feeTax = json['feeTax'];
    taxPrice = double.tryParse(json['taxPrice'].toString()) ?? 0.0;
    taxableAmt = json['taxableAmt'];
    freeQuantity = double.tryParse(json['freeQuantity'].toString()) ?? 0.0;
    isFixedPrice = json['isFixedPrice'];
    canEditQty = json['canEditQty'];
    note = json['note'];
    if (json['kitchenInfo'] != null) {
      kitchenInfo = KitchenInfo.fromJson(json['kitchenInfo']);
    }

    deliveryNote = json['deliveryNote'];
    barcodePrice = json['barcodePrice'];
    reservedNote = json['reservedNote'];
    deviceCreatedOn = json['deviceCreatedOn'];
    deviceCreatedBy = json['deviceCreatedBy'];
    if (json['fees'] != null) {
      fees = [];
      json['fees'].forEach((v) {
        fees!.add(Fee.fromJson(v));
      });
    }
    if (json['feeValues'] != null) {
      feeValues = [];
      json['feeValues'].forEach((v) {
        feeValues!.add(FeeValue.fromJson(v));
      });
    }

    json['totalFees'] = double.tryParse(json['totalFees'].toString());
    if (json['priceList'] != null) {
      priceList = SendPriceList.fromJson(json['priceList']);
    }
    receivedQuantity = double.tryParse(json['receivedQuantity'].toString());
    refundedQuantity = double.tryParse(json['refundedQuantity'].toString());
    stockQuantity = double.tryParse(json['stockQuantity'].toString());
    unitPrice = double.tryParse(json['unitPrice'].toString());
    unitPriceExclTax = double.tryParse(json['unitPriceExclTax'].toString());
    feeUnitAmount = double.tryParse(json['feeUnitAmount'].toString());
    modifierOptionsUnitAmountExclTax =
        double.tryParse(json['modifierOptionsUnitAmountExclTax'].toString());
    modifierOptionsUnitTaxAmount =
        double.tryParse(json['modifierOptionsUnitTaxAmount'].toString());
    timeEventTotalPercentage =
        double.tryParse(json['timeEventTotalPercentage'].toString());
    timeEventUnitAmount =
        double.tryParse(json['timeEventUnitAmount'].toString());
    unitPriceTaxAmount = double.tryParse(json['unitPriceTaxAmount'].toString());
    priceIncludesTax = json['priceIncludesTax'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};

    if (product.target != null) {
      data['product'] = product.target!.toJson().removeNull();
    }
    if (unit.target != null) {
      data['unit'] = unit.target!.toJsonOrder().removeNull();
    }
    data['appliedModifer'] =
        appliedModifer.map((element) => element.toJson().removeNull()).toList();
    data['quantity'] = quantity;
    data['prodRef'] = prodRef;
    data['priceWithTax'] = priceWithTax;
    data['isCansel'] = isCansel;
    data['msgCansel'] = msgCansel;
    data['priceLevel'] = priceLevel;
    if (event.target != null) {
      data['event'] = event.target!.toJson().removeNull();
    }
    if (discount.target != null) {
      data['discount'] = discount.target!.toJson().removeNull();
    }
    if (promotion.target != null) {
      data['promotion'] = promotion.target!.toJson().removeNull();
    }
    if (taxInfo.target != null) {
      data['taxInfo'] = taxInfo.target!.toJson().removeNull();
    }
    if (throwbackInfo.target != null) {
      data['throwbackInfo'] = throwbackInfo.target!.toJson().removeNull();
    }

    data['giftCardCode'] = giftCardCode;
    data['price'] = price;
    data['optionPrice'] = optionPrice;
    data['priceDiscount'] = priceDiscount ?? 0.0;
    data['pricePromotion'] = pricePromotion;
    data['feeTax'] = feeTax;
    data['taxPrice'] = taxPrice;
    data['taxableAmt'] = taxableAmt;
    data['freeQuantity'] = freeQuantity;
    data['isFixedPrice'] = isFixedPrice;
    data['canEditQty'] = canEditQty;
    data['barcodePrice'] = barcodePrice;
    data['note'] = note;
    data['subTotal'] = subTotal;
    data['kitchenInfo'] = kitchenInfo?.toJson();
    data['deliveryNote'] = deliveryNote;
    data['reservedNote'] = reservedNote;
    data['deviceCreatedOn'] =
        DateTime.tryParse(deviceCreatedOn.toString())?.toIso8601String();
    data['deviceCreatedBy'] = deviceCreatedBy;

    if (fees != null) {
      data['fees'] = fees!.map((v) => v.toJson()).toList();
    }
    if (feeValues != null) {
      data['feeValues'] = feeValues!.map((v) => v.toJson()).toList();
    }
    if (priceList != null) {
      data['priceList'] = priceList!.toJson().removeNull();
    }

    data['totalFees'] = totalFees;
    data['receivedQuantity'] = receivedQuantity;
    data['refundedQuantity'] = refundedQuantity;
    data['stockQuantity'] = stockQuantity;
    data['unitPrice'] = unitPrice;
    data['unitPriceExclTax'] = unitPriceExclTax;
    data['feeUnitAmount'] = feeUnitAmount;
    data['modifierOptionsUnitAmountExclTax'] = modifierOptionsUnitAmountExclTax;
    data['modifierOptionsUnitTaxAmount'] = modifierOptionsUnitTaxAmount;
    data['timeEventTotalPercentage'] = timeEventTotalPercentage;
    data['timeEventUnitAmount'] = timeEventUnitAmount;
    data['unitPriceTaxAmount'] = unitPriceTaxAmount;
    data['priceIncludesTax'] = priceIncludesTax;

    return data;
  }

  Map<String, dynamic> toJsonOrder() {
    final Map<String, dynamic> data = {};
    return toJson();
    if (product.target != null) {
      data['product'] = product.target!.toJsonOrder().removeNull();
    }
    if (unit.target != null) {
      data['unit'] = unit.target!.toJsonOrder().removeNull();
    }
    data['appliedModifer'] = appliedModifer
        .map((element) => element.toJsonOrder().removeNull())
        .toList();
    if (event.target != null) {
      data['event'] = event.target!.toJson().removeNull();
    }
    if (discount.target != null) {
      data['discount'] = discount.target!.toJson().removeNull();
    }
    if (promotion.target != null) {
      data['promotion'] = promotion.target!.toJson().removeNull();
    }
    if (taxInfo.target != null) {
      data['taxInfo'] = taxInfo.target!.toJson().removeNull();
    }
    if (throwbackInfo.target != null) {
      data['throwbackInfo'] = throwbackInfo.target!.toJson().removeNull();
    }
    data['giftCardCode'] = giftCardCode;
    data['quantity'] = quantity;
    data['price'] = price ?? 0.0;
    data['optionPrice'] = optionPrice ?? 0.0;
    data['priceDiscount'] = priceDiscount ?? 0.0;
    data['pricePromotion'] = pricePromotion ?? 0.0;
    data['prodRef'] = prodRef;
    data['priceWithTax'] = priceWithTax;
    data['isCansel'] = isCansel;
    data['msgCansel'] = msgCansel;
    data['priceLevel'] = priceLevel;
    data['taxPrice'] = taxPrice ?? 0.0;
    data['freeQuantity'] = freeQuantity ?? 0.0;
    data['note'] = note;
    data['subTotal'] = subTotal;
    data['kitchenInfo'] = kitchenInfo?.toJson();
    data['taxableAmt'] = taxableAmt;
    data['canEditQty'] = canEditQty;
    data['isFixedPrice'] = isFixedPrice;
    data['barcodePrice'] = barcodePrice;
    data['totalFees'] = totalFees;
    data['receivedQuantity'] = receivedQuantity;
    data['refundedQuantity'] = refundedQuantity;
    data['stockQuantity'] = stockQuantity;
    data['unitPrice'] = unitPrice;
    data['unitPriceExclTax'] = unitPriceExclTax;
    data['feeUnitAmount'] = feeUnitAmount;
    data['modifierOptionsUnitAmountExclTax'] = modifierOptionsUnitAmountExclTax;
    data['modifierOptionsUnitTaxAmount'] = modifierOptionsUnitTaxAmount;
    data['timeEventTotalPercentage'] = timeEventTotalPercentage;
    data['timeEventUnitAmount'] = timeEventUnitAmount;
    data['unitPriceTaxAmount'] = unitPriceTaxAmount;
    data['priceIncludesTax'] = priceIncludesTax;
    return data;
  }

  static List<AppliedProduct> fromList(List<dynamic> data) =>
      data.map((e) => AppliedProduct.fromJson(e)).toList();
}

@Entity()
class TaxInfo {
  @Id()
  int? idSeq;
  String? taxGroupId;
  double? value;

  @Transient()
  List<TaxValue>? values;

  TaxInfo({
    this.taxGroupId,
    this.values,
    this.value,

    // this.value,
  });

  TaxInfo.fromJson(Map<String, dynamic> json) {
    taxGroupId = json['taxGroupId'];
    value = double.tryParse(json['value'].toString());
    if (json['values'] != null) {
      values = <TaxValue>[];
      json['values'].forEach((v) {
        values!.add(TaxValue.fromJson(v));
      });
    }

    // value = double.tryParse(json['value'].toString()) ?? 0.0;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['taxGroupId'] = taxGroupId;
    data['values'] = values?.map((e) => e.toJson()).toList();
    // data['value'] = value;
    return data;
  }
}

class TaxValue {
  String? taxId;
  double? value;
  double? taxPercentage;
  bool? isTaxExempt;
  bool? isZeroTax;
  bool? isNotApplyForThisCustomer;
  bool? isNotApplyForThisOrderType;
  bool? isNotApplyForThisPeriod;

  String? deviceCreatedOn;
  String? deviceCreatedBy;

  bool get isAppliedTax => (isNotApplyForThisCustomer == false &&
      isTaxExempt == false &&
      isZeroTax == false &&
      isNotApplyForThisOrderType == false &&
      isNotApplyForThisPeriod == false);

  TaxValue({
    this.taxId,
    this.value,
    this.taxPercentage,
    this.isTaxExempt,
    this.isZeroTax,
    this.isNotApplyForThisCustomer,
    this.isNotApplyForThisOrderType,
    this.isNotApplyForThisPeriod,
    this.deviceCreatedOn,
    this.deviceCreatedBy,
  });

  TaxValue.fromJson(Map<String, dynamic> json) {
    taxId = json['taxId'];
    value = json['value'];
    taxPercentage = json['taxPercentage'];
    isTaxExempt = json['isTaxExempt'];
    isZeroTax = json['isZeroTax'];
    isNotApplyForThisCustomer = json['isNotApplyForThisCustomer'];
    isNotApplyForThisOrderType = json['isNotApplyForThisOrderType'];
    isNotApplyForThisPeriod = json['isNotApplyForThisPeriod'];
    deviceCreatedOn = json['deviceCreatedOn'];
    deviceCreatedBy = json['deviceCreatedBy'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['taxId'] = taxId;
    data['value'] = value;
    data['taxPercentage'] = taxPercentage;
    data['isTaxExempt'] = isTaxExempt;
    data['isZeroTax'] = isZeroTax;
    data['isNotApplyForThisCustomer'] = isNotApplyForThisCustomer;
    data['isNotApplyForThisOrderType'] = isNotApplyForThisOrderType;
    data['isNotApplyForThisPeriod'] = isNotApplyForThisPeriod;
    data['deviceCreatedOn'] =
        DateTime.tryParse(deviceCreatedOn.toString())?.toIso8601String();
    data['deviceCreatedBy'] = deviceCreatedBy;
    return data;
  }
}

// class TaxHistoryValue {
//   String taxId;
//   double taxValue;
//   double value;

// }

@Entity()
class FeeValue {
  @Id()
  int? idSeq;
  String? feeId;
  double? value;
  bool? applyAuto;

  final taxInfo = ToOne<TaxInfo>();

  FeeValue({
    this.feeId,
    this.value,
    this.applyAuto,
  });

  FeeValue.fromJson(Map<String, dynamic> json) {
    feeId = json['feeId'];
    value = double.tryParse(json['value'].toString()) ?? 0.0;
    applyAuto = json['applyAuto'];
    taxInfo.target =
        json['taxInfo'] != null ? TaxInfo.fromJson(json['taxInfo']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['feeId'] = feeId;
    data['value'] = value;
    data['applyAuto'] = applyAuto;
    if (taxInfo.target != null) {
      data['taxInfo'] = taxInfo.target!.toJson().removeNull();
    }
    return data;
  }
}

@Entity()
class DeliveryCompanyInfo {
  @Id()
  int? idSeq;
  final company = ToOne<DeliveryCompany>();

  late String orderNumber;
  DeliveryCompanyInfo({required this.orderNumber});

  DeliveryCompanyInfo copyWith({
    DeliveryCompany? company,
    String? orderNumber,
  }) {
    return DeliveryCompanyInfo(
      orderNumber: orderNumber ?? this.orderNumber,
    )..company.target = company ?? this.company.target;
  }

  DeliveryCompanyInfo.fromJson(Map<String, dynamic> json) {
    orderNumber = json['orderNumber'];
    company.target = json['company'] != null
        ? DeliveryCompany.fromJson(json['company'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['orderNumber'] = orderNumber;
    if (company.target != null) {
      data['company'] = company.target?.toJson().removeNull();
    }
    return data;
  }

  Map<String, dynamic> toJsonOrder() {
    final Map<String, dynamic> data = {};
    data['orderNumber'] = orderNumber;
    if (company.target != null) {
      data['company'] = company.target?.toJsonOrder().removeNull();
    }
    return data;
  }
}

@Entity()
class PaymentValue {
  @Id()
  int? idSeq;
  late String refreance;

  final method = ToOne<PaymentMethod>();

  late double amt;
  double remainAmt = 0.0;
  double? exchangeRate;
  double? amountCurecny;
  String? currencyCode;
  String? defaultCurrencyId;
  PaymentValue({
    required this.amt,
    required this.refreance,
    required this.defaultCurrencyId,
    this.amountCurecny,
    this.exchangeRate,
    this.currencyCode,
    this.remainAmt = 0.0,
  });

  PaymentValue.fromJson(Map<String, dynamic> json) {
    amt = double.tryParse(json['amt'].toString()) ?? 0.0;
    refreance = json['refreance'];
    remainAmt = double.tryParse(json['remainAmt'].toString()) ?? 0.0;
    amountCurecny = double.tryParse(json['amountCurecny'].toString()) ?? 0.0;
    exchangeRate = json['exchangeRate'];
    amountCurecny = json['amountCurecny'];
    currencyCode = json['currencyCode'];
    defaultCurrencyId = json['defaultCurrencyId'];

    if (json['method'] != null) {
      method.target = PaymentMethod.fromJson(json['method']);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['amt'] = amt;
    data['refreance'] = refreance;
    data['remainAmt'] = remainAmt;
    data['currencyCode'] = currencyCode;
    data['amountCurecny'] = amountCurecny;
    data['exchangeRate'] = exchangeRate;
    data['defaultCurrencyId'] = defaultCurrencyId;

    data['method'] = method.target?.toJson().removeNull();

    return data;
  }

  PaymentValue copyWith({
    PaymentMethod? method,
    double? amt,
    double? remainAmt,
    double? amountCurecny,
    double? exchangeRate,
    String? currencyCode,
    String? refreance,
    String? defaultCurrencyId,
  }) {
    return PaymentValue(
      defaultCurrencyId: defaultCurrencyId ?? this.defaultCurrencyId,
      refreance: refreance ?? this.refreance,
      amt: amt ?? this.amt,
      remainAmt: remainAmt ?? this.remainAmt,
      amountCurecny: amountCurecny ?? this.amountCurecny,
      currencyCode: currencyCode ?? this.currencyCode,
      exchangeRate: exchangeRate ?? this.exchangeRate,
    )..method.target = method ?? this.method.target;
  }

  static List<PaymentValue> fromList(List<dynamic> data) =>
      data.map((e) => PaymentValue.fromJson(e)).toList();
}

@Entity()
class ThrowbackInfo {
  @Id()
  int? idSeq;
  String? productRef;
  double quantity = 1;
  bool isWaste = false;
  String? ref;

  //constructor
  ThrowbackInfo({
    this.ref,
    this.productRef,
    this.quantity = 1,
    this.isWaste = false,
  });
  ThrowbackInfo copyWith({
    String? ref,
    String? productRef,
    double? quantity,
    bool? isWaste,
  }) {
    return ThrowbackInfo(
      ref: ref ?? this.ref,
      productRef: productRef ?? this.productRef,
      quantity: quantity ?? this.quantity,
      isWaste: isWaste ?? this.isWaste,
    );
  }

  ThrowbackInfo.fromJson(Map<String, dynamic> json) {
    productRef = json['productRef'];
    quantity = double.tryParse(json['quantity'].toString()) ?? 0.0;
    isWaste = json['isWaste'];
    ref = json['ref'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['productRef'] = productRef;
    data['quantity'] = quantity;
    data['isWaste'] = isWaste;
    data['ref'] = ref;
    return data;
  }
}
