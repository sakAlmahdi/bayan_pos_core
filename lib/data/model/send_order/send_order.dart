import 'package:bayan_pos_core/bayan_pos_core.dart';
// import 'package:bayan_pos_core/data/enum/order_satate.dart';
// import 'package:bayan_pos_core/data/model/order/option.dart';
// import 'package:bayan_pos_core/data/model/order/unit.dart';
// import 'package:bayan_pos_core/data/model/order/unit_modifer.dart';

class SendOrder {
  int? posTransactionType;
  int? orderType;
  int? orderSource;
  int? masterOrderNo;
  int? deviceOrderNo;
  String? masterOrderId;
  String? deviceOrderId;
  int? invoiceNumber;
  String? callName;
  String? callNumber;
  String? openOn;
  String? openBy;
  String? closeOn;
  String? closeBy;
  String? giftCardId;
  String? priceListId;
  String? checksum;
  String? masterChecksum;
  String? serverChecksum;
  String? tillId;
  String? shiftId;
  String? deviceId;
  int? orderStatus;
  int? paymentStatus;
  int? refundStatus;
  int? deliveryStatus;
  String? currencyId;
  double? currencyRate;
  double? amount;
  double? chargeAmount;
  double? discountAmount;
  double? promotionAmount;
  double? totalAmount;
  double? taxAmount;
  double? netAmount;
  double? paidAmount;
  double? roundingAmount;
  double? tipAmount;
  double? donationAmount;
  String? donationForId;
  String? supervisorId;
  String? reference;
  String? parentOrderId;
  String? casherNote;
  String? trackingStatusId;
  List<OrderStatusTracking>? orderStatusTracking;
  SendCustomer? customer;
  SendTable? table;
  List<Products>? products;
  List<Waiters>? waiters;
  SendDelivery? delivery;
  SendDiscount? discount;
  SendPromotion? promotion;
  List<Sendcharges>? charges;
  SendCoupon? coupon;
  SendGiftCard? giftCard;
  List<SendPayments>? payments;
  String? createdOn;
  String? createdBy;
  String? lastModifiedBy;
  String? lastModifiedOn;

  SendOrder(
      {this.posTransactionType,
      this.orderType,
      this.orderSource,
      this.masterOrderNo,
      this.deviceOrderNo,
      this.masterOrderId,
      this.deviceOrderId,
      this.invoiceNumber,
      this.callName,
      this.callNumber,
      this.openOn,
      this.openBy,
      this.closeOn,
      this.closeBy,
      this.giftCardId,
      this.priceListId,
      this.checksum,
      this.masterChecksum,
      this.serverChecksum,
      this.tillId,
      this.shiftId,
      this.deviceId,
      this.orderStatus,
      this.paymentStatus,
      this.refundStatus,
      this.deliveryStatus,
      this.currencyId,
      this.currencyRate,
      this.amount,
      this.chargeAmount,
      this.discountAmount,
      this.promotionAmount,
      this.totalAmount,
      this.taxAmount,
      this.netAmount,
      this.paidAmount,
      this.roundingAmount,
      this.tipAmount,
      this.donationAmount,
      this.donationForId,
      this.supervisorId,
      this.reference,
      this.parentOrderId,
      this.casherNote,
      this.trackingStatusId,
      this.orderStatusTracking,
      this.customer,
      this.table,
      this.products,
      this.waiters,
      this.delivery,
      this.discount,
      this.promotion,
      this.charges,
      this.coupon,
      this.giftCard,
      this.payments,
      this.createdOn,
      this.createdBy,
      this.lastModifiedBy,
      this.lastModifiedOn});

