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
  int? callNumber;
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
  double? feeAmount;
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
  List<SendFees>? fees;
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
      this.feeAmount,
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
      this.fees,
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
    feeAmount = json['feeAmount'];
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
    if (json['fees'] != null) {
      fees = <SendFees>[];
      json['fees'].forEach((v) {
        fees!.add(SendFees.fromJson(v));
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
    data['feeAmount'] = feeAmount;
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
    if (fees != null) {
      data['fees'] = fees!.map((v) => v.toJson().removeNull()).toList();
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
    deviceOrderId = "00000000-0000-0000-0000-000000000000";
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
    feeAmount = order.totalFee;
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
    fees =
        order.fees.map((element) => SendFees.fromOrder(fee: element)).toList();
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
    lastModifiedOn = order.lastModifiedOn;
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
      data['address'] = address!.toJson();
    }
    if (loyaltyPoint != null) {
      data['loyaltyPoint'] = loyaltyPoint!.toJson();
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

class Products {
  int? deviceLineSequence;
  String? productId;
  String? productName;
  bool? priceIncludesTax;
  SendTaxGroup? taxGroup;
  SendUnit? unit;
  double? stockQuantity;
  double? quantity;
  double? freeQuantity;
  double? baseUnitPrice;
  double? discountPercentage;
  double? discountAmount;
  double? feePercentage;
  double? feeAmount;
  double? unitNetPrice;
  double? unitTaxPercentage;
  double? unitTaxAmount;
  double? unitPriceInclTax;
  double? totalPriceAmount;
  double? totalDiscountAmount;
  double? totalFeeAmount;
  double? totalNetPriceAmount;
  double? totalTaxAmount;
  double? lineTotalAmount;
  SendDiscount? discount;
  SendPromotion? promotion;
  SendTimeEvent? timeEvent;
  List<SendFees>? fees;
  double? unitCost;
  double? totalCost;
  double? inventoryUnitCost;
  double? inventoryTotalCost;
  double? receivedQuantity;
  double? refundedQuantity;
  bool? canceled;
  String? canceledNote;
  String? productionReference;
  String? giftCardCode;
  String? parentOrderLineId;
  String? description;
  String? casherNote;
  String? kitchenNote;
  String? deliveryNote;
  String? reservedNote;
  String? deviceCreatedOn;
  String? deviceCreatedBy;

  Products(
      {this.deviceLineSequence,
      this.productId,
      this.productName,
      this.priceIncludesTax,
      this.taxGroup,
      this.unit,
      this.stockQuantity,
      this.quantity,
      this.freeQuantity,
      this.baseUnitPrice,
      this.discountPercentage,
      this.discountAmount,
      this.feePercentage,
      this.feeAmount,
      this.unitNetPrice,
      this.unitTaxPercentage,
      this.unitTaxAmount,
      this.unitPriceInclTax,
      this.totalPriceAmount,
      this.totalDiscountAmount,
      this.totalFeeAmount,
      this.totalNetPriceAmount,
      this.totalTaxAmount,
      this.lineTotalAmount,
      this.discount,
      this.promotion,
      this.timeEvent,
      this.fees,
      this.unitCost,
      this.totalCost,
      this.inventoryUnitCost,
      this.inventoryTotalCost,
      this.receivedQuantity,
      this.refundedQuantity,
      this.canceled,
      this.canceledNote,
      this.productionReference,
      this.giftCardCode,
      this.parentOrderLineId,
      this.description,
      this.casherNote,
      this.kitchenNote,
      this.deliveryNote,
      this.reservedNote,
      this.deviceCreatedOn,
      this.deviceCreatedBy});

  Products.fromJson(Map<String, dynamic> json) {
    deviceLineSequence = json['deviceLineSequence'];
    productId = json['productId'];
    productName = json['productName'];
    priceIncludesTax = json['priceIncludesTax'];
    taxGroup = json['taxGroup'] != null
        ? SendTaxGroup.fromJson(json['taxGroup'])
        : null;
    unit = json['unit'] != null ? SendUnit.fromJson(json['unit']) : null;
    stockQuantity = json['stockQuantity'];
    quantity = json['quantity'];
    freeQuantity = json['freeQuantity'];
    baseUnitPrice = json['baseUnitPrice'];
    discountPercentage = json['discountPercentage'];
    discountAmount = json['discountAmount'];
    feePercentage = json['feePercentage'];
    feeAmount = json['feeAmount'];
    unitNetPrice = json['unitNetPrice'];
    unitTaxPercentage = json['unitTaxPercentage'];
    unitTaxAmount = json['unitTaxAmount'];
    unitPriceInclTax = json['unitPriceInclTax'];
    totalPriceAmount = json['totalPriceAmount'];
    totalDiscountAmount = json['totalDiscountAmount'];
    totalFeeAmount = json['totalFeeAmount'];
    totalNetPriceAmount = json['totalNetPriceAmount'];
    totalTaxAmount = json['totalTaxAmount'];
    lineTotalAmount = json['lineTotalAmount'];
    discount = json['discount'] != null
        ? SendDiscount.fromJson(json['discount'])
        : null;
    promotion = json['promotion'] != null
        ? SendPromotion.fromJson(json['promotion'])
        : null;
    timeEvent = json['timeEvent'] != null
        ? SendTimeEvent.fromJson(json['timeEvent'])
        : null;
    if (json['fees'] != null) {
      fees = <SendFees>[];
      json['fees'].forEach((v) {
        fees!.add(SendFees.fromJson(v));
      });
    }
    unitCost = json['unitCost'];
    totalCost = json['totalCost'];
    inventoryUnitCost = json['inventoryUnitCost'];
    inventoryTotalCost = json['inventoryTotalCost'];
    receivedQuantity = json['receivedQuantity'];
    refundedQuantity = json['refundedQuantity'];
    canceled = json['canceled'];
    canceledNote = json['canceledNote'];
    productionReference = json['productionReference'];
    giftCardCode = json['giftCardCode'];
    parentOrderLineId = json['parentOrderLineId'];
    description = json['description'];
    casherNote = json['casherNote'];
    kitchenNote = json['kitchenNote'];
    deliveryNote = json['deliveryNote'];
    reservedNote = json['reservedNote'];
    deviceCreatedOn = json['deviceCreatedOn'];
    deviceCreatedBy = json['deviceCreatedBy'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['deviceLineSequence'] = deviceLineSequence;
    data['productId'] = productId;
    data['productName'] = productName;
    data['priceIncludesTax'] = priceIncludesTax;
    if (taxGroup != null) {
      data['taxGroup'] = taxGroup!.toJson();
    }
    if (unit != null) {
      data['unit'] = unit!.toJson();
    }
    data['stockQuantity'] = stockQuantity;
    data['quantity'] = quantity;
    data['freeQuantity'] = freeQuantity;
    data['baseUnitPrice'] = baseUnitPrice;
    data['discountPercentage'] = discountPercentage;
    data['discountAmount'] = discountAmount;
    data['feePercentage'] = feePercentage;
    data['feeAmount'] = feeAmount;
    data['unitNetPrice'] = unitNetPrice;
    data['unitTaxPercentage'] = unitTaxPercentage;
    data['unitTaxAmount'] = unitTaxAmount;
    data['unitPriceInclTax'] = unitPriceInclTax;
    data['totalPriceAmount'] = totalPriceAmount;
    data['totalDiscountAmount'] = totalDiscountAmount;
    data['totalFeeAmount'] = totalFeeAmount;
    data['totalNetPriceAmount'] = totalNetPriceAmount;
    data['totalTaxAmount'] = totalTaxAmount;
    data['lineTotalAmount'] = lineTotalAmount;
    if (discount != null) {
      data['discount'] = discount!.toJson();
    }
    if (promotion != null) {
      data['promotion'] = promotion!.toJson();
    }
    if (timeEvent != null) {
      data['timeEvent'] = timeEvent!.toJson();
    }
    if (fees != null) {
      data['fees'] = fees!.map((v) => v.toJson()).toList();
    }
    data['unitCost'] = unitCost;
    data['totalCost'] = totalCost;
    data['inventoryUnitCost'] = inventoryUnitCost;
    data['inventoryTotalCost'] = inventoryTotalCost;
    data['receivedQuantity'] = receivedQuantity;
    data['refundedQuantity'] = refundedQuantity;
    data['canceled'] = canceled;
    data['canceledNote'] = canceledNote;
    data['productionReference'] = productionReference;
    data['giftCardCode'] = giftCardCode;
    data['parentOrderLineId'] = parentOrderLineId;
    data['description'] = description;
    data['casherNote'] = casherNote;
    data['kitchenNote'] = kitchenNote;
    data['deliveryNote'] = deliveryNote;
    data['reservedNote'] = reservedNote;
    data['deviceCreatedOn'] =
        DateTime.tryParse(deviceCreatedOn.toString())?.toIso8601String();
    data['deviceCreatedBy'] = deviceCreatedBy;
    return data;
  }

  Products.fromOrder({
    required AppliedProduct product,
  }) {
    /// TODO :: deviceLineSequence
    deviceLineSequence = 0;
    productId = product.product.target?.id;
    productName = product.product.target?.getName;
    priceIncludesTax = product.priceWithTax;
    if (product.taxInfo.target != null) {
      taxGroup = SendTaxGroup.fromOrder(taxInfo: product.taxInfo.target!);
    }
    if (product.unit.target != null) {
      unit = SendUnit.fromOrder(
        product: product,
      );
    }
    stockQuantity = 0;
    quantity = product.quantity;
    freeQuantity = 0;
    baseUnitPrice = 0;
    if (discount != null) {
      discountAmount = product.priceDiscount;
      discountPercentage = product.discount.target!.discountPercentage;
    }

    //// Todo :: Add fee
    ///
    feePercentage = product.feesPercentage;
    feeAmount = product.feeAmount;
    unitNetPrice = product.price;
    unitTaxPercentage = product.taxPercentage;
    unitTaxAmount = product.getUnitPrice;
    unitPriceInclTax = (product.price ?? 0) + (product.taxPrice ?? 0);
    totalPriceAmount = 0;
    totalDiscountAmount = product.totalDiscount;
    totalFeeAmount = 0;
    totalNetPriceAmount = 0;
    totalTaxAmount = 0;
    lineTotalAmount = product.subTotal;

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

    unitCost = product.unit.target?.cost;
    totalCost = 0;
    inventoryUnitCost = 0;
    inventoryTotalCost = 0;
    receivedQuantity = 0;
    refundedQuantity = 0;
    canceled = false;
    canceledNote = product.msgCansel;
    productionReference = product.prodRef;
    if (product.product.target?.getProductType == ProductType.giftCard) {
      giftCardCode = product.giftCardCode;
    }
    parentOrderLineId = product.prodRef;
    description = "";
    casherNote = product.note;
    kitchenNote = product.kitchenInfo?.reason;
    deliveryNote = product.deliveryNote;
    reservedNote = product.reservedNote;
    deviceCreatedOn = product.deviceCreatedOn;
    deviceCreatedBy = product.deviceCreatedBy;
  }
}

class SendTaxGroup {
  String? id;
  List<SendTaxTypes>? taxTypes;

  SendTaxGroup({this.id, this.taxTypes});

  SendTaxGroup.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    if (json['taxTypes'] != null) {
      taxTypes = <SendTaxTypes>[];
      json['taxTypes'].forEach((v) {
        taxTypes!.add(SendTaxTypes.fromJson(v));
      });
    }
  }
  SendTaxGroup.fromOrder({required TaxInfo taxInfo}) {
    id = taxInfo.taxGroupId;
    if (taxInfo.values != null) {
      taxTypes = <SendTaxTypes>[];
      taxInfo.values!.forEach((element) {
        taxTypes!.add(SendTaxTypes.fromOrder(tax: element));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    if (taxTypes != null) {
      data['taxTypes'] = taxTypes!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class SendTaxTypes {
  String? id;
  double? taxableAmount;
  double? percent;
  double? value;
  double? amount;
  String? deviceCreatedOn;
  String? deviceCreatedBy;

  SendTaxTypes(
      {this.id,
      this.taxableAmount,
      this.percent,
      this.value,
      this.amount,
      this.deviceCreatedOn,
      this.deviceCreatedBy});

  SendTaxTypes.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    taxableAmount = json['taxableAmount'];
    percent = json['percent'];
    value = json['value'];
    amount = json['amount'];
    deviceCreatedOn = json['deviceCreatedOn'];
    deviceCreatedBy = json['deviceCreatedBy'];
  }

  SendTaxTypes.fromOrder({required TaxValue tax}) {
    id = tax.taxId;
    // taxableAmount = value.;
    percent = tax.taxPercentage;
    value = tax.taxPercentage;
    amount = tax.value;
    deviceCreatedOn = tax.deviceCreatedOn;
    deviceCreatedBy = tax.deviceCreatedBy;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['taxableAmount'] = taxableAmount;
    data['percent'] = percent;
    data['value'] = value;
    data['amount'] = amount;
    data['deviceCreatedOn'] =
        DateTime.tryParse(deviceCreatedOn.toString())?.toIso8601String();
    data['deviceCreatedBy'] = deviceCreatedBy;
    return data;
  }
}

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
    data['price'] = price;
    data['barcode'] = barcode;
    data['factor'] = factor;
    data['cost'] = cost;
    if (priceList != null) {
      data['priceList'] = priceList!.toJson();
    }
    if (modifiers != null) {
      data['modifiers'] = modifiers!.map((v) => v.toJson()).toList();
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
      data['slap'] = slap!.toJson();
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
      data['options'] = options!.map((v) => v.toJson()).toList();
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
  String? deviceCreatedOn;
  String? deviceCreatedBy;

  SendOptions(
      {this.modifierOptionId,
      this.quantity,
      this.freeQuantity,
      this.amount,
      this.isDefault,
      this.deviceCreatedOn,
      this.deviceCreatedBy});

  SendOptions.fromJson(Map<String, dynamic> json) {
    modifierOptionId = json['modifierOptionId'];
    quantity = json['quantity'];
    freeQuantity = json['freeQuantity'];
    amount = json['amount'];
    isDefault = json['isDefault'];
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

class SendFees {
  String? feeId;
  double? baseAmount;
  double? percent;
  double? value;
  double? amount;
  double? taxAmount;
  double? amountIncludeTax;
  SendTaxGroup? taxInfo;
  String? deviceCreatedOn;
  String? deviceCreatedBy;

  SendFees(
      {this.feeId,
      this.baseAmount,
      this.percent,
      this.value,
      this.amount,
      this.taxAmount,
      this.amountIncludeTax,
      this.taxInfo,
      this.deviceCreatedOn,
      this.deviceCreatedBy});

  SendFees.fromJson(Map<String, dynamic> json) {
    feeId = json['feeId'];
    baseAmount = json['baseAmount'];
    percent = json['percent'];
    value = json['value'];
    amount = json['amount'];
    taxAmount = json['taxAmount'];
    amountIncludeTax = json['amountIncludeTax'];
    taxInfo =
        json['taxInfo'] != null ? SendTaxGroup.fromJson(json['taxInfo']) : null;
    deviceCreatedOn = json['deviceCreatedOn'];
    deviceCreatedBy = json['deviceCreatedBy'];
  }

  SendFees.fromOrder({required Fee fee}) {}

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['feeId'] = feeId;
    data['baseAmount'] = baseAmount;
    data['percent'] = percent;
    data['value'] = value;
    data['amount'] = amount;
    data['taxAmount'] = taxAmount;
    data['amountIncludeTax'] = amountIncludeTax;
    if (taxInfo != null) {
      data['taxInfo'] = taxInfo!.toJson();
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
  double? fee;
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
      this.fee,
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
    fee = json['fee'];
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
    data['fee'] = fee;
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
