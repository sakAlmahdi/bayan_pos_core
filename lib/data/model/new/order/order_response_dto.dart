import 'package:bayan_pos_core/data/enum/order_satate.dart';
import 'package:bayan_pos_core/data/enum/order_type.dart';
import 'package:bayan_pos_core/data/model/customer/customer.dart';
import 'package:bayan_pos_core/data/model/new/charge/order_charge_for_total_dto.dart';
import 'package:bayan_pos_core/data/model/new/charge/order_product_charge_dto.dart';
import 'package:bayan_pos_core/data/model/new/charge/manual_charge_response_dto.dart';
import 'package:bayan_pos_core/data/model/new/discount/order_product_discount_dto.dart';
import 'package:bayan_pos_core/data/model/new/order/promotion_gift_card_dto.dart';
import 'package:bayan_pos_core/data/model/new/order/payment/order_payment_dto.dart';
import 'package:bayan_pos_core/data/model/new/promotion/order_product_response_dto.dart';
import 'package:bayan_pos_core/data/model/new/promotion/order_promotion_applies_dto.dart';
import 'package:bayan_pos_core/data/model/new/tax/order_tax_type_view_dto.dart';

class OrderResponseDto {
  // الحقول المالية الأساسية
  double totalPrice;
  double? discountAmount;
  double netTotalPrice;
  double? chargeAmount;
  double? taxableAmount;
  double? taxAmount;
  double finalAmount;
  double? shippingAmount;
  double? shippingDiscountAmount;
  double? shippingDiscountPercentage;
  double? productDiscountAmount;
  double? discountPercentage;
  double? totalDiscountAmount;
  double? promotionDiscountAmount;
  double? timeEventDiscountAmount;
  double? timeEventChargeAmount;
  double? roundingDecimalAmount;
  String? note;
  String? trace;

  // الحقول التشغيلية من OrderEntityV2
  String? orderRef;
  String? deviceId;
  DateTime? startDate;
  DateTime? endTime;
  DateTime? timeOfReceipt;
  int? orderType;
  int? orderSource;
  int? status;
  int? deliveryStatus;
  int? paymentStatus;
  int? refundStatus;
  String? shiftId;
  String? tillId;
  String? tableId;
  String? tableCaption;
  int? numberVisitor;
  double? minimumReservationPrice;
  String? callName;
  String? callNumber;
  String? cancelReasonId;
  String? msgCancel;
  String? kitchenNote;
  String? casherNote;
  String? supervisorId;
  String? parentOrderId;
  int? splitIndex;
  String? checksum;
  String? masterChecksum;
  String? serverChecksum;
  double? totalCalories;
  bool? priceIncludeTax;

  // إضافة الرسوم اليدوية المحسوبة
  List<ManualChargeResponseDto>? manualCharges;
  double? manualChargesTotal;
  double? manualChargesTaxAmount;

  // الحقول المرتبطة بالعملاء والعناوين
  String? customerId;
  Map<String, dynamic>? customerJson;
  String? addressId;
  Map<String, dynamic>? addressJson;

  // الحقول المرتبطة بالعروض الترويجية
  String? promotionId;
  Map<String, dynamic>? promotionJson;
  Map<String, dynamic>? giftCardJson;

  // الحقول الوصفية
  String? createdOn;
  String? createdBy;
  String? lastModifiedOn;
  String? lastModifiedBy;

  // الحقول المرتبطة بالمنتجات والخصومات
  OrderProductDiscountDto? discount;
  List<OrderProductResponseDto>? products;
  OrderPromotionAppliesDto? promotion;
  PromotionGiftCardDto? giftCard;
  List<OrderProductChargeDto>? charges;
  List<OrderChargeForTotalDto>? chargesForTotals;
  List<OrderTaxTypeViewDto>? taxInfo;
  List<OrderPaymentDto>? payments;

  OrderType get getOrderType =>
      convertStringToOrderType(orderType) ?? OrderType.dineIn;
  OrderStatusC get getStatus => convertStringToOrderStatus(status ?? 0);

  double get getTotalDiscountAndPromotionAmount =>
      (productDiscountAmount ?? 0) + (promotionDiscountAmount ?? 0);
  Customer? get getCustomer => Customer.fromJson(customerJson ?? {});