  SendOrder.fromJson(Map<String, dynamic> json) {
    posTransactionType = json['posTransactionType'];
    orderType = json['orderType'];
    orderSource = json['orderSource'];
    masterOrderNo = json['masterOrderNo'];
    deviceOrderNo = json['deviceOrderNo'];
    masterOrderId = json['masterOrderId'];
    deviceOrderId = json['deviceOrderId'];
    invoiceNumber = json['invoiceNumber'];
    callName = json['callName'];
    callNumber = json['callNumber'];
    openOn = json['openOn'];
    openBy = json['openBy'];
    closeOn = json['closeOn'];
    closeBy = json['closeBy'];
    giftCardId = json['giftCardId'];
    priceListId = json['priceListId'];
    checksum = json['checksum'];
    masterChecksum = json['masterChecksum'];
    serverChecksum = json['serverChecksum'];
    tillId = json['tillId'];
    shiftId = json['shiftId'];
    deviceId = json['deviceId'];
    orderStatus = json['orderStatus'];
    paymentStatus = json['paymentStatus'];
    refundStatus = json['refundStatus'];
    deliveryStatus = json['deliveryStatus'];
    currencyId = json['currencyId'];
    currencyRate = json['currencyRate'];
    amount = json['amount'];
    chargeAmount = json['chargeAmount'];
    discountAmount = json['discountAmount'];
    promotionAmount = json['promotionAmount'];
    totalAmount = json['totalAmount'];
    taxAmount = json['taxAmount'];
    netAmount = json['netAmount'];
    paidAmount = json['paidAmount'];
    roundingAmount = json['roundingAmount'];
    tipAmount = json['tipAmount'];
    donationAmount = json['donationAmount'];
    donationForId = json['donationForId'];
    supervisorId = json['supervisorId'];
    reference = json['reference'];
    parentOrderId = json['parentOrderId'];
    casherNote = json['casherNote'];
    trackingStatusId = json['trackingStatusId'];
    if (json['orderStatusTracking'] != null) {
      orderStatusTracking = <OrderStatusTracking>[];
      json['orderStatusTracking'].forEach((v) {
        orderStatusTracking!.add(OrderStatusTracking.fromJson(v));
      });
    }
    customer = json['customer'] != null
        ? SendCustomer.fromJson(json['customer'])
        : null;
    table = json['table'] != null ? SendTable.fromJson(json['table']) : null;
    if (json['products'] != null) {
      products = <Products>[];
      json['products'].forEach((v) {
        products!.add(Products.fromJson(v));
      });
    }
    if (json['waiters'] != null) {
      waiters = <Waiters>[];
      json['waiters'].forEach((v) {
        waiters!.add(Waiters.fromJson(v));
      });
    }
    delivery = json['delivery'] != null
        ? SendDelivery.fromJson(json['delivery'])
        : null;
    discount = json['discount'] != null
        ? SendDiscount.fromJson(json['discount'])
        : null;
    promotion = json['promotion'] != null
        ? SendPromotion.fromJson(json['promotion'])
        : null;
    if (json['charges'] != null) {
      charges = <Sendcharges>[];
      json['charges'].forEach((v) {
        charges!.add(Sendcharges.fromJson(v));
      });
    }
    coupon =
        json['coupon'] != null ? SendCoupon.fromJson(json['coupon']) : null;
    giftCard = json['giftCard'] != null
        ? SendGiftCard.fromJson(json['giftCard'])
        : null;
    if (json['payments'] != null) {
      payments = <SendPayments>[];
      json['payments'].forEach((v) {
        payments!.add(SendPayments.fromJson(v));
      });
    }
    createdOn = json['createdOn'];
    createdBy = json['createdBy'];
    lastModifiedBy = json['lastModifiedBy'];
    lastModifiedOn = json['lastModifiedOn'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['posTransactionType'] = posTransactionType;
    data['orderType'] = orderType;
    data['orderSource'] = orderSource;
    data['masterOrderNo'] = masterOrderNo;
    data['deviceOrderNo'] = deviceOrderNo;
    data['masterOrderId'] = masterOrderId;
    data['deviceOrderId'] = deviceOrderId;
    data['invoiceNumber'] = invoiceNumber;
    data['callName'] = callName;
    data['callNumber'] = callNumber;
    data['openOn'] = DateTime.parse(openOn.toString()).toIso8601String();
    data['openBy'] = openBy;
    data['closeOn'] = DateTime.tryParse(closeOn.toString())?.toIso8601String();
    data['closeBy'] = closeBy;
    data['giftCardId'] = giftCardId;
    data['priceListId'] = priceListId;
    data['checksum'] = checksum;
    data['masterChecksum'] = masterChecksum;
    data['serverChecksum'] = serverChecksum;
    data['tillId'] = tillId;
    data['shiftId'] = shiftId;
    data['deviceId'] = deviceId;
    data['orderStatus'] = orderStatus;
    data['paymentStatus'] = paymentStatus;
    data['refundStatus'] = refundStatus;
    data['deliveryStatus'] = deliveryStatus;
    data['currencyId'] = currencyId;
    data['currencyRate'] = currencyRate;
    data['amount'] = amount;
    data['chargeAmount'] = chargeAmount;
    data['discountAmount'] = discountAmount;
    data['promotionAmount'] = promotionAmount;
    data['totalAmount'] = totalAmount;
    data['taxAmount'] = taxAmount;
    data['netAmount'] = netAmount;
    data['paidAmount'] = paidAmount;
    data['roundingAmount'] = roundingAmount;
    data['tipAmount'] = tipAmount;
    data['donationAmount'] = donationAmount;
    data['donationForId'] = donationForId;
    data['supervisorId'] = supervisorId;
    data['reference'] = reference;
    data['parentOrderId'] = parentOrderId;
    data['casherNote'] = casherNote;
    data['trackingStatusId'] = trackingStatusId;
    if (orderStatusTracking != null) {
      data['orderStatusTracking'] =
          orderStatusTracking!.map((v) => v.toJson().removeNull()).toList();
    }
    if (customer != null) {
      data['customer'] = customer!.toJson().removeNull();
    }
    if (table != null) {
      data['table'] = table!.toJson().removeNull();
    }
    if (products != null) {
      data['products'] = products!.map((v) => v.toJson().removeNull()).toList();
    }
    if (waiters != null) {
      data['waiters'] = waiters!.map((v) => v.toJson().removeNull()).toList();
    }
    if (delivery != null) {
      data['delivery'] = delivery!.toJson().removeNull();
    }
    if (discount != null) {
      data['discount'] = discount!.toJson().removeNull();
    }
    if (promotion != null) {
      data['promotion'] = promotion!.toJson().removeNull();
    }
    if (charges != null) {
      data['charges'] = charges!.map((v) => v.toJson().removeNull()).toList();
    }
    if (coupon != null) {
      data['coupon'] = coupon!.toJson().removeNull();
    }
    if (giftCard != null) {
      data['giftCard'] = giftCard!.toJson().removeNull();
    }
    if (payments != null) {
      data['payments'] = payments!.map((v) => v.toJson().removeNull()).toList();
    }
    data['createdOn'] = createdOn;
    data['createdBy'] = createdBy;
    data['lastModifiedBy'] = lastModifiedBy;
    data['lastModifiedOn'] = lastModifiedOn;
    return data;
  }

  SendOrder.fromOrder(OrderC order) {
    posTransactionType = posTransactionType;
    orderType = order.orderType;
    orderSource = order.orderSource;
    masterOrderNo = 0;
    deviceOrderNo = 0;
    masterOrderId = "00000000-0000-0000-0000-000000000000";
    deviceOrderId = order.orderRef;
    casherNote = order.note;
    // invoiceNumber= order.invoiceNumber;
    callName = order.callName;
    callNumber = order.callNumber;
    openOn = order.startDate.toString();
    openBy = order.creatorBy?['id'];
    closeOn = order.endTime.toString();
    closeBy = order.closeBy?['id'];
    giftCardId = order.giftCard?.giftCardId;
    priceListId = order.priceListId;
    checksum = order.checksum;
    masterChecksum = order.masterChecksum;
    serverChecksum = order.serverChecksum;
    tillId = order.tillId;
    shiftId = order.shiftId;
    deviceId = order.deviceId;
    orderStatus = order.status;
    paymentStatus = order.paymentStatus;
    refundStatus = order.refundStatus;
    deliveryStatus = order.deliveryStatus;
    currencyId = order.currency?.id;
    currencyRate = order.currency?.exchangeRate;
    amount = order.subTotal;
    chargeAmount = order.totalCharge;
    discountAmount = order.priceDiscount;
    promotionAmount = order.pricePromotion;
    totalAmount = order.total;
    taxAmount = order.taxPrice;
    netAmount = order.totalTaxableAmt;
    paidAmount = order.totalPaid;
    roundingAmount = order.roundingAmount;
    tipAmount = order.tipAmount;
    donationAmount = order.donationAmount;
    donationForId = order.donationForId;
    supervisorId = order.supervisorId;
    reference = order.reference;
    parentOrderId = order.parentOrderId;
    // casherNote = order.casherNote;
    trackingStatusId = order.trackingStatusId;
    orderStatusTracking = order.orderStatusTracking;
    if (order.customer.target != null) {
      customer = SendCustomer.fromOrder(
          customer: order.customer.target!, sendAddress: order.address.target);
    }
    table = order.table;
    products = order.products
        .map((element) => Products.fromOrder(product: element))
        .toList();
    waiters = order.waiters;
    delivery = order.delivery;
    if (order.discount.target != null) {
      discount = SendDiscount.fromOrder(
        order: order,
        discount: order.discount.target!,
      );
    }
    if (order.promotion.target != null) {
      discount = SendDiscount.fromOrderPromotion(
        promotion: order.promotion.target!,
      );
    }
    charges = order.charges
        .map((element) => Sendcharges.fromOrder(
              charge: element,
            ))
        .toList();
    if (order.couponId != null) {
      coupon = SendCoupon.fromOrder(order: order);
    }
    giftCard = order.giftCard;
    payments = order.payments
        .map((element) => SendPayments.fromOrder(value: element))
        .toList();
    createdOn = order.createdOn;
    createdBy = order.createdBy;
    lastModifiedBy = order.lastModifiedBy;
    lastModifiedOn =
        DateTime.tryParse(order.lastModifiedOn.toString())?.toIso8601String();
  }
}

class OrderStatusTracking {
  int? status;
  String? notes;
  String? deviceCreatedOn;
  String? deviceCreatedBy;
  OrderStatusC? get getStatus =>
      status == null ? null : convertStringToOrderStatus(status!);

  OrderStatusTracking(
      {this.status, this.notes, this.deviceCreatedOn, this.deviceCreatedBy});

  OrderStatusTracking.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    notes = json['notes'];

    deviceCreatedOn = json['deviceCreatedOn'];
    deviceCreatedBy = json['deviceCreatedBy'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['notes'] = notes;
    data['deviceCreatedOn'] =
        DateTime.tryParse(deviceCreatedOn.toString())?.toIso8601String();
    data['deviceCreatedBy'] = deviceCreatedBy;
    return data;
  }
}

class SendCustomer {
  String? name;
  String? fName;
  String? mobile;
  String? email;
  String? contactName;
  String? taxNo;
  String? crNo;
  String? customerId;
  String? deviceCreatedOn;
  String? deviceCreatedBy;
  SendAddress? address;
  LoyaltyPoint? loyaltyPoint;

  SendCustomer(
      {this.name,
      this.fName,
      this.mobile,
      this.email,
      this.contactName,
      this.taxNo,
      this.crNo,
      this.customerId,
      this.deviceCreatedOn,
      this.deviceCreatedBy,
      this.address,
      this.loyaltyPoint});

  SendCustomer.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    fName = json['fName'];
    mobile = json['mobile'];
    email = json['email'];
    contactName = json['contactName'];
    taxNo = json['taxNo'];
    crNo = json['crNo'];
    customerId = json['customerId'];
    deviceCreatedOn = json['deviceCreatedOn'];
    deviceCreatedBy = json['deviceCreatedBy'];
    address =
        json['address'] != null ? SendAddress.fromJson(json['address']) : null;
    loyaltyPoint = json['loyaltyPoint'] != null
        ? LoyaltyPoint.fromJson(json['loyaltyPoint'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['fName'] = fName;
    data['mobile'] = mobile;
    data['email'] = email;
    data['contactName'] = contactName;
    data['taxNo'] = taxNo;
    data['crNo'] = crNo;
    data['customerId'] = customerId;
    data['deviceCreatedOn'] =
        DateTime.tryParse(deviceCreatedOn.toString())?.toIso8601String();
    data['deviceCreatedBy'] = deviceCreatedBy;
    if (address != null) {
      data['address'] = address!.toJson().removeNull();
    }
    if (loyaltyPoint != null) {
      data['loyaltyPoint'] = loyaltyPoint!.toJson().removeNull();
    }
    return data;
  }

  SendCustomer.fromOrder({required Customer customer, Address? sendAddress}) {
    name = customer.name;
    fName = customer.fName;
    mobile = customer.mobile;
    email = customer.email;
    contactName = customer.name;
    taxNo = customer.taxNumber;
    // crNo = customer.taxNumber;
    customerId = customer.id;
    deviceCreatedOn = customer.deviceCreatedOn;
    deviceCreatedBy = customer.deviceCreatedBy;

    if (sendAddress != null) {
      address = SendAddress.fromOrder(address: sendAddress);
    }
    // loyaltyPoint = customer.loyaltyPoint;
  }
}

class SendAddress {
  String? addressTypeId;
  String? zoneId;
  String? countryId;
  String? cityId;
  String? districtId;
  String? mainStreet;
  String? byStreet;
  String? buildingNo;
  String? floorNo;
  String? unitNo;
  String? additionNo;
  String? popularPlace;
  String? postalCode;
  String? zipCode;
  String? deviceCreatedOn;
  String? deviceCreatedBy;

