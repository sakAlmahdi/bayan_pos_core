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
import 'package:bayan_pos_core/data/model/setting/currency.dart';
import 'package:objectbox/objectbox.dart';
import '../delivery/delivery_company.dart';

@Entity()
class OrderC {
  @Id()
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
  late int orderType;
  late int status;
  late int orderSource;
  DateTime? endTime;
  final deliveryCompanyInfo = ToOne<DeliveryCompanyInfo>();
  String? selectedPriceListId;
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
  OrderC();
  OrderC copyWith({
    int? idSeq,
    int? orderType,
    int? status,
    int? orderSource,
    DateTime? startDate,
    String? orderRef,
    DateTime? endTime,
    DeliveryCompanyInfo? deliveryCompanyInfo,
    String? selectedPriceListId,
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
    Currencies? currency,
  }) {
    return OrderC()
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
      ..selectedPriceListId = selectedPriceListId ?? this.selectedPriceListId
      ..creatorBy = creatorBy ?? this.creatorBy
      ..closeBy = closeBy ?? this.closeBy
      ..tableId = tableId ?? this.tableId
      ..numberVistor = numberVistor ?? this.numberVistor
      ..customer.target = customer ?? this.customer.target
      ..address.target = address ?? this.address.target
      ..promotion.target = promotion ?? this.promotion.target
      ..discount.target = discount ?? this.discount.target
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
      ..currency = currency ?? this.currency;
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
    selectedPriceListId = json['selectedPriceListId'];
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
    data['selectedPriceListId'] = selectedPriceListId;
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
    data['selectedPriceListId'] = selectedPriceListId;
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
    return data;
  }

  static List<OrderC> fromList(List<dynamic> data) =>
      data.map((e) => OrderC.fromJson(e)).toList();
}

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
    quantity = double.tryParse(json['quantity'].toString()) ?? 0.0;
    prodRef = json['prodRef'];
    priceWithTax = json['priceWithTax'];
    isCansel = json['isCansel'];
    msgCansel = json['msgCansel'];
    priceLevel = json['priceLevel'];
    giftCardCode = json['giftCardCode'];
    price = double.tryParse(json['price'].toString()) ?? 0.0;
    optionPrice = double.tryParse(json['optionPrice'].toString()) ?? 0.0;
    priceDiscount = double.tryParse(json['priceDiscount'].toString()) ?? 0.0;
    pricePromotion = double.tryParse(json['pricePromotion'].toString()) ?? 0.0;
    taxPrice = double.tryParse(json['taxPrice'].toString()) ?? 0.0;
    freeQuantity = double.tryParse(json['freeQuantity'].toString()) ?? 0.0;
    note = json['note'];
    if (json['kitchenInfo'] != null) {
      kitchenInfo = KitchenInfo.fromJson(json['kitchenInfo']);
    }
    taxableAmt = json['taxableAmt'];
    canEditQty = json['canEditQty'];
    isFixedPrice = json['isFixedPrice'];
    barcodePrice = json['barcodePrice'];
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
    data['quantity'] = quantity;
    data['prodRef'] = prodRef;
    data['priceWithTax'] = priceWithTax;
    data['isCansel'] = isCansel;
    data['msgCansel'] = msgCansel;
    data['priceLevel'] = priceLevel;
    data['giftCardCode'] = giftCardCode;
    data['price'] = price;
    data['optionPrice'] = optionPrice;
    data['priceDiscount'] = priceDiscount ?? 0.0;
    data['pricePromotion'] = pricePromotion;
    data['taxPrice'] = taxPrice;
    data['freeQuantity'] = freeQuantity;
    data['note'] = note;
    data['subTotal'] = subTotal;
    data['kitchenInfo'] = kitchenInfo?.toJson();
    data['taxableAmt'] = taxableAmt;
    data['canEditQty'] = canEditQty;
    data['isFixedPrice'] = isFixedPrice;
    data['barcodePrice'] = barcodePrice;
    return data;
  }

  Map<String, dynamic> toJsonOrder() {
    final Map<String, dynamic> data = {};
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
    data['quantity'] = quantity;
    data['prodRef'] = prodRef;
    data['priceWithTax'] = priceWithTax;
    data['isCansel'] = isCansel;
    data['msgCansel'] = msgCansel;
    data['priceLevel'] = priceLevel;
    data['giftCardCode'] = giftCardCode;
    data['price'] = price ?? 0.0;
    data['optionPrice'] = optionPrice ?? 0.0;
    data['priceDiscount'] = priceDiscount ?? 0.0;
    data['pricePromotion'] = pricePromotion ?? 0.0;
    data['taxPrice'] = taxPrice ?? 0.0;
    data['freeQuantity'] = freeQuantity ?? 0.0;
    data['note'] = note;
    data['subTotal'] = subTotal;
    data['kitchenInfo'] = kitchenInfo?.toJson();
    data['taxableAmt'] = taxableAmt;
    data['canEditQty'] = canEditQty;
    data['isFixedPrice'] = isFixedPrice;
    data['barcodePrice'] = barcodePrice;
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