  OrderResponseDto({
    required this.totalPrice,
    required this.netTotalPrice,
    required this.finalAmount,
    this.discountAmount,
    this.chargeAmount,
    this.taxableAmount,
    this.taxAmount,
    this.shippingAmount,
    this.shippingDiscountAmount,
    this.shippingDiscountPercentage,
    this.productDiscountAmount,
    this.discountPercentage,
    this.totalDiscountAmount,
    this.promotionDiscountAmount,
    this.timeEventDiscountAmount,
    this.timeEventChargeAmount,
    this.roundingDecimalAmount,
    this.note,
    this.orderRef,
    this.deviceId,
    this.startDate,
    this.endTime,
    this.timeOfReceipt,
    this.orderType,
    this.orderSource,
    this.status,
    this.deliveryStatus,
    this.paymentStatus,
    this.refundStatus,
    this.shiftId,
    this.tillId,
    this.tableId,
    this.tableCaption,
    this.numberVisitor,
    this.minimumReservationPrice,
    this.callName,
    this.callNumber,
    this.cancelReasonId,
    this.msgCancel,
    this.kitchenNote,
    this.casherNote,
    this.supervisorId,
    this.parentOrderId,
    this.splitIndex,
    this.checksum,
    this.masterChecksum,
    this.serverChecksum,
    this.totalCalories,
    this.priceIncludeTax,
    this.customerId,
    this.customerJson,
    this.addressId,
    this.addressJson,
    this.promotionId,
    this.promotionJson,
    this.giftCardJson,
    this.createdOn,
    this.createdBy,
    this.lastModifiedOn,
    this.lastModifiedBy,
    this.discount,
    this.products,
    this.promotion,
    this.giftCard,
    this.charges,
    this.chargesForTotals,
    this.taxInfo,
    this.payments,
    this.manualCharges,
    this.manualChargesTotal,
    this.manualChargesTaxAmount,
    this.trace,
  });