  SendAddress(
      {this.addressTypeId,
      this.zoneId,
      this.countryId,
      this.cityId,
      this.districtId,
      this.mainStreet,
      this.byStreet,
      this.buildingNo,
      this.floorNo,
      this.unitNo,
      this.additionNo,
      this.popularPlace,
      this.postalCode,
      this.zipCode,
      this.deviceCreatedOn,
      this.deviceCreatedBy});

  SendAddress.fromJson(Map<String, dynamic> json) {
    addressTypeId = json['addressTypeId'];
    zoneId = json['zoneId'];
    countryId = json['countryId'];
    cityId = json['cityId'];
    districtId = json['districtId'];
    mainStreet = json['mainStreet'];
    byStreet = json['byStreet'];
    buildingNo = json['buildingNo'];
    floorNo = json['floorNo'];
    unitNo = json['unitNo'];
    additionNo = json['additionNo'];
    popularPlace = json['popularPlace'];
    postalCode = json['postalCode'];
    zipCode = json['zipCode'];
    deviceCreatedOn = json['deviceCreatedOn'];
    deviceCreatedBy = json['deviceCreatedBy'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['addressTypeId'] = addressTypeId;
    data['zoneId'] = zoneId;
    data['countryId'] = countryId;
    data['cityId'] = cityId;
    data['districtId'] = districtId;
    data['mainStreet'] = mainStreet;
    data['byStreet'] = byStreet;
    data['buildingNo'] = buildingNo;
    data['floorNo'] = floorNo;
    data['unitNo'] = unitNo;
    data['additionNo'] = additionNo;
    data['popularPlace'] = popularPlace;
    data['postalCode'] = postalCode;
    data['zipCode'] = zipCode;
    data['deviceCreatedOn'] =
        DateTime.tryParse(deviceCreatedOn.toString())?.toIso8601String();
    data['deviceCreatedBy'] = deviceCreatedBy;
    return data;
  }

  SendAddress.fromOrder({required Address address}) {
    addressTypeId = address.addressTypeId;
    // zoneId = address.zoneId;
    // countryId = address.countryId;
    // cityId = address.cityId;
    // districtId = address.districtId;
    mainStreet = address.mainStreet;
    byStreet = address.byStreet;
    buildingNo = address.buildingNo;
    floorNo = address.floor;
    // unitNo = address.unitNo;
    // additionNo = address.additionNo;
    popularPlace = address.popularPlace;
    // postalCode = address.postalCode;
    zipCode = address.zipCode;
    deviceCreatedOn = address.deviceCreatedOn;
    deviceCreatedBy = address.deviceCreatedBy;
  }
}

class LoyaltyPoint {
  bool? loyaltyPointsWereAdded;
  int? redeemedLoyaltyPoints;
  double? redeemedLoyaltyPointsAmount;
  int? calcLoyaltyPoints;
  String? deviceCreatedOn;
  String? deviceCreatedBy;

  LoyaltyPoint(
      {this.loyaltyPointsWereAdded,
      this.redeemedLoyaltyPoints,
      this.redeemedLoyaltyPointsAmount,
      this.calcLoyaltyPoints,
      this.deviceCreatedOn,
      this.deviceCreatedBy});

  LoyaltyPoint.fromJson(Map<String, dynamic> json) {
    loyaltyPointsWereAdded = json['loyaltyPointsWereAdded'];
    redeemedLoyaltyPoints = json['redeemedLoyaltyPoints'];
    redeemedLoyaltyPointsAmount = json['redeemedLoyaltyPointsAmount'];
    calcLoyaltyPoints = json['calcLoyaltyPoints'];
    deviceCreatedOn = json['deviceCreatedOn'];
    deviceCreatedBy = json['deviceCreatedBy'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['loyaltyPointsWereAdded'] = loyaltyPointsWereAdded;
    data['redeemedLoyaltyPoints'] = redeemedLoyaltyPoints;
    data['redeemedLoyaltyPointsAmount'] = redeemedLoyaltyPointsAmount;
    data['calcLoyaltyPoints'] = calcLoyaltyPoints;
    data['deviceCreatedOn'] =
        DateTime.tryParse(deviceCreatedOn.toString())?.toIso8601String();
    data['deviceCreatedBy'] = deviceCreatedBy;
    return data;
  }
}

class SendTable {
  String? tableId;
  int? guestCount;
  int? splitIndex;
  String? supervisorId;
  String? tableOrderStatus;
  String? deviceCreatedOn;
  String? deviceCreatedBy;

  SendTable(
      {this.tableId,
      this.guestCount,
      this.splitIndex,
      this.supervisorId,
      this.tableOrderStatus,
      this.deviceCreatedOn,
      this.deviceCreatedBy});

  SendTable.fromJson(Map<String, dynamic> json) {
    tableId = json['tableId'];
    guestCount = json['guestCount'];
    splitIndex = json['splitIndex'];
    supervisorId = json['supervisorId'];
    tableOrderStatus = json['tableOrderStatus'];
    deviceCreatedOn = json['deviceCreatedOn'];
    deviceCreatedBy = json['deviceCreatedBy'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['tableId'] = tableId;
    data['guestCount'] = guestCount;
    data['splitIndex'] = splitIndex;
    data['supervisorId'] = supervisorId;
    data['tableOrderStatus'] = tableOrderStatus;
    data['deviceCreatedOn'] =
        DateTime.tryParse(deviceCreatedOn.toString())?.toIso8601String();
    data['deviceCreatedBy'] = deviceCreatedBy;
    return data;
  }
}

//// Unit Price as define in product unit
/// [baseUnitPrice] -> Price
/// [discountPercentage] total of allowance of type discount  for one unit
/// [discountAmount] baseUnitPrice * discountPercentage
/// [chargePercentage] total of allowance of type charge  for one unit
/// [chargeAmount] baseUnitPrice * chargePercentage
/// net Unit Price after  apply  allowance for product unit without Tax
/// [netUnitPrice] [baseUnitPrice] +[chargeAmount] - [discountAmount]
/// [taxPercentage]  total TaxPercentage that apply to product unit
/// [taxAmount] = [unitPriceExclTax] * [taxPercentage]
/// [unitPriceInclTax] = [taxAmount] + [unitPriceExclTax]
/// [totalPriceAmount] = [netUnitPrice] * [quantity]
/// [totalDiscountAmount] = [discountAmount] * [quantity]
/// [totalchargeAmount] = [chargeAmount] * [quantity]
/// [totalNetPriceAmount] = [totalPriceAmount]+ [totalchargeAmount] - [totalDiscountAmount]
/// [totalTaxAmount] = [unitTaxAmount] * [quantity]
/// [lineTotalAmount] = [totalNetPriceAmount]+ [totalTaxAmount]

class Products {
  // new
  int? masterLineSequence;
  int? deviceLineSequence;
  String? masterLineId;
  String? deviceLineId;
  String? productId;
  String? productName;
  String? taxGroupId;
  double? quantity;
  double? freeQuantity;
  double? receivedQuantity;
  double? refundedQuantity;
  double? stockQuantity;
  double? unitPrice;
  double? unitPriceExclTax;
  double? totalPrice;
  double? totalPriceExclTax;
  double? chargeTotalPercentage;
  double? chargeUnitAmount;
  double? chargeUnitTaxAmount;
  double? chargeTotalAmount;
  double? chargeTotalTaxAmount;
  double? modifierOptionsUnitAmountExclTax;
  double? modifierOptionsUnitTaxAmount;
  double? modifierOptionsTotalPriceExclTax;
  double? modifierOptionsTotalTaxAmount;
  double? discountTotalPercentage;
  double? discountUnitAmount;
  double? discountTotalAmount;
  double? promotionTotalPercentage;
  double? promotionUnitAmount;
  double? promotionTotalAmount;
  double? timeEventTotalPercentage;
  double? timeEventUnitAmount;
  double? timeEventTotalAmount;
  double? netUnitPrice;
  double? netTotalPriceExclTax;
  double? taxPercentage;
  double? unitPriceTaxAmount;
  double? totalPriceTaxAmount;
  double? unitPriceInclTax;
  double? totalPriceInclTax;
  bool? priceIncludesTax;
  bool? canceled;
  String? canceledNote;
  String? productionReference;
  String? giftCardCode;
  String? casherNote;
  String? kitchenNote;
  String? deliveryNote;
  String? reservedNote;
  String? deviceCreatedOn;
  String? deviceCreatedBy;
  String? deviceId;
  String? branchId;
  SendUnit? unit;
  List<Sendcharges>? charges;
  List<SendTaxType>? taxInfo;
  SendDiscount? discount;
  SendPromotion? promotion;
  SendTimeEvent? timeEvent;