  factory OrderResponseDto.fromJson(Map<String, dynamic> json) {
    return OrderResponseDto(
      totalPrice: double.tryParse(json['totalPrice'].toString()) ?? 0,
      discountAmount: double.tryParse(json['discountAmount'].toString()) ?? 0,
      netTotalPrice: double.tryParse(json['netTotalPrice'].toString()) ?? 0,
      chargeAmount: double.tryParse(json['chargeAmount'].toString()) ?? 0,
      taxableAmount: double.tryParse(json['taxableAmount'].toString()) ?? 0,
      taxAmount: double.tryParse(json['taxAmount'].toString()) ?? 0,
      finalAmount: double.tryParse(json['finalAmount'].toString()) ?? 0,
      shippingAmount: double.tryParse(json['shippingAmount'].toString()) ?? 0,
      shippingDiscountAmount:
          double.tryParse(json['shippingDiscountAmount'].toString()) ?? 0,
      shippingDiscountPercentage:
          double.tryParse(json['shippingDiscountPercentage'].toString()) ?? 0,
      productDiscountAmount:
          double.tryParse(json['productDiscountAmount'].toString()) ?? 0,
      discountPercentage:
          double.tryParse(json['discountPercentage'].toString()) ?? 0,
      totalDiscountAmount: json['totalDiscountAmount'],
      promotionDiscountAmount: json['promotionDiscountAmount'],
      timeEventDiscountAmount: json['timeEventDiscountAmount'],
      timeEventChargeAmount: json['timeEventChargeAmount'],
      roundingDecimalAmount: json['roundingDecimalAmount'],
      note: json['note'],
      orderRef: json['orderRef'],
      deviceId: json['deviceId'],
      startDate:
          json['startDate'] != null ? DateTime.parse(json['startDate']) : null,
      endTime: json['endTime'] != null ? DateTime.parse(json['endTime']) : null,
      timeOfReceipt: json['timeOfReceipt'] != null
          ? DateTime.parse(json['timeOfReceipt'])
          : null,
      orderType: json['orderType'],
      orderSource: json['orderSource'],
      status: json['status'],
      deliveryStatus: json['deliveryStatus'],
      paymentStatus: json['paymentStatus'],
      refundStatus: json['refundStatus'],
      shiftId: json['shiftId'],
      tillId: json['tillId'],
      tableId: json['tableId'],
      tableCaption: json['tableCaption'],
      numberVisitor: json['numberVisitor'],
      minimumReservationPrice: json['minimumReservationPrice'],
      callName: json['callName'],
      callNumber: json['callNumber'],
      cancelReasonId: json['cancelReasonId'],
      msgCancel: json['msgCancel'],
      kitchenNote: json['kitchenNote'],
      casherNote: json['casherNote'],
      supervisorId: json['supervisorId'],
      parentOrderId: json['parentOrderId'],
      splitIndex: json['splitIndex'],
      checksum: json['checksum'],
      masterChecksum: json['masterChecksum'],
      serverChecksum: json['serverChecksum'],
      totalCalories: json['totalCalories'],
      priceIncludeTax: json['priceIncludeTax'],
      customerId: json['customerId'],
      customerJson: json['customerJson'],
      addressId: json['addressId'],
      addressJson: json['addressJson'],
      promotionId: json['promotionId'],
      promotionJson: json['promotionJson'],
      giftCardJson: json['giftCardJson'],
      createdOn: json['createdOn'],
      createdBy: json['createdBy'],
      lastModifiedOn: json['lastModifiedOn'],
      lastModifiedBy: json['lastModifiedBy'],
      discount: json['discount'] != null
          ? OrderProductDiscountDto.fromJson(json['discount'])
          : null,
      products: json['products'] != null
          ? (json['products'] as List)
              .map((e) => OrderProductResponseDto.fromJson(e))
              .toList()
          : null,
      promotion: json['promotion'] != null
          ? OrderPromotionAppliesDto.fromJson(json['promotion'])
          : null,
      giftCard: json['giftCard'] != null
          ? PromotionGiftCardDto.fromJson(json['giftCard'])
          : null,
      charges: json['charges'] != null
          ? (json['charges'] as List)
              .map((e) => OrderProductChargeDto.fromJson(e))
              .toList()
          : null,
      chargesForTotals: json['chargesForTotals'] != null
          ? (json['chargesForTotals'] as List)
              .map((e) => OrderChargeForTotalDto.fromJson(e))
              .toList()
          : null,
      taxInfo: json['taxInfo'] != null
          ? (json['taxInfo'] as List)
              .map((e) => OrderTaxTypeViewDto.fromJson(e))
              .toList()
          : null,
      payments: json['payments'] != null
          ? (json['payments'] as List)
              .map((e) => OrderPaymentDto.fromJson(e))
              .toList()
          : null,
      // إضافة الرسوم اليدوية
      manualCharges: json['manualCharges'] != null
          ? (json['manualCharges'] as List)
              .map((e) => ManualChargeResponseDto.fromJson(e))
              .toList()
          : null,
      manualChargesTotal: json['manualChargesTotal'] != null
          ? (json['manualChargesTotal'] as num).toDouble()
          : null,
      manualChargesTaxAmount: json['manualChargesTaxAmount'] != null
          ? (json['manualChargesTaxAmount'] as num).toDouble()
          : null,
      trace: json['trace'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'totalPrice': totalPrice,
      'discountAmount': discountAmount,
      'netTotalPrice': netTotalPrice,
      'chargeAmount': chargeAmount,
      'taxableAmount': taxableAmount,
      'taxAmount': taxAmount,
      'finalAmount': finalAmount,
      'shippingAmount': shippingAmount,
      'shippingDiscountAmount': shippingDiscountAmount,
      'shippingDiscountPercentage': shippingDiscountPercentage,
      'productDiscountAmount': productDiscountAmount,
      'discountPercentage': discountPercentage,
      'totalDiscountAmount': totalDiscountAmount,
      'promotionDiscountAmount': promotionDiscountAmount,
      'timeEventDiscountAmount': timeEventDiscountAmount,
      'timeEventChargeAmount': timeEventChargeAmount,
      'roundingDecimalAmount': roundingDecimalAmount,
      'note': note,
      'orderRef': orderRef,
      'deviceId': deviceId,
      'startDate': startDate?.toIso8601String(),
      'endTime': endTime?.toIso8601String(),
      'timeOfReceipt': timeOfReceipt?.toIso8601String(),
      'orderType': orderType,
      'orderSource': orderSource,
      'status': status,
      'deliveryStatus': deliveryStatus,
      'paymentStatus': paymentStatus,
      'refundStatus': refundStatus,
      'shiftId': shiftId,
      'tillId': tillId,
      'tableId': tableId,
      'tableCaption': tableCaption,
      'numberVisitor': numberVisitor,
      'minimumReservationPrice': minimumReservationPrice,
      'callName': callName,
      'callNumber': callNumber,
      'cancelReasonId': cancelReasonId,
      'msgCancel': msgCancel,
      'kitchenNote': kitchenNote,
      'casherNote': casherNote,
      'supervisorId': supervisorId,
      'parentOrderId': parentOrderId,
      'splitIndex': splitIndex,
      'checksum': checksum,
      'masterChecksum': masterChecksum,
      'serverChecksum': serverChecksum,
      'totalCalories': totalCalories,
      'priceIncludeTax': priceIncludeTax,
      'customerId': customerId,
      'customerJson': customerJson,
      'addressId': addressId,
      'addressJson': addressJson,
      'promotionId': promotionId,
      'promotionJson': promotionJson,
      'giftCardJson': giftCardJson,
      'createdOn': createdOn,
      'createdBy': createdBy,
      'lastModifiedOn': lastModifiedOn,
      'lastModifiedBy': lastModifiedBy,
      'discount': discount?.toJson(),
      'products': products?.map((e) => e.toJson()).toList(),
      'promotion': promotion?.toJson(),
      'giftCard': giftCard?.toJson(),
      'charges': charges?.map((e) => e.toJson()).toList(),
      'chargesForTotals': chargesForTotals?.map((e) => e.toJson()).toList(),
      'taxInfo': taxInfo?.map((e) => e.toJson()).toList(),
      'payments': payments?.map((e) => e.toJson()).toList(),
      // إضافة الرسوم اليدوية
      'manualCharges': manualCharges?.map((e) => e.toJson()).toList(),
      'manualChargesTotal': manualChargesTotal,
      'manualChargesTaxAmount': manualChargesTaxAmount,
      'trace': trace,
    };
  }

  OrderResponseDto copyWith({
    double? totalPrice,
    double? discountAmount,
    double? netTotalPrice,
    double? chargeAmount,
    double? taxableAmount,
    double? taxAmount,
    double? finalAmount,
    double? shippingAmount,
    double? shippingDiscountAmount,
    double? shippingDiscountPercentage,
    double? productDiscountAmount,
    double? discountPercentage,
    double? totalDiscountAmount,
    double? promotionDiscountAmount,
    double? timeEventDiscountAmount,
    double? timeEventChargeAmount,
    double? roundingDecimalAmount,
    String? note,
    String? orderRef,
    String? deviceId,
    DateTime? startDate,
    DateTime? endTime,
    DateTime? timeOfReceipt,
    int? orderType,
    int? orderSource,
    int? status,
    int? deliveryStatus,
    int? paymentStatus,
    int? refundStatus,
    String? shiftId,
    String? tillId,
    String? tableId,
    String? tableCaption,
    int? numberVisitor,
    double? minimumReservationPrice,
    String? callName,
    String? callNumber,
    String? cancelReasonId,
    String? msgCancel,
    String? kitchenNote,
    String? casherNote,
    String? supervisorId,
    String? parentOrderId,
    int? splitIndex,
    String? checksum,
    String? masterChecksum,
    String? serverChecksum,
    double? totalCalories,
    bool? priceIncludeTax,
    String? customerId,
    Map<String, dynamic>? customerJson,
    String? addressId,
    Map<String, dynamic>? addressJson,
    String? promotionId,
    Map<String, dynamic>? promotionJson,
    Map<String, dynamic>? giftCardJson,
    String? createdOn,
    String? createdBy,
    String? lastModifiedOn,
    String? lastModifiedBy,
    OrderProductDiscountDto? discount,
    List<OrderProductResponseDto>? products,
    OrderPromotionAppliesDto? promotion,
    PromotionGiftCardDto? giftCard,
    List<OrderProductChargeDto>? charges,
    List<OrderChargeForTotalDto>? chargesForTotals,
    List<OrderTaxTypeViewDto>? taxInfo,
    List<OrderPaymentDto>? payments,
    List<ManualChargeResponseDto>? manualCharges,
    double? manualChargesTotal,
    double? manualChargesTaxAmount,
    String? trace,
  }) {
    return OrderResponseDto(
      totalPrice: totalPrice ?? this.totalPrice,
      discountAmount: discountAmount ?? this.discountAmount,
      netTotalPrice: netTotalPrice ?? this.netTotalPrice,
      chargeAmount: chargeAmount ?? this.chargeAmount,
      taxableAmount: taxableAmount ?? this.taxableAmount,
      taxAmount: taxAmount ?? this.taxAmount,
      finalAmount: finalAmount ?? this.finalAmount,
      shippingAmount: shippingAmount ?? this.shippingAmount,
      shippingDiscountAmount:
          shippingDiscountAmount ?? this.shippingDiscountAmount,
      shippingDiscountPercentage:
          shippingDiscountPercentage ?? this.shippingDiscountPercentage,
      productDiscountAmount:
          productDiscountAmount ?? this.productDiscountAmount,
      discountPercentage: discountPercentage ?? this.discountPercentage,
      totalDiscountAmount: totalDiscountAmount ?? this.totalDiscountAmount,
      promotionDiscountAmount:
          promotionDiscountAmount ?? this.promotionDiscountAmount,
      timeEventDiscountAmount:
          timeEventDiscountAmount ?? this.timeEventDiscountAmount,
      timeEventChargeAmount:
          timeEventChargeAmount ?? this.timeEventChargeAmount,
      roundingDecimalAmount:
          roundingDecimalAmount ?? this.roundingDecimalAmount,
      note: note ?? this.note,
      orderRef: orderRef ?? this.orderRef,
      deviceId: deviceId ?? this.deviceId,
      startDate: startDate ?? this.startDate,
      endTime: endTime ?? this.endTime,
      timeOfReceipt: timeOfReceipt ?? this.timeOfReceipt,
      orderType: orderType ?? this.orderType,
      orderSource: orderSource ?? this.orderSource,
      status: status ?? this.status,
      deliveryStatus: deliveryStatus ?? this.deliveryStatus,
      paymentStatus: paymentStatus ?? this.paymentStatus,
      refundStatus: refundStatus ?? this.refundStatus,
      shiftId: shiftId ?? this.shiftId,
      tillId: tillId ?? this.tillId,
      tableId: tableId ?? this.tableId,
      tableCaption: tableCaption ?? this.tableCaption,
      numberVisitor: numberVisitor ?? this.numberVisitor,
      minimumReservationPrice:
          minimumReservationPrice ?? this.minimumReservationPrice,
      callName: callName ?? this.callName,
      callNumber: callNumber ?? this.callNumber,
      cancelReasonId: cancelReasonId ?? this.cancelReasonId,
      msgCancel: msgCancel ?? this.msgCancel,
      kitchenNote: kitchenNote ?? this.kitchenNote,
      casherNote: casherNote ?? this.casherNote,
      supervisorId: supervisorId ?? this.supervisorId,
      parentOrderId: parentOrderId ?? this.parentOrderId,
      splitIndex: splitIndex ?? this.splitIndex,
      checksum: checksum ?? this.checksum,
      masterChecksum: masterChecksum ?? this.masterChecksum,
      serverChecksum: serverChecksum ?? this.serverChecksum,
      totalCalories: totalCalories ?? this.totalCalories,
      priceIncludeTax: priceIncludeTax ?? this.priceIncludeTax,
      customerId: customerId ?? this.customerId,
      customerJson: customerJson ?? this.customerJson,
      addressId: addressId ?? this.addressId,
      addressJson: addressJson ?? this.addressJson,
      promotionId: promotionId ?? this.promotionId,
      promotionJson: promotionJson ?? this.promotionJson,
      giftCardJson: giftCardJson ?? this.giftCardJson,
      createdOn: createdOn ?? this.createdOn,
      createdBy: createdBy ?? this.createdBy,
      lastModifiedOn: lastModifiedOn ?? this.lastModifiedOn,
      lastModifiedBy: lastModifiedBy ?? this.lastModifiedBy,
      discount: discount ?? this.discount,
      products: products ?? this.products,
      promotion: promotion ?? this.promotion,
      giftCard: giftCard ?? this.giftCard,
      charges: charges ?? this.charges,
      chargesForTotals: chargesForTotals ?? this.chargesForTotals,
      taxInfo: taxInfo ?? this.taxInfo,
      payments: payments ?? this.payments,
      // إضافة الرسوم اليدوية
      manualCharges: manualCharges ?? this.manualCharges,
      manualChargesTotal: manualChargesTotal ?? this.manualChargesTotal,
      manualChargesTaxAmount:
          manualChargesTaxAmount ?? this.manualChargesTaxAmount,
      trace: trace ?? this.trace,
    );
  }

  void addTrace(String trace) {
    this.trace = "${this.trace}\n$trace";
  }
}