  // double? baseUnitPrice;
  // double? discountPercentage;
  // double? discountAmount;
  // double? chargePercentage;
  // double? chargeAmount;
  // double? unitNetPrice;
  // double? unitTaxPercentage;
  // double? unitTaxAmount;

  // double? totalPriceAmount;
  // double? totalDiscountAmount;
  // double? totalchargeAmount;
  // double? totalNetPriceAmount;
  // double? totalTaxAmount;
  // double? lineTotalAmount;

  // double? unitCost;
  // double? totalCost;
  // double? inventoryUnitCost;
  // double? inventoryTotalCost;

  // String? parentOrderLineId;
  // String? description;

  Products(
      {this.masterLineSequence,
      this.deviceLineSequence,
      this.masterLineId,
      this.deviceLineId,
      this.productId,
      this.productName,
      this.taxGroupId,
      this.quantity,
      this.freeQuantity,
      this.receivedQuantity,
      this.refundedQuantity,
      this.stockQuantity,
      this.unitPrice,
      this.unitPriceExclTax,
      this.totalPrice,
      this.totalPriceExclTax,
      this.chargeTotalPercentage,
      this.chargeUnitAmount,
      this.chargeUnitTaxAmount,
      this.chargeTotalAmount,
      this.chargeTotalTaxAmount,
      this.modifierOptionsUnitAmountExclTax,
      this.modifierOptionsUnitTaxAmount,
      this.modifierOptionsTotalPriceExclTax,
      this.modifierOptionsTotalTaxAmount,
      this.discountTotalPercentage,
      this.discountUnitAmount,
      this.discountTotalAmount,
      this.promotionTotalPercentage,
      this.promotionUnitAmount,
      this.promotionTotalAmount,
      this.timeEventTotalPercentage,
      this.timeEventUnitAmount,
      this.timeEventTotalAmount,
      this.netUnitPrice,
      this.netTotalPriceExclTax,
      this.taxPercentage,
      this.unitPriceTaxAmount,
      this.totalPriceTaxAmount,
      this.unitPriceInclTax,
      this.totalPriceInclTax,
      this.priceIncludesTax,
      this.canceled,
      this.canceledNote,
      this.productionReference,
      this.giftCardCode,
      this.casherNote,
      this.kitchenNote,
      this.deliveryNote,
      this.reservedNote,
      this.deviceCreatedOn,
      this.deviceCreatedBy,
      this.deviceId,
      this.branchId,
      this.unit,
      this.charges,
      this.taxInfo,
      this.discount,
      this.promotion,
      this.timeEvent});

  Products.fromJson(Map<String, dynamic> json) {
    masterLineSequence = json['masterLineSequence'];
    deviceLineSequence = json['deviceLineSequence'];
    masterLineId = json['masterLineId'];
    deviceLineId = json['deviceLineId'];
    productId = json['productId'];
    productName = json['productName'];
    taxGroupId = json['taxGroupId'];
    quantity = json['quantity'];
    freeQuantity = json['freeQuantity'];
    receivedQuantity = json['receivedQuantity'];
    priceIncludesTax = json['priceIncludesTax'];
    refundedQuantity = json['refundedQuantity'];
    stockQuantity = json['stockQuantity'];
    unitPrice = json['unitPrice'];
    unitPriceExclTax = json['unitPriceExclTax'];
    totalPrice = json['totalPrice'];
    totalPriceExclTax = json['totalPriceExclTax'];
    chargeTotalPercentage = json['chargeTotalPercentage'];
    chargeUnitAmount = json['chargeUnitAmount'];
    chargeUnitTaxAmount = json['chargeUnitTaxAmount'];
    chargeTotalAmount = json['chargeTotalAmount'];
    chargeTotalTaxAmount = json['chargeTotalTaxAmount'];
    modifierOptionsUnitAmountExclTax = json['modifierOptionsUnitAmountExclTax'];
    modifierOptionsUnitTaxAmount = json['modifierOptionsUnitTaxAmount'];
    modifierOptionsTotalPriceExclTax = json['modifierOptionsTotalPriceExclTax'];
    modifierOptionsTotalTaxAmount = json['modifierOptionsTotalTaxAmount'];
    discountTotalPercentage = json['discountTotalPercentage'];
    discountUnitAmount = json['discountUnitAmount'];
    discountTotalAmount = json['discountTotalAmount'];
    promotionTotalPercentage = json['promotionTotalPercentage'];
    promotionUnitAmount = json['promotionUnitAmount'];
    promotionTotalAmount = json['promotionTotalAmount'];
    timeEventTotalPercentage = json['timeEventTotalPercentage'];
    timeEventUnitAmount = json['timeEventUnitAmount'];
    timeEventTotalAmount = json['timeEventTotalAmount'];
    netUnitPrice = json['netUnitPrice'];
    netTotalPriceExclTax = json['netTotalPriceExclTax'];
    taxPercentage = json['taxPercentage'];
    unitPriceTaxAmount = json['unitPriceTaxAmount'];
    totalPriceTaxAmount = json['totalPriceTaxAmount'];
    unitPriceInclTax = json['unitPriceInclTax'];
    totalPriceInclTax = json['totalPriceInclTax'];
    priceIncludesTax = json['priceIncludesTax'];
    canceled = json['canceled'];
    canceledNote = json['canceledNote'];
    productionReference = json['productionReference'];
    giftCardCode = json['giftCardCode'];
    casherNote = json['casherNote'];
    kitchenNote = json['kitchenNote'];
    deliveryNote = json['deliveryNote'];
    reservedNote = json['reservedNote'];
    deviceCreatedOn = json['deviceCreatedOn'];
    deviceCreatedBy = json['deviceCreatedBy'];
    deviceId = json['deviceId'];
    branchId = json['branchId'];
    if (json['taxInfo'] != null) {
      taxInfo = [];
      json['taxInfo'].forEach((e) => SendTaxType.fromJson(e));
    }
    unit = json['unit'] != null ? SendUnit.fromJson(json['unit']) : null;
    stockQuantity = json['stockQuantity'];
    quantity = json['quantity'];
    freeQuantity = json['freeQuantity'];
    unitPriceInclTax = json['unitPriceInclTax'];
    discount = json['discount'] != null
        ? SendDiscount.fromJson(json['discount'])
        : null;
    promotion = json['promotion'] != null
        ? SendPromotion.fromJson(json['promotion'])
        : null;
    timeEvent = json['timeEvent'] != null
        ? SendTimeEvent.fromJson(json['timeEvent'])
        : null;
    if (json['charges'] != null) {
      charges = <Sendcharges>[];
      json['charges'].forEach((v) {
        charges!.add(Sendcharges.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['masterLineSequence'] = masterLineSequence;
    data['deviceLineSequence'] = deviceLineSequence;
    data['masterLineId'] = masterLineId;
    data['deviceLineId'] = deviceLineId;
    data['productId'] = productId;
    data['productName'] = productName;
    data['taxGroupId'] = taxGroupId;
    data['quantity'] = quantity;
    data['freeQuantity'] = freeQuantity;
    data['receivedQuantity'] = receivedQuantity;
    data['refundedQuantity'] = refundedQuantity;
    data['stockQuantity'] = stockQuantity;
    data['unitPrice'] = unitPrice;
    data['unitPriceExclTax'] = unitPriceExclTax;
    data['totalPrice'] = totalPrice;
    data['totalPriceExclTax'] = totalPriceExclTax;
    data['chargeTotalPercentage'] = chargeTotalPercentage;
    data['chargeUnitAmount'] = chargeUnitAmount;
    data['chargeUnitTaxAmount'] = chargeUnitTaxAmount;
    data['chargeTotalAmount'] = chargeTotalAmount;
    data['chargeTotalTaxAmount'] = chargeTotalTaxAmount;
    data['modifierOptionsUnitAmountExclTax'] = modifierOptionsUnitAmountExclTax;
    data['modifierOptionsUnitTaxAmount'] = modifierOptionsUnitTaxAmount;
    data['modifierOptionsTotalPriceExclTax'] = modifierOptionsTotalPriceExclTax;
    data['modifierOptionsTotalTaxAmount'] = modifierOptionsTotalTaxAmount;
    data['discountTotalPercentage'] = discountTotalPercentage;
    data['discountUnitAmount'] = discountUnitAmount;
    data['discountTotalAmount'] = discountTotalAmount;
    data['promotionTotalPercentage'] = promotionTotalPercentage;
    data['promotionUnitAmount'] = promotionUnitAmount;
    data['promotionTotalAmount'] = promotionTotalAmount;
    data['timeEventTotalPercentage'] = timeEventTotalPercentage;
    data['timeEventUnitAmount'] = timeEventUnitAmount;
    data['timeEventTotalAmount'] = timeEventTotalAmount;
    data['netUnitPrice'] = netUnitPrice;
    data['netTotalPriceExclTax'] = netTotalPriceExclTax;
    data['taxPercentage'] = taxPercentage;
    data['unitPriceTaxAmount'] = unitPriceTaxAmount;
    data['totalPriceTaxAmount'] = totalPriceTaxAmount;
    data['unitPriceInclTax'] = unitPriceInclTax;
    data['totalPriceInclTax'] = totalPriceInclTax;
    data['priceIncludesTax'] = priceIncludesTax;
    data['canceled'] = canceled;
    data['canceledNote'] = canceledNote;
    data['productionReference'] = productionReference;
    data['giftCardCode'] = giftCardCode;
    data['casherNote'] = casherNote;
    data['kitchenNote'] = kitchenNote;
    data['deliveryNote'] = deliveryNote;
    data['reservedNote'] = reservedNote;
    data['deviceCreatedOn'] =
        DateTime.tryParse(deviceCreatedOn.toString())?.toIso8601String();
    data['deviceCreatedBy'] = deviceCreatedBy;
    data['deviceId'] = deviceId;
    data['branchId'] = branchId;

    ///
    if (taxInfo != null) {
      data['taxInfo'] = taxInfo!.map((e) => e.toJson().removeNull()).toList();
    }
    if (unit != null) {
      data['unit'] = unit!.toJson().removeNull();
    }
    if (discount != null) {
      data['discount'] = discount!.toJson().removeNull();
    }
    if (promotion != null) {
      data['promotion'] = promotion!.toJson().removeNull();
    }
    if (timeEvent != null) {
      data['timeEvent'] = timeEvent!.toJson().removeNull();
    }
    if (charges != null) {
      data['charges'] = charges!.map((v) => v.toJson().removeNull()).toList();
    }

    return data;
  }

  Products.fromOrder({
    required AppliedProduct product,
  }) {
    /// TODO :: deviceLineSequence
    /// masterLineSequence
    /// deviceLineSequence
    deviceLineSequence = 0;
    masterLineSequence = 0;
    masterLineId = product.prodRef;
    deviceLineId = product.prodRef;
    productId = product.product.target?.id;
    productName = product.product.target?.getName;
    taxGroupId = product.taxInfo.target?.taxGroupId;
    quantity = product.quantity;
    freeQuantity = product.freeQuantity;
    receivedQuantity = product.receivedQuantity;
    refundedQuantity = product.refundedQuantity;
    unitPrice = product.unitPrice;
    unitPriceExclTax = product.unitPriceExclTax;
    totalPrice = product.totalPrice;
    totalPriceExclTax = product.totalPriceExclTax;
    chargeTotalPercentage = product.chargeTotalPercentage;
    chargeUnitAmount = product.chargeUnitAmount;
    chargeUnitTaxAmount = product.chargeUnitTaxAmount;
    chargeTotalAmount = product.chargeTotalAmount;
    chargeTotalTaxAmount = product.chargeTotalTaxAmount;
    modifierOptionsUnitAmountExclTax = product.modifierOptionsUnitAmountExclTax;
    modifierOptionsUnitTaxAmount = product.modifierOptionsUnitTaxAmount;
    modifierOptionsTotalPriceExclTax = product.modifierOptionsTotalPriceExclTax;
    modifierOptionsTotalTaxAmount = product.modifierOptionsTotalTaxAmount;
    discountTotalPercentage = product.discountTotalPercentage;
    discountUnitAmount = product.discountUnitAmount;
    discountTotalAmount = product.discountTotalAmount;
    promotionTotalPercentage = product.promotionTotalPercentage;
    promotionUnitAmount = product.promotionUnitAmount;
    promotionTotalAmount = product.promotionTotalAmount;
    timeEventTotalPercentage = product.timeEventTotalPercentage;
    timeEventUnitAmount = product.timeEventUnitAmount;
    timeEventTotalAmount = product.timeEventTotalAmount;
    netUnitPrice = product.netUnitPrice;
    netTotalPriceExclTax = product.netTotalPriceExclTax;
    taxPercentage = product.taxPercentage;
    unitPriceTaxAmount = product.unitPriceTaxAmount;
    totalPriceTaxAmount = product.totalPriceTaxAmount;
    unitPriceInclTax = product.unitPriceInclTax;
    totalPriceInclTax = product.totalPriceInclTax;
    priceIncludesTax = product.priceIncludesTax;

    priceIncludesTax = product.priceWithTax;
    if (product.taxInfo.target != null) {
      taxInfo = product.taxInfo.target?.values
          ?.map((e) => SendTaxType.fromOrder(
              taxValue: e, taxAmount: product.taxableAmt ?? 0))
          .toList();
    }
    if (product.unit.target != null) {
      unit = SendUnit.fromOrder(
        product: product,
      );
    }

    if (discount != null) {
      // discountAmount =
      //     (product.priceDiscount ?? 0) + (product.pricePromotion ?? 0);
      // discountPercentage = product.discount.target!.discountPercentage;
    }

    //// Todo :: Add charge
    ///
    ///
    if (product.charges != null) {
      charges = product.charges!
          .map((e) => Sendcharges.fromOrder(charge: e))
          .toList();
    }

    if (discount != null) {
      discount = SendDiscount.fromOrderProduct(
        product: product,
        discount: product.discount.target!,
      );
    }
    if (promotion != null) {
      promotion = SendPromotion.fromOrder(promotion: product.promotion.target!);
    }
    if (timeEvent != null) {
      timeEvent = SendTimeEvent.fromOrder(event: product.event.target!);
    }
    canceled = false;
    canceledNote = product.msgCansel;
    productionReference = product.prodRef;
    if (product.product.target?.getProductType == ProductType.giftCard) {
      giftCardCode = product.giftCardCode;
    }
    casherNote = product.note;
    kitchenNote = product.kitchenInfo?.reason;
    deliveryNote = product.deliveryNote;
    reservedNote = product.reservedNote;
    deviceCreatedOn = product.deviceCreatedOn;
    deviceCreatedBy = product.deviceCreatedBy;
  }
}

// class SendTaxGroup {
//   String? id;
//   List<SendTaxTypes>? taxTypes;

//   SendTaxGroup({this.id, this.taxTypes});

//   SendTaxGroup.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     if (json['taxTypes'] != null) {
//       taxTypes = <SendTaxTypes>[];
//       json['taxTypes'].forEach((v) {
//         taxTypes!.add(SendTaxTypes.fromJson(v));
//       });
//     }
//   }
//   SendTaxGroup.fromOrder({required TaxInfo taxInfo}) {
//     id = taxInfo.taxGroupId;
//     if (taxInfo.values != null) {
//       taxTypes = <SendTaxTypes>[];
//       taxInfo.values!.forEach((element) {
//         taxTypes!.add(SendTaxTypes.fromOrder(tax: element));
//       });
//     }
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['id'] = id;
//     if (taxTypes != null) {
//       data['taxTypes'] = taxTypes!.map((v) => v.toJson().removeNull()).toList();
//     }
//     return data;
//   }
// }

// class SendTaxTypes {
//   String? id;
//   double? taxableAmount;
//   double? percent;
//   double? value;
//   double? amount;
//   String? deviceCreatedOn;
//   String? deviceCreatedBy;

//   SendTaxTypes(
//       {this.id,
//       this.taxableAmount,
//       this.percent,
//       this.value,
//       this.amount,
//       this.deviceCreatedOn,
//       this.deviceCreatedBy});

//   SendTaxTypes.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     taxableAmount = json['taxableAmount'];
//     percent = json['percent'];
//     value = json['value'];
//     amount = json['amount'];
//     deviceCreatedOn = json['deviceCreatedOn'];
//     deviceCreatedBy = json['deviceCreatedBy'];
//   }

//   SendTaxTypes.fromOrder({required TaxValue tax}) {
//     id = tax.taxId;
//     // taxableAmount = value.;
//     percent = tax.taxPercentage;
//     value = tax.taxPercentage;
//     amount = tax.value;
//     deviceCreatedOn = tax.deviceCreatedOn;
//     deviceCreatedBy = tax.deviceCreatedBy;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['id'] = id;
//     data['taxableAmount'] = taxableAmount;
//     data['percent'] = percent;
//     data['value'] = value;
//     data['amount'] = amount;
//     data['deviceCreatedOn'] =
//         DateTime.tryParse(deviceCreatedOn.toString())?.toIso8601String();
//     data['deviceCreatedBy'] = deviceCreatedBy;
//     return data;
//   }
// }

class SendUnit {
  String? unitId;
  double? price;
  String? barcode;
  double? factor;
  double? cost;
  SendPriceList? priceList;
  List<SendModifiers>? modifiers;
  String? deviceCreatedOn;
  String? deviceCreatedBy;

  SendUnit({
    this.unitId,
    this.price,
    this.barcode,
    this.factor,
    this.cost,
    this.priceList,
    this.modifiers,
    this.deviceCreatedOn,
    this.deviceCreatedBy,
  });

  SendUnit.fromJson(Map<String, dynamic> json) {
    unitId = json['unitId'];
    price = json['price'];
    barcode = json['barcode'];
    factor = json['factor'];
    cost = json['cost'];
    priceList = json['priceList'] != null
        ? SendPriceList.fromJson(json['priceList'])
        : null;
    if (json['modifiers'] != null) {
      modifiers = <SendModifiers>[];
      json['modifiers'].forEach((v) {
        modifiers!.add(SendModifiers.fromJson(v));
      });
    }
    deviceCreatedOn = json['deviceCreatedOn'];
    deviceCreatedBy = json['deviceCreatedBy'];
  }

  SendUnit.fromOrder({
    required AppliedProduct product,
  }) {
    unitId = product.unit.target?.id;
    price = product.unit.target?.price;
    barcode = product.unit.target?.barcode;
    factor = product.unit.target?.factor;
    cost = product.unit.target?.cost;
    priceList = product.priceList;
    if (product.appliedModifer.isNotEmpty) {
      modifiers = <SendModifiers>[];
      product.appliedModifer.forEach((element) {
        modifiers!.add(SendModifiers.fromOrder(modifier: element));
      });
    }

    deviceCreatedOn = product.unit.target?.deviceCreatedOn;
    deviceCreatedBy = product.unit.target?.deviceCreatedBy;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['unitId'] = unitId;
    data['price'] = price.toString();
    data['barcode'] = barcode;
    data['factor'] = factor;
    data['cost'] = cost;
    if (priceList != null) {
      data['priceList'] = priceList!.toJson().removeNull();
    }
    if (modifiers != null) {
      data['modifiers'] =
          modifiers!.map((v) => v.toJson().removeNull()).toList();
    }
    data['deviceCreatedOn'] =
        DateTime.tryParse(deviceCreatedOn.toString())?.toIso8601String();
    data['deviceCreatedBy'] = deviceCreatedBy;
    return data;
  }
}

class SendPriceList {
  String? priceListId;
  double? price;
  SendSlap? slap;
  String? deviceCreatedOn;
  String? deviceCreatedBy;

  SendPriceList(
      {this.priceListId,
      this.price,
      this.slap,
      this.deviceCreatedOn,
      this.deviceCreatedBy});

  SendPriceList.fromJson(Map<String, dynamic> json) {
    priceListId = json['priceListId'];
    price = json['price'];
    slap = json['slap'] != null ? SendSlap.fromJson(json['slap']) : null;
    deviceCreatedOn = json['deviceCreatedOn'];
    deviceCreatedBy = json['deviceCreatedBy'];
  }

  SendPriceList.fromOrder({
    required PriceList priceList,
  }) {}

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['priceListId'] = priceListId;
    data['price'] = price;
    if (slap != null) {
      data['slap'] = slap!.toJson().removeNull();
    }
    data['deviceCreatedOn'] =
        DateTime.tryParse(deviceCreatedOn.toString())?.toIso8601String();
    data['deviceCreatedBy'] = deviceCreatedBy;
    return data;
  }
}

class SendSlap {
  String? slapId;
  double? price;
  double? fromQuantity;
  double? toQuantity;
  String? timeEventId;
  String? deviceCreatedOn;
  String? deviceCreatedBy;

  SendSlap(
      {this.slapId,
      this.price,
      this.fromQuantity,
      this.toQuantity,
      this.timeEventId,
      this.deviceCreatedOn,
      this.deviceCreatedBy});

  SendSlap.fromJson(Map<String, dynamic> json) {
    slapId = json['slapId'];
    price = json['price'];
    fromQuantity = json['fromQuantity'];
    toQuantity = json['toQuantity'];
    timeEventId = json['timeEventId'];
    deviceCreatedOn = json['deviceCreatedOn'];
    deviceCreatedBy = json['deviceCreatedBy'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['slapId'] = slapId;
    data['price'] = price;
    data['fromQuantity'] = fromQuantity;
    data['toQuantity'] = toQuantity;
    data['timeEventId'] = timeEventId;
    data['deviceCreatedOn'] =
        DateTime.tryParse(deviceCreatedOn.toString())?.toIso8601String();
    data['deviceCreatedBy'] = deviceCreatedBy;
    return data;
  }
}

class SendModifiers {
  String? modifierId;
  bool? unique;
  List<SendOptions>? options;
  String? deviceCreatedOn;
  String? deviceCreatedBy;

  SendModifiers(
      {this.modifierId,
      this.unique,
      this.options,
      this.deviceCreatedOn,
      this.deviceCreatedBy});

  SendModifiers.fromJson(Map<String, dynamic> json) {
    modifierId = json['modifierId'];
    unique = json['unique'];
    if (json['options'] != null) {
      options = <SendOptions>[];
      json['options'].forEach((v) {
        options!.add(SendOptions.fromJson(v));
      });
    }
    deviceCreatedOn = json['deviceCreatedOn'];
    deviceCreatedBy = json['deviceCreatedBy'];
  }
  SendModifiers.fromOrder({
    required AppliedModifer modifier,
  }) {
    modifierId = modifier.modifier.target?.id;
    unique = modifier.modifier.target?.isUnique;
    deviceCreatedBy = modifier.deviceCreatedBy;
    deviceCreatedOn = modifier.deviceCreatedOn;
    if (modifier.options.isNotEmpty) {
      options = modifier.options
          .map((v) => SendOptions.fromOrder(option: v))
          .toList();
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['modifierId'] = modifierId;
    data['unique'] = unique;
    if (options != null) {
      data['options'] = options!.map((v) => v.toJson().removeNull()).toList();
    }
    data['deviceCreatedOn'] =
        DateTime.tryParse(deviceCreatedOn.toString())?.toIso8601String();
    data['deviceCreatedBy'] = deviceCreatedBy;
    return data;
  }
}

class SendOptions {
  String? modifierOptionId;
  double? quantity;
  double? freeQuantity;
  double? amount;
  bool? isDefault;
  List<SendTaxType>? taxInfo;
  String? deviceCreatedOn;
  String? deviceCreatedBy;

  SendOptions(
      {this.modifierOptionId,
      this.quantity,
      this.freeQuantity,
      this.amount,
      this.isDefault,
      this.taxInfo,
      this.deviceCreatedOn,
      this.deviceCreatedBy});

  SendOptions.fromJson(Map<String, dynamic> json) {
    modifierOptionId = json['modifierOptionId'];
    quantity = json['quantity'];
    freeQuantity = json['freeQuantity'];
    amount = json['amount'];
    isDefault = json['isDefault'];
    if (json['taxInfo'] != null) {
      taxInfo = [];
      json['taxInfo'].forEach((e) => SendTaxType.fromJson(e));
    }
    deviceCreatedOn = json['deviceCreatedOn'];
    deviceCreatedBy = json['deviceCreatedBy'];
  }

  SendOptions.fromOrder({
    required AppliedOption option,
  }) {
    modifierOptionId = option.option.target?.id;
    quantity = option.quantity;
    freeQuantity = option.freeQuantity;
    amount = option.quantity;
    isDefault = option.option.target?.isDefault;
    if (option.taxInfo.target != null) {
      taxInfo = option.taxInfo.target?.values
          ?.map((e) => SendTaxType.fromOrder(
              taxValue: e, taxAmount: option.taxableAmt ?? 0))
          .toList();
    }
    deviceCreatedOn = option.deviceCreatedOn;
    deviceCreatedBy = option.deviceCreatedBy;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['modifierOptionId'] = modifierOptionId;
    data['quantity'] = quantity;
    data['freeQuantity'] = freeQuantity;
    data['amount'] = amount;
    data['isDefault'] = isDefault;
    data['deviceCreatedOn'] =
        DateTime.tryParse(deviceCreatedOn.toString())?.toIso8601String();
    data['deviceCreatedBy'] = deviceCreatedBy;
    return data;
  }
}

class SendDiscount {
  String? discountId;
  double? baseAmount;
  double? percent;
  double? value;
  double? amount;
  String? deviceCreatedOn;
  String? deviceCreatedBy;

  SendDiscount(
      {this.discountId,
      this.baseAmount,
      this.percent,
      this.value,
      this.amount,
      this.deviceCreatedOn,
      this.deviceCreatedBy});

  SendDiscount.fromJson(Map<String, dynamic> json) {
    discountId = json['discountId'];
    baseAmount = json['baseAmount'];
    percent = json['percent'];
    value = json['value'];
    amount = json['amount'];
    deviceCreatedOn = json['deviceCreatedOn'];
    deviceCreatedBy = json['deviceCreatedBy'];
  }
  SendDiscount.fromOrderProduct(
      {required AppliedProduct product, required Discount discount}) {
    discountId = discount.id;
    baseAmount = product.price;
    percent = discount.discountPercentage;
    value = discount.discountAmount;
    amount = product.priceDiscount;
    deviceCreatedOn = discount.deviceCreatedOn;
    deviceCreatedBy = discount.deviceCreatedBy;
  }
  SendDiscount.fromOrder({required OrderC order, required Discount discount}) {
    discountId = discount.id;
    baseAmount = order.subTotal;
    percent = discount.discountPercentage;
    value = discount.discountAmount;
    amount = order.priceDiscount;
    deviceCreatedOn = discount.deviceCreatedOn;
    deviceCreatedBy = discount.deviceCreatedBy;
  }
  SendDiscount.fromOrderPromotion({required Promotion promotion}) {
    // discountId = discount.discountId;
    // baseAmount = discount.baseAmount;
    // percent = discount.percent;
    // value = discount.value;
    // amount = discount.amount;
    // deviceCreatedOn = discount.deviceCreatedOn;
    // deviceCreatedBy = discount.deviceCreatedBy;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['discountId'] = discountId;
    data['baseAmount'] = baseAmount;
    data['percent'] = percent;
    data['value'] = value;
    data['amount'] = amount;
    data['deviceCreatedOn'] =
        DateTime.tryParse(deviceCreatedOn.toString())?.toIso8601String();
    data['deviceCreatedBy'] = deviceCreatedBy;
    return data;
  }
}

class SendPromotion {
  double? baseAmount;
  double? percent;
  double? value;
  double? amount;
  String? deviceCreatedOn;
  String? deviceCreatedBy;

  SendPromotion(
      {this.baseAmount,
      this.percent,
      this.value,
      this.amount,
      this.deviceCreatedOn,
      this.deviceCreatedBy});

  SendPromotion.fromJson(Map<String, dynamic> json) {
    baseAmount = json['baseAmount'];
    percent = json['percent'];
    value = json['value'];
    amount = json['amount'];
    deviceCreatedOn = json['deviceCreatedOn'];
    deviceCreatedBy = json['deviceCreatedBy'];
  }

  SendPromotion.fromOrder({required Promotion promotion}) {}

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['baseAmount'] = baseAmount;
    data['percent'] = percent;
    data['value'] = value;
    data['amount'] = amount;
    data['deviceCreatedOn'] =
        DateTime.tryParse(deviceCreatedOn.toString())?.toIso8601String();
    data['deviceCreatedBy'] = deviceCreatedBy;
    return data;
  }
}

class SendTimeEvent {
  String? timeEventId;
  double? baseAmount;
  double? percent;
  double? value;
  double? amount;
  String? deviceCreatedOn;
  String? deviceCreatedBy;

  SendTimeEvent(
      {this.timeEventId,
      this.baseAmount,
      this.percent,
      this.value,
      this.amount,
      this.deviceCreatedOn,
      this.deviceCreatedBy});

  SendTimeEvent.fromJson(Map<String, dynamic> json) {
    timeEventId = json['timeEventId'];
    baseAmount = json['baseAmount'];
    percent = json['percent'];
    value = json['value'];
    amount = json['amount'];
    deviceCreatedOn = json['deviceCreatedOn'];
    deviceCreatedBy = json['deviceCreatedBy'];
  }
  SendTimeEvent.fromOrder({required TimeEvent event}) {}

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['timeEventId'] = timeEventId;
    data['baseAmount'] = baseAmount;
    data['percent'] = percent;
    data['value'] = value;
    data['amount'] = amount;
    data['deviceCreatedOn'] =
        DateTime.tryParse(deviceCreatedOn.toString())?.toIso8601String();
    data['deviceCreatedBy'] = deviceCreatedBy;
    return data;
  }
}

class Sendcharges {
  String? chargeId;
  double? baseAmount;
  double? percent;
  double? value;
  double? amount;
  double? taxAmount;
  double? amountIncludeTax;
  List<SendTaxType>? taxInfo;
  String? deviceCreatedOn;
  String? deviceCreatedBy;

  Sendcharges(
      {this.chargeId,
      this.baseAmount,
      this.percent,
      this.value,
      this.amount,
      this.taxAmount,
      this.amountIncludeTax,
      this.taxInfo,
      this.deviceCreatedOn,
      this.deviceCreatedBy});

  Sendcharges.fromJson(Map<String, dynamic> json) {
    chargeId = json['chargeId'];
    baseAmount = json['baseAmount'];
    percent = json['percent'];
    value = json['value'];
    amount = json['amount'];
    taxAmount = json['taxAmount'];
    amountIncludeTax = json['amountIncludeTax'];

    if (json['taxInfo'] != null) {
      taxInfo = [];
      json['taxInfo'].forEach((e) => SendTaxType.fromJson(e));
    }

    deviceCreatedOn = json['deviceCreatedOn'];
    deviceCreatedBy = json['deviceCreatedBy'];
  }

  Sendcharges.fromOrder({
    required Charge charge,
  }) {
    chargeId = charge.id;
    // baseAmount = charge.;
    percent = charge.percentage;
    value = charge.value;
    // amount = charge.;
    // taxAmount = json['taxAmount'];
    // amountIncludeTax = json['amountIncludeTax'];

    // if (json['taxInfo'] != null) {
    //   taxInfo = [];
    //   json['taxInfo'].forEach((e) => SendTaxType.fromJson(e));
    // }

    // deviceCreatedOn = json['deviceCreatedOn'];
    // deviceCreatedBy = json['deviceCreatedBy'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['chargeId'] = chargeId;
    data['baseAmount'] = baseAmount;
    data['percent'] = percent;
    data['value'] = value;
    data['amount'] = amount;
    data['taxAmount'] = taxAmount;
    data['amountIncludeTax'] = amountIncludeTax;
    if (taxInfo != null) {
      data['taxInfo'] = taxInfo!.map((e) => e.toJson().removeNull()).toList();
    }
    data['deviceCreatedOn'] =
        DateTime.tryParse(deviceCreatedOn.toString())?.toIso8601String();
    data['deviceCreatedBy'] = deviceCreatedBy;
    return data;
  }
}

class Waiters {
  String? waiterId;
  String? deviceCreatedOn;
  String? deviceCreatedBy;

  Waiters({this.waiterId, this.deviceCreatedOn, this.deviceCreatedBy});

  Waiters.fromJson(Map<String, dynamic> json) {
    waiterId = json['waiterId'];
    deviceCreatedOn = json['deviceCreatedOn'];
    deviceCreatedBy = json['deviceCreatedBy'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['waiterId'] = waiterId;
    data['deviceCreatedOn'] =
        DateTime.tryParse(deviceCreatedOn.toString())?.toIso8601String();
    data['deviceCreatedBy'] = deviceCreatedBy;
    return data;
  }
}

class SendDelivery {
  String? deliveryCompanyId;
  String? externalReference;
  String? driverId;
  double? charge;
  double? discount;
  double? netAmount;
  String? expectedDeliveryDate;
  String? deliveryDate;
  String? couponCode;
  String? latitude;
  String? longitude;
  String? wayBillId;
  String? deviceCreatedOn;
  String? deviceCreatedBy;

  SendDelivery(
      {this.deliveryCompanyId,
      this.externalReference,
      this.driverId,
      this.charge,
      this.discount,
      this.netAmount,
      this.expectedDeliveryDate,
      this.deliveryDate,
      this.couponCode,
      this.latitude,
      this.longitude,
      this.wayBillId,
      this.deviceCreatedOn,
      this.deviceCreatedBy});

  SendDelivery.fromJson(Map<String, dynamic> json) {
    deliveryCompanyId = json['deliveryCompanyId'];
    externalReference = json['externalReference'];
    driverId = json['driverId'];
    charge = json['charge'];
    discount = json['discount'];
    netAmount = json['netAmount'];
    expectedDeliveryDate = json['expectedDeliveryDate'];
    deliveryDate = json['deliveryDate'];
    couponCode = json['couponCode'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    wayBillId = json['wayBillId'];
    deviceCreatedOn = json['deviceCreatedOn'];
    deviceCreatedBy = json['deviceCreatedBy'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['deliveryCompanyId'] = deliveryCompanyId;
    data['externalReference'] = externalReference;
    data['driverId'] = driverId;
    data['charge'] = charge;
    data['discount'] = discount;
    data['netAmount'] = netAmount;
    data['expectedDeliveryDate'] = expectedDeliveryDate;
    data['deliveryDate'] = deliveryDate;
    data['couponCode'] = couponCode;
    data['latitude'] = latitude;
    data['longitude'] = longitude;
    data['wayBillId'] = wayBillId;
    data['deviceCreatedOn'] =
        DateTime.tryParse(deviceCreatedOn.toString())?.toIso8601String();
    data['deviceCreatedBy'] = deviceCreatedBy;
    return data;
  }
}

class SendCoupon {
  String? couponId;
  double? baseAmount;
  double? percent;
  double? value;
  double? amount;
  String? deviceCreatedOn;
  String? deviceCreatedBy;

  SendCoupon({
    this.couponId,
    this.baseAmount,
    this.percent,
    this.value,
    this.amount,
    this.deviceCreatedOn,
    this.deviceCreatedBy,
  });

  SendCoupon.fromJson(Map<String, dynamic> json) {
    couponId = json['couponId'];
    baseAmount = json['baseAmount'];
    percent = json['percent'];
    value = json['value'];
    amount = json['amount'];
    deviceCreatedOn = json['deviceCreatedOn'];
    deviceCreatedBy = json['deviceCreatedBy'];
  }

  SendCoupon.fromOrder({required OrderC order}) {
    couponId = order.couponId;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['couponId'] = couponId;
    data['baseAmount'] = baseAmount;
    data['percent'] = percent;
    data['value'] = value;
    data['amount'] = amount;
    data['deviceCreatedOn'] =
        DateTime.tryParse(deviceCreatedOn.toString())?.toIso8601String();
    data['deviceCreatedBy'] = deviceCreatedBy;
    return data;
  }
}

class SendGiftCard {
  String? giftCardId;
  double? baseAmount;
  double? percent;
  double? value;
  double? amount;
  String? deviceCreatedOn;
  String? deviceCreatedBy;

  SendGiftCard(
      {this.giftCardId,
      this.baseAmount,
      this.percent,
      this.value,
      this.amount,
      this.deviceCreatedOn,
      this.deviceCreatedBy});

  SendGiftCard.fromJson(Map<String, dynamic> json) {
    giftCardId = json['giftCardId'];
    baseAmount = json['baseAmount'];
    percent = json['percent'];
    value = json['value'];
    amount = json['amount'];
    deviceCreatedOn = json['deviceCreatedOn'];
    deviceCreatedBy = json['deviceCreatedBy'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['giftCardId'] = giftCardId;
    data['baseAmount'] = baseAmount;
    data['percent'] = percent;
    data['value'] = value;
    data['amount'] = amount;
    data['deviceCreatedOn'] =
        DateTime.tryParse(deviceCreatedOn.toString())?.toIso8601String();
    data['deviceCreatedBy'] = deviceCreatedBy;
    return data;
  }
}

class SendPayments {
  String? paymentType;
  String? paymentMethodId;
  double? netAmount;
  double? paidAmount;
  double? remainAmount;
  double? exchangeRate;
  double? currencyAmount;
  String? paymentStatus;
  String? currencyId;
  String? deviceCreatedOn;
  String? deviceCreatedBy;

  SendPayments(
      {this.paymentType,
      this.paymentMethodId,
      this.netAmount,
      this.paidAmount,
      this.remainAmount,
      this.exchangeRate,
      this.currencyAmount,
      this.paymentStatus,
      this.currencyId,
      this.deviceCreatedOn,
      this.deviceCreatedBy});

  SendPayments.fromJson(Map<String, dynamic> json) {
    paymentType = json['paymentType'];
    paymentMethodId = json['paymentMethodId'];
    netAmount = json['netAmount'];
    paidAmount = json['paidAmount'];
    remainAmount = json['remainAmount'];
    exchangeRate = json['exchangeRate'];
    currencyAmount = json['currencyAmount'];
    paymentStatus = json['paymentStatus'];
    currencyId = json['currencyId'];
    deviceCreatedOn = json['deviceCreatedOn'];
    deviceCreatedBy = json['deviceCreatedBy'];
  }

  SendPayments.fromOrder({required PaymentValue value}) {}

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['paymentType'] = paymentType;
    data['paymentMethodId'] = paymentMethodId;
    data['netAmount'] = netAmount;
    data['paidAmount'] = paidAmount;
    data['remainAmount'] = remainAmount;
    data['exchangeRate'] = exchangeRate;
    data['currencyAmount'] = currencyAmount;
    data['paymentStatus'] = paymentStatus;
    data['currencyId'] = currencyId;
    data['deviceCreatedOn'] =
        DateTime.tryParse(deviceCreatedOn.toString())?.toIso8601String();
    data['deviceCreatedBy'] = deviceCreatedBy;
    return data;
  }
}

class SendTaxType {
  String? taxTypeId;
  double? taxableAmount;
  double? taxPercentage;
  double? taxAmount;
  String? taxExemptionReasonId;
  String? deviceCreatedOn;
  String? deviceCreatedBy;

  SendTaxType({
    this.taxTypeId,
    this.taxableAmount,
    this.taxPercentage,
    this.taxAmount,
    this.taxExemptionReasonId,
    this.deviceCreatedOn,
    this.deviceCreatedBy,
  });

  SendTaxType.fromJson(Map<String, dynamic> json) {
    taxTypeId = json['taxTypeId'];
    taxableAmount = double.tryParse(json['taxableAmount']);
    taxPercentage = double.tryParse(json['taxPercentage']);
    taxAmount = double.tryParse(json['taxAmount']);
    taxExemptionReasonId = json['taxExemptionReasonId'];
    deviceCreatedOn = json['deviceCreatedOn'];
    deviceCreatedBy = json['deviceCreatedBy'];
  }

  SendTaxType.fromOrder(
      {required TaxValue taxValue, required double taxAmount}) {
    taxTypeId = taxValue.taxId;
    taxableAmount = taxValue.value;
    taxPercentage = taxValue.taxPercentage;
    taxAmount = taxAmount;
    deviceCreatedOn = taxValue.deviceCreatedOn;
    deviceCreatedBy = taxValue.deviceCreatedBy;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['taxTypeId'] = taxTypeId;
    data['taxableAmount'] = taxableAmount;
    data['taxPercentage'] = taxPercentage;
    data['taxAmount'] = taxAmount;
    data['taxExemptionReasonId'] = taxExemptionReasonId;
    data['deviceCreatedOn'] =
        DateTime.tryParse(deviceCreatedOn.toString())?.toIso8601String();
    data['deviceCreatedBy'] = deviceCreatedBy;
    return data;
  }
}
