// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drift_db.dart';

// ignore_for_file: type=lint
class $OrderEntityTable extends OrderEntity
    with TableInfo<$OrderEntityTable, OrderEntityData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $OrderEntityTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _posTransactionTypeMeta =
      const VerificationMeta('posTransactionType');
  @override
  late final GeneratedColumn<int> posTransactionType = GeneratedColumn<int>(
      'pos_transaction_type', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _idSeqMeta = const VerificationMeta('idSeq');
  @override
  late final GeneratedColumn<int> idSeq = GeneratedColumn<int>(
      'id_seq', aliasedName, true,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _invoiceNumberMeta =
      const VerificationMeta('invoiceNumber');
  @override
  late final GeneratedColumn<String> invoiceNumber = GeneratedColumn<String>(
      'invoice_number', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _deviceIdMeta =
      const VerificationMeta('deviceId');
  @override
  late final GeneratedColumn<String> deviceId = GeneratedColumn<String>(
      'device_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _startDateMeta =
      const VerificationMeta('startDate');
  @override
  late final GeneratedColumn<DateTime> startDate = GeneratedColumn<DateTime>(
      'start_date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _timeOfReceiptMeta =
      const VerificationMeta('timeOfReceipt');
  @override
  late final GeneratedColumn<DateTime> timeOfReceipt =
      GeneratedColumn<DateTime>('time_of_receipt', aliasedName, true,
          type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _parentOrderIdMeta =
      const VerificationMeta('parentOrderId');
  @override
  late final GeneratedColumn<String> parentOrderId = GeneratedColumn<String>(
      'parent_order_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _splitIndexMeta =
      const VerificationMeta('splitIndex');
  @override
  late final GeneratedColumn<int> splitIndex = GeneratedColumn<int>(
      'split_index', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _orderRefMeta =
      const VerificationMeta('orderRef');
  @override
  late final GeneratedColumn<String> orderRef = GeneratedColumn<String>(
      'order_ref', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _callNameMeta =
      const VerificationMeta('callName');
  @override
  late final GeneratedColumn<String> callName = GeneratedColumn<String>(
      'call_name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _callNumberMeta =
      const VerificationMeta('callNumber');
  @override
  late final GeneratedColumn<int> callNumber = GeneratedColumn<int>(
      'call_number', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _orderTypeMeta =
      const VerificationMeta('orderType');
  @override
  late final GeneratedColumn<int> orderType = GeneratedColumn<int>(
      'order_type', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<int> status = GeneratedColumn<int>(
      'status', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _paymentStatusMeta =
      const VerificationMeta('paymentStatus');
  @override
  late final GeneratedColumn<int> paymentStatus = GeneratedColumn<int>(
      'payment_status', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _refundStatusMeta =
      const VerificationMeta('refundStatus');
  @override
  late final GeneratedColumn<int> refundStatus = GeneratedColumn<int>(
      'refund_status', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _deliveryStatusMeta =
      const VerificationMeta('deliveryStatus');
  @override
  late final GeneratedColumn<int> deliveryStatus = GeneratedColumn<int>(
      'delivery_status', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _orderSourceMeta =
      const VerificationMeta('orderSource');
  @override
  late final GeneratedColumn<int> orderSource = GeneratedColumn<int>(
      'order_source', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _endTimeMeta =
      const VerificationMeta('endTime');
  @override
  late final GeneratedColumn<DateTime> endTime = GeneratedColumn<DateTime>(
      'end_time', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _deliveryCompanyInfoIdMeta =
      const VerificationMeta('deliveryCompanyInfoId');
  @override
  late final GeneratedColumnWithTypeConverter<dynamic, String>
      deliveryCompanyInfoId = GeneratedColumn<String>(
              'delivery_company_info_id', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<dynamic>(
              $OrderEntityTable.$converterdeliveryCompanyInfoId);
  static const VerificationMeta _priceListIdMeta =
      const VerificationMeta('priceListId');
  @override
  late final GeneratedColumn<String> priceListId = GeneratedColumn<String>(
      'price_list_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _creatorByMeta =
      const VerificationMeta('creatorBy');
  @override
  late final GeneratedColumnWithTypeConverter<dynamic, String> creatorBy =
      GeneratedColumn<String>('creator_by', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<dynamic>($OrderEntityTable.$convertercreatorBy);
  static const VerificationMeta _closeByMeta =
      const VerificationMeta('closeBy');
  @override
  late final GeneratedColumnWithTypeConverter<dynamic, String> closeBy =
      GeneratedColumn<String>('close_by', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<dynamic>($OrderEntityTable.$convertercloseBy);
  static const VerificationMeta _tableIdMeta =
      const VerificationMeta('tableId');
  @override
  late final GeneratedColumn<String> tableId = GeneratedColumn<String>(
      'table_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _numberVistorMeta =
      const VerificationMeta('numberVistor');
  @override
  late final GeneratedColumn<int> numberVistor = GeneratedColumn<int>(
      'number_vistor', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _customerMeta =
      const VerificationMeta('customer');
  @override
  late final GeneratedColumnWithTypeConverter<dynamic, String> customer =
      GeneratedColumn<String>('customer', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<dynamic>($OrderEntityTable.$convertercustomer);
  static const VerificationMeta _addressMeta =
      const VerificationMeta('address');
  @override
  late final GeneratedColumnWithTypeConverter<dynamic, String> address =
      GeneratedColumn<String>('address', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<dynamic>($OrderEntityTable.$converteraddress);
  static const VerificationMeta _promotionMeta =
      const VerificationMeta('promotion');
  @override
  late final GeneratedColumnWithTypeConverter<dynamic, String> promotion =
      GeneratedColumn<String>('promotion', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<dynamic>($OrderEntityTable.$converterpromotion);
  static const VerificationMeta _discountMeta =
      const VerificationMeta('discount');
  @override
  late final GeneratedColumnWithTypeConverter<dynamic, String> discount =
      GeneratedColumn<String>('discount', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<dynamic>($OrderEntityTable.$converterdiscount);
  static const VerificationMeta _productsMeta =
      const VerificationMeta('products');
  @override
  late final GeneratedColumnWithTypeConverter<dynamic, String> products =
      GeneratedColumn<String>('products', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<dynamic>($OrderEntityTable.$converterproducts);
  static const VerificationMeta _priceDiscountMeta =
      const VerificationMeta('priceDiscount');
  @override
  late final GeneratedColumn<double> priceDiscount = GeneratedColumn<double>(
      'price_discount', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _pricePromotionMeta =
      const VerificationMeta('pricePromotion');
  @override
  late final GeneratedColumn<double> pricePromotion = GeneratedColumn<double>(
      'price_promotion', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _noteMeta = const VerificationMeta('note');
  @override
  late final GeneratedColumn<String> note = GeneratedColumn<String>(
      'note', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _kitchenNoteMeta =
      const VerificationMeta('kitchenNote');
  @override
  late final GeneratedColumn<String> kitchenNote = GeneratedColumn<String>(
      'kitchen_note', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _msgCanselMeta =
      const VerificationMeta('msgCansel');
  @override
  late final GeneratedColumn<String> msgCansel = GeneratedColumn<String>(
      'msg_cansel', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _subTotalMeta =
      const VerificationMeta('subTotal');
  @override
  late final GeneratedColumn<double> subTotal = GeneratedColumn<double>(
      'sub_total', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _chargesMeta =
      const VerificationMeta('charges');
  @override
  late final GeneratedColumnWithTypeConverter<dynamic, String> charges =
      GeneratedColumn<String>('charges', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<dynamic>($OrderEntityTable.$convertercharges);
  static const VerificationMeta _chargeValuesMeta =
      const VerificationMeta('chargeValues');
  @override
  late final GeneratedColumnWithTypeConverter<dynamic, String> chargeValues =
      GeneratedColumn<String>('charge_values', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<dynamic>($OrderEntityTable.$converterchargeValues);
  static const VerificationMeta _paymentsMeta =
      const VerificationMeta('payments');
  @override
  late final GeneratedColumnWithTypeConverter<dynamic, String> payments =
      GeneratedColumn<String>('payments', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<dynamic>($OrderEntityTable.$converterpayments);
  static const VerificationMeta _totalChargeMeta =
      const VerificationMeta('totalCharge');
  @override
  late final GeneratedColumn<double> totalCharge = GeneratedColumn<double>(
      'total_charge', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _taxPriceMeta =
      const VerificationMeta('taxPrice');
  @override
  late final GeneratedColumn<double> taxPrice = GeneratedColumn<double>(
      'tax_price', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _totalPaidMeta =
      const VerificationMeta('totalPaid');
  @override
  late final GeneratedColumn<double> totalPaid = GeneratedColumn<double>(
      'total_paid', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _checksumMeta =
      const VerificationMeta('checksum');
  @override
  late final GeneratedColumn<String> checksum = GeneratedColumn<String>(
      'checksum', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _masterChecksumMeta =
      const VerificationMeta('masterChecksum');
  @override
  late final GeneratedColumn<String> masterChecksum = GeneratedColumn<String>(
      'master_checksum', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _serverChecksumMeta =
      const VerificationMeta('serverChecksum');
  @override
  late final GeneratedColumn<String> serverChecksum = GeneratedColumn<String>(
      'server_checksum', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _shiftIdMeta =
      const VerificationMeta('shiftId');
  @override
  late final GeneratedColumn<String> shiftId = GeneratedColumn<String>(
      'shift_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _tillIdMeta = const VerificationMeta('tillId');
  @override
  late final GeneratedColumn<String> tillId = GeneratedColumn<String>(
      'till_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _totalDiscountForOrderAndProductMeta =
      const VerificationMeta('totalDiscountForOrderAndProduct');
  @override
  late final GeneratedColumn<double> totalDiscountForOrderAndProduct =
      GeneratedColumn<double>(
          'total_discount_for_order_and_product', aliasedName, true,
          type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _kitchenInfoMeta =
      const VerificationMeta('kitchenInfo');
  @override
  late final GeneratedColumnWithTypeConverter<dynamic, String> kitchenInfo =
      GeneratedColumn<String>('kitchen_info', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<dynamic>($OrderEntityTable.$converterkitchenInfo);
  static const VerificationMeta _currencyMeta =
      const VerificationMeta('currency');
  @override
  late final GeneratedColumnWithTypeConverter<dynamic, String> currency =
      GeneratedColumn<String>('currency', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<dynamic>($OrderEntityTable.$convertercurrency);
  static const VerificationMeta _paymentCurrencyMeta =
      const VerificationMeta('paymentCurrency');
  @override
  late final GeneratedColumnWithTypeConverter<dynamic, String> paymentCurrency =
      GeneratedColumn<String>('payment_currency', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<dynamic>($OrderEntityTable.$converterpaymentCurrency);
  static const VerificationMeta _minimumReservationPriceMeta =
      const VerificationMeta('minimumReservationPrice');
  @override
  late final GeneratedColumn<double> minimumReservationPrice =
      GeneratedColumn<double>('minimum_reservation_price', aliasedName, true,
          type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _giftCardMeta =
      const VerificationMeta('giftCard');
  @override
  late final GeneratedColumnWithTypeConverter<dynamic, String> giftCard =
      GeneratedColumn<String>('gift_card', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<dynamic>($OrderEntityTable.$convertergiftCard);
  static const VerificationMeta _roundingAmountMeta =
      const VerificationMeta('roundingAmount');
  @override
  late final GeneratedColumn<double> roundingAmount = GeneratedColumn<double>(
      'rounding_amount', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _tipAmountMeta =
      const VerificationMeta('tipAmount');
  @override
  late final GeneratedColumn<double> tipAmount = GeneratedColumn<double>(
      'tip_amount', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _donationAmountMeta =
      const VerificationMeta('donationAmount');
  @override
  late final GeneratedColumn<double> donationAmount = GeneratedColumn<double>(
      'donation_amount', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _donationForIdMeta =
      const VerificationMeta('donationForId');
  @override
  late final GeneratedColumn<String> donationForId = GeneratedColumn<String>(
      'donation_for_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _supervisorIdMeta =
      const VerificationMeta('supervisorId');
  @override
  late final GeneratedColumn<String> supervisorId = GeneratedColumn<String>(
      'supervisor_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _referenceMeta =
      const VerificationMeta('reference');
  @override
  late final GeneratedColumn<String> reference = GeneratedColumn<String>(
      'reference', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _trackingStatusIdMeta =
      const VerificationMeta('trackingStatusId');
  @override
  late final GeneratedColumn<String> trackingStatusId = GeneratedColumn<String>(
      'tracking_status_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _orderStatusTrackingMeta =
      const VerificationMeta('orderStatusTracking');
  @override
  late final GeneratedColumnWithTypeConverter<dynamic, String>
      orderStatusTracking = GeneratedColumn<String>(
              'order_status_tracking', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<dynamic>(
              $OrderEntityTable.$converterorderStatusTracking);
  static const VerificationMeta _waitersMeta =
      const VerificationMeta('waiters');
  @override
  late final GeneratedColumnWithTypeConverter<dynamic, String> waiters =
      GeneratedColumn<String>('waiters', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<dynamic>($OrderEntityTable.$converterwaiters);
  static const VerificationMeta _couponIdMeta =
      const VerificationMeta('couponId');
  @override
  late final GeneratedColumn<String> couponId = GeneratedColumn<String>(
      'coupon_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _createdOnMeta =
      const VerificationMeta('createdOn');
  @override
  late final GeneratedColumn<String> createdOn = GeneratedColumn<String>(
      'created_on', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _createdByMeta =
      const VerificationMeta('createdBy');
  @override
  late final GeneratedColumn<String> createdBy = GeneratedColumn<String>(
      'created_by', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _lastModifiedByMeta =
      const VerificationMeta('lastModifiedBy');
  @override
  late final GeneratedColumn<String> lastModifiedBy = GeneratedColumn<String>(
      'last_modified_by', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _lastModifiedOnMeta =
      const VerificationMeta('lastModifiedOn');
  @override
  late final GeneratedColumn<String> lastModifiedOn = GeneratedColumn<String>(
      'last_modified_on', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _tableMeta = const VerificationMeta('table');
  @override
  late final GeneratedColumnWithTypeConverter<dynamic, String> table =
      GeneratedColumn<String>('table', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<dynamic>($OrderEntityTable.$convertertable);
  static const VerificationMeta _deliveryMeta =
      const VerificationMeta('delivery');
  @override
  late final GeneratedColumnWithTypeConverter<dynamic, String> delivery =
      GeneratedColumn<String>('delivery', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<dynamic>($OrderEntityTable.$converterdelivery);
  static const VerificationMeta _customerNameMeta =
      const VerificationMeta('customerName');
  @override
  late final GeneratedColumn<String> customerName = GeneratedColumn<String>(
      'customer_name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _customerPhoneMeta =
      const VerificationMeta('customerPhone');
  @override
  late final GeneratedColumn<String> customerPhone = GeneratedColumn<String>(
      'customer_phone', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        posTransactionType,
        idSeq,
        invoiceNumber,
        deviceId,
        startDate,
        timeOfReceipt,
        parentOrderId,
        splitIndex,
        orderRef,
        callName,
        callNumber,
        orderType,
        status,
        paymentStatus,
        refundStatus,
        deliveryStatus,
        orderSource,
        endTime,
        deliveryCompanyInfoId,
        priceListId,
        creatorBy,
        closeBy,
        tableId,
        numberVistor,
        customer,
        address,
        promotion,
        discount,
        products,
        priceDiscount,
        pricePromotion,
        note,
        kitchenNote,
        msgCansel,
        subTotal,
        charges,
        chargeValues,
        payments,
        totalCharge,
        taxPrice,
        totalPaid,
        checksum,
        masterChecksum,
        serverChecksum,
        shiftId,
        tillId,
        totalDiscountForOrderAndProduct,
        kitchenInfo,
        currency,
        paymentCurrency,
        minimumReservationPrice,
        giftCard,
        roundingAmount,
        tipAmount,
        donationAmount,
        donationForId,
        supervisorId,
        reference,
        trackingStatusId,
        orderStatusTracking,
        waiters,
        couponId,
        createdOn,
        createdBy,
        lastModifiedBy,
        lastModifiedOn,
        table,
        delivery,
        customerName,
        customerPhone
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'order_entity';
  @override
  VerificationContext validateIntegrity(Insertable<OrderEntityData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('pos_transaction_type')) {
      context.handle(
          _posTransactionTypeMeta,
          posTransactionType.isAcceptableOrUnknown(
              data['pos_transaction_type']!, _posTransactionTypeMeta));
    }
    if (data.containsKey('id_seq')) {
      context.handle(
          _idSeqMeta, idSeq.isAcceptableOrUnknown(data['id_seq']!, _idSeqMeta));
    }
    if (data.containsKey('invoice_number')) {
      context.handle(
          _invoiceNumberMeta,
          invoiceNumber.isAcceptableOrUnknown(
              data['invoice_number']!, _invoiceNumberMeta));
    }
    if (data.containsKey('device_id')) {
      context.handle(_deviceIdMeta,
          deviceId.isAcceptableOrUnknown(data['device_id']!, _deviceIdMeta));
    }
    if (data.containsKey('start_date')) {
      context.handle(_startDateMeta,
          startDate.isAcceptableOrUnknown(data['start_date']!, _startDateMeta));
    } else if (isInserting) {
      context.missing(_startDateMeta);
    }
    if (data.containsKey('time_of_receipt')) {
      context.handle(
          _timeOfReceiptMeta,
          timeOfReceipt.isAcceptableOrUnknown(
              data['time_of_receipt']!, _timeOfReceiptMeta));
    }
    if (data.containsKey('parent_order_id')) {
      context.handle(
          _parentOrderIdMeta,
          parentOrderId.isAcceptableOrUnknown(
              data['parent_order_id']!, _parentOrderIdMeta));
    }
    if (data.containsKey('split_index')) {
      context.handle(
          _splitIndexMeta,
          splitIndex.isAcceptableOrUnknown(
              data['split_index']!, _splitIndexMeta));
    }
    if (data.containsKey('order_ref')) {
      context.handle(_orderRefMeta,
          orderRef.isAcceptableOrUnknown(data['order_ref']!, _orderRefMeta));
    } else if (isInserting) {
      context.missing(_orderRefMeta);
    }
    if (data.containsKey('call_name')) {
      context.handle(_callNameMeta,
          callName.isAcceptableOrUnknown(data['call_name']!, _callNameMeta));
    }
    if (data.containsKey('call_number')) {
      context.handle(
          _callNumberMeta,
          callNumber.isAcceptableOrUnknown(
              data['call_number']!, _callNumberMeta));
    }
    if (data.containsKey('order_type')) {
      context.handle(_orderTypeMeta,
          orderType.isAcceptableOrUnknown(data['order_type']!, _orderTypeMeta));
    } else if (isInserting) {
      context.missing(_orderTypeMeta);
    }
    if (data.containsKey('status')) {
      context.handle(_statusMeta,
          status.isAcceptableOrUnknown(data['status']!, _statusMeta));
    } else if (isInserting) {
      context.missing(_statusMeta);
    }
    if (data.containsKey('payment_status')) {
      context.handle(
          _paymentStatusMeta,
          paymentStatus.isAcceptableOrUnknown(
              data['payment_status']!, _paymentStatusMeta));
    }
    if (data.containsKey('refund_status')) {
      context.handle(
          _refundStatusMeta,
          refundStatus.isAcceptableOrUnknown(
              data['refund_status']!, _refundStatusMeta));
    }
    if (data.containsKey('delivery_status')) {
      context.handle(
          _deliveryStatusMeta,
          deliveryStatus.isAcceptableOrUnknown(
              data['delivery_status']!, _deliveryStatusMeta));
    }
    if (data.containsKey('order_source')) {
      context.handle(
          _orderSourceMeta,
          orderSource.isAcceptableOrUnknown(
              data['order_source']!, _orderSourceMeta));
    }
    if (data.containsKey('end_time')) {
      context.handle(_endTimeMeta,
          endTime.isAcceptableOrUnknown(data['end_time']!, _endTimeMeta));
    }
    context.handle(
        _deliveryCompanyInfoIdMeta, const VerificationResult.success());
    if (data.containsKey('price_list_id')) {
      context.handle(
          _priceListIdMeta,
          priceListId.isAcceptableOrUnknown(
              data['price_list_id']!, _priceListIdMeta));
    }
    context.handle(_creatorByMeta, const VerificationResult.success());
    context.handle(_closeByMeta, const VerificationResult.success());
    if (data.containsKey('table_id')) {
      context.handle(_tableIdMeta,
          tableId.isAcceptableOrUnknown(data['table_id']!, _tableIdMeta));
    }
    if (data.containsKey('number_vistor')) {
      context.handle(
          _numberVistorMeta,
          numberVistor.isAcceptableOrUnknown(
              data['number_vistor']!, _numberVistorMeta));
    }
    context.handle(_customerMeta, const VerificationResult.success());
    context.handle(_addressMeta, const VerificationResult.success());
    context.handle(_promotionMeta, const VerificationResult.success());
    context.handle(_discountMeta, const VerificationResult.success());
    context.handle(_productsMeta, const VerificationResult.success());
    if (data.containsKey('price_discount')) {
      context.handle(
          _priceDiscountMeta,
          priceDiscount.isAcceptableOrUnknown(
              data['price_discount']!, _priceDiscountMeta));
    }
    if (data.containsKey('price_promotion')) {
      context.handle(
          _pricePromotionMeta,
          pricePromotion.isAcceptableOrUnknown(
              data['price_promotion']!, _pricePromotionMeta));
    }
    if (data.containsKey('note')) {
      context.handle(
          _noteMeta, note.isAcceptableOrUnknown(data['note']!, _noteMeta));
    }
    if (data.containsKey('kitchen_note')) {
      context.handle(
          _kitchenNoteMeta,
          kitchenNote.isAcceptableOrUnknown(
              data['kitchen_note']!, _kitchenNoteMeta));
    }
    if (data.containsKey('msg_cansel')) {
      context.handle(_msgCanselMeta,
          msgCansel.isAcceptableOrUnknown(data['msg_cansel']!, _msgCanselMeta));
    }
    if (data.containsKey('sub_total')) {
      context.handle(_subTotalMeta,
          subTotal.isAcceptableOrUnknown(data['sub_total']!, _subTotalMeta));
    }
    context.handle(_chargesMeta, const VerificationResult.success());
    context.handle(_chargeValuesMeta, const VerificationResult.success());
    context.handle(_paymentsMeta, const VerificationResult.success());
    if (data.containsKey('total_charge')) {
      context.handle(
          _totalChargeMeta,
          totalCharge.isAcceptableOrUnknown(
              data['total_charge']!, _totalChargeMeta));
    }
    if (data.containsKey('tax_price')) {
      context.handle(_taxPriceMeta,
          taxPrice.isAcceptableOrUnknown(data['tax_price']!, _taxPriceMeta));
    }
    if (data.containsKey('total_paid')) {
      context.handle(_totalPaidMeta,
          totalPaid.isAcceptableOrUnknown(data['total_paid']!, _totalPaidMeta));
    }
    if (data.containsKey('checksum')) {
      context.handle(_checksumMeta,
          checksum.isAcceptableOrUnknown(data['checksum']!, _checksumMeta));
    }
    if (data.containsKey('master_checksum')) {
      context.handle(
          _masterChecksumMeta,
          masterChecksum.isAcceptableOrUnknown(
              data['master_checksum']!, _masterChecksumMeta));
    }
    if (data.containsKey('server_checksum')) {
      context.handle(
          _serverChecksumMeta,
          serverChecksum.isAcceptableOrUnknown(
              data['server_checksum']!, _serverChecksumMeta));
    }
    if (data.containsKey('shift_id')) {
      context.handle(_shiftIdMeta,
          shiftId.isAcceptableOrUnknown(data['shift_id']!, _shiftIdMeta));
    }
    if (data.containsKey('till_id')) {
      context.handle(_tillIdMeta,
          tillId.isAcceptableOrUnknown(data['till_id']!, _tillIdMeta));
    }
    if (data.containsKey('total_discount_for_order_and_product')) {
      context.handle(
          _totalDiscountForOrderAndProductMeta,
          totalDiscountForOrderAndProduct.isAcceptableOrUnknown(
              data['total_discount_for_order_and_product']!,
              _totalDiscountForOrderAndProductMeta));
    }
    context.handle(_kitchenInfoMeta, const VerificationResult.success());
    context.handle(_currencyMeta, const VerificationResult.success());
    context.handle(_paymentCurrencyMeta, const VerificationResult.success());
    if (data.containsKey('minimum_reservation_price')) {
      context.handle(
          _minimumReservationPriceMeta,
          minimumReservationPrice.isAcceptableOrUnknown(
              data['minimum_reservation_price']!,
              _minimumReservationPriceMeta));
    }
    context.handle(_giftCardMeta, const VerificationResult.success());
    if (data.containsKey('rounding_amount')) {
      context.handle(
          _roundingAmountMeta,
          roundingAmount.isAcceptableOrUnknown(
              data['rounding_amount']!, _roundingAmountMeta));
    }
    if (data.containsKey('tip_amount')) {
      context.handle(_tipAmountMeta,
          tipAmount.isAcceptableOrUnknown(data['tip_amount']!, _tipAmountMeta));
    }
    if (data.containsKey('donation_amount')) {
      context.handle(
          _donationAmountMeta,
          donationAmount.isAcceptableOrUnknown(
              data['donation_amount']!, _donationAmountMeta));
    }
    if (data.containsKey('donation_for_id')) {
      context.handle(
          _donationForIdMeta,
          donationForId.isAcceptableOrUnknown(
              data['donation_for_id']!, _donationForIdMeta));
    }
    if (data.containsKey('supervisor_id')) {
      context.handle(
          _supervisorIdMeta,
          supervisorId.isAcceptableOrUnknown(
              data['supervisor_id']!, _supervisorIdMeta));
    }
    if (data.containsKey('reference')) {
      context.handle(_referenceMeta,
          reference.isAcceptableOrUnknown(data['reference']!, _referenceMeta));
    }
    if (data.containsKey('tracking_status_id')) {
      context.handle(
          _trackingStatusIdMeta,
          trackingStatusId.isAcceptableOrUnknown(
              data['tracking_status_id']!, _trackingStatusIdMeta));
    }
    context.handle(
        _orderStatusTrackingMeta, const VerificationResult.success());
    context.handle(_waitersMeta, const VerificationResult.success());
    if (data.containsKey('coupon_id')) {
      context.handle(_couponIdMeta,
          couponId.isAcceptableOrUnknown(data['coupon_id']!, _couponIdMeta));
    }
    if (data.containsKey('created_on')) {
      context.handle(_createdOnMeta,
          createdOn.isAcceptableOrUnknown(data['created_on']!, _createdOnMeta));
    }
    if (data.containsKey('created_by')) {
      context.handle(_createdByMeta,
          createdBy.isAcceptableOrUnknown(data['created_by']!, _createdByMeta));
    }
    if (data.containsKey('last_modified_by')) {
      context.handle(
          _lastModifiedByMeta,
          lastModifiedBy.isAcceptableOrUnknown(
              data['last_modified_by']!, _lastModifiedByMeta));
    }
    if (data.containsKey('last_modified_on')) {
      context.handle(
          _lastModifiedOnMeta,
          lastModifiedOn.isAcceptableOrUnknown(
              data['last_modified_on']!, _lastModifiedOnMeta));
    }
    context.handle(_tableMeta, const VerificationResult.success());
    context.handle(_deliveryMeta, const VerificationResult.success());
    if (data.containsKey('customer_name')) {
      context.handle(
          _customerNameMeta,
          customerName.isAcceptableOrUnknown(
              data['customer_name']!, _customerNameMeta));
    }
    if (data.containsKey('customer_phone')) {
      context.handle(
          _customerPhoneMeta,
          customerPhone.isAcceptableOrUnknown(
              data['customer_phone']!, _customerPhoneMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {idSeq};
  @override
  List<Set<GeneratedColumn>> get uniqueKeys => [
        {orderRef},
      ];
  @override
  OrderEntityData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return OrderEntityData(
      posTransactionType: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}pos_transaction_type']),
      idSeq: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id_seq']),
      invoiceNumber: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}invoice_number']),
      deviceId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}device_id']),
      startDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}start_date'])!,
      timeOfReceipt: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}time_of_receipt']),
      parentOrderId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}parent_order_id']),
      splitIndex: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}split_index']),
      orderRef: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}order_ref'])!,
      callName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}call_name']),
      callNumber: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}call_number']),
      orderType: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}order_type'])!,
      status: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}status'])!,
      paymentStatus: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}payment_status']),
      refundStatus: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}refund_status']),
      deliveryStatus: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}delivery_status']),
      orderSource: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}order_source']),
      endTime: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}end_time']),
      deliveryCompanyInfoId: $OrderEntityTable.$converterdeliveryCompanyInfoId
          .fromSql(attachedDatabase.typeMapping.read(DriftSqlType.string,
              data['${effectivePrefix}delivery_company_info_id'])),
      priceListId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}price_list_id']),
      creatorBy: $OrderEntityTable.$convertercreatorBy.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}creator_by'])),
      closeBy: $OrderEntityTable.$convertercloseBy.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}close_by'])),
      tableId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}table_id']),
      numberVistor: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}number_vistor']),
      customer: $OrderEntityTable.$convertercustomer.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}customer'])),
      address: $OrderEntityTable.$converteraddress.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}address'])),
      promotion: $OrderEntityTable.$converterpromotion.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}promotion'])),
      discount: $OrderEntityTable.$converterdiscount.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}discount'])),
      products: $OrderEntityTable.$converterproducts.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}products'])),
      priceDiscount: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}price_discount']),
      pricePromotion: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}price_promotion']),
      note: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}note']),
      kitchenNote: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}kitchen_note']),
      msgCansel: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}msg_cansel']),
      subTotal: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}sub_total'])!,
      charges: $OrderEntityTable.$convertercharges.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}charges'])),
      chargeValues: $OrderEntityTable.$converterchargeValues.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}charge_values'])),
      payments: $OrderEntityTable.$converterpayments.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}payments'])),
      totalCharge: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}total_charge']),
      taxPrice: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}tax_price']),
      totalPaid: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}total_paid']),
      checksum: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}checksum']),
      masterChecksum: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}master_checksum']),
      serverChecksum: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}server_checksum']),
      shiftId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}shift_id']),
      tillId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}till_id']),
      totalDiscountForOrderAndProduct: attachedDatabase.typeMapping.read(
          DriftSqlType.double,
          data['${effectivePrefix}total_discount_for_order_and_product']),
      kitchenInfo: $OrderEntityTable.$converterkitchenInfo.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}kitchen_info'])),
      currency: $OrderEntityTable.$convertercurrency.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}currency'])),
      paymentCurrency: $OrderEntityTable.$converterpaymentCurrency.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}payment_currency'])),
      minimumReservationPrice: attachedDatabase.typeMapping.read(
          DriftSqlType.double,
          data['${effectivePrefix}minimum_reservation_price']),
      giftCard: $OrderEntityTable.$convertergiftCard.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}gift_card'])),
      roundingAmount: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}rounding_amount']),
      tipAmount: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}tip_amount']),
      donationAmount: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}donation_amount']),
      donationForId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}donation_for_id']),
      supervisorId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}supervisor_id']),
      reference: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}reference']),
      trackingStatusId: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}tracking_status_id']),
      orderStatusTracking: $OrderEntityTable.$converterorderStatusTracking
          .fromSql(attachedDatabase.typeMapping.read(DriftSqlType.string,
              data['${effectivePrefix}order_status_tracking'])),
      waiters: $OrderEntityTable.$converterwaiters.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}waiters'])),
      couponId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}coupon_id']),
      createdOn: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}created_on']),
      createdBy: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}created_by']),
      lastModifiedBy: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}last_modified_by']),
      lastModifiedOn: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}last_modified_on']),
      table: $OrderEntityTable.$convertertable.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}table'])),
      delivery: $OrderEntityTable.$converterdelivery.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}delivery'])),
      customerName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}customer_name']),
      customerPhone: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}customer_phone']),
    );
  }

  @override
  $OrderEntityTable createAlias(String alias) {
    return $OrderEntityTable(attachedDatabase, alias);
  }

  static TypeConverter<dynamic, String?> $converterdeliveryCompanyInfoId =
      const JsonTypeConverter();
  static TypeConverter<dynamic, String?> $convertercreatorBy =
      const JsonTypeConverter();
  static TypeConverter<dynamic, String?> $convertercloseBy =
      const JsonTypeConverter();
  static TypeConverter<dynamic, String?> $convertercustomer =
      const JsonTypeConverter();
  static TypeConverter<dynamic, String?> $converteraddress =
      const JsonTypeConverter();
  static TypeConverter<dynamic, String?> $converterpromotion =
      const JsonTypeConverter();
  static TypeConverter<dynamic, String?> $converterdiscount =
      const JsonTypeConverter();
  static TypeConverter<dynamic, String?> $converterproducts =
      const JsonTypeConverter();
  static TypeConverter<dynamic, String?> $convertercharges =
      const JsonTypeConverter();
  static TypeConverter<dynamic, String?> $converterchargeValues =
      const JsonTypeConverter();
  static TypeConverter<dynamic, String?> $converterpayments =
      const JsonTypeConverter();
  static TypeConverter<dynamic, String?> $converterkitchenInfo =
      const JsonTypeConverter();
  static TypeConverter<dynamic, String?> $convertercurrency =
      const JsonTypeConverter();
  static TypeConverter<dynamic, String?> $converterpaymentCurrency =
      const JsonTypeConverter();
  static TypeConverter<dynamic, String?> $convertergiftCard =
      const JsonTypeConverter();
  static TypeConverter<dynamic, String?> $converterorderStatusTracking =
      const JsonTypeConverter();
  static TypeConverter<dynamic, String?> $converterwaiters =
      const JsonTypeConverter();
  static TypeConverter<dynamic, String?> $convertertable =
      const JsonTypeConverter();
  static TypeConverter<dynamic, String?> $converterdelivery =
      const JsonTypeConverter();
}

class OrderEntityData extends DataClass implements Insertable<OrderEntityData> {
  final int? posTransactionType;
  final int? idSeq;
  final String? invoiceNumber;
  final String? deviceId;
  final DateTime startDate;
  final DateTime? timeOfReceipt;
  final String? parentOrderId;
  final int? splitIndex;
  final String orderRef;
  final String? callName;
  final int? callNumber;
  final int orderType;
  final int status;
  final int? paymentStatus;
  final int? refundStatus;
  final int? deliveryStatus;
  final int? orderSource;
  final DateTime? endTime;
  final dynamic deliveryCompanyInfoId;
  final String? priceListId;
  final dynamic creatorBy;
  final dynamic closeBy;
  final String? tableId;
  final int? numberVistor;
  final dynamic customer;
  final dynamic address;
  final dynamic promotion;
  final dynamic discount;
  final dynamic products;
  final double? priceDiscount;
  final double? pricePromotion;
  final String? note;
  final String? kitchenNote;
  final String? msgCansel;
  final double subTotal;
  final dynamic charges;
  final dynamic chargeValues;
  final dynamic payments;
  final double? totalCharge;
  final double? taxPrice;
  final double? totalPaid;
  final String? checksum;
  final String? masterChecksum;
  final String? serverChecksum;
  final String? shiftId;
  final String? tillId;
  final double? totalDiscountForOrderAndProduct;
  final dynamic kitchenInfo;
  final dynamic currency;
  final dynamic paymentCurrency;
  final double? minimumReservationPrice;
  final dynamic giftCard;
  final double? roundingAmount;
  final double? tipAmount;
  final double? donationAmount;
  final String? donationForId;
  final String? supervisorId;
  final String? reference;
  final String? trackingStatusId;
  final dynamic orderStatusTracking;
  final dynamic waiters;
  final String? couponId;
  final String? createdOn;
  final String? createdBy;
  final String? lastModifiedBy;
  final String? lastModifiedOn;
  final dynamic table;
  final dynamic delivery;
  final String? customerName;
  final String? customerPhone;
  const OrderEntityData(
      {this.posTransactionType,
      this.idSeq,
      this.invoiceNumber,
      this.deviceId,
      required this.startDate,
      this.timeOfReceipt,
      this.parentOrderId,
      this.splitIndex,
      required this.orderRef,
      this.callName,
      this.callNumber,
      required this.orderType,
      required this.status,
      this.paymentStatus,
      this.refundStatus,
      this.deliveryStatus,
      this.orderSource,
      this.endTime,
      this.deliveryCompanyInfoId,
      this.priceListId,
      this.creatorBy,
      this.closeBy,
      this.tableId,
      this.numberVistor,
      this.customer,
      this.address,
      this.promotion,
      this.discount,
      this.products,
      this.priceDiscount,
      this.pricePromotion,
      this.note,
      this.kitchenNote,
      this.msgCansel,
      required this.subTotal,
      this.charges,
      this.chargeValues,
      this.payments,
      this.totalCharge,
      this.taxPrice,
      this.totalPaid,
      this.checksum,
      this.masterChecksum,
      this.serverChecksum,
      this.shiftId,
      this.tillId,
      this.totalDiscountForOrderAndProduct,
      this.kitchenInfo,
      this.currency,
      this.paymentCurrency,
      this.minimumReservationPrice,
      this.giftCard,
      this.roundingAmount,
      this.tipAmount,
      this.donationAmount,
      this.donationForId,
      this.supervisorId,
      this.reference,
      this.trackingStatusId,
      this.orderStatusTracking,
      this.waiters,
      this.couponId,
      this.createdOn,
      this.createdBy,
      this.lastModifiedBy,
      this.lastModifiedOn,
      this.table,
      this.delivery,
      this.customerName,
      this.customerPhone});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || posTransactionType != null) {
      map['pos_transaction_type'] = Variable<int>(posTransactionType);
    }
    if (!nullToAbsent || idSeq != null) {
      map['id_seq'] = Variable<int>(idSeq);
    }
    if (!nullToAbsent || invoiceNumber != null) {
      map['invoice_number'] = Variable<String>(invoiceNumber);
    }
    if (!nullToAbsent || deviceId != null) {
      map['device_id'] = Variable<String>(deviceId);
    }
    map['start_date'] = Variable<DateTime>(startDate);
    if (!nullToAbsent || timeOfReceipt != null) {
      map['time_of_receipt'] = Variable<DateTime>(timeOfReceipt);
    }
    if (!nullToAbsent || parentOrderId != null) {
      map['parent_order_id'] = Variable<String>(parentOrderId);
    }
    if (!nullToAbsent || splitIndex != null) {
      map['split_index'] = Variable<int>(splitIndex);
    }
    map['order_ref'] = Variable<String>(orderRef);
    if (!nullToAbsent || callName != null) {
      map['call_name'] = Variable<String>(callName);
    }
    if (!nullToAbsent || callNumber != null) {
      map['call_number'] = Variable<int>(callNumber);
    }
    map['order_type'] = Variable<int>(orderType);
    map['status'] = Variable<int>(status);
    if (!nullToAbsent || paymentStatus != null) {
      map['payment_status'] = Variable<int>(paymentStatus);
    }
    if (!nullToAbsent || refundStatus != null) {
      map['refund_status'] = Variable<int>(refundStatus);
    }
    if (!nullToAbsent || deliveryStatus != null) {
      map['delivery_status'] = Variable<int>(deliveryStatus);
    }
    if (!nullToAbsent || orderSource != null) {
      map['order_source'] = Variable<int>(orderSource);
    }
    if (!nullToAbsent || endTime != null) {
      map['end_time'] = Variable<DateTime>(endTime);
    }
    if (!nullToAbsent || deliveryCompanyInfoId != null) {
      map['delivery_company_info_id'] = Variable<String>($OrderEntityTable
          .$converterdeliveryCompanyInfoId
          .toSql(deliveryCompanyInfoId));
    }
    if (!nullToAbsent || priceListId != null) {
      map['price_list_id'] = Variable<String>(priceListId);
    }
    if (!nullToAbsent || creatorBy != null) {
      map['creator_by'] = Variable<String>(
          $OrderEntityTable.$convertercreatorBy.toSql(creatorBy));
    }
    if (!nullToAbsent || closeBy != null) {
      map['close_by'] =
          Variable<String>($OrderEntityTable.$convertercloseBy.toSql(closeBy));
    }
    if (!nullToAbsent || tableId != null) {
      map['table_id'] = Variable<String>(tableId);
    }
    if (!nullToAbsent || numberVistor != null) {
      map['number_vistor'] = Variable<int>(numberVistor);
    }
    if (!nullToAbsent || customer != null) {
      map['customer'] = Variable<String>(
          $OrderEntityTable.$convertercustomer.toSql(customer));
    }
    if (!nullToAbsent || address != null) {
      map['address'] =
          Variable<String>($OrderEntityTable.$converteraddress.toSql(address));
    }
    if (!nullToAbsent || promotion != null) {
      map['promotion'] = Variable<String>(
          $OrderEntityTable.$converterpromotion.toSql(promotion));
    }
    if (!nullToAbsent || discount != null) {
      map['discount'] = Variable<String>(
          $OrderEntityTable.$converterdiscount.toSql(discount));
    }
    if (!nullToAbsent || products != null) {
      map['products'] = Variable<String>(
          $OrderEntityTable.$converterproducts.toSql(products));
    }
    if (!nullToAbsent || priceDiscount != null) {
      map['price_discount'] = Variable<double>(priceDiscount);
    }
    if (!nullToAbsent || pricePromotion != null) {
      map['price_promotion'] = Variable<double>(pricePromotion);
    }
    if (!nullToAbsent || note != null) {
      map['note'] = Variable<String>(note);
    }
    if (!nullToAbsent || kitchenNote != null) {
      map['kitchen_note'] = Variable<String>(kitchenNote);
    }
    if (!nullToAbsent || msgCansel != null) {
      map['msg_cansel'] = Variable<String>(msgCansel);
    }
    map['sub_total'] = Variable<double>(subTotal);
    if (!nullToAbsent || charges != null) {
      map['charges'] =
          Variable<String>($OrderEntityTable.$convertercharges.toSql(charges));
    }
    if (!nullToAbsent || chargeValues != null) {
      map['charge_values'] = Variable<String>(
          $OrderEntityTable.$converterchargeValues.toSql(chargeValues));
    }
    if (!nullToAbsent || payments != null) {
      map['payments'] = Variable<String>(
          $OrderEntityTable.$converterpayments.toSql(payments));
    }
    if (!nullToAbsent || totalCharge != null) {
      map['total_charge'] = Variable<double>(totalCharge);
    }
    if (!nullToAbsent || taxPrice != null) {
      map['tax_price'] = Variable<double>(taxPrice);
    }
    if (!nullToAbsent || totalPaid != null) {
      map['total_paid'] = Variable<double>(totalPaid);
    }
    if (!nullToAbsent || checksum != null) {
      map['checksum'] = Variable<String>(checksum);
    }
    if (!nullToAbsent || masterChecksum != null) {
      map['master_checksum'] = Variable<String>(masterChecksum);
    }
    if (!nullToAbsent || serverChecksum != null) {
      map['server_checksum'] = Variable<String>(serverChecksum);
    }
    if (!nullToAbsent || shiftId != null) {
      map['shift_id'] = Variable<String>(shiftId);
    }
    if (!nullToAbsent || tillId != null) {
      map['till_id'] = Variable<String>(tillId);
    }
    if (!nullToAbsent || totalDiscountForOrderAndProduct != null) {
      map['total_discount_for_order_and_product'] =
          Variable<double>(totalDiscountForOrderAndProduct);
    }
    if (!nullToAbsent || kitchenInfo != null) {
      map['kitchen_info'] = Variable<String>(
          $OrderEntityTable.$converterkitchenInfo.toSql(kitchenInfo));
    }
    if (!nullToAbsent || currency != null) {
      map['currency'] = Variable<String>(
          $OrderEntityTable.$convertercurrency.toSql(currency));
    }
    if (!nullToAbsent || paymentCurrency != null) {
      map['payment_currency'] = Variable<String>(
          $OrderEntityTable.$converterpaymentCurrency.toSql(paymentCurrency));
    }
    if (!nullToAbsent || minimumReservationPrice != null) {
      map['minimum_reservation_price'] =
          Variable<double>(minimumReservationPrice);
    }
    if (!nullToAbsent || giftCard != null) {
      map['gift_card'] = Variable<String>(
          $OrderEntityTable.$convertergiftCard.toSql(giftCard));
    }
    if (!nullToAbsent || roundingAmount != null) {
      map['rounding_amount'] = Variable<double>(roundingAmount);
    }
    if (!nullToAbsent || tipAmount != null) {
      map['tip_amount'] = Variable<double>(tipAmount);
    }
    if (!nullToAbsent || donationAmount != null) {
      map['donation_amount'] = Variable<double>(donationAmount);
    }
    if (!nullToAbsent || donationForId != null) {
      map['donation_for_id'] = Variable<String>(donationForId);
    }
    if (!nullToAbsent || supervisorId != null) {
      map['supervisor_id'] = Variable<String>(supervisorId);
    }
    if (!nullToAbsent || reference != null) {
      map['reference'] = Variable<String>(reference);
    }
    if (!nullToAbsent || trackingStatusId != null) {
      map['tracking_status_id'] = Variable<String>(trackingStatusId);
    }
    if (!nullToAbsent || orderStatusTracking != null) {
      map['order_status_tracking'] = Variable<String>($OrderEntityTable
          .$converterorderStatusTracking
          .toSql(orderStatusTracking));
    }
    if (!nullToAbsent || waiters != null) {
      map['waiters'] =
          Variable<String>($OrderEntityTable.$converterwaiters.toSql(waiters));
    }
    if (!nullToAbsent || couponId != null) {
      map['coupon_id'] = Variable<String>(couponId);
    }
    if (!nullToAbsent || createdOn != null) {
      map['created_on'] = Variable<String>(createdOn);
    }
    if (!nullToAbsent || createdBy != null) {
      map['created_by'] = Variable<String>(createdBy);
    }
    if (!nullToAbsent || lastModifiedBy != null) {
      map['last_modified_by'] = Variable<String>(lastModifiedBy);
    }
    if (!nullToAbsent || lastModifiedOn != null) {
      map['last_modified_on'] = Variable<String>(lastModifiedOn);
    }
    if (!nullToAbsent || table != null) {
      map['table'] =
          Variable<String>($OrderEntityTable.$convertertable.toSql(table));
    }
    if (!nullToAbsent || delivery != null) {
      map['delivery'] = Variable<String>(
          $OrderEntityTable.$converterdelivery.toSql(delivery));
    }
    if (!nullToAbsent || customerName != null) {
      map['customer_name'] = Variable<String>(customerName);
    }
    if (!nullToAbsent || customerPhone != null) {
      map['customer_phone'] = Variable<String>(customerPhone);
    }
    return map;
  }

  OrderEntityCompanion toCompanion(bool nullToAbsent) {
    return OrderEntityCompanion(
      posTransactionType: posTransactionType == null && nullToAbsent
          ? const Value.absent()
          : Value(posTransactionType),
      idSeq:
          idSeq == null && nullToAbsent ? const Value.absent() : Value(idSeq),
      invoiceNumber: invoiceNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(invoiceNumber),
      deviceId: deviceId == null && nullToAbsent
          ? const Value.absent()
          : Value(deviceId),
      startDate: Value(startDate),
      timeOfReceipt: timeOfReceipt == null && nullToAbsent
          ? const Value.absent()
          : Value(timeOfReceipt),
      parentOrderId: parentOrderId == null && nullToAbsent
          ? const Value.absent()
          : Value(parentOrderId),
      splitIndex: splitIndex == null && nullToAbsent
          ? const Value.absent()
          : Value(splitIndex),
      orderRef: Value(orderRef),
      callName: callName == null && nullToAbsent
          ? const Value.absent()
          : Value(callName),
      callNumber: callNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(callNumber),
      orderType: Value(orderType),
      status: Value(status),
      paymentStatus: paymentStatus == null && nullToAbsent
          ? const Value.absent()
          : Value(paymentStatus),
      refundStatus: refundStatus == null && nullToAbsent
          ? const Value.absent()
          : Value(refundStatus),
      deliveryStatus: deliveryStatus == null && nullToAbsent
          ? const Value.absent()
          : Value(deliveryStatus),
      orderSource: orderSource == null && nullToAbsent
          ? const Value.absent()
          : Value(orderSource),
      endTime: endTime == null && nullToAbsent
          ? const Value.absent()
          : Value(endTime),
      deliveryCompanyInfoId: deliveryCompanyInfoId == null && nullToAbsent
          ? const Value.absent()
          : Value(deliveryCompanyInfoId),
      priceListId: priceListId == null && nullToAbsent
          ? const Value.absent()
          : Value(priceListId),
      creatorBy: creatorBy == null && nullToAbsent
          ? const Value.absent()
          : Value(creatorBy),
      closeBy: closeBy == null && nullToAbsent
          ? const Value.absent()
          : Value(closeBy),
      tableId: tableId == null && nullToAbsent
          ? const Value.absent()
          : Value(tableId),
      numberVistor: numberVistor == null && nullToAbsent
          ? const Value.absent()
          : Value(numberVistor),
      customer: customer == null && nullToAbsent
          ? const Value.absent()
          : Value(customer),
      address: address == null && nullToAbsent
          ? const Value.absent()
          : Value(address),
      promotion: promotion == null && nullToAbsent
          ? const Value.absent()
          : Value(promotion),
      discount: discount == null && nullToAbsent
          ? const Value.absent()
          : Value(discount),
      products: products == null && nullToAbsent
          ? const Value.absent()
          : Value(products),
      priceDiscount: priceDiscount == null && nullToAbsent
          ? const Value.absent()
          : Value(priceDiscount),
      pricePromotion: pricePromotion == null && nullToAbsent
          ? const Value.absent()
          : Value(pricePromotion),
      note: note == null && nullToAbsent ? const Value.absent() : Value(note),
      kitchenNote: kitchenNote == null && nullToAbsent
          ? const Value.absent()
          : Value(kitchenNote),
      msgCansel: msgCansel == null && nullToAbsent
          ? const Value.absent()
          : Value(msgCansel),
      subTotal: Value(subTotal),
      charges: charges == null && nullToAbsent
          ? const Value.absent()
          : Value(charges),
      chargeValues: chargeValues == null && nullToAbsent
          ? const Value.absent()
          : Value(chargeValues),
      payments: payments == null && nullToAbsent
          ? const Value.absent()
          : Value(payments),
      totalCharge: totalCharge == null && nullToAbsent
          ? const Value.absent()
          : Value(totalCharge),
      taxPrice: taxPrice == null && nullToAbsent
          ? const Value.absent()
          : Value(taxPrice),
      totalPaid: totalPaid == null && nullToAbsent
          ? const Value.absent()
          : Value(totalPaid),
      checksum: checksum == null && nullToAbsent
          ? const Value.absent()
          : Value(checksum),
      masterChecksum: masterChecksum == null && nullToAbsent
          ? const Value.absent()
          : Value(masterChecksum),
      serverChecksum: serverChecksum == null && nullToAbsent
          ? const Value.absent()
          : Value(serverChecksum),
      shiftId: shiftId == null && nullToAbsent
          ? const Value.absent()
          : Value(shiftId),
      tillId:
          tillId == null && nullToAbsent ? const Value.absent() : Value(tillId),
      totalDiscountForOrderAndProduct:
          totalDiscountForOrderAndProduct == null && nullToAbsent
              ? const Value.absent()
              : Value(totalDiscountForOrderAndProduct),
      kitchenInfo: kitchenInfo == null && nullToAbsent
          ? const Value.absent()
          : Value(kitchenInfo),
      currency: currency == null && nullToAbsent
          ? const Value.absent()
          : Value(currency),
      paymentCurrency: paymentCurrency == null && nullToAbsent
          ? const Value.absent()
          : Value(paymentCurrency),
      minimumReservationPrice: minimumReservationPrice == null && nullToAbsent
          ? const Value.absent()
          : Value(minimumReservationPrice),
      giftCard: giftCard == null && nullToAbsent
          ? const Value.absent()
          : Value(giftCard),
      roundingAmount: roundingAmount == null && nullToAbsent
          ? const Value.absent()
          : Value(roundingAmount),
      tipAmount: tipAmount == null && nullToAbsent
          ? const Value.absent()
          : Value(tipAmount),
      donationAmount: donationAmount == null && nullToAbsent
          ? const Value.absent()
          : Value(donationAmount),
      donationForId: donationForId == null && nullToAbsent
          ? const Value.absent()
          : Value(donationForId),
      supervisorId: supervisorId == null && nullToAbsent
          ? const Value.absent()
          : Value(supervisorId),
      reference: reference == null && nullToAbsent
          ? const Value.absent()
          : Value(reference),
      trackingStatusId: trackingStatusId == null && nullToAbsent
          ? const Value.absent()
          : Value(trackingStatusId),
      orderStatusTracking: orderStatusTracking == null && nullToAbsent
          ? const Value.absent()
          : Value(orderStatusTracking),
      waiters: waiters == null && nullToAbsent
          ? const Value.absent()
          : Value(waiters),
      couponId: couponId == null && nullToAbsent
          ? const Value.absent()
          : Value(couponId),
      createdOn: createdOn == null && nullToAbsent
          ? const Value.absent()
          : Value(createdOn),
      createdBy: createdBy == null && nullToAbsent
          ? const Value.absent()
          : Value(createdBy),
      lastModifiedBy: lastModifiedBy == null && nullToAbsent
          ? const Value.absent()
          : Value(lastModifiedBy),
      lastModifiedOn: lastModifiedOn == null && nullToAbsent
          ? const Value.absent()
          : Value(lastModifiedOn),
      table:
          table == null && nullToAbsent ? const Value.absent() : Value(table),
      delivery: delivery == null && nullToAbsent
          ? const Value.absent()
          : Value(delivery),
      customerName: customerName == null && nullToAbsent
          ? const Value.absent()
          : Value(customerName),
      customerPhone: customerPhone == null && nullToAbsent
          ? const Value.absent()
          : Value(customerPhone),
    );
  }

  factory OrderEntityData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return OrderEntityData(
      posTransactionType: serializer.fromJson<int?>(json['posTransactionType']),
      idSeq: serializer.fromJson<int?>(json['idSeq']),
      invoiceNumber: serializer.fromJson<String?>(json['invoiceNumber']),
      deviceId: serializer.fromJson<String?>(json['deviceId']),
      startDate: serializer.fromJson<DateTime>(json['startDate']),
      timeOfReceipt: serializer.fromJson<DateTime?>(json['timeOfReceipt']),
      parentOrderId: serializer.fromJson<String?>(json['parentOrderId']),
      splitIndex: serializer.fromJson<int?>(json['splitIndex']),
      orderRef: serializer.fromJson<String>(json['orderRef']),
      callName: serializer.fromJson<String?>(json['callName']),
      callNumber: serializer.fromJson<int?>(json['callNumber']),
      orderType: serializer.fromJson<int>(json['orderType']),
      status: serializer.fromJson<int>(json['status']),
      paymentStatus: serializer.fromJson<int?>(json['paymentStatus']),
      refundStatus: serializer.fromJson<int?>(json['refundStatus']),
      deliveryStatus: serializer.fromJson<int?>(json['deliveryStatus']),
      orderSource: serializer.fromJson<int?>(json['orderSource']),
      endTime: serializer.fromJson<DateTime?>(json['endTime']),
      deliveryCompanyInfoId:
          serializer.fromJson<dynamic>(json['deliveryCompanyInfoId']),
      priceListId: serializer.fromJson<String?>(json['priceListId']),
      creatorBy: serializer.fromJson<dynamic>(json['creatorBy']),
      closeBy: serializer.fromJson<dynamic>(json['closeBy']),
      tableId: serializer.fromJson<String?>(json['tableId']),
      numberVistor: serializer.fromJson<int?>(json['numberVistor']),
      customer: serializer.fromJson<dynamic>(json['customer']),
      address: serializer.fromJson<dynamic>(json['address']),
      promotion: serializer.fromJson<dynamic>(json['promotion']),
      discount: serializer.fromJson<dynamic>(json['discount']),
      products: serializer.fromJson<dynamic>(json['products']),
      priceDiscount: serializer.fromJson<double?>(json['priceDiscount']),
      pricePromotion: serializer.fromJson<double?>(json['pricePromotion']),
      note: serializer.fromJson<String?>(json['note']),
      kitchenNote: serializer.fromJson<String?>(json['kitchenNote']),
      msgCansel: serializer.fromJson<String?>(json['msgCansel']),
      subTotal: serializer.fromJson<double>(json['subTotal']),
      charges: serializer.fromJson<dynamic>(json['charges']),
      chargeValues: serializer.fromJson<dynamic>(json['chargeValues']),
      payments: serializer.fromJson<dynamic>(json['payments']),
      totalCharge: serializer.fromJson<double?>(json['totalCharge']),
      taxPrice: serializer.fromJson<double?>(json['taxPrice']),
      totalPaid: serializer.fromJson<double?>(json['totalPaid']),
      checksum: serializer.fromJson<String?>(json['checksum']),
      masterChecksum: serializer.fromJson<String?>(json['masterChecksum']),
      serverChecksum: serializer.fromJson<String?>(json['serverChecksum']),
      shiftId: serializer.fromJson<String?>(json['shiftId']),
      tillId: serializer.fromJson<String?>(json['tillId']),
      totalDiscountForOrderAndProduct:
          serializer.fromJson<double?>(json['totalDiscountForOrderAndProduct']),
      kitchenInfo: serializer.fromJson<dynamic>(json['kitchenInfo']),
      currency: serializer.fromJson<dynamic>(json['currency']),
      paymentCurrency: serializer.fromJson<dynamic>(json['paymentCurrency']),
      minimumReservationPrice:
          serializer.fromJson<double?>(json['minimumReservationPrice']),
      giftCard: serializer.fromJson<dynamic>(json['giftCard']),
      roundingAmount: serializer.fromJson<double?>(json['roundingAmount']),
      tipAmount: serializer.fromJson<double?>(json['tipAmount']),
      donationAmount: serializer.fromJson<double?>(json['donationAmount']),
      donationForId: serializer.fromJson<String?>(json['donationForId']),
      supervisorId: serializer.fromJson<String?>(json['supervisorId']),
      reference: serializer.fromJson<String?>(json['reference']),
      trackingStatusId: serializer.fromJson<String?>(json['trackingStatusId']),
      orderStatusTracking:
          serializer.fromJson<dynamic>(json['orderStatusTracking']),
      waiters: serializer.fromJson<dynamic>(json['waiters']),
      couponId: serializer.fromJson<String?>(json['couponId']),
      createdOn: serializer.fromJson<String?>(json['createdOn']),
      createdBy: serializer.fromJson<String?>(json['createdBy']),
      lastModifiedBy: serializer.fromJson<String?>(json['lastModifiedBy']),
      lastModifiedOn: serializer.fromJson<String?>(json['lastModifiedOn']),
      table: serializer.fromJson<dynamic>(json['table']),
      delivery: serializer.fromJson<dynamic>(json['delivery']),
      customerName: serializer.fromJson<String?>(json['customerName']),
      customerPhone: serializer.fromJson<String?>(json['customerPhone']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'posTransactionType': serializer.toJson<int?>(posTransactionType),
      'idSeq': serializer.toJson<int?>(idSeq),
      'invoiceNumber': serializer.toJson<String?>(invoiceNumber),
      'deviceId': serializer.toJson<String?>(deviceId),
      'startDate': serializer.toJson<DateTime>(startDate),
      'timeOfReceipt': serializer.toJson<DateTime?>(timeOfReceipt),
      'parentOrderId': serializer.toJson<String?>(parentOrderId),
      'splitIndex': serializer.toJson<int?>(splitIndex),
      'orderRef': serializer.toJson<String>(orderRef),
      'callName': serializer.toJson<String?>(callName),
      'callNumber': serializer.toJson<int?>(callNumber),
      'orderType': serializer.toJson<int>(orderType),
      'status': serializer.toJson<int>(status),
      'paymentStatus': serializer.toJson<int?>(paymentStatus),
      'refundStatus': serializer.toJson<int?>(refundStatus),
      'deliveryStatus': serializer.toJson<int?>(deliveryStatus),
      'orderSource': serializer.toJson<int?>(orderSource),
      'endTime': serializer.toJson<DateTime?>(endTime),
      'deliveryCompanyInfoId':
          serializer.toJson<dynamic>(deliveryCompanyInfoId),
      'priceListId': serializer.toJson<String?>(priceListId),
      'creatorBy': serializer.toJson<dynamic>(creatorBy),
      'closeBy': serializer.toJson<dynamic>(closeBy),
      'tableId': serializer.toJson<String?>(tableId),
      'numberVistor': serializer.toJson<int?>(numberVistor),
      'customer': serializer.toJson<dynamic>(customer),
      'address': serializer.toJson<dynamic>(address),
      'promotion': serializer.toJson<dynamic>(promotion),
      'discount': serializer.toJson<dynamic>(discount),
      'products': serializer.toJson<dynamic>(products),
      'priceDiscount': serializer.toJson<double?>(priceDiscount),
      'pricePromotion': serializer.toJson<double?>(pricePromotion),
      'note': serializer.toJson<String?>(note),
      'kitchenNote': serializer.toJson<String?>(kitchenNote),
      'msgCansel': serializer.toJson<String?>(msgCansel),
      'subTotal': serializer.toJson<double>(subTotal),
      'charges': serializer.toJson<dynamic>(charges),
      'chargeValues': serializer.toJson<dynamic>(chargeValues),
      'payments': serializer.toJson<dynamic>(payments),
      'totalCharge': serializer.toJson<double?>(totalCharge),
      'taxPrice': serializer.toJson<double?>(taxPrice),
      'totalPaid': serializer.toJson<double?>(totalPaid),
      'checksum': serializer.toJson<String?>(checksum),
      'masterChecksum': serializer.toJson<String?>(masterChecksum),
      'serverChecksum': serializer.toJson<String?>(serverChecksum),
      'shiftId': serializer.toJson<String?>(shiftId),
      'tillId': serializer.toJson<String?>(tillId),
      'totalDiscountForOrderAndProduct':
          serializer.toJson<double?>(totalDiscountForOrderAndProduct),
      'kitchenInfo': serializer.toJson<dynamic>(kitchenInfo),
      'currency': serializer.toJson<dynamic>(currency),
      'paymentCurrency': serializer.toJson<dynamic>(paymentCurrency),
      'minimumReservationPrice':
          serializer.toJson<double?>(minimumReservationPrice),
      'giftCard': serializer.toJson<dynamic>(giftCard),
      'roundingAmount': serializer.toJson<double?>(roundingAmount),
      'tipAmount': serializer.toJson<double?>(tipAmount),
      'donationAmount': serializer.toJson<double?>(donationAmount),
      'donationForId': serializer.toJson<String?>(donationForId),
      'supervisorId': serializer.toJson<String?>(supervisorId),
      'reference': serializer.toJson<String?>(reference),
      'trackingStatusId': serializer.toJson<String?>(trackingStatusId),
      'orderStatusTracking': serializer.toJson<dynamic>(orderStatusTracking),
      'waiters': serializer.toJson<dynamic>(waiters),
      'couponId': serializer.toJson<String?>(couponId),
      'createdOn': serializer.toJson<String?>(createdOn),
      'createdBy': serializer.toJson<String?>(createdBy),
      'lastModifiedBy': serializer.toJson<String?>(lastModifiedBy),
      'lastModifiedOn': serializer.toJson<String?>(lastModifiedOn),
      'table': serializer.toJson<dynamic>(table),
      'delivery': serializer.toJson<dynamic>(delivery),
      'customerName': serializer.toJson<String?>(customerName),
      'customerPhone': serializer.toJson<String?>(customerPhone),
    };
  }

  OrderEntityData copyWith(
          {Value<int?> posTransactionType = const Value.absent(),
          Value<int?> idSeq = const Value.absent(),
          Value<String?> invoiceNumber = const Value.absent(),
          Value<String?> deviceId = const Value.absent(),
          DateTime? startDate,
          Value<DateTime?> timeOfReceipt = const Value.absent(),
          Value<String?> parentOrderId = const Value.absent(),
          Value<int?> splitIndex = const Value.absent(),
          String? orderRef,
          Value<String?> callName = const Value.absent(),
          Value<int?> callNumber = const Value.absent(),
          int? orderType,
          int? status,
          Value<int?> paymentStatus = const Value.absent(),
          Value<int?> refundStatus = const Value.absent(),
          Value<int?> deliveryStatus = const Value.absent(),
          Value<int?> orderSource = const Value.absent(),
          Value<DateTime?> endTime = const Value.absent(),
          Value<dynamic> deliveryCompanyInfoId = const Value.absent(),
          Value<String?> priceListId = const Value.absent(),
          Value<dynamic> creatorBy = const Value.absent(),
          Value<dynamic> closeBy = const Value.absent(),
          Value<String?> tableId = const Value.absent(),
          Value<int?> numberVistor = const Value.absent(),
          Value<dynamic> customer = const Value.absent(),
          Value<dynamic> address = const Value.absent(),
          Value<dynamic> promotion = const Value.absent(),
          Value<dynamic> discount = const Value.absent(),
          Value<dynamic> products = const Value.absent(),
          Value<double?> priceDiscount = const Value.absent(),
          Value<double?> pricePromotion = const Value.absent(),
          Value<String?> note = const Value.absent(),
          Value<String?> kitchenNote = const Value.absent(),
          Value<String?> msgCansel = const Value.absent(),
          double? subTotal,
          Value<dynamic> charges = const Value.absent(),
          Value<dynamic> chargeValues = const Value.absent(),
          Value<dynamic> payments = const Value.absent(),
          Value<double?> totalCharge = const Value.absent(),
          Value<double?> taxPrice = const Value.absent(),
          Value<double?> totalPaid = const Value.absent(),
          Value<String?> checksum = const Value.absent(),
          Value<String?> masterChecksum = const Value.absent(),
          Value<String?> serverChecksum = const Value.absent(),
          Value<String?> shiftId = const Value.absent(),
          Value<String?> tillId = const Value.absent(),
          Value<double?> totalDiscountForOrderAndProduct = const Value.absent(),
          Value<dynamic> kitchenInfo = const Value.absent(),
          Value<dynamic> currency = const Value.absent(),
          Value<dynamic> paymentCurrency = const Value.absent(),
          Value<double?> minimumReservationPrice = const Value.absent(),
          Value<dynamic> giftCard = const Value.absent(),
          Value<double?> roundingAmount = const Value.absent(),
          Value<double?> tipAmount = const Value.absent(),
          Value<double?> donationAmount = const Value.absent(),
          Value<String?> donationForId = const Value.absent(),
          Value<String?> supervisorId = const Value.absent(),
          Value<String?> reference = const Value.absent(),
          Value<String?> trackingStatusId = const Value.absent(),
          Value<dynamic> orderStatusTracking = const Value.absent(),
          Value<dynamic> waiters = const Value.absent(),
          Value<String?> couponId = const Value.absent(),
          Value<String?> createdOn = const Value.absent(),
          Value<String?> createdBy = const Value.absent(),
          Value<String?> lastModifiedBy = const Value.absent(),
          Value<String?> lastModifiedOn = const Value.absent(),
          Value<dynamic> table = const Value.absent(),
          Value<dynamic> delivery = const Value.absent(),
          Value<String?> customerName = const Value.absent(),
          Value<String?> customerPhone = const Value.absent()}) =>
      OrderEntityData(
        posTransactionType: posTransactionType.present
            ? posTransactionType.value
            : this.posTransactionType,
        idSeq: idSeq.present ? idSeq.value : this.idSeq,
        invoiceNumber:
            invoiceNumber.present ? invoiceNumber.value : this.invoiceNumber,
        deviceId: deviceId.present ? deviceId.value : this.deviceId,
        startDate: startDate ?? this.startDate,
        timeOfReceipt:
            timeOfReceipt.present ? timeOfReceipt.value : this.timeOfReceipt,
        parentOrderId:
            parentOrderId.present ? parentOrderId.value : this.parentOrderId,
        splitIndex: splitIndex.present ? splitIndex.value : this.splitIndex,
        orderRef: orderRef ?? this.orderRef,
        callName: callName.present ? callName.value : this.callName,
        callNumber: callNumber.present ? callNumber.value : this.callNumber,
        orderType: orderType ?? this.orderType,
        status: status ?? this.status,
        paymentStatus:
            paymentStatus.present ? paymentStatus.value : this.paymentStatus,
        refundStatus:
            refundStatus.present ? refundStatus.value : this.refundStatus,
        deliveryStatus:
            deliveryStatus.present ? deliveryStatus.value : this.deliveryStatus,
        orderSource: orderSource.present ? orderSource.value : this.orderSource,
        endTime: endTime.present ? endTime.value : this.endTime,
        deliveryCompanyInfoId: deliveryCompanyInfoId.present
            ? deliveryCompanyInfoId.value
            : this.deliveryCompanyInfoId,
        priceListId: priceListId.present ? priceListId.value : this.priceListId,
        creatorBy: creatorBy.present ? creatorBy.value : this.creatorBy,
        closeBy: closeBy.present ? closeBy.value : this.closeBy,
        tableId: tableId.present ? tableId.value : this.tableId,
        numberVistor:
            numberVistor.present ? numberVistor.value : this.numberVistor,
        customer: customer.present ? customer.value : this.customer,
        address: address.present ? address.value : this.address,
        promotion: promotion.present ? promotion.value : this.promotion,
        discount: discount.present ? discount.value : this.discount,
        products: products.present ? products.value : this.products,
        priceDiscount:
            priceDiscount.present ? priceDiscount.value : this.priceDiscount,
        pricePromotion:
            pricePromotion.present ? pricePromotion.value : this.pricePromotion,
        note: note.present ? note.value : this.note,
        kitchenNote: kitchenNote.present ? kitchenNote.value : this.kitchenNote,
        msgCansel: msgCansel.present ? msgCansel.value : this.msgCansel,
        subTotal: subTotal ?? this.subTotal,
        charges: charges.present ? charges.value : this.charges,
        chargeValues:
            chargeValues.present ? chargeValues.value : this.chargeValues,
        payments: payments.present ? payments.value : this.payments,
        totalCharge: totalCharge.present ? totalCharge.value : this.totalCharge,
        taxPrice: taxPrice.present ? taxPrice.value : this.taxPrice,
        totalPaid: totalPaid.present ? totalPaid.value : this.totalPaid,
        checksum: checksum.present ? checksum.value : this.checksum,
        masterChecksum:
            masterChecksum.present ? masterChecksum.value : this.masterChecksum,
        serverChecksum:
            serverChecksum.present ? serverChecksum.value : this.serverChecksum,
        shiftId: shiftId.present ? shiftId.value : this.shiftId,
        tillId: tillId.present ? tillId.value : this.tillId,
        totalDiscountForOrderAndProduct: totalDiscountForOrderAndProduct.present
            ? totalDiscountForOrderAndProduct.value
            : this.totalDiscountForOrderAndProduct,
        kitchenInfo: kitchenInfo.present ? kitchenInfo.value : this.kitchenInfo,
        currency: currency.present ? currency.value : this.currency,
        paymentCurrency: paymentCurrency.present
            ? paymentCurrency.value
            : this.paymentCurrency,
        minimumReservationPrice: minimumReservationPrice.present
            ? minimumReservationPrice.value
            : this.minimumReservationPrice,
        giftCard: giftCard.present ? giftCard.value : this.giftCard,
        roundingAmount:
            roundingAmount.present ? roundingAmount.value : this.roundingAmount,
        tipAmount: tipAmount.present ? tipAmount.value : this.tipAmount,
        donationAmount:
            donationAmount.present ? donationAmount.value : this.donationAmount,
        donationForId:
            donationForId.present ? donationForId.value : this.donationForId,
        supervisorId:
            supervisorId.present ? supervisorId.value : this.supervisorId,
        reference: reference.present ? reference.value : this.reference,
        trackingStatusId: trackingStatusId.present
            ? trackingStatusId.value
            : this.trackingStatusId,
        orderStatusTracking: orderStatusTracking.present
            ? orderStatusTracking.value
            : this.orderStatusTracking,
        waiters: waiters.present ? waiters.value : this.waiters,
        couponId: couponId.present ? couponId.value : this.couponId,
        createdOn: createdOn.present ? createdOn.value : this.createdOn,
        createdBy: createdBy.present ? createdBy.value : this.createdBy,
        lastModifiedBy:
            lastModifiedBy.present ? lastModifiedBy.value : this.lastModifiedBy,
        lastModifiedOn:
            lastModifiedOn.present ? lastModifiedOn.value : this.lastModifiedOn,
        table: table.present ? table.value : this.table,
        delivery: delivery.present ? delivery.value : this.delivery,
        customerName:
            customerName.present ? customerName.value : this.customerName,
        customerPhone:
            customerPhone.present ? customerPhone.value : this.customerPhone,
      );
  @override
  String toString() {
    return (StringBuffer('OrderEntityData(')
          ..write('posTransactionType: $posTransactionType, ')
          ..write('idSeq: $idSeq, ')
          ..write('invoiceNumber: $invoiceNumber, ')
          ..write('deviceId: $deviceId, ')
          ..write('startDate: $startDate, ')
          ..write('timeOfReceipt: $timeOfReceipt, ')
          ..write('parentOrderId: $parentOrderId, ')
          ..write('splitIndex: $splitIndex, ')
          ..write('orderRef: $orderRef, ')
          ..write('callName: $callName, ')
          ..write('callNumber: $callNumber, ')
          ..write('orderType: $orderType, ')
          ..write('status: $status, ')
          ..write('paymentStatus: $paymentStatus, ')
          ..write('refundStatus: $refundStatus, ')
          ..write('deliveryStatus: $deliveryStatus, ')
          ..write('orderSource: $orderSource, ')
          ..write('endTime: $endTime, ')
          ..write('deliveryCompanyInfoId: $deliveryCompanyInfoId, ')
          ..write('priceListId: $priceListId, ')
          ..write('creatorBy: $creatorBy, ')
          ..write('closeBy: $closeBy, ')
          ..write('tableId: $tableId, ')
          ..write('numberVistor: $numberVistor, ')
          ..write('customer: $customer, ')
          ..write('address: $address, ')
          ..write('promotion: $promotion, ')
          ..write('discount: $discount, ')
          ..write('products: $products, ')
          ..write('priceDiscount: $priceDiscount, ')
          ..write('pricePromotion: $pricePromotion, ')
          ..write('note: $note, ')
          ..write('kitchenNote: $kitchenNote, ')
          ..write('msgCansel: $msgCansel, ')
          ..write('subTotal: $subTotal, ')
          ..write('charges: $charges, ')
          ..write('chargeValues: $chargeValues, ')
          ..write('payments: $payments, ')
          ..write('totalCharge: $totalCharge, ')
          ..write('taxPrice: $taxPrice, ')
          ..write('totalPaid: $totalPaid, ')
          ..write('checksum: $checksum, ')
          ..write('masterChecksum: $masterChecksum, ')
          ..write('serverChecksum: $serverChecksum, ')
          ..write('shiftId: $shiftId, ')
          ..write('tillId: $tillId, ')
          ..write(
              'totalDiscountForOrderAndProduct: $totalDiscountForOrderAndProduct, ')
          ..write('kitchenInfo: $kitchenInfo, ')
          ..write('currency: $currency, ')
          ..write('paymentCurrency: $paymentCurrency, ')
          ..write('minimumReservationPrice: $minimumReservationPrice, ')
          ..write('giftCard: $giftCard, ')
          ..write('roundingAmount: $roundingAmount, ')
          ..write('tipAmount: $tipAmount, ')
          ..write('donationAmount: $donationAmount, ')
          ..write('donationForId: $donationForId, ')
          ..write('supervisorId: $supervisorId, ')
          ..write('reference: $reference, ')
          ..write('trackingStatusId: $trackingStatusId, ')
          ..write('orderStatusTracking: $orderStatusTracking, ')
          ..write('waiters: $waiters, ')
          ..write('couponId: $couponId, ')
          ..write('createdOn: $createdOn, ')
          ..write('createdBy: $createdBy, ')
          ..write('lastModifiedBy: $lastModifiedBy, ')
          ..write('lastModifiedOn: $lastModifiedOn, ')
          ..write('table: $table, ')
          ..write('delivery: $delivery, ')
          ..write('customerName: $customerName, ')
          ..write('customerPhone: $customerPhone')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
        posTransactionType,
        idSeq,
        invoiceNumber,
        deviceId,
        startDate,
        timeOfReceipt,
        parentOrderId,
        splitIndex,
        orderRef,
        callName,
        callNumber,
        orderType,
        status,
        paymentStatus,
        refundStatus,
        deliveryStatus,
        orderSource,
        endTime,
        deliveryCompanyInfoId,
        priceListId,
        creatorBy,
        closeBy,
        tableId,
        numberVistor,
        customer,
        address,
        promotion,
        discount,
        products,
        priceDiscount,
        pricePromotion,
        note,
        kitchenNote,
        msgCansel,
        subTotal,
        charges,
        chargeValues,
        payments,
        totalCharge,
        taxPrice,
        totalPaid,
        checksum,
        masterChecksum,
        serverChecksum,
        shiftId,
        tillId,
        totalDiscountForOrderAndProduct,
        kitchenInfo,
        currency,
        paymentCurrency,
        minimumReservationPrice,
        giftCard,
        roundingAmount,
        tipAmount,
        donationAmount,
        donationForId,
        supervisorId,
        reference,
        trackingStatusId,
        orderStatusTracking,
        waiters,
        couponId,
        createdOn,
        createdBy,
        lastModifiedBy,
        lastModifiedOn,
        table,
        delivery,
        customerName,
        customerPhone
      ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is OrderEntityData &&
          other.posTransactionType == this.posTransactionType &&
          other.idSeq == this.idSeq &&
          other.invoiceNumber == this.invoiceNumber &&
          other.deviceId == this.deviceId &&
          other.startDate == this.startDate &&
          other.timeOfReceipt == this.timeOfReceipt &&
          other.parentOrderId == this.parentOrderId &&
          other.splitIndex == this.splitIndex &&
          other.orderRef == this.orderRef &&
          other.callName == this.callName &&
          other.callNumber == this.callNumber &&
          other.orderType == this.orderType &&
          other.status == this.status &&
          other.paymentStatus == this.paymentStatus &&
          other.refundStatus == this.refundStatus &&
          other.deliveryStatus == this.deliveryStatus &&
          other.orderSource == this.orderSource &&
          other.endTime == this.endTime &&
          other.deliveryCompanyInfoId == this.deliveryCompanyInfoId &&
          other.priceListId == this.priceListId &&
          other.creatorBy == this.creatorBy &&
          other.closeBy == this.closeBy &&
          other.tableId == this.tableId &&
          other.numberVistor == this.numberVistor &&
          other.customer == this.customer &&
          other.address == this.address &&
          other.promotion == this.promotion &&
          other.discount == this.discount &&
          other.products == this.products &&
          other.priceDiscount == this.priceDiscount &&
          other.pricePromotion == this.pricePromotion &&
          other.note == this.note &&
          other.kitchenNote == this.kitchenNote &&
          other.msgCansel == this.msgCansel &&
          other.subTotal == this.subTotal &&
          other.charges == this.charges &&
          other.chargeValues == this.chargeValues &&
          other.payments == this.payments &&
          other.totalCharge == this.totalCharge &&
          other.taxPrice == this.taxPrice &&
          other.totalPaid == this.totalPaid &&
          other.checksum == this.checksum &&
          other.masterChecksum == this.masterChecksum &&
          other.serverChecksum == this.serverChecksum &&
          other.shiftId == this.shiftId &&
          other.tillId == this.tillId &&
          other.totalDiscountForOrderAndProduct ==
              this.totalDiscountForOrderAndProduct &&
          other.kitchenInfo == this.kitchenInfo &&
          other.currency == this.currency &&
          other.paymentCurrency == this.paymentCurrency &&
          other.minimumReservationPrice == this.minimumReservationPrice &&
          other.giftCard == this.giftCard &&
          other.roundingAmount == this.roundingAmount &&
          other.tipAmount == this.tipAmount &&
          other.donationAmount == this.donationAmount &&
          other.donationForId == this.donationForId &&
          other.supervisorId == this.supervisorId &&
          other.reference == this.reference &&
          other.trackingStatusId == this.trackingStatusId &&
          other.orderStatusTracking == this.orderStatusTracking &&
          other.waiters == this.waiters &&
          other.couponId == this.couponId &&
          other.createdOn == this.createdOn &&
          other.createdBy == this.createdBy &&
          other.lastModifiedBy == this.lastModifiedBy &&
          other.lastModifiedOn == this.lastModifiedOn &&
          other.table == this.table &&
          other.delivery == this.delivery &&
          other.customerName == this.customerName &&
          other.customerPhone == this.customerPhone);
}

class OrderEntityCompanion extends UpdateCompanion<OrderEntityData> {
  final Value<int?> posTransactionType;
  final Value<int?> idSeq;
  final Value<String?> invoiceNumber;
  final Value<String?> deviceId;
  final Value<DateTime> startDate;
  final Value<DateTime?> timeOfReceipt;
  final Value<String?> parentOrderId;
  final Value<int?> splitIndex;
  final Value<String> orderRef;
  final Value<String?> callName;
  final Value<int?> callNumber;
  final Value<int> orderType;
  final Value<int> status;
  final Value<int?> paymentStatus;
  final Value<int?> refundStatus;
  final Value<int?> deliveryStatus;
  final Value<int?> orderSource;
  final Value<DateTime?> endTime;
  final Value<dynamic> deliveryCompanyInfoId;
  final Value<String?> priceListId;
  final Value<dynamic> creatorBy;
  final Value<dynamic> closeBy;
  final Value<String?> tableId;
  final Value<int?> numberVistor;
  final Value<dynamic> customer;
  final Value<dynamic> address;
  final Value<dynamic> promotion;
  final Value<dynamic> discount;
  final Value<dynamic> products;
  final Value<double?> priceDiscount;
  final Value<double?> pricePromotion;
  final Value<String?> note;
  final Value<String?> kitchenNote;
  final Value<String?> msgCansel;
  final Value<double> subTotal;
  final Value<dynamic> charges;
  final Value<dynamic> chargeValues;
  final Value<dynamic> payments;
  final Value<double?> totalCharge;
  final Value<double?> taxPrice;
  final Value<double?> totalPaid;
  final Value<String?> checksum;
  final Value<String?> masterChecksum;
  final Value<String?> serverChecksum;
  final Value<String?> shiftId;
  final Value<String?> tillId;
  final Value<double?> totalDiscountForOrderAndProduct;
  final Value<dynamic> kitchenInfo;
  final Value<dynamic> currency;
  final Value<dynamic> paymentCurrency;
  final Value<double?> minimumReservationPrice;
  final Value<dynamic> giftCard;
  final Value<double?> roundingAmount;
  final Value<double?> tipAmount;
  final Value<double?> donationAmount;
  final Value<String?> donationForId;
  final Value<String?> supervisorId;
  final Value<String?> reference;
  final Value<String?> trackingStatusId;
  final Value<dynamic> orderStatusTracking;
  final Value<dynamic> waiters;
  final Value<String?> couponId;
  final Value<String?> createdOn;
  final Value<String?> createdBy;
  final Value<String?> lastModifiedBy;
  final Value<String?> lastModifiedOn;
  final Value<dynamic> table;
  final Value<dynamic> delivery;
  final Value<String?> customerName;
  final Value<String?> customerPhone;
  const OrderEntityCompanion({
    this.posTransactionType = const Value.absent(),
    this.idSeq = const Value.absent(),
    this.invoiceNumber = const Value.absent(),
    this.deviceId = const Value.absent(),
    this.startDate = const Value.absent(),
    this.timeOfReceipt = const Value.absent(),
    this.parentOrderId = const Value.absent(),
    this.splitIndex = const Value.absent(),
    this.orderRef = const Value.absent(),
    this.callName = const Value.absent(),
    this.callNumber = const Value.absent(),
    this.orderType = const Value.absent(),
    this.status = const Value.absent(),
    this.paymentStatus = const Value.absent(),
    this.refundStatus = const Value.absent(),
    this.deliveryStatus = const Value.absent(),
    this.orderSource = const Value.absent(),
    this.endTime = const Value.absent(),
    this.deliveryCompanyInfoId = const Value.absent(),
    this.priceListId = const Value.absent(),
    this.creatorBy = const Value.absent(),
    this.closeBy = const Value.absent(),
    this.tableId = const Value.absent(),
    this.numberVistor = const Value.absent(),
    this.customer = const Value.absent(),
    this.address = const Value.absent(),
    this.promotion = const Value.absent(),
    this.discount = const Value.absent(),
    this.products = const Value.absent(),
    this.priceDiscount = const Value.absent(),
    this.pricePromotion = const Value.absent(),
    this.note = const Value.absent(),
    this.kitchenNote = const Value.absent(),
    this.msgCansel = const Value.absent(),
    this.subTotal = const Value.absent(),
    this.charges = const Value.absent(),
    this.chargeValues = const Value.absent(),
    this.payments = const Value.absent(),
    this.totalCharge = const Value.absent(),
    this.taxPrice = const Value.absent(),
    this.totalPaid = const Value.absent(),
    this.checksum = const Value.absent(),
    this.masterChecksum = const Value.absent(),
    this.serverChecksum = const Value.absent(),
    this.shiftId = const Value.absent(),
    this.tillId = const Value.absent(),
    this.totalDiscountForOrderAndProduct = const Value.absent(),
    this.kitchenInfo = const Value.absent(),
    this.currency = const Value.absent(),
    this.paymentCurrency = const Value.absent(),
    this.minimumReservationPrice = const Value.absent(),
    this.giftCard = const Value.absent(),
    this.roundingAmount = const Value.absent(),
    this.tipAmount = const Value.absent(),
    this.donationAmount = const Value.absent(),
    this.donationForId = const Value.absent(),
    this.supervisorId = const Value.absent(),
    this.reference = const Value.absent(),
    this.trackingStatusId = const Value.absent(),
    this.orderStatusTracking = const Value.absent(),
    this.waiters = const Value.absent(),
    this.couponId = const Value.absent(),
    this.createdOn = const Value.absent(),
    this.createdBy = const Value.absent(),
    this.lastModifiedBy = const Value.absent(),
    this.lastModifiedOn = const Value.absent(),
    this.table = const Value.absent(),
    this.delivery = const Value.absent(),
    this.customerName = const Value.absent(),
    this.customerPhone = const Value.absent(),
  });
  OrderEntityCompanion.insert({
    this.posTransactionType = const Value.absent(),
    this.idSeq = const Value.absent(),
    this.invoiceNumber = const Value.absent(),
    this.deviceId = const Value.absent(),
    required DateTime startDate,
    this.timeOfReceipt = const Value.absent(),
    this.parentOrderId = const Value.absent(),
    this.splitIndex = const Value.absent(),
    required String orderRef,
    this.callName = const Value.absent(),
    this.callNumber = const Value.absent(),
    required int orderType,
    required int status,
    this.paymentStatus = const Value.absent(),
    this.refundStatus = const Value.absent(),
    this.deliveryStatus = const Value.absent(),
    this.orderSource = const Value.absent(),
    this.endTime = const Value.absent(),
    this.deliveryCompanyInfoId = const Value.absent(),
    this.priceListId = const Value.absent(),
    this.creatorBy = const Value.absent(),
    this.closeBy = const Value.absent(),
    this.tableId = const Value.absent(),
    this.numberVistor = const Value.absent(),
    this.customer = const Value.absent(),
    this.address = const Value.absent(),
    this.promotion = const Value.absent(),
    this.discount = const Value.absent(),
    this.products = const Value.absent(),
    this.priceDiscount = const Value.absent(),
    this.pricePromotion = const Value.absent(),
    this.note = const Value.absent(),
    this.kitchenNote = const Value.absent(),
    this.msgCansel = const Value.absent(),
    this.subTotal = const Value.absent(),
    this.charges = const Value.absent(),
    this.chargeValues = const Value.absent(),
    this.payments = const Value.absent(),
    this.totalCharge = const Value.absent(),
    this.taxPrice = const Value.absent(),
    this.totalPaid = const Value.absent(),
    this.checksum = const Value.absent(),
    this.masterChecksum = const Value.absent(),
    this.serverChecksum = const Value.absent(),
    this.shiftId = const Value.absent(),
    this.tillId = const Value.absent(),
    this.totalDiscountForOrderAndProduct = const Value.absent(),
    this.kitchenInfo = const Value.absent(),
    this.currency = const Value.absent(),
    this.paymentCurrency = const Value.absent(),
    this.minimumReservationPrice = const Value.absent(),
    this.giftCard = const Value.absent(),
    this.roundingAmount = const Value.absent(),
    this.tipAmount = const Value.absent(),
    this.donationAmount = const Value.absent(),
    this.donationForId = const Value.absent(),
    this.supervisorId = const Value.absent(),
    this.reference = const Value.absent(),
    this.trackingStatusId = const Value.absent(),
    this.orderStatusTracking = const Value.absent(),
    this.waiters = const Value.absent(),
    this.couponId = const Value.absent(),
    this.createdOn = const Value.absent(),
    this.createdBy = const Value.absent(),
    this.lastModifiedBy = const Value.absent(),
    this.lastModifiedOn = const Value.absent(),
    this.table = const Value.absent(),
    this.delivery = const Value.absent(),
    this.customerName = const Value.absent(),
    this.customerPhone = const Value.absent(),
  })  : startDate = Value(startDate),
        orderRef = Value(orderRef),
        orderType = Value(orderType),
        status = Value(status);
  static Insertable<OrderEntityData> custom({
    Expression<int>? posTransactionType,
    Expression<int>? idSeq,
    Expression<String>? invoiceNumber,
    Expression<String>? deviceId,
    Expression<DateTime>? startDate,
    Expression<DateTime>? timeOfReceipt,
    Expression<String>? parentOrderId,
    Expression<int>? splitIndex,
    Expression<String>? orderRef,
    Expression<String>? callName,
    Expression<int>? callNumber,
    Expression<int>? orderType,
    Expression<int>? status,
    Expression<int>? paymentStatus,
    Expression<int>? refundStatus,
    Expression<int>? deliveryStatus,
    Expression<int>? orderSource,
    Expression<DateTime>? endTime,
    Expression<String>? deliveryCompanyInfoId,
    Expression<String>? priceListId,
    Expression<String>? creatorBy,
    Expression<String>? closeBy,
    Expression<String>? tableId,
    Expression<int>? numberVistor,
    Expression<String>? customer,
    Expression<String>? address,
    Expression<String>? promotion,
    Expression<String>? discount,
    Expression<String>? products,
    Expression<double>? priceDiscount,
    Expression<double>? pricePromotion,
    Expression<String>? note,
    Expression<String>? kitchenNote,
    Expression<String>? msgCansel,
    Expression<double>? subTotal,
    Expression<String>? charges,
    Expression<String>? chargeValues,
    Expression<String>? payments,
    Expression<double>? totalCharge,
    Expression<double>? taxPrice,
    Expression<double>? totalPaid,
    Expression<String>? checksum,
    Expression<String>? masterChecksum,
    Expression<String>? serverChecksum,
    Expression<String>? shiftId,
    Expression<String>? tillId,
    Expression<double>? totalDiscountForOrderAndProduct,
    Expression<String>? kitchenInfo,
    Expression<String>? currency,
    Expression<String>? paymentCurrency,
    Expression<double>? minimumReservationPrice,
    Expression<String>? giftCard,
    Expression<double>? roundingAmount,
    Expression<double>? tipAmount,
    Expression<double>? donationAmount,
    Expression<String>? donationForId,
    Expression<String>? supervisorId,
    Expression<String>? reference,
    Expression<String>? trackingStatusId,
    Expression<String>? orderStatusTracking,
    Expression<String>? waiters,
    Expression<String>? couponId,
    Expression<String>? createdOn,
    Expression<String>? createdBy,
    Expression<String>? lastModifiedBy,
    Expression<String>? lastModifiedOn,
    Expression<String>? table,
    Expression<String>? delivery,
    Expression<String>? customerName,
    Expression<String>? customerPhone,
  }) {
    return RawValuesInsertable({
      if (posTransactionType != null)
        'pos_transaction_type': posTransactionType,
      if (idSeq != null) 'id_seq': idSeq,
      if (invoiceNumber != null) 'invoice_number': invoiceNumber,
      if (deviceId != null) 'device_id': deviceId,
      if (startDate != null) 'start_date': startDate,
      if (timeOfReceipt != null) 'time_of_receipt': timeOfReceipt,
      if (parentOrderId != null) 'parent_order_id': parentOrderId,
      if (splitIndex != null) 'split_index': splitIndex,
      if (orderRef != null) 'order_ref': orderRef,
      if (callName != null) 'call_name': callName,
      if (callNumber != null) 'call_number': callNumber,
      if (orderType != null) 'order_type': orderType,
      if (status != null) 'status': status,
      if (paymentStatus != null) 'payment_status': paymentStatus,
      if (refundStatus != null) 'refund_status': refundStatus,
      if (deliveryStatus != null) 'delivery_status': deliveryStatus,
      if (orderSource != null) 'order_source': orderSource,
      if (endTime != null) 'end_time': endTime,
      if (deliveryCompanyInfoId != null)
        'delivery_company_info_id': deliveryCompanyInfoId,
      if (priceListId != null) 'price_list_id': priceListId,
      if (creatorBy != null) 'creator_by': creatorBy,
      if (closeBy != null) 'close_by': closeBy,
      if (tableId != null) 'table_id': tableId,
      if (numberVistor != null) 'number_vistor': numberVistor,
      if (customer != null) 'customer': customer,
      if (address != null) 'address': address,
      if (promotion != null) 'promotion': promotion,
      if (discount != null) 'discount': discount,
      if (products != null) 'products': products,
      if (priceDiscount != null) 'price_discount': priceDiscount,
      if (pricePromotion != null) 'price_promotion': pricePromotion,
      if (note != null) 'note': note,
      if (kitchenNote != null) 'kitchen_note': kitchenNote,
      if (msgCansel != null) 'msg_cansel': msgCansel,
      if (subTotal != null) 'sub_total': subTotal,
      if (charges != null) 'charges': charges,
      if (chargeValues != null) 'charge_values': chargeValues,
      if (payments != null) 'payments': payments,
      if (totalCharge != null) 'total_charge': totalCharge,
      if (taxPrice != null) 'tax_price': taxPrice,
      if (totalPaid != null) 'total_paid': totalPaid,
      if (checksum != null) 'checksum': checksum,
      if (masterChecksum != null) 'master_checksum': masterChecksum,
      if (serverChecksum != null) 'server_checksum': serverChecksum,
      if (shiftId != null) 'shift_id': shiftId,
      if (tillId != null) 'till_id': tillId,
      if (totalDiscountForOrderAndProduct != null)
        'total_discount_for_order_and_product': totalDiscountForOrderAndProduct,
      if (kitchenInfo != null) 'kitchen_info': kitchenInfo,
      if (currency != null) 'currency': currency,
      if (paymentCurrency != null) 'payment_currency': paymentCurrency,
      if (minimumReservationPrice != null)
        'minimum_reservation_price': minimumReservationPrice,
      if (giftCard != null) 'gift_card': giftCard,
      if (roundingAmount != null) 'rounding_amount': roundingAmount,
      if (tipAmount != null) 'tip_amount': tipAmount,
      if (donationAmount != null) 'donation_amount': donationAmount,
      if (donationForId != null) 'donation_for_id': donationForId,
      if (supervisorId != null) 'supervisor_id': supervisorId,
      if (reference != null) 'reference': reference,
      if (trackingStatusId != null) 'tracking_status_id': trackingStatusId,
      if (orderStatusTracking != null)
        'order_status_tracking': orderStatusTracking,
      if (waiters != null) 'waiters': waiters,
      if (couponId != null) 'coupon_id': couponId,
      if (createdOn != null) 'created_on': createdOn,
      if (createdBy != null) 'created_by': createdBy,
      if (lastModifiedBy != null) 'last_modified_by': lastModifiedBy,
      if (lastModifiedOn != null) 'last_modified_on': lastModifiedOn,
      if (table != null) 'table': table,
      if (delivery != null) 'delivery': delivery,
      if (customerName != null) 'customer_name': customerName,
      if (customerPhone != null) 'customer_phone': customerPhone,
    });
  }

  OrderEntityCompanion copyWith(
      {Value<int?>? posTransactionType,
      Value<int?>? idSeq,
      Value<String?>? invoiceNumber,
      Value<String?>? deviceId,
      Value<DateTime>? startDate,
      Value<DateTime?>? timeOfReceipt,
      Value<String?>? parentOrderId,
      Value<int?>? splitIndex,
      Value<String>? orderRef,
      Value<String?>? callName,
      Value<int?>? callNumber,
      Value<int>? orderType,
      Value<int>? status,
      Value<int?>? paymentStatus,
      Value<int?>? refundStatus,
      Value<int?>? deliveryStatus,
      Value<int?>? orderSource,
      Value<DateTime?>? endTime,
      Value<dynamic>? deliveryCompanyInfoId,
      Value<String?>? priceListId,
      Value<dynamic>? creatorBy,
      Value<dynamic>? closeBy,
      Value<String?>? tableId,
      Value<int?>? numberVistor,
      Value<dynamic>? customer,
      Value<dynamic>? address,
      Value<dynamic>? promotion,
      Value<dynamic>? discount,
      Value<dynamic>? products,
      Value<double?>? priceDiscount,
      Value<double?>? pricePromotion,
      Value<String?>? note,
      Value<String?>? kitchenNote,
      Value<String?>? msgCansel,
      Value<double>? subTotal,
      Value<dynamic>? charges,
      Value<dynamic>? chargeValues,
      Value<dynamic>? payments,
      Value<double?>? totalCharge,
      Value<double?>? taxPrice,
      Value<double?>? totalPaid,
      Value<String?>? checksum,
      Value<String?>? masterChecksum,
      Value<String?>? serverChecksum,
      Value<String?>? shiftId,
      Value<String?>? tillId,
      Value<double?>? totalDiscountForOrderAndProduct,
      Value<dynamic>? kitchenInfo,
      Value<dynamic>? currency,
      Value<dynamic>? paymentCurrency,
      Value<double?>? minimumReservationPrice,
      Value<dynamic>? giftCard,
      Value<double?>? roundingAmount,
      Value<double?>? tipAmount,
      Value<double?>? donationAmount,
      Value<String?>? donationForId,
      Value<String?>? supervisorId,
      Value<String?>? reference,
      Value<String?>? trackingStatusId,
      Value<dynamic>? orderStatusTracking,
      Value<dynamic>? waiters,
      Value<String?>? couponId,
      Value<String?>? createdOn,
      Value<String?>? createdBy,
      Value<String?>? lastModifiedBy,
      Value<String?>? lastModifiedOn,
      Value<dynamic>? table,
      Value<dynamic>? delivery,
      Value<String?>? customerName,
      Value<String?>? customerPhone}) {
    return OrderEntityCompanion(
      posTransactionType: posTransactionType ?? this.posTransactionType,
      idSeq: idSeq ?? this.idSeq,
      invoiceNumber: invoiceNumber ?? this.invoiceNumber,
      deviceId: deviceId ?? this.deviceId,
      startDate: startDate ?? this.startDate,
      timeOfReceipt: timeOfReceipt ?? this.timeOfReceipt,
      parentOrderId: parentOrderId ?? this.parentOrderId,
      splitIndex: splitIndex ?? this.splitIndex,
      orderRef: orderRef ?? this.orderRef,
      callName: callName ?? this.callName,
      callNumber: callNumber ?? this.callNumber,
      orderType: orderType ?? this.orderType,
      status: status ?? this.status,
      paymentStatus: paymentStatus ?? this.paymentStatus,
      refundStatus: refundStatus ?? this.refundStatus,
      deliveryStatus: deliveryStatus ?? this.deliveryStatus,
      orderSource: orderSource ?? this.orderSource,
      endTime: endTime ?? this.endTime,
      deliveryCompanyInfoId:
          deliveryCompanyInfoId ?? this.deliveryCompanyInfoId,
      priceListId: priceListId ?? this.priceListId,
      creatorBy: creatorBy ?? this.creatorBy,
      closeBy: closeBy ?? this.closeBy,
      tableId: tableId ?? this.tableId,
      numberVistor: numberVistor ?? this.numberVistor,
      customer: customer ?? this.customer,
      address: address ?? this.address,
      promotion: promotion ?? this.promotion,
      discount: discount ?? this.discount,
      products: products ?? this.products,
      priceDiscount: priceDiscount ?? this.priceDiscount,
      pricePromotion: pricePromotion ?? this.pricePromotion,
      note: note ?? this.note,
      kitchenNote: kitchenNote ?? this.kitchenNote,
      msgCansel: msgCansel ?? this.msgCansel,
      subTotal: subTotal ?? this.subTotal,
      charges: charges ?? this.charges,
      chargeValues: chargeValues ?? this.chargeValues,
      payments: payments ?? this.payments,
      totalCharge: totalCharge ?? this.totalCharge,
      taxPrice: taxPrice ?? this.taxPrice,
      totalPaid: totalPaid ?? this.totalPaid,
      checksum: checksum ?? this.checksum,
      masterChecksum: masterChecksum ?? this.masterChecksum,
      serverChecksum: serverChecksum ?? this.serverChecksum,
      shiftId: shiftId ?? this.shiftId,
      tillId: tillId ?? this.tillId,
      totalDiscountForOrderAndProduct: totalDiscountForOrderAndProduct ??
          this.totalDiscountForOrderAndProduct,
      kitchenInfo: kitchenInfo ?? this.kitchenInfo,
      currency: currency ?? this.currency,
      paymentCurrency: paymentCurrency ?? this.paymentCurrency,
      minimumReservationPrice:
          minimumReservationPrice ?? this.minimumReservationPrice,
      giftCard: giftCard ?? this.giftCard,
      roundingAmount: roundingAmount ?? this.roundingAmount,
      tipAmount: tipAmount ?? this.tipAmount,
      donationAmount: donationAmount ?? this.donationAmount,
      donationForId: donationForId ?? this.donationForId,
      supervisorId: supervisorId ?? this.supervisorId,
      reference: reference ?? this.reference,
      trackingStatusId: trackingStatusId ?? this.trackingStatusId,
      orderStatusTracking: orderStatusTracking ?? this.orderStatusTracking,
      waiters: waiters ?? this.waiters,
      couponId: couponId ?? this.couponId,
      createdOn: createdOn ?? this.createdOn,
      createdBy: createdBy ?? this.createdBy,
      lastModifiedBy: lastModifiedBy ?? this.lastModifiedBy,
      lastModifiedOn: lastModifiedOn ?? this.lastModifiedOn,
      table: table ?? this.table,
      delivery: delivery ?? this.delivery,
      customerName: customerName ?? this.customerName,
      customerPhone: customerPhone ?? this.customerPhone,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (posTransactionType.present) {
      map['pos_transaction_type'] = Variable<int>(posTransactionType.value);
    }
    if (idSeq.present) {
      map['id_seq'] = Variable<int>(idSeq.value);
    }
    if (invoiceNumber.present) {
      map['invoice_number'] = Variable<String>(invoiceNumber.value);
    }
    if (deviceId.present) {
      map['device_id'] = Variable<String>(deviceId.value);
    }
    if (startDate.present) {
      map['start_date'] = Variable<DateTime>(startDate.value);
    }
    if (timeOfReceipt.present) {
      map['time_of_receipt'] = Variable<DateTime>(timeOfReceipt.value);
    }
    if (parentOrderId.present) {
      map['parent_order_id'] = Variable<String>(parentOrderId.value);
    }
    if (splitIndex.present) {
      map['split_index'] = Variable<int>(splitIndex.value);
    }
    if (orderRef.present) {
      map['order_ref'] = Variable<String>(orderRef.value);
    }
    if (callName.present) {
      map['call_name'] = Variable<String>(callName.value);
    }
    if (callNumber.present) {
      map['call_number'] = Variable<int>(callNumber.value);
    }
    if (orderType.present) {
      map['order_type'] = Variable<int>(orderType.value);
    }
    if (status.present) {
      map['status'] = Variable<int>(status.value);
    }
    if (paymentStatus.present) {
      map['payment_status'] = Variable<int>(paymentStatus.value);
    }
    if (refundStatus.present) {
      map['refund_status'] = Variable<int>(refundStatus.value);
    }
    if (deliveryStatus.present) {
      map['delivery_status'] = Variable<int>(deliveryStatus.value);
    }
    if (orderSource.present) {
      map['order_source'] = Variable<int>(orderSource.value);
    }
    if (endTime.present) {
      map['end_time'] = Variable<DateTime>(endTime.value);
    }
    if (deliveryCompanyInfoId.present) {
      map['delivery_company_info_id'] = Variable<String>($OrderEntityTable
          .$converterdeliveryCompanyInfoId
          .toSql(deliveryCompanyInfoId.value));
    }
    if (priceListId.present) {
      map['price_list_id'] = Variable<String>(priceListId.value);
    }
    if (creatorBy.present) {
      map['creator_by'] = Variable<String>(
          $OrderEntityTable.$convertercreatorBy.toSql(creatorBy.value));
    }
    if (closeBy.present) {
      map['close_by'] = Variable<String>(
          $OrderEntityTable.$convertercloseBy.toSql(closeBy.value));
    }
    if (tableId.present) {
      map['table_id'] = Variable<String>(tableId.value);
    }
    if (numberVistor.present) {
      map['number_vistor'] = Variable<int>(numberVistor.value);
    }
    if (customer.present) {
      map['customer'] = Variable<String>(
          $OrderEntityTable.$convertercustomer.toSql(customer.value));
    }
    if (address.present) {
      map['address'] = Variable<String>(
          $OrderEntityTable.$converteraddress.toSql(address.value));
    }
    if (promotion.present) {
      map['promotion'] = Variable<String>(
          $OrderEntityTable.$converterpromotion.toSql(promotion.value));
    }
    if (discount.present) {
      map['discount'] = Variable<String>(
          $OrderEntityTable.$converterdiscount.toSql(discount.value));
    }
    if (products.present) {
      map['products'] = Variable<String>(
          $OrderEntityTable.$converterproducts.toSql(products.value));
    }
    if (priceDiscount.present) {
      map['price_discount'] = Variable<double>(priceDiscount.value);
    }
    if (pricePromotion.present) {
      map['price_promotion'] = Variable<double>(pricePromotion.value);
    }
    if (note.present) {
      map['note'] = Variable<String>(note.value);
    }
    if (kitchenNote.present) {
      map['kitchen_note'] = Variable<String>(kitchenNote.value);
    }
    if (msgCansel.present) {
      map['msg_cansel'] = Variable<String>(msgCansel.value);
    }
    if (subTotal.present) {
      map['sub_total'] = Variable<double>(subTotal.value);
    }
    if (charges.present) {
      map['charges'] = Variable<String>(
          $OrderEntityTable.$convertercharges.toSql(charges.value));
    }
    if (chargeValues.present) {
      map['charge_values'] = Variable<String>(
          $OrderEntityTable.$converterchargeValues.toSql(chargeValues.value));
    }
    if (payments.present) {
      map['payments'] = Variable<String>(
          $OrderEntityTable.$converterpayments.toSql(payments.value));
    }
    if (totalCharge.present) {
      map['total_charge'] = Variable<double>(totalCharge.value);
    }
    if (taxPrice.present) {
      map['tax_price'] = Variable<double>(taxPrice.value);
    }
    if (totalPaid.present) {
      map['total_paid'] = Variable<double>(totalPaid.value);
    }
    if (checksum.present) {
      map['checksum'] = Variable<String>(checksum.value);
    }
    if (masterChecksum.present) {
      map['master_checksum'] = Variable<String>(masterChecksum.value);
    }
    if (serverChecksum.present) {
      map['server_checksum'] = Variable<String>(serverChecksum.value);
    }
    if (shiftId.present) {
      map['shift_id'] = Variable<String>(shiftId.value);
    }
    if (tillId.present) {
      map['till_id'] = Variable<String>(tillId.value);
    }
    if (totalDiscountForOrderAndProduct.present) {
      map['total_discount_for_order_and_product'] =
          Variable<double>(totalDiscountForOrderAndProduct.value);
    }
    if (kitchenInfo.present) {
      map['kitchen_info'] = Variable<String>(
          $OrderEntityTable.$converterkitchenInfo.toSql(kitchenInfo.value));
    }
    if (currency.present) {
      map['currency'] = Variable<String>(
          $OrderEntityTable.$convertercurrency.toSql(currency.value));
    }
    if (paymentCurrency.present) {
      map['payment_currency'] = Variable<String>($OrderEntityTable
          .$converterpaymentCurrency
          .toSql(paymentCurrency.value));
    }
    if (minimumReservationPrice.present) {
      map['minimum_reservation_price'] =
          Variable<double>(minimumReservationPrice.value);
    }
    if (giftCard.present) {
      map['gift_card'] = Variable<String>(
          $OrderEntityTable.$convertergiftCard.toSql(giftCard.value));
    }
    if (roundingAmount.present) {
      map['rounding_amount'] = Variable<double>(roundingAmount.value);
    }
    if (tipAmount.present) {
      map['tip_amount'] = Variable<double>(tipAmount.value);
    }
    if (donationAmount.present) {
      map['donation_amount'] = Variable<double>(donationAmount.value);
    }
    if (donationForId.present) {
      map['donation_for_id'] = Variable<String>(donationForId.value);
    }
    if (supervisorId.present) {
      map['supervisor_id'] = Variable<String>(supervisorId.value);
    }
    if (reference.present) {
      map['reference'] = Variable<String>(reference.value);
    }
    if (trackingStatusId.present) {
      map['tracking_status_id'] = Variable<String>(trackingStatusId.value);
    }
    if (orderStatusTracking.present) {
      map['order_status_tracking'] = Variable<String>($OrderEntityTable
          .$converterorderStatusTracking
          .toSql(orderStatusTracking.value));
    }
    if (waiters.present) {
      map['waiters'] = Variable<String>(
          $OrderEntityTable.$converterwaiters.toSql(waiters.value));
    }
    if (couponId.present) {
      map['coupon_id'] = Variable<String>(couponId.value);
    }
    if (createdOn.present) {
      map['created_on'] = Variable<String>(createdOn.value);
    }
    if (createdBy.present) {
      map['created_by'] = Variable<String>(createdBy.value);
    }
    if (lastModifiedBy.present) {
      map['last_modified_by'] = Variable<String>(lastModifiedBy.value);
    }
    if (lastModifiedOn.present) {
      map['last_modified_on'] = Variable<String>(lastModifiedOn.value);
    }
    if (table.present) {
      map['table'] = Variable<String>(
          $OrderEntityTable.$convertertable.toSql(table.value));
    }
    if (delivery.present) {
      map['delivery'] = Variable<String>(
          $OrderEntityTable.$converterdelivery.toSql(delivery.value));
    }
    if (customerName.present) {
      map['customer_name'] = Variable<String>(customerName.value);
    }
    if (customerPhone.present) {
      map['customer_phone'] = Variable<String>(customerPhone.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('OrderEntityCompanion(')
          ..write('posTransactionType: $posTransactionType, ')
          ..write('idSeq: $idSeq, ')
          ..write('invoiceNumber: $invoiceNumber, ')
          ..write('deviceId: $deviceId, ')
          ..write('startDate: $startDate, ')
          ..write('timeOfReceipt: $timeOfReceipt, ')
          ..write('parentOrderId: $parentOrderId, ')
          ..write('splitIndex: $splitIndex, ')
          ..write('orderRef: $orderRef, ')
          ..write('callName: $callName, ')
          ..write('callNumber: $callNumber, ')
          ..write('orderType: $orderType, ')
          ..write('status: $status, ')
          ..write('paymentStatus: $paymentStatus, ')
          ..write('refundStatus: $refundStatus, ')
          ..write('deliveryStatus: $deliveryStatus, ')
          ..write('orderSource: $orderSource, ')
          ..write('endTime: $endTime, ')
          ..write('deliveryCompanyInfoId: $deliveryCompanyInfoId, ')
          ..write('priceListId: $priceListId, ')
          ..write('creatorBy: $creatorBy, ')
          ..write('closeBy: $closeBy, ')
          ..write('tableId: $tableId, ')
          ..write('numberVistor: $numberVistor, ')
          ..write('customer: $customer, ')
          ..write('address: $address, ')
          ..write('promotion: $promotion, ')
          ..write('discount: $discount, ')
          ..write('products: $products, ')
          ..write('priceDiscount: $priceDiscount, ')
          ..write('pricePromotion: $pricePromotion, ')
          ..write('note: $note, ')
          ..write('kitchenNote: $kitchenNote, ')
          ..write('msgCansel: $msgCansel, ')
          ..write('subTotal: $subTotal, ')
          ..write('charges: $charges, ')
          ..write('chargeValues: $chargeValues, ')
          ..write('payments: $payments, ')
          ..write('totalCharge: $totalCharge, ')
          ..write('taxPrice: $taxPrice, ')
          ..write('totalPaid: $totalPaid, ')
          ..write('checksum: $checksum, ')
          ..write('masterChecksum: $masterChecksum, ')
          ..write('serverChecksum: $serverChecksum, ')
          ..write('shiftId: $shiftId, ')
          ..write('tillId: $tillId, ')
          ..write(
              'totalDiscountForOrderAndProduct: $totalDiscountForOrderAndProduct, ')
          ..write('kitchenInfo: $kitchenInfo, ')
          ..write('currency: $currency, ')
          ..write('paymentCurrency: $paymentCurrency, ')
          ..write('minimumReservationPrice: $minimumReservationPrice, ')
          ..write('giftCard: $giftCard, ')
          ..write('roundingAmount: $roundingAmount, ')
          ..write('tipAmount: $tipAmount, ')
          ..write('donationAmount: $donationAmount, ')
          ..write('donationForId: $donationForId, ')
          ..write('supervisorId: $supervisorId, ')
          ..write('reference: $reference, ')
          ..write('trackingStatusId: $trackingStatusId, ')
          ..write('orderStatusTracking: $orderStatusTracking, ')
          ..write('waiters: $waiters, ')
          ..write('couponId: $couponId, ')
          ..write('createdOn: $createdOn, ')
          ..write('createdBy: $createdBy, ')
          ..write('lastModifiedBy: $lastModifiedBy, ')
          ..write('lastModifiedOn: $lastModifiedOn, ')
          ..write('table: $table, ')
          ..write('delivery: $delivery, ')
          ..write('customerName: $customerName, ')
          ..write('customerPhone: $customerPhone')
          ..write(')'))
        .toString();
  }
}

class $OrderHistoryEntityTable extends OrderHistoryEntity
    with TableInfo<$OrderHistoryEntityTable, OrderHistoryEntityData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $OrderHistoryEntityTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idSeqMeta = const VerificationMeta('idSeq');
  @override
  late final GeneratedColumn<int> idSeq = GeneratedColumn<int>(
      'id_seq', aliasedName, true,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _orderRefMeta =
      const VerificationMeta('orderRef');
  @override
  late final GeneratedColumn<String> orderRef = GeneratedColumn<String>(
      'order_ref', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _orderIdMeta =
      const VerificationMeta('orderId');
  @override
  late final GeneratedColumn<String> orderId = GeneratedColumn<String>(
      'order_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
      'user_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _userNameMeta =
      const VerificationMeta('userName');
  @override
  late final GeneratedColumn<String> userName = GeneratedColumn<String>(
      'user_name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _userFNameMeta =
      const VerificationMeta('userFName');
  @override
  late final GeneratedColumn<String> userFName = GeneratedColumn<String>(
      'user_f_name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _orderMeta = const VerificationMeta('order');
  @override
  late final GeneratedColumnWithTypeConverter<dynamic, String> order =
      GeneratedColumn<String>('order', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<dynamic>($OrderHistoryEntityTable.$converterorder);
  static const VerificationMeta _lastEditDateMeta =
      const VerificationMeta('lastEditDate');
  @override
  late final GeneratedColumn<DateTime> lastEditDate = GeneratedColumn<DateTime>(
      'last_edit_date', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _lastSyncDateMeta =
      const VerificationMeta('lastSyncDate');
  @override
  late final GeneratedColumn<DateTime> lastSyncDate = GeneratedColumn<DateTime>(
      'last_sync_date', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _sesstionIdMeta =
      const VerificationMeta('sesstionId');
  @override
  late final GeneratedColumn<String> sesstionId = GeneratedColumn<String>(
      'sesstion_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _checkSumHashMeta =
      const VerificationMeta('checkSumHash');
  @override
  late final GeneratedColumn<String> checkSumHash = GeneratedColumn<String>(
      'check_sum_hash', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        idSeq,
        orderRef,
        orderId,
        userId,
        userName,
        userFName,
        order,
        lastEditDate,
        lastSyncDate,
        sesstionId,
        checkSumHash
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'order_history_entity';
  @override
  VerificationContext validateIntegrity(
      Insertable<OrderHistoryEntityData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id_seq')) {
      context.handle(
          _idSeqMeta, idSeq.isAcceptableOrUnknown(data['id_seq']!, _idSeqMeta));
    }
    if (data.containsKey('order_ref')) {
      context.handle(_orderRefMeta,
          orderRef.isAcceptableOrUnknown(data['order_ref']!, _orderRefMeta));
    } else if (isInserting) {
      context.missing(_orderRefMeta);
    }
    if (data.containsKey('order_id')) {
      context.handle(_orderIdMeta,
          orderId.isAcceptableOrUnknown(data['order_id']!, _orderIdMeta));
    }
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('user_name')) {
      context.handle(_userNameMeta,
          userName.isAcceptableOrUnknown(data['user_name']!, _userNameMeta));
    }
    if (data.containsKey('user_f_name')) {
      context.handle(
          _userFNameMeta,
          userFName.isAcceptableOrUnknown(
              data['user_f_name']!, _userFNameMeta));
    }
    context.handle(_orderMeta, const VerificationResult.success());
    if (data.containsKey('last_edit_date')) {
      context.handle(
          _lastEditDateMeta,
          lastEditDate.isAcceptableOrUnknown(
              data['last_edit_date']!, _lastEditDateMeta));
    }
    if (data.containsKey('last_sync_date')) {
      context.handle(
          _lastSyncDateMeta,
          lastSyncDate.isAcceptableOrUnknown(
              data['last_sync_date']!, _lastSyncDateMeta));
    }
    if (data.containsKey('sesstion_id')) {
      context.handle(
          _sesstionIdMeta,
          sesstionId.isAcceptableOrUnknown(
              data['sesstion_id']!, _sesstionIdMeta));
    } else if (isInserting) {
      context.missing(_sesstionIdMeta);
    }
    if (data.containsKey('check_sum_hash')) {
      context.handle(
          _checkSumHashMeta,
          checkSumHash.isAcceptableOrUnknown(
              data['check_sum_hash']!, _checkSumHashMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {idSeq};
  @override
  List<Set<GeneratedColumn>> get uniqueKeys => [
        {orderRef, sesstionId, userId},
      ];
  @override
  OrderHistoryEntityData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return OrderHistoryEntityData(
      idSeq: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id_seq']),
      orderRef: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}order_ref'])!,
      orderId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}order_id']),
      userId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}user_id'])!,
      userName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}user_name']),
      userFName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}user_f_name']),
      order: $OrderHistoryEntityTable.$converterorder.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}order'])),
      lastEditDate: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}last_edit_date']),
      lastSyncDate: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}last_sync_date']),
      sesstionId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}sesstion_id'])!,
      checkSumHash: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}check_sum_hash']),
    );
  }

  @override
  $OrderHistoryEntityTable createAlias(String alias) {
    return $OrderHistoryEntityTable(attachedDatabase, alias);
  }

  static TypeConverter<dynamic, String?> $converterorder =
      const JsonTypeConverter();
}

class OrderHistoryEntityData extends DataClass
    implements Insertable<OrderHistoryEntityData> {
  final int? idSeq;
  final String orderRef;
  final String? orderId;
  final String userId;
  final String? userName;
  final String? userFName;
  final dynamic order;
  final DateTime? lastEditDate;
  final DateTime? lastSyncDate;
  final String sesstionId;
  final String? checkSumHash;
  const OrderHistoryEntityData(
      {this.idSeq,
      required this.orderRef,
      this.orderId,
      required this.userId,
      this.userName,
      this.userFName,
      this.order,
      this.lastEditDate,
      this.lastSyncDate,
      required this.sesstionId,
      this.checkSumHash});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || idSeq != null) {
      map['id_seq'] = Variable<int>(idSeq);
    }
    map['order_ref'] = Variable<String>(orderRef);
    if (!nullToAbsent || orderId != null) {
      map['order_id'] = Variable<String>(orderId);
    }
    map['user_id'] = Variable<String>(userId);
    if (!nullToAbsent || userName != null) {
      map['user_name'] = Variable<String>(userName);
    }
    if (!nullToAbsent || userFName != null) {
      map['user_f_name'] = Variable<String>(userFName);
    }
    if (!nullToAbsent || order != null) {
      map['order'] = Variable<String>(
          $OrderHistoryEntityTable.$converterorder.toSql(order));
    }
    if (!nullToAbsent || lastEditDate != null) {
      map['last_edit_date'] = Variable<DateTime>(lastEditDate);
    }
    if (!nullToAbsent || lastSyncDate != null) {
      map['last_sync_date'] = Variable<DateTime>(lastSyncDate);
    }
    map['sesstion_id'] = Variable<String>(sesstionId);
    if (!nullToAbsent || checkSumHash != null) {
      map['check_sum_hash'] = Variable<String>(checkSumHash);
    }
    return map;
  }

  OrderHistoryEntityCompanion toCompanion(bool nullToAbsent) {
    return OrderHistoryEntityCompanion(
      idSeq:
          idSeq == null && nullToAbsent ? const Value.absent() : Value(idSeq),
      orderRef: Value(orderRef),
      orderId: orderId == null && nullToAbsent
          ? const Value.absent()
          : Value(orderId),
      userId: Value(userId),
      userName: userName == null && nullToAbsent
          ? const Value.absent()
          : Value(userName),
      userFName: userFName == null && nullToAbsent
          ? const Value.absent()
          : Value(userFName),
      order:
          order == null && nullToAbsent ? const Value.absent() : Value(order),
      lastEditDate: lastEditDate == null && nullToAbsent
          ? const Value.absent()
          : Value(lastEditDate),
      lastSyncDate: lastSyncDate == null && nullToAbsent
          ? const Value.absent()
          : Value(lastSyncDate),
      sesstionId: Value(sesstionId),
      checkSumHash: checkSumHash == null && nullToAbsent
          ? const Value.absent()
          : Value(checkSumHash),
    );
  }

  factory OrderHistoryEntityData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return OrderHistoryEntityData(
      idSeq: serializer.fromJson<int?>(json['idSeq']),
      orderRef: serializer.fromJson<String>(json['orderRef']),
      orderId: serializer.fromJson<String?>(json['orderId']),
      userId: serializer.fromJson<String>(json['userId']),
      userName: serializer.fromJson<String?>(json['userName']),
      userFName: serializer.fromJson<String?>(json['userFName']),
      order: serializer.fromJson<dynamic>(json['order']),
      lastEditDate: serializer.fromJson<DateTime?>(json['lastEditDate']),
      lastSyncDate: serializer.fromJson<DateTime?>(json['lastSyncDate']),
      sesstionId: serializer.fromJson<String>(json['sesstionId']),
      checkSumHash: serializer.fromJson<String?>(json['checkSumHash']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'idSeq': serializer.toJson<int?>(idSeq),
      'orderRef': serializer.toJson<String>(orderRef),
      'orderId': serializer.toJson<String?>(orderId),
      'userId': serializer.toJson<String>(userId),
      'userName': serializer.toJson<String?>(userName),
      'userFName': serializer.toJson<String?>(userFName),
      'order': serializer.toJson<dynamic>(order),
      'lastEditDate': serializer.toJson<DateTime?>(lastEditDate),
      'lastSyncDate': serializer.toJson<DateTime?>(lastSyncDate),
      'sesstionId': serializer.toJson<String>(sesstionId),
      'checkSumHash': serializer.toJson<String?>(checkSumHash),
    };
  }

  OrderHistoryEntityData copyWith(
          {Value<int?> idSeq = const Value.absent(),
          String? orderRef,
          Value<String?> orderId = const Value.absent(),
          String? userId,
          Value<String?> userName = const Value.absent(),
          Value<String?> userFName = const Value.absent(),
          Value<dynamic> order = const Value.absent(),
          Value<DateTime?> lastEditDate = const Value.absent(),
          Value<DateTime?> lastSyncDate = const Value.absent(),
          String? sesstionId,
          Value<String?> checkSumHash = const Value.absent()}) =>
      OrderHistoryEntityData(
        idSeq: idSeq.present ? idSeq.value : this.idSeq,
        orderRef: orderRef ?? this.orderRef,
        orderId: orderId.present ? orderId.value : this.orderId,
        userId: userId ?? this.userId,
        userName: userName.present ? userName.value : this.userName,
        userFName: userFName.present ? userFName.value : this.userFName,
        order: order.present ? order.value : this.order,
        lastEditDate:
            lastEditDate.present ? lastEditDate.value : this.lastEditDate,
        lastSyncDate:
            lastSyncDate.present ? lastSyncDate.value : this.lastSyncDate,
        sesstionId: sesstionId ?? this.sesstionId,
        checkSumHash:
            checkSumHash.present ? checkSumHash.value : this.checkSumHash,
      );
  @override
  String toString() {
    return (StringBuffer('OrderHistoryEntityData(')
          ..write('idSeq: $idSeq, ')
          ..write('orderRef: $orderRef, ')
          ..write('orderId: $orderId, ')
          ..write('userId: $userId, ')
          ..write('userName: $userName, ')
          ..write('userFName: $userFName, ')
          ..write('order: $order, ')
          ..write('lastEditDate: $lastEditDate, ')
          ..write('lastSyncDate: $lastSyncDate, ')
          ..write('sesstionId: $sesstionId, ')
          ..write('checkSumHash: $checkSumHash')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(idSeq, orderRef, orderId, userId, userName,
      userFName, order, lastEditDate, lastSyncDate, sesstionId, checkSumHash);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is OrderHistoryEntityData &&
          other.idSeq == this.idSeq &&
          other.orderRef == this.orderRef &&
          other.orderId == this.orderId &&
          other.userId == this.userId &&
          other.userName == this.userName &&
          other.userFName == this.userFName &&
          other.order == this.order &&
          other.lastEditDate == this.lastEditDate &&
          other.lastSyncDate == this.lastSyncDate &&
          other.sesstionId == this.sesstionId &&
          other.checkSumHash == this.checkSumHash);
}

class OrderHistoryEntityCompanion
    extends UpdateCompanion<OrderHistoryEntityData> {
  final Value<int?> idSeq;
  final Value<String> orderRef;
  final Value<String?> orderId;
  final Value<String> userId;
  final Value<String?> userName;
  final Value<String?> userFName;
  final Value<dynamic> order;
  final Value<DateTime?> lastEditDate;
  final Value<DateTime?> lastSyncDate;
  final Value<String> sesstionId;
  final Value<String?> checkSumHash;
  const OrderHistoryEntityCompanion({
    this.idSeq = const Value.absent(),
    this.orderRef = const Value.absent(),
    this.orderId = const Value.absent(),
    this.userId = const Value.absent(),
    this.userName = const Value.absent(),
    this.userFName = const Value.absent(),
    this.order = const Value.absent(),
    this.lastEditDate = const Value.absent(),
    this.lastSyncDate = const Value.absent(),
    this.sesstionId = const Value.absent(),
    this.checkSumHash = const Value.absent(),
  });
  OrderHistoryEntityCompanion.insert({
    this.idSeq = const Value.absent(),
    required String orderRef,
    this.orderId = const Value.absent(),
    required String userId,
    this.userName = const Value.absent(),
    this.userFName = const Value.absent(),
    this.order = const Value.absent(),
    this.lastEditDate = const Value.absent(),
    this.lastSyncDate = const Value.absent(),
    required String sesstionId,
    this.checkSumHash = const Value.absent(),
  })  : orderRef = Value(orderRef),
        userId = Value(userId),
        sesstionId = Value(sesstionId);
  static Insertable<OrderHistoryEntityData> custom({
    Expression<int>? idSeq,
    Expression<String>? orderRef,
    Expression<String>? orderId,
    Expression<String>? userId,
    Expression<String>? userName,
    Expression<String>? userFName,
    Expression<String>? order,
    Expression<DateTime>? lastEditDate,
    Expression<DateTime>? lastSyncDate,
    Expression<String>? sesstionId,
    Expression<String>? checkSumHash,
  }) {
    return RawValuesInsertable({
      if (idSeq != null) 'id_seq': idSeq,
      if (orderRef != null) 'order_ref': orderRef,
      if (orderId != null) 'order_id': orderId,
      if (userId != null) 'user_id': userId,
      if (userName != null) 'user_name': userName,
      if (userFName != null) 'user_f_name': userFName,
      if (order != null) 'order': order,
      if (lastEditDate != null) 'last_edit_date': lastEditDate,
      if (lastSyncDate != null) 'last_sync_date': lastSyncDate,
      if (sesstionId != null) 'sesstion_id': sesstionId,
      if (checkSumHash != null) 'check_sum_hash': checkSumHash,
    });
  }

  OrderHistoryEntityCompanion copyWith(
      {Value<int?>? idSeq,
      Value<String>? orderRef,
      Value<String?>? orderId,
      Value<String>? userId,
      Value<String?>? userName,
      Value<String?>? userFName,
      Value<dynamic>? order,
      Value<DateTime?>? lastEditDate,
      Value<DateTime?>? lastSyncDate,
      Value<String>? sesstionId,
      Value<String?>? checkSumHash}) {
    return OrderHistoryEntityCompanion(
      idSeq: idSeq ?? this.idSeq,
      orderRef: orderRef ?? this.orderRef,
      orderId: orderId ?? this.orderId,
      userId: userId ?? this.userId,
      userName: userName ?? this.userName,
      userFName: userFName ?? this.userFName,
      order: order ?? this.order,
      lastEditDate: lastEditDate ?? this.lastEditDate,
      lastSyncDate: lastSyncDate ?? this.lastSyncDate,
      sesstionId: sesstionId ?? this.sesstionId,
      checkSumHash: checkSumHash ?? this.checkSumHash,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (idSeq.present) {
      map['id_seq'] = Variable<int>(idSeq.value);
    }
    if (orderRef.present) {
      map['order_ref'] = Variable<String>(orderRef.value);
    }
    if (orderId.present) {
      map['order_id'] = Variable<String>(orderId.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (userName.present) {
      map['user_name'] = Variable<String>(userName.value);
    }
    if (userFName.present) {
      map['user_f_name'] = Variable<String>(userFName.value);
    }
    if (order.present) {
      map['order'] = Variable<String>(
          $OrderHistoryEntityTable.$converterorder.toSql(order.value));
    }
    if (lastEditDate.present) {
      map['last_edit_date'] = Variable<DateTime>(lastEditDate.value);
    }
    if (lastSyncDate.present) {
      map['last_sync_date'] = Variable<DateTime>(lastSyncDate.value);
    }
    if (sesstionId.present) {
      map['sesstion_id'] = Variable<String>(sesstionId.value);
    }
    if (checkSumHash.present) {
      map['check_sum_hash'] = Variable<String>(checkSumHash.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('OrderHistoryEntityCompanion(')
          ..write('idSeq: $idSeq, ')
          ..write('orderRef: $orderRef, ')
          ..write('orderId: $orderId, ')
          ..write('userId: $userId, ')
          ..write('userName: $userName, ')
          ..write('userFName: $userFName, ')
          ..write('order: $order, ')
          ..write('lastEditDate: $lastEditDate, ')
          ..write('lastSyncDate: $lastSyncDate, ')
          ..write('sesstionId: $sesstionId, ')
          ..write('checkSumHash: $checkSumHash')
          ..write(')'))
        .toString();
  }
}

class $OrderNumbersTable extends OrderNumbers
    with TableInfo<$OrderNumbersTable, OrderNumber> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $OrderNumbersTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idSeqMeta = const VerificationMeta('idSeq');
  @override
  late final GeneratedColumn<int> idSeq = GeneratedColumn<int>(
      'id_seq', aliasedName, true,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _orderRefMeta =
      const VerificationMeta('orderRef');
  @override
  late final GeneratedColumn<String> orderRef = GeneratedColumn<String>(
      'order_ref', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _invoiceNumberPerfixMeta =
      const VerificationMeta('invoiceNumberPerfix');
  @override
  late final GeneratedColumn<String> invoiceNumberPerfix =
      GeneratedColumn<String>('invoice_number_perfix', aliasedName, false,
          type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _prefixMeta = const VerificationMeta('prefix');
  @override
  late final GeneratedColumn<String> prefix = GeneratedColumn<String>(
      'prefix', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [idSeq, orderRef, invoiceNumberPerfix, prefix];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'order_numbers';
  @override
  VerificationContext validateIntegrity(Insertable<OrderNumber> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id_seq')) {
      context.handle(
          _idSeqMeta, idSeq.isAcceptableOrUnknown(data['id_seq']!, _idSeqMeta));
    }
    if (data.containsKey('order_ref')) {
      context.handle(_orderRefMeta,
          orderRef.isAcceptableOrUnknown(data['order_ref']!, _orderRefMeta));
    } else if (isInserting) {
      context.missing(_orderRefMeta);
    }
    if (data.containsKey('invoice_number_perfix')) {
      context.handle(
          _invoiceNumberPerfixMeta,
          invoiceNumberPerfix.isAcceptableOrUnknown(
              data['invoice_number_perfix']!, _invoiceNumberPerfixMeta));
    } else if (isInserting) {
      context.missing(_invoiceNumberPerfixMeta);
    }
    if (data.containsKey('prefix')) {
      context.handle(_prefixMeta,
          prefix.isAcceptableOrUnknown(data['prefix']!, _prefixMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {idSeq};
  @override
  List<Set<GeneratedColumn>> get uniqueKeys => [
        {orderRef},
      ];
  @override
  OrderNumber map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return OrderNumber(
      idSeq: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id_seq']),
      orderRef: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}order_ref'])!,
      invoiceNumberPerfix: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}invoice_number_perfix'])!,
      prefix: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}prefix']),
    );
  }

  @override
  $OrderNumbersTable createAlias(String alias) {
    return $OrderNumbersTable(attachedDatabase, alias);
  }
}

class OrderNumber extends DataClass implements Insertable<OrderNumber> {
  final int? idSeq;
  final String orderRef;
  final String invoiceNumberPerfix;
  final String? prefix;
  const OrderNumber(
      {this.idSeq,
      required this.orderRef,
      required this.invoiceNumberPerfix,
      this.prefix});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || idSeq != null) {
      map['id_seq'] = Variable<int>(idSeq);
    }
    map['order_ref'] = Variable<String>(orderRef);
    map['invoice_number_perfix'] = Variable<String>(invoiceNumberPerfix);
    if (!nullToAbsent || prefix != null) {
      map['prefix'] = Variable<String>(prefix);
    }
    return map;
  }

  OrderNumbersCompanion toCompanion(bool nullToAbsent) {
    return OrderNumbersCompanion(
      idSeq:
          idSeq == null && nullToAbsent ? const Value.absent() : Value(idSeq),
      orderRef: Value(orderRef),
      invoiceNumberPerfix: Value(invoiceNumberPerfix),
      prefix:
          prefix == null && nullToAbsent ? const Value.absent() : Value(prefix),
    );
  }

  factory OrderNumber.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return OrderNumber(
      idSeq: serializer.fromJson<int?>(json['idSeq']),
      orderRef: serializer.fromJson<String>(json['orderRef']),
      invoiceNumberPerfix:
          serializer.fromJson<String>(json['invoiceNumberPerfix']),
      prefix: serializer.fromJson<String?>(json['prefix']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'idSeq': serializer.toJson<int?>(idSeq),
      'orderRef': serializer.toJson<String>(orderRef),
      'invoiceNumberPerfix': serializer.toJson<String>(invoiceNumberPerfix),
      'prefix': serializer.toJson<String?>(prefix),
    };
  }

  OrderNumber copyWith(
          {Value<int?> idSeq = const Value.absent(),
          String? orderRef,
          String? invoiceNumberPerfix,
          Value<String?> prefix = const Value.absent()}) =>
      OrderNumber(
        idSeq: idSeq.present ? idSeq.value : this.idSeq,
        orderRef: orderRef ?? this.orderRef,
        invoiceNumberPerfix: invoiceNumberPerfix ?? this.invoiceNumberPerfix,
        prefix: prefix.present ? prefix.value : this.prefix,
      );
  @override
  String toString() {
    return (StringBuffer('OrderNumber(')
          ..write('idSeq: $idSeq, ')
          ..write('orderRef: $orderRef, ')
          ..write('invoiceNumberPerfix: $invoiceNumberPerfix, ')
          ..write('prefix: $prefix')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(idSeq, orderRef, invoiceNumberPerfix, prefix);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is OrderNumber &&
          other.idSeq == this.idSeq &&
          other.orderRef == this.orderRef &&
          other.invoiceNumberPerfix == this.invoiceNumberPerfix &&
          other.prefix == this.prefix);
}

class OrderNumbersCompanion extends UpdateCompanion<OrderNumber> {
  final Value<int?> idSeq;
  final Value<String> orderRef;
  final Value<String> invoiceNumberPerfix;
  final Value<String?> prefix;
  const OrderNumbersCompanion({
    this.idSeq = const Value.absent(),
    this.orderRef = const Value.absent(),
    this.invoiceNumberPerfix = const Value.absent(),
    this.prefix = const Value.absent(),
  });
  OrderNumbersCompanion.insert({
    this.idSeq = const Value.absent(),
    required String orderRef,
    required String invoiceNumberPerfix,
    this.prefix = const Value.absent(),
  })  : orderRef = Value(orderRef),
        invoiceNumberPerfix = Value(invoiceNumberPerfix);
  static Insertable<OrderNumber> custom({
    Expression<int>? idSeq,
    Expression<String>? orderRef,
    Expression<String>? invoiceNumberPerfix,
    Expression<String>? prefix,
  }) {
    return RawValuesInsertable({
      if (idSeq != null) 'id_seq': idSeq,
      if (orderRef != null) 'order_ref': orderRef,
      if (invoiceNumberPerfix != null)
        'invoice_number_perfix': invoiceNumberPerfix,
      if (prefix != null) 'prefix': prefix,
    });
  }

  OrderNumbersCompanion copyWith(
      {Value<int?>? idSeq,
      Value<String>? orderRef,
      Value<String>? invoiceNumberPerfix,
      Value<String?>? prefix}) {
    return OrderNumbersCompanion(
      idSeq: idSeq ?? this.idSeq,
      orderRef: orderRef ?? this.orderRef,
      invoiceNumberPerfix: invoiceNumberPerfix ?? this.invoiceNumberPerfix,
      prefix: prefix ?? this.prefix,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (idSeq.present) {
      map['id_seq'] = Variable<int>(idSeq.value);
    }
    if (orderRef.present) {
      map['order_ref'] = Variable<String>(orderRef.value);
    }
    if (invoiceNumberPerfix.present) {
      map['invoice_number_perfix'] =
          Variable<String>(invoiceNumberPerfix.value);
    }
    if (prefix.present) {
      map['prefix'] = Variable<String>(prefix.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('OrderNumbersCompanion(')
          ..write('idSeq: $idSeq, ')
          ..write('orderRef: $orderRef, ')
          ..write('invoiceNumberPerfix: $invoiceNumberPerfix, ')
          ..write('prefix: $prefix')
          ..write(')'))
        .toString();
  }
}

class $ShiftEntityTable extends ShiftEntity
    with TableInfo<$ShiftEntityTable, ShiftEntityData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ShiftEntityTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, true,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _shiftIdMeta =
      const VerificationMeta('shiftId');
  @override
  late final GeneratedColumn<String> shiftId = GeneratedColumn<String>(
      'shift_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _prefixMeta = const VerificationMeta('prefix');
  @override
  late final GeneratedColumn<String> prefix = GeneratedColumn<String>(
      'prefix', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _referenceMeta =
      const VerificationMeta('reference');
  @override
  late final GeneratedColumn<String> reference = GeneratedColumn<String>(
      'reference', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
      'user_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _userNameMeta =
      const VerificationMeta('userName');
  @override
  late final GeneratedColumn<String> userName = GeneratedColumn<String>(
      'user_name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _branchNameMeta =
      const VerificationMeta('branchName');
  @override
  late final GeneratedColumn<String> branchName = GeneratedColumn<String>(
      'branch_name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _clockedInDateAtMeta =
      const VerificationMeta('clockedInDateAt');
  @override
  late final GeneratedColumn<String> clockedInDateAt = GeneratedColumn<String>(
      'clocked_in_date_at', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _clockedInTimeAtMeta =
      const VerificationMeta('clockedInTimeAt');
  @override
  late final GeneratedColumn<String> clockedInTimeAt = GeneratedColumn<String>(
      'clocked_in_time_at', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _clockedOutDateAtMeta =
      const VerificationMeta('clockedOutDateAt');
  @override
  late final GeneratedColumn<String> clockedOutDateAt = GeneratedColumn<String>(
      'clocked_out_date_at', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _clockedOutTimeAtMeta =
      const VerificationMeta('clockedOutTimeAt');
  @override
  late final GeneratedColumn<String> clockedOutTimeAt = GeneratedColumn<String>(
      'clocked_out_time_at', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _isClockedOutMeta =
      const VerificationMeta('isClockedOut');
  @override
  late final GeneratedColumn<bool> isClockedOut = GeneratedColumn<bool>(
      'is_clocked_out', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_clocked_out" IN (0, 1))'));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        shiftId,
        prefix,
        reference,
        userId,
        userName,
        branchName,
        clockedInDateAt,
        clockedInTimeAt,
        clockedOutDateAt,
        clockedOutTimeAt,
        isClockedOut
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'shift_entity';
  @override
  VerificationContext validateIntegrity(Insertable<ShiftEntityData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('shift_id')) {
      context.handle(_shiftIdMeta,
          shiftId.isAcceptableOrUnknown(data['shift_id']!, _shiftIdMeta));
    }
    if (data.containsKey('prefix')) {
      context.handle(_prefixMeta,
          prefix.isAcceptableOrUnknown(data['prefix']!, _prefixMeta));
    }
    if (data.containsKey('reference')) {
      context.handle(_referenceMeta,
          reference.isAcceptableOrUnknown(data['reference']!, _referenceMeta));
    }
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta));
    }
    if (data.containsKey('user_name')) {
      context.handle(_userNameMeta,
          userName.isAcceptableOrUnknown(data['user_name']!, _userNameMeta));
    }
    if (data.containsKey('branch_name')) {
      context.handle(
          _branchNameMeta,
          branchName.isAcceptableOrUnknown(
              data['branch_name']!, _branchNameMeta));
    }
    if (data.containsKey('clocked_in_date_at')) {
      context.handle(
          _clockedInDateAtMeta,
          clockedInDateAt.isAcceptableOrUnknown(
              data['clocked_in_date_at']!, _clockedInDateAtMeta));
    }
    if (data.containsKey('clocked_in_time_at')) {
      context.handle(
          _clockedInTimeAtMeta,
          clockedInTimeAt.isAcceptableOrUnknown(
              data['clocked_in_time_at']!, _clockedInTimeAtMeta));
    }
    if (data.containsKey('clocked_out_date_at')) {
      context.handle(
          _clockedOutDateAtMeta,
          clockedOutDateAt.isAcceptableOrUnknown(
              data['clocked_out_date_at']!, _clockedOutDateAtMeta));
    }
    if (data.containsKey('clocked_out_time_at')) {
      context.handle(
          _clockedOutTimeAtMeta,
          clockedOutTimeAt.isAcceptableOrUnknown(
              data['clocked_out_time_at']!, _clockedOutTimeAtMeta));
    }
    if (data.containsKey('is_clocked_out')) {
      context.handle(
          _isClockedOutMeta,
          isClockedOut.isAcceptableOrUnknown(
              data['is_clocked_out']!, _isClockedOutMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  List<Set<GeneratedColumn>> get uniqueKeys => [
        {reference},
      ];
  @override
  ShiftEntityData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ShiftEntityData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id']),
      shiftId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}shift_id']),
      prefix: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}prefix']),
      reference: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}reference']),
      userId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}user_id']),
      userName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}user_name']),
      branchName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}branch_name']),
      clockedInDateAt: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}clocked_in_date_at']),
      clockedInTimeAt: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}clocked_in_time_at']),
      clockedOutDateAt: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}clocked_out_date_at']),
      clockedOutTimeAt: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}clocked_out_time_at']),
      isClockedOut: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_clocked_out']),
    );
  }

  @override
  $ShiftEntityTable createAlias(String alias) {
    return $ShiftEntityTable(attachedDatabase, alias);
  }
}

class ShiftEntityData extends DataClass implements Insertable<ShiftEntityData> {
  final int? id;
  final String? shiftId;
  final String? prefix;
  final String? reference;
  final String? userId;
  final String? userName;
  final String? branchName;
  final String? clockedInDateAt;
  final String? clockedInTimeAt;
  final String? clockedOutDateAt;
  final String? clockedOutTimeAt;
  final bool? isClockedOut;
  const ShiftEntityData(
      {this.id,
      this.shiftId,
      this.prefix,
      this.reference,
      this.userId,
      this.userName,
      this.branchName,
      this.clockedInDateAt,
      this.clockedInTimeAt,
      this.clockedOutDateAt,
      this.clockedOutTimeAt,
      this.isClockedOut});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || shiftId != null) {
      map['shift_id'] = Variable<String>(shiftId);
    }
    if (!nullToAbsent || prefix != null) {
      map['prefix'] = Variable<String>(prefix);
    }
    if (!nullToAbsent || reference != null) {
      map['reference'] = Variable<String>(reference);
    }
    if (!nullToAbsent || userId != null) {
      map['user_id'] = Variable<String>(userId);
    }
    if (!nullToAbsent || userName != null) {
      map['user_name'] = Variable<String>(userName);
    }
    if (!nullToAbsent || branchName != null) {
      map['branch_name'] = Variable<String>(branchName);
    }
    if (!nullToAbsent || clockedInDateAt != null) {
      map['clocked_in_date_at'] = Variable<String>(clockedInDateAt);
    }
    if (!nullToAbsent || clockedInTimeAt != null) {
      map['clocked_in_time_at'] = Variable<String>(clockedInTimeAt);
    }
    if (!nullToAbsent || clockedOutDateAt != null) {
      map['clocked_out_date_at'] = Variable<String>(clockedOutDateAt);
    }
    if (!nullToAbsent || clockedOutTimeAt != null) {
      map['clocked_out_time_at'] = Variable<String>(clockedOutTimeAt);
    }
    if (!nullToAbsent || isClockedOut != null) {
      map['is_clocked_out'] = Variable<bool>(isClockedOut);
    }
    return map;
  }

  ShiftEntityCompanion toCompanion(bool nullToAbsent) {
    return ShiftEntityCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      shiftId: shiftId == null && nullToAbsent
          ? const Value.absent()
          : Value(shiftId),
      prefix:
          prefix == null && nullToAbsent ? const Value.absent() : Value(prefix),
      reference: reference == null && nullToAbsent
          ? const Value.absent()
          : Value(reference),
      userId:
          userId == null && nullToAbsent ? const Value.absent() : Value(userId),
      userName: userName == null && nullToAbsent
          ? const Value.absent()
          : Value(userName),
      branchName: branchName == null && nullToAbsent
          ? const Value.absent()
          : Value(branchName),
      clockedInDateAt: clockedInDateAt == null && nullToAbsent
          ? const Value.absent()
          : Value(clockedInDateAt),
      clockedInTimeAt: clockedInTimeAt == null && nullToAbsent
          ? const Value.absent()
          : Value(clockedInTimeAt),
      clockedOutDateAt: clockedOutDateAt == null && nullToAbsent
          ? const Value.absent()
          : Value(clockedOutDateAt),
      clockedOutTimeAt: clockedOutTimeAt == null && nullToAbsent
          ? const Value.absent()
          : Value(clockedOutTimeAt),
      isClockedOut: isClockedOut == null && nullToAbsent
          ? const Value.absent()
          : Value(isClockedOut),
    );
  }

  factory ShiftEntityData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ShiftEntityData(
      id: serializer.fromJson<int?>(json['id']),
      shiftId: serializer.fromJson<String?>(json['shiftId']),
      prefix: serializer.fromJson<String?>(json['prefix']),
      reference: serializer.fromJson<String?>(json['reference']),
      userId: serializer.fromJson<String?>(json['userId']),
      userName: serializer.fromJson<String?>(json['userName']),
      branchName: serializer.fromJson<String?>(json['branchName']),
      clockedInDateAt: serializer.fromJson<String?>(json['clockedInDateAt']),
      clockedInTimeAt: serializer.fromJson<String?>(json['clockedInTimeAt']),
      clockedOutDateAt: serializer.fromJson<String?>(json['clockedOutDateAt']),
      clockedOutTimeAt: serializer.fromJson<String?>(json['clockedOutTimeAt']),
      isClockedOut: serializer.fromJson<bool?>(json['isClockedOut']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int?>(id),
      'shiftId': serializer.toJson<String?>(shiftId),
      'prefix': serializer.toJson<String?>(prefix),
      'reference': serializer.toJson<String?>(reference),
      'userId': serializer.toJson<String?>(userId),
      'userName': serializer.toJson<String?>(userName),
      'branchName': serializer.toJson<String?>(branchName),
      'clockedInDateAt': serializer.toJson<String?>(clockedInDateAt),
      'clockedInTimeAt': serializer.toJson<String?>(clockedInTimeAt),
      'clockedOutDateAt': serializer.toJson<String?>(clockedOutDateAt),
      'clockedOutTimeAt': serializer.toJson<String?>(clockedOutTimeAt),
      'isClockedOut': serializer.toJson<bool?>(isClockedOut),
    };
  }

  ShiftEntityData copyWith(
          {Value<int?> id = const Value.absent(),
          Value<String?> shiftId = const Value.absent(),
          Value<String?> prefix = const Value.absent(),
          Value<String?> reference = const Value.absent(),
          Value<String?> userId = const Value.absent(),
          Value<String?> userName = const Value.absent(),
          Value<String?> branchName = const Value.absent(),
          Value<String?> clockedInDateAt = const Value.absent(),
          Value<String?> clockedInTimeAt = const Value.absent(),
          Value<String?> clockedOutDateAt = const Value.absent(),
          Value<String?> clockedOutTimeAt = const Value.absent(),
          Value<bool?> isClockedOut = const Value.absent()}) =>
      ShiftEntityData(
        id: id.present ? id.value : this.id,
        shiftId: shiftId.present ? shiftId.value : this.shiftId,
        prefix: prefix.present ? prefix.value : this.prefix,
        reference: reference.present ? reference.value : this.reference,
        userId: userId.present ? userId.value : this.userId,
        userName: userName.present ? userName.value : this.userName,
        branchName: branchName.present ? branchName.value : this.branchName,
        clockedInDateAt: clockedInDateAt.present
            ? clockedInDateAt.value
            : this.clockedInDateAt,
        clockedInTimeAt: clockedInTimeAt.present
            ? clockedInTimeAt.value
            : this.clockedInTimeAt,
        clockedOutDateAt: clockedOutDateAt.present
            ? clockedOutDateAt.value
            : this.clockedOutDateAt,
        clockedOutTimeAt: clockedOutTimeAt.present
            ? clockedOutTimeAt.value
            : this.clockedOutTimeAt,
        isClockedOut:
            isClockedOut.present ? isClockedOut.value : this.isClockedOut,
      );
  @override
  String toString() {
    return (StringBuffer('ShiftEntityData(')
          ..write('id: $id, ')
          ..write('shiftId: $shiftId, ')
          ..write('prefix: $prefix, ')
          ..write('reference: $reference, ')
          ..write('userId: $userId, ')
          ..write('userName: $userName, ')
          ..write('branchName: $branchName, ')
          ..write('clockedInDateAt: $clockedInDateAt, ')
          ..write('clockedInTimeAt: $clockedInTimeAt, ')
          ..write('clockedOutDateAt: $clockedOutDateAt, ')
          ..write('clockedOutTimeAt: $clockedOutTimeAt, ')
          ..write('isClockedOut: $isClockedOut')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      shiftId,
      prefix,
      reference,
      userId,
      userName,
      branchName,
      clockedInDateAt,
      clockedInTimeAt,
      clockedOutDateAt,
      clockedOutTimeAt,
      isClockedOut);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ShiftEntityData &&
          other.id == this.id &&
          other.shiftId == this.shiftId &&
          other.prefix == this.prefix &&
          other.reference == this.reference &&
          other.userId == this.userId &&
          other.userName == this.userName &&
          other.branchName == this.branchName &&
          other.clockedInDateAt == this.clockedInDateAt &&
          other.clockedInTimeAt == this.clockedInTimeAt &&
          other.clockedOutDateAt == this.clockedOutDateAt &&
          other.clockedOutTimeAt == this.clockedOutTimeAt &&
          other.isClockedOut == this.isClockedOut);
}

class ShiftEntityCompanion extends UpdateCompanion<ShiftEntityData> {
  final Value<int?> id;
  final Value<String?> shiftId;
  final Value<String?> prefix;
  final Value<String?> reference;
  final Value<String?> userId;
  final Value<String?> userName;
  final Value<String?> branchName;
  final Value<String?> clockedInDateAt;
  final Value<String?> clockedInTimeAt;
  final Value<String?> clockedOutDateAt;
  final Value<String?> clockedOutTimeAt;
  final Value<bool?> isClockedOut;
  const ShiftEntityCompanion({
    this.id = const Value.absent(),
    this.shiftId = const Value.absent(),
    this.prefix = const Value.absent(),
    this.reference = const Value.absent(),
    this.userId = const Value.absent(),
    this.userName = const Value.absent(),
    this.branchName = const Value.absent(),
    this.clockedInDateAt = const Value.absent(),
    this.clockedInTimeAt = const Value.absent(),
    this.clockedOutDateAt = const Value.absent(),
    this.clockedOutTimeAt = const Value.absent(),
    this.isClockedOut = const Value.absent(),
  });
  ShiftEntityCompanion.insert({
    this.id = const Value.absent(),
    this.shiftId = const Value.absent(),
    this.prefix = const Value.absent(),
    this.reference = const Value.absent(),
    this.userId = const Value.absent(),
    this.userName = const Value.absent(),
    this.branchName = const Value.absent(),
    this.clockedInDateAt = const Value.absent(),
    this.clockedInTimeAt = const Value.absent(),
    this.clockedOutDateAt = const Value.absent(),
    this.clockedOutTimeAt = const Value.absent(),
    this.isClockedOut = const Value.absent(),
  });
  static Insertable<ShiftEntityData> custom({
    Expression<int>? id,
    Expression<String>? shiftId,
    Expression<String>? prefix,
    Expression<String>? reference,
    Expression<String>? userId,
    Expression<String>? userName,
    Expression<String>? branchName,
    Expression<String>? clockedInDateAt,
    Expression<String>? clockedInTimeAt,
    Expression<String>? clockedOutDateAt,
    Expression<String>? clockedOutTimeAt,
    Expression<bool>? isClockedOut,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (shiftId != null) 'shift_id': shiftId,
      if (prefix != null) 'prefix': prefix,
      if (reference != null) 'reference': reference,
      if (userId != null) 'user_id': userId,
      if (userName != null) 'user_name': userName,
      if (branchName != null) 'branch_name': branchName,
      if (clockedInDateAt != null) 'clocked_in_date_at': clockedInDateAt,
      if (clockedInTimeAt != null) 'clocked_in_time_at': clockedInTimeAt,
      if (clockedOutDateAt != null) 'clocked_out_date_at': clockedOutDateAt,
      if (clockedOutTimeAt != null) 'clocked_out_time_at': clockedOutTimeAt,
      if (isClockedOut != null) 'is_clocked_out': isClockedOut,
    });
  }

  ShiftEntityCompanion copyWith(
      {Value<int?>? id,
      Value<String?>? shiftId,
      Value<String?>? prefix,
      Value<String?>? reference,
      Value<String?>? userId,
      Value<String?>? userName,
      Value<String?>? branchName,
      Value<String?>? clockedInDateAt,
      Value<String?>? clockedInTimeAt,
      Value<String?>? clockedOutDateAt,
      Value<String?>? clockedOutTimeAt,
      Value<bool?>? isClockedOut}) {
    return ShiftEntityCompanion(
      id: id ?? this.id,
      shiftId: shiftId ?? this.shiftId,
      prefix: prefix ?? this.prefix,
      reference: reference ?? this.reference,
      userId: userId ?? this.userId,
      userName: userName ?? this.userName,
      branchName: branchName ?? this.branchName,
      clockedInDateAt: clockedInDateAt ?? this.clockedInDateAt,
      clockedInTimeAt: clockedInTimeAt ?? this.clockedInTimeAt,
      clockedOutDateAt: clockedOutDateAt ?? this.clockedOutDateAt,
      clockedOutTimeAt: clockedOutTimeAt ?? this.clockedOutTimeAt,
      isClockedOut: isClockedOut ?? this.isClockedOut,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (shiftId.present) {
      map['shift_id'] = Variable<String>(shiftId.value);
    }
    if (prefix.present) {
      map['prefix'] = Variable<String>(prefix.value);
    }
    if (reference.present) {
      map['reference'] = Variable<String>(reference.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (userName.present) {
      map['user_name'] = Variable<String>(userName.value);
    }
    if (branchName.present) {
      map['branch_name'] = Variable<String>(branchName.value);
    }
    if (clockedInDateAt.present) {
      map['clocked_in_date_at'] = Variable<String>(clockedInDateAt.value);
    }
    if (clockedInTimeAt.present) {
      map['clocked_in_time_at'] = Variable<String>(clockedInTimeAt.value);
    }
    if (clockedOutDateAt.present) {
      map['clocked_out_date_at'] = Variable<String>(clockedOutDateAt.value);
    }
    if (clockedOutTimeAt.present) {
      map['clocked_out_time_at'] = Variable<String>(clockedOutTimeAt.value);
    }
    if (isClockedOut.present) {
      map['is_clocked_out'] = Variable<bool>(isClockedOut.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ShiftEntityCompanion(')
          ..write('id: $id, ')
          ..write('shiftId: $shiftId, ')
          ..write('prefix: $prefix, ')
          ..write('reference: $reference, ')
          ..write('userId: $userId, ')
          ..write('userName: $userName, ')
          ..write('branchName: $branchName, ')
          ..write('clockedInDateAt: $clockedInDateAt, ')
          ..write('clockedInTimeAt: $clockedInTimeAt, ')
          ..write('clockedOutDateAt: $clockedOutDateAt, ')
          ..write('clockedOutTimeAt: $clockedOutTimeAt, ')
          ..write('isClockedOut: $isClockedOut')
          ..write(')'))
        .toString();
  }
}

class $TillEntityTable extends TillEntity
    with TableInfo<$TillEntityTable, TillEntityData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TillEntityTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, true,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _referenceMeta =
      const VerificationMeta('reference');
  @override
  late final GeneratedColumn<String> reference = GeneratedColumn<String>(
      'reference', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _shiftIdMeta =
      const VerificationMeta('shiftId');
  @override
  late final GeneratedColumn<String> shiftId = GeneratedColumn<String>(
      'shift_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
      'user_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _userNameMeta =
      const VerificationMeta('userName');
  @override
  late final GeneratedColumn<String> userName = GeneratedColumn<String>(
      'user_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _openDateOnMeta =
      const VerificationMeta('openDateOn');
  @override
  late final GeneratedColumn<String> openDateOn = GeneratedColumn<String>(
      'open_date_on', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _openTimeOnMeta =
      const VerificationMeta('openTimeOn');
  @override
  late final GeneratedColumn<String> openTimeOn = GeneratedColumn<String>(
      'open_time_on', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _closeDateOnMeta =
      const VerificationMeta('closeDateOn');
  @override
  late final GeneratedColumn<String> closeDateOn = GeneratedColumn<String>(
      'close_date_on', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _closeTimeOnMeta =
      const VerificationMeta('closeTimeOn');
  @override
  late final GeneratedColumn<String> closeTimeOn = GeneratedColumn<String>(
      'close_time_on', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _noteMeta = const VerificationMeta('note');
  @override
  late final GeneratedColumn<String> note = GeneratedColumn<String>(
      'note', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _isClosedMeta =
      const VerificationMeta('isClosed');
  @override
  late final GeneratedColumn<bool> isClosed = GeneratedColumn<bool>(
      'is_closed', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_closed" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _amountMeta = const VerificationMeta('amount');
  @override
  late final GeneratedColumn<double> amount = GeneratedColumn<double>(
      'amount', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        reference,
        shiftId,
        userId,
        userName,
        openDateOn,
        openTimeOn,
        closeDateOn,
        closeTimeOn,
        note,
        isClosed,
        amount
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'till_entity';
  @override
  VerificationContext validateIntegrity(Insertable<TillEntityData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('reference')) {
      context.handle(_referenceMeta,
          reference.isAcceptableOrUnknown(data['reference']!, _referenceMeta));
    } else if (isInserting) {
      context.missing(_referenceMeta);
    }
    if (data.containsKey('shift_id')) {
      context.handle(_shiftIdMeta,
          shiftId.isAcceptableOrUnknown(data['shift_id']!, _shiftIdMeta));
    } else if (isInserting) {
      context.missing(_shiftIdMeta);
    }
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('user_name')) {
      context.handle(_userNameMeta,
          userName.isAcceptableOrUnknown(data['user_name']!, _userNameMeta));
    } else if (isInserting) {
      context.missing(_userNameMeta);
    }
    if (data.containsKey('open_date_on')) {
      context.handle(
          _openDateOnMeta,
          openDateOn.isAcceptableOrUnknown(
              data['open_date_on']!, _openDateOnMeta));
    } else if (isInserting) {
      context.missing(_openDateOnMeta);
    }
    if (data.containsKey('open_time_on')) {
      context.handle(
          _openTimeOnMeta,
          openTimeOn.isAcceptableOrUnknown(
              data['open_time_on']!, _openTimeOnMeta));
    } else if (isInserting) {
      context.missing(_openTimeOnMeta);
    }
    if (data.containsKey('close_date_on')) {
      context.handle(
          _closeDateOnMeta,
          closeDateOn.isAcceptableOrUnknown(
              data['close_date_on']!, _closeDateOnMeta));
    }
    if (data.containsKey('close_time_on')) {
      context.handle(
          _closeTimeOnMeta,
          closeTimeOn.isAcceptableOrUnknown(
              data['close_time_on']!, _closeTimeOnMeta));
    }
    if (data.containsKey('note')) {
      context.handle(
          _noteMeta, note.isAcceptableOrUnknown(data['note']!, _noteMeta));
    }
    if (data.containsKey('is_closed')) {
      context.handle(_isClosedMeta,
          isClosed.isAcceptableOrUnknown(data['is_closed']!, _isClosedMeta));
    }
    if (data.containsKey('amount')) {
      context.handle(_amountMeta,
          amount.isAcceptableOrUnknown(data['amount']!, _amountMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  TillEntityData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TillEntityData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id']),
      reference: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}reference'])!,
      shiftId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}shift_id'])!,
      userId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}user_id'])!,
      userName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}user_name'])!,
      openDateOn: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}open_date_on'])!,
      openTimeOn: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}open_time_on'])!,
      closeDateOn: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}close_date_on']),
      closeTimeOn: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}close_time_on']),
      note: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}note']),
      isClosed: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_closed'])!,
      amount: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}amount'])!,
    );
  }

  @override
  $TillEntityTable createAlias(String alias) {
    return $TillEntityTable(attachedDatabase, alias);
  }
}

class TillEntityData extends DataClass implements Insertable<TillEntityData> {
  final int? id;
  final String reference;
  final String shiftId;
  final String userId;
  final String userName;
  final String openDateOn;
  final String openTimeOn;
  final String? closeDateOn;
  final String? closeTimeOn;
  final String? note;
  final bool isClosed;
  final double amount;
  const TillEntityData(
      {this.id,
      required this.reference,
      required this.shiftId,
      required this.userId,
      required this.userName,
      required this.openDateOn,
      required this.openTimeOn,
      this.closeDateOn,
      this.closeTimeOn,
      this.note,
      required this.isClosed,
      required this.amount});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    map['reference'] = Variable<String>(reference);
    map['shift_id'] = Variable<String>(shiftId);
    map['user_id'] = Variable<String>(userId);
    map['user_name'] = Variable<String>(userName);
    map['open_date_on'] = Variable<String>(openDateOn);
    map['open_time_on'] = Variable<String>(openTimeOn);
    if (!nullToAbsent || closeDateOn != null) {
      map['close_date_on'] = Variable<String>(closeDateOn);
    }
    if (!nullToAbsent || closeTimeOn != null) {
      map['close_time_on'] = Variable<String>(closeTimeOn);
    }
    if (!nullToAbsent || note != null) {
      map['note'] = Variable<String>(note);
    }
    map['is_closed'] = Variable<bool>(isClosed);
    map['amount'] = Variable<double>(amount);
    return map;
  }

  TillEntityCompanion toCompanion(bool nullToAbsent) {
    return TillEntityCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      reference: Value(reference),
      shiftId: Value(shiftId),
      userId: Value(userId),
      userName: Value(userName),
      openDateOn: Value(openDateOn),
      openTimeOn: Value(openTimeOn),
      closeDateOn: closeDateOn == null && nullToAbsent
          ? const Value.absent()
          : Value(closeDateOn),
      closeTimeOn: closeTimeOn == null && nullToAbsent
          ? const Value.absent()
          : Value(closeTimeOn),
      note: note == null && nullToAbsent ? const Value.absent() : Value(note),
      isClosed: Value(isClosed),
      amount: Value(amount),
    );
  }

  factory TillEntityData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TillEntityData(
      id: serializer.fromJson<int?>(json['id']),
      reference: serializer.fromJson<String>(json['reference']),
      shiftId: serializer.fromJson<String>(json['shiftId']),
      userId: serializer.fromJson<String>(json['userId']),
      userName: serializer.fromJson<String>(json['userName']),
      openDateOn: serializer.fromJson<String>(json['openDateOn']),
      openTimeOn: serializer.fromJson<String>(json['openTimeOn']),
      closeDateOn: serializer.fromJson<String?>(json['closeDateOn']),
      closeTimeOn: serializer.fromJson<String?>(json['closeTimeOn']),
      note: serializer.fromJson<String?>(json['note']),
      isClosed: serializer.fromJson<bool>(json['isClosed']),
      amount: serializer.fromJson<double>(json['amount']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int?>(id),
      'reference': serializer.toJson<String>(reference),
      'shiftId': serializer.toJson<String>(shiftId),
      'userId': serializer.toJson<String>(userId),
      'userName': serializer.toJson<String>(userName),
      'openDateOn': serializer.toJson<String>(openDateOn),
      'openTimeOn': serializer.toJson<String>(openTimeOn),
      'closeDateOn': serializer.toJson<String?>(closeDateOn),
      'closeTimeOn': serializer.toJson<String?>(closeTimeOn),
      'note': serializer.toJson<String?>(note),
      'isClosed': serializer.toJson<bool>(isClosed),
      'amount': serializer.toJson<double>(amount),
    };
  }

  TillEntityData copyWith(
          {Value<int?> id = const Value.absent(),
          String? reference,
          String? shiftId,
          String? userId,
          String? userName,
          String? openDateOn,
          String? openTimeOn,
          Value<String?> closeDateOn = const Value.absent(),
          Value<String?> closeTimeOn = const Value.absent(),
          Value<String?> note = const Value.absent(),
          bool? isClosed,
          double? amount}) =>
      TillEntityData(
        id: id.present ? id.value : this.id,
        reference: reference ?? this.reference,
        shiftId: shiftId ?? this.shiftId,
        userId: userId ?? this.userId,
        userName: userName ?? this.userName,
        openDateOn: openDateOn ?? this.openDateOn,
        openTimeOn: openTimeOn ?? this.openTimeOn,
        closeDateOn: closeDateOn.present ? closeDateOn.value : this.closeDateOn,
        closeTimeOn: closeTimeOn.present ? closeTimeOn.value : this.closeTimeOn,
        note: note.present ? note.value : this.note,
        isClosed: isClosed ?? this.isClosed,
        amount: amount ?? this.amount,
      );
  @override
  String toString() {
    return (StringBuffer('TillEntityData(')
          ..write('id: $id, ')
          ..write('reference: $reference, ')
          ..write('shiftId: $shiftId, ')
          ..write('userId: $userId, ')
          ..write('userName: $userName, ')
          ..write('openDateOn: $openDateOn, ')
          ..write('openTimeOn: $openTimeOn, ')
          ..write('closeDateOn: $closeDateOn, ')
          ..write('closeTimeOn: $closeTimeOn, ')
          ..write('note: $note, ')
          ..write('isClosed: $isClosed, ')
          ..write('amount: $amount')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, reference, shiftId, userId, userName,
      openDateOn, openTimeOn, closeDateOn, closeTimeOn, note, isClosed, amount);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TillEntityData &&
          other.id == this.id &&
          other.reference == this.reference &&
          other.shiftId == this.shiftId &&
          other.userId == this.userId &&
          other.userName == this.userName &&
          other.openDateOn == this.openDateOn &&
          other.openTimeOn == this.openTimeOn &&
          other.closeDateOn == this.closeDateOn &&
          other.closeTimeOn == this.closeTimeOn &&
          other.note == this.note &&
          other.isClosed == this.isClosed &&
          other.amount == this.amount);
}

class TillEntityCompanion extends UpdateCompanion<TillEntityData> {
  final Value<int?> id;
  final Value<String> reference;
  final Value<String> shiftId;
  final Value<String> userId;
  final Value<String> userName;
  final Value<String> openDateOn;
  final Value<String> openTimeOn;
  final Value<String?> closeDateOn;
  final Value<String?> closeTimeOn;
  final Value<String?> note;
  final Value<bool> isClosed;
  final Value<double> amount;
  const TillEntityCompanion({
    this.id = const Value.absent(),
    this.reference = const Value.absent(),
    this.shiftId = const Value.absent(),
    this.userId = const Value.absent(),
    this.userName = const Value.absent(),
    this.openDateOn = const Value.absent(),
    this.openTimeOn = const Value.absent(),
    this.closeDateOn = const Value.absent(),
    this.closeTimeOn = const Value.absent(),
    this.note = const Value.absent(),
    this.isClosed = const Value.absent(),
    this.amount = const Value.absent(),
  });
  TillEntityCompanion.insert({
    this.id = const Value.absent(),
    required String reference,
    required String shiftId,
    required String userId,
    required String userName,
    required String openDateOn,
    required String openTimeOn,
    this.closeDateOn = const Value.absent(),
    this.closeTimeOn = const Value.absent(),
    this.note = const Value.absent(),
    this.isClosed = const Value.absent(),
    this.amount = const Value.absent(),
  })  : reference = Value(reference),
        shiftId = Value(shiftId),
        userId = Value(userId),
        userName = Value(userName),
        openDateOn = Value(openDateOn),
        openTimeOn = Value(openTimeOn);
  static Insertable<TillEntityData> custom({
    Expression<int>? id,
    Expression<String>? reference,
    Expression<String>? shiftId,
    Expression<String>? userId,
    Expression<String>? userName,
    Expression<String>? openDateOn,
    Expression<String>? openTimeOn,
    Expression<String>? closeDateOn,
    Expression<String>? closeTimeOn,
    Expression<String>? note,
    Expression<bool>? isClosed,
    Expression<double>? amount,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (reference != null) 'reference': reference,
      if (shiftId != null) 'shift_id': shiftId,
      if (userId != null) 'user_id': userId,
      if (userName != null) 'user_name': userName,
      if (openDateOn != null) 'open_date_on': openDateOn,
      if (openTimeOn != null) 'open_time_on': openTimeOn,
      if (closeDateOn != null) 'close_date_on': closeDateOn,
      if (closeTimeOn != null) 'close_time_on': closeTimeOn,
      if (note != null) 'note': note,
      if (isClosed != null) 'is_closed': isClosed,
      if (amount != null) 'amount': amount,
    });
  }

  TillEntityCompanion copyWith(
      {Value<int?>? id,
      Value<String>? reference,
      Value<String>? shiftId,
      Value<String>? userId,
      Value<String>? userName,
      Value<String>? openDateOn,
      Value<String>? openTimeOn,
      Value<String?>? closeDateOn,
      Value<String?>? closeTimeOn,
      Value<String?>? note,
      Value<bool>? isClosed,
      Value<double>? amount}) {
    return TillEntityCompanion(
      id: id ?? this.id,
      reference: reference ?? this.reference,
      shiftId: shiftId ?? this.shiftId,
      userId: userId ?? this.userId,
      userName: userName ?? this.userName,
      openDateOn: openDateOn ?? this.openDateOn,
      openTimeOn: openTimeOn ?? this.openTimeOn,
      closeDateOn: closeDateOn ?? this.closeDateOn,
      closeTimeOn: closeTimeOn ?? this.closeTimeOn,
      note: note ?? this.note,
      isClosed: isClosed ?? this.isClosed,
      amount: amount ?? this.amount,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (reference.present) {
      map['reference'] = Variable<String>(reference.value);
    }
    if (shiftId.present) {
      map['shift_id'] = Variable<String>(shiftId.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (userName.present) {
      map['user_name'] = Variable<String>(userName.value);
    }
    if (openDateOn.present) {
      map['open_date_on'] = Variable<String>(openDateOn.value);
    }
    if (openTimeOn.present) {
      map['open_time_on'] = Variable<String>(openTimeOn.value);
    }
    if (closeDateOn.present) {
      map['close_date_on'] = Variable<String>(closeDateOn.value);
    }
    if (closeTimeOn.present) {
      map['close_time_on'] = Variable<String>(closeTimeOn.value);
    }
    if (note.present) {
      map['note'] = Variable<String>(note.value);
    }
    if (isClosed.present) {
      map['is_closed'] = Variable<bool>(isClosed.value);
    }
    if (amount.present) {
      map['amount'] = Variable<double>(amount.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TillEntityCompanion(')
          ..write('id: $id, ')
          ..write('reference: $reference, ')
          ..write('shiftId: $shiftId, ')
          ..write('userId: $userId, ')
          ..write('userName: $userName, ')
          ..write('openDateOn: $openDateOn, ')
          ..write('openTimeOn: $openTimeOn, ')
          ..write('closeDateOn: $closeDateOn, ')
          ..write('closeTimeOn: $closeTimeOn, ')
          ..write('note: $note, ')
          ..write('isClosed: $isClosed, ')
          ..write('amount: $amount')
          ..write(')'))
        .toString();
  }
}

class $TillAmountsEntityTable extends TillAmountsEntity
    with TableInfo<$TillAmountsEntityTable, TillAmountsEntityData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TillAmountsEntityTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, true,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _idTillMeta = const VerificationMeta('idTill');
  @override
  late final GeneratedColumn<String> idTill = GeneratedColumn<String>(
      'id_till', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES till_entity (reference)'));
  static const VerificationMeta _currencyCodeMeta =
      const VerificationMeta('currencyCode');
  @override
  late final GeneratedColumn<String> currencyCode = GeneratedColumn<String>(
      'currency_code', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _amountMeta = const VerificationMeta('amount');
  @override
  late final GeneratedColumn<double> amount = GeneratedColumn<double>(
      'amount', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  @override
  List<GeneratedColumn> get $columns => [id, idTill, currencyCode, amount];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'till_amounts_entity';
  @override
  VerificationContext validateIntegrity(
      Insertable<TillAmountsEntityData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('id_till')) {
      context.handle(_idTillMeta,
          idTill.isAcceptableOrUnknown(data['id_till']!, _idTillMeta));
    } else if (isInserting) {
      context.missing(_idTillMeta);
    }
    if (data.containsKey('currency_code')) {
      context.handle(
          _currencyCodeMeta,
          currencyCode.isAcceptableOrUnknown(
              data['currency_code']!, _currencyCodeMeta));
    } else if (isInserting) {
      context.missing(_currencyCodeMeta);
    }
    if (data.containsKey('amount')) {
      context.handle(_amountMeta,
          amount.isAcceptableOrUnknown(data['amount']!, _amountMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  List<Set<GeneratedColumn>> get uniqueKeys => [
        {idTill, currencyCode, amount},
      ];
  @override
  TillAmountsEntityData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TillAmountsEntityData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id']),
      idTill: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id_till'])!,
      currencyCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}currency_code'])!,
      amount: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}amount'])!,
    );
  }

  @override
  $TillAmountsEntityTable createAlias(String alias) {
    return $TillAmountsEntityTable(attachedDatabase, alias);
  }
}

class TillAmountsEntityData extends DataClass
    implements Insertable<TillAmountsEntityData> {
  final int? id;
  final String idTill;
  final String currencyCode;
  final double amount;
  const TillAmountsEntityData(
      {this.id,
      required this.idTill,
      required this.currencyCode,
      required this.amount});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    map['id_till'] = Variable<String>(idTill);
    map['currency_code'] = Variable<String>(currencyCode);
    map['amount'] = Variable<double>(amount);
    return map;
  }

  TillAmountsEntityCompanion toCompanion(bool nullToAbsent) {
    return TillAmountsEntityCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      idTill: Value(idTill),
      currencyCode: Value(currencyCode),
      amount: Value(amount),
    );
  }

  factory TillAmountsEntityData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TillAmountsEntityData(
      id: serializer.fromJson<int?>(json['id']),
      idTill: serializer.fromJson<String>(json['idTill']),
      currencyCode: serializer.fromJson<String>(json['currencyCode']),
      amount: serializer.fromJson<double>(json['amount']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int?>(id),
      'idTill': serializer.toJson<String>(idTill),
      'currencyCode': serializer.toJson<String>(currencyCode),
      'amount': serializer.toJson<double>(amount),
    };
  }

  TillAmountsEntityData copyWith(
          {Value<int?> id = const Value.absent(),
          String? idTill,
          String? currencyCode,
          double? amount}) =>
      TillAmountsEntityData(
        id: id.present ? id.value : this.id,
        idTill: idTill ?? this.idTill,
        currencyCode: currencyCode ?? this.currencyCode,
        amount: amount ?? this.amount,
      );
  @override
  String toString() {
    return (StringBuffer('TillAmountsEntityData(')
          ..write('id: $id, ')
          ..write('idTill: $idTill, ')
          ..write('currencyCode: $currencyCode, ')
          ..write('amount: $amount')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, idTill, currencyCode, amount);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TillAmountsEntityData &&
          other.id == this.id &&
          other.idTill == this.idTill &&
          other.currencyCode == this.currencyCode &&
          other.amount == this.amount);
}

class TillAmountsEntityCompanion
    extends UpdateCompanion<TillAmountsEntityData> {
  final Value<int?> id;
  final Value<String> idTill;
  final Value<String> currencyCode;
  final Value<double> amount;
  const TillAmountsEntityCompanion({
    this.id = const Value.absent(),
    this.idTill = const Value.absent(),
    this.currencyCode = const Value.absent(),
    this.amount = const Value.absent(),
  });
  TillAmountsEntityCompanion.insert({
    this.id = const Value.absent(),
    required String idTill,
    required String currencyCode,
    this.amount = const Value.absent(),
  })  : idTill = Value(idTill),
        currencyCode = Value(currencyCode);
  static Insertable<TillAmountsEntityData> custom({
    Expression<int>? id,
    Expression<String>? idTill,
    Expression<String>? currencyCode,
    Expression<double>? amount,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (idTill != null) 'id_till': idTill,
      if (currencyCode != null) 'currency_code': currencyCode,
      if (amount != null) 'amount': amount,
    });
  }

  TillAmountsEntityCompanion copyWith(
      {Value<int?>? id,
      Value<String>? idTill,
      Value<String>? currencyCode,
      Value<double>? amount}) {
    return TillAmountsEntityCompanion(
      id: id ?? this.id,
      idTill: idTill ?? this.idTill,
      currencyCode: currencyCode ?? this.currencyCode,
      amount: amount ?? this.amount,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (idTill.present) {
      map['id_till'] = Variable<String>(idTill.value);
    }
    if (currencyCode.present) {
      map['currency_code'] = Variable<String>(currencyCode.value);
    }
    if (amount.present) {
      map['amount'] = Variable<double>(amount.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TillAmountsEntityCompanion(')
          ..write('id: $id, ')
          ..write('idTill: $idTill, ')
          ..write('currencyCode: $currencyCode, ')
          ..write('amount: $amount')
          ..write(')'))
        .toString();
  }
}

class $PaymentMethodEntityTable extends PaymentMethodEntity
    with TableInfo<$PaymentMethodEntityTable, PaymentMethodEntityData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PaymentMethodEntityTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idSeqMeta = const VerificationMeta('idSeq');
  @override
  late final GeneratedColumn<int> idSeq = GeneratedColumn<int>(
      'id_seq', aliasedName, true,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _fNameMeta = const VerificationMeta('fName');
  @override
  late final GeneratedColumn<String> fName = GeneratedColumn<String>(
      'f_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _paymentTypeMeta =
      const VerificationMeta('paymentType');
  @override
  late final GeneratedColumn<int> paymentType = GeneratedColumn<int>(
      'payment_type', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _displayOrderMeta =
      const VerificationMeta('displayOrder');
  @override
  late final GeneratedColumn<int> displayOrder = GeneratedColumn<int>(
      'display_order', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _autoOpenCashDrawerMeta =
      const VerificationMeta('autoOpenCashDrawer');
  @override
  late final GeneratedColumn<bool> autoOpenCashDrawer = GeneratedColumn<bool>(
      'auto_open_cash_drawer', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("auto_open_cash_drawer" IN (0, 1))'));
  static const VerificationMeta _isActiveMeta =
      const VerificationMeta('isActive');
  @override
  late final GeneratedColumn<bool> isActive = GeneratedColumn<bool>(
      'is_active', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_active" IN (0, 1))'));
  static const VerificationMeta _isDeletedMeta =
      const VerificationMeta('isDeleted');
  @override
  late final GeneratedColumn<bool> isDeleted = GeneratedColumn<bool>(
      'is_deleted', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_deleted" IN (0, 1))'));
  static const VerificationMeta _imageUrlMeta =
      const VerificationMeta('imageUrl');
  @override
  late final GeneratedColumn<String> imageUrl = GeneratedColumn<String>(
      'image_url', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        idSeq,
        id,
        name,
        fName,
        paymentType,
        displayOrder,
        autoOpenCashDrawer,
        isActive,
        isDeleted,
        imageUrl
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'payment_method_entity';
  @override
  VerificationContext validateIntegrity(
      Insertable<PaymentMethodEntityData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id_seq')) {
      context.handle(
          _idSeqMeta, idSeq.isAcceptableOrUnknown(data['id_seq']!, _idSeqMeta));
    }
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('f_name')) {
      context.handle(
          _fNameMeta, fName.isAcceptableOrUnknown(data['f_name']!, _fNameMeta));
    } else if (isInserting) {
      context.missing(_fNameMeta);
    }
    if (data.containsKey('payment_type')) {
      context.handle(
          _paymentTypeMeta,
          paymentType.isAcceptableOrUnknown(
              data['payment_type']!, _paymentTypeMeta));
    } else if (isInserting) {
      context.missing(_paymentTypeMeta);
    }
    if (data.containsKey('display_order')) {
      context.handle(
          _displayOrderMeta,
          displayOrder.isAcceptableOrUnknown(
              data['display_order']!, _displayOrderMeta));
    }
    if (data.containsKey('auto_open_cash_drawer')) {
      context.handle(
          _autoOpenCashDrawerMeta,
          autoOpenCashDrawer.isAcceptableOrUnknown(
              data['auto_open_cash_drawer']!, _autoOpenCashDrawerMeta));
    }
    if (data.containsKey('is_active')) {
      context.handle(_isActiveMeta,
          isActive.isAcceptableOrUnknown(data['is_active']!, _isActiveMeta));
    }
    if (data.containsKey('is_deleted')) {
      context.handle(_isDeletedMeta,
          isDeleted.isAcceptableOrUnknown(data['is_deleted']!, _isDeletedMeta));
    }
    if (data.containsKey('image_url')) {
      context.handle(_imageUrlMeta,
          imageUrl.isAcceptableOrUnknown(data['image_url']!, _imageUrlMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {idSeq};
  @override
  List<Set<GeneratedColumn>> get uniqueKeys => [
        {id},
      ];
  @override
  PaymentMethodEntityData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PaymentMethodEntityData(
      idSeq: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id_seq']),
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      fName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}f_name'])!,
      paymentType: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}payment_type'])!,
      displayOrder: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}display_order']),
      autoOpenCashDrawer: attachedDatabase.typeMapping.read(
          DriftSqlType.bool, data['${effectivePrefix}auto_open_cash_drawer']),
      isActive: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_active']),
      isDeleted: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_deleted']),
      imageUrl: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}image_url']),
    );
  }

  @override
  $PaymentMethodEntityTable createAlias(String alias) {
    return $PaymentMethodEntityTable(attachedDatabase, alias);
  }
}

class PaymentMethodEntityData extends DataClass
    implements Insertable<PaymentMethodEntityData> {
  final int? idSeq;
  final String id;
  final String name;
  final String fName;
  final int paymentType;
  final int? displayOrder;
  final bool? autoOpenCashDrawer;
  final bool? isActive;
  final bool? isDeleted;
  final String? imageUrl;
  const PaymentMethodEntityData(
      {this.idSeq,
      required this.id,
      required this.name,
      required this.fName,
      required this.paymentType,
      this.displayOrder,
      this.autoOpenCashDrawer,
      this.isActive,
      this.isDeleted,
      this.imageUrl});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || idSeq != null) {
      map['id_seq'] = Variable<int>(idSeq);
    }
    map['id'] = Variable<String>(id);
    map['name'] = Variable<String>(name);
    map['f_name'] = Variable<String>(fName);
    map['payment_type'] = Variable<int>(paymentType);
    if (!nullToAbsent || displayOrder != null) {
      map['display_order'] = Variable<int>(displayOrder);
    }
    if (!nullToAbsent || autoOpenCashDrawer != null) {
      map['auto_open_cash_drawer'] = Variable<bool>(autoOpenCashDrawer);
    }
    if (!nullToAbsent || isActive != null) {
      map['is_active'] = Variable<bool>(isActive);
    }
    if (!nullToAbsent || isDeleted != null) {
      map['is_deleted'] = Variable<bool>(isDeleted);
    }
    if (!nullToAbsent || imageUrl != null) {
      map['image_url'] = Variable<String>(imageUrl);
    }
    return map;
  }

  PaymentMethodEntityCompanion toCompanion(bool nullToAbsent) {
    return PaymentMethodEntityCompanion(
      idSeq:
          idSeq == null && nullToAbsent ? const Value.absent() : Value(idSeq),
      id: Value(id),
      name: Value(name),
      fName: Value(fName),
      paymentType: Value(paymentType),
      displayOrder: displayOrder == null && nullToAbsent
          ? const Value.absent()
          : Value(displayOrder),
      autoOpenCashDrawer: autoOpenCashDrawer == null && nullToAbsent
          ? const Value.absent()
          : Value(autoOpenCashDrawer),
      isActive: isActive == null && nullToAbsent
          ? const Value.absent()
          : Value(isActive),
      isDeleted: isDeleted == null && nullToAbsent
          ? const Value.absent()
          : Value(isDeleted),
      imageUrl: imageUrl == null && nullToAbsent
          ? const Value.absent()
          : Value(imageUrl),
    );
  }

  factory PaymentMethodEntityData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PaymentMethodEntityData(
      idSeq: serializer.fromJson<int?>(json['idSeq']),
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      fName: serializer.fromJson<String>(json['fName']),
      paymentType: serializer.fromJson<int>(json['paymentType']),
      displayOrder: serializer.fromJson<int?>(json['displayOrder']),
      autoOpenCashDrawer:
          serializer.fromJson<bool?>(json['autoOpenCashDrawer']),
      isActive: serializer.fromJson<bool?>(json['isActive']),
      isDeleted: serializer.fromJson<bool?>(json['isDeleted']),
      imageUrl: serializer.fromJson<String?>(json['imageUrl']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'idSeq': serializer.toJson<int?>(idSeq),
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String>(name),
      'fName': serializer.toJson<String>(fName),
      'paymentType': serializer.toJson<int>(paymentType),
      'displayOrder': serializer.toJson<int?>(displayOrder),
      'autoOpenCashDrawer': serializer.toJson<bool?>(autoOpenCashDrawer),
      'isActive': serializer.toJson<bool?>(isActive),
      'isDeleted': serializer.toJson<bool?>(isDeleted),
      'imageUrl': serializer.toJson<String?>(imageUrl),
    };
  }

  PaymentMethodEntityData copyWith(
          {Value<int?> idSeq = const Value.absent(),
          String? id,
          String? name,
          String? fName,
          int? paymentType,
          Value<int?> displayOrder = const Value.absent(),
          Value<bool?> autoOpenCashDrawer = const Value.absent(),
          Value<bool?> isActive = const Value.absent(),
          Value<bool?> isDeleted = const Value.absent(),
          Value<String?> imageUrl = const Value.absent()}) =>
      PaymentMethodEntityData(
        idSeq: idSeq.present ? idSeq.value : this.idSeq,
        id: id ?? this.id,
        name: name ?? this.name,
        fName: fName ?? this.fName,
        paymentType: paymentType ?? this.paymentType,
        displayOrder:
            displayOrder.present ? displayOrder.value : this.displayOrder,
        autoOpenCashDrawer: autoOpenCashDrawer.present
            ? autoOpenCashDrawer.value
            : this.autoOpenCashDrawer,
        isActive: isActive.present ? isActive.value : this.isActive,
        isDeleted: isDeleted.present ? isDeleted.value : this.isDeleted,
        imageUrl: imageUrl.present ? imageUrl.value : this.imageUrl,
      );
  @override
  String toString() {
    return (StringBuffer('PaymentMethodEntityData(')
          ..write('idSeq: $idSeq, ')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('fName: $fName, ')
          ..write('paymentType: $paymentType, ')
          ..write('displayOrder: $displayOrder, ')
          ..write('autoOpenCashDrawer: $autoOpenCashDrawer, ')
          ..write('isActive: $isActive, ')
          ..write('isDeleted: $isDeleted, ')
          ..write('imageUrl: $imageUrl')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(idSeq, id, name, fName, paymentType,
      displayOrder, autoOpenCashDrawer, isActive, isDeleted, imageUrl);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PaymentMethodEntityData &&
          other.idSeq == this.idSeq &&
          other.id == this.id &&
          other.name == this.name &&
          other.fName == this.fName &&
          other.paymentType == this.paymentType &&
          other.displayOrder == this.displayOrder &&
          other.autoOpenCashDrawer == this.autoOpenCashDrawer &&
          other.isActive == this.isActive &&
          other.isDeleted == this.isDeleted &&
          other.imageUrl == this.imageUrl);
}

class PaymentMethodEntityCompanion
    extends UpdateCompanion<PaymentMethodEntityData> {
  final Value<int?> idSeq;
  final Value<String> id;
  final Value<String> name;
  final Value<String> fName;
  final Value<int> paymentType;
  final Value<int?> displayOrder;
  final Value<bool?> autoOpenCashDrawer;
  final Value<bool?> isActive;
  final Value<bool?> isDeleted;
  final Value<String?> imageUrl;
  const PaymentMethodEntityCompanion({
    this.idSeq = const Value.absent(),
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.fName = const Value.absent(),
    this.paymentType = const Value.absent(),
    this.displayOrder = const Value.absent(),
    this.autoOpenCashDrawer = const Value.absent(),
    this.isActive = const Value.absent(),
    this.isDeleted = const Value.absent(),
    this.imageUrl = const Value.absent(),
  });
  PaymentMethodEntityCompanion.insert({
    this.idSeq = const Value.absent(),
    required String id,
    required String name,
    required String fName,
    required int paymentType,
    this.displayOrder = const Value.absent(),
    this.autoOpenCashDrawer = const Value.absent(),
    this.isActive = const Value.absent(),
    this.isDeleted = const Value.absent(),
    this.imageUrl = const Value.absent(),
  })  : id = Value(id),
        name = Value(name),
        fName = Value(fName),
        paymentType = Value(paymentType);
  static Insertable<PaymentMethodEntityData> custom({
    Expression<int>? idSeq,
    Expression<String>? id,
    Expression<String>? name,
    Expression<String>? fName,
    Expression<int>? paymentType,
    Expression<int>? displayOrder,
    Expression<bool>? autoOpenCashDrawer,
    Expression<bool>? isActive,
    Expression<bool>? isDeleted,
    Expression<String>? imageUrl,
  }) {
    return RawValuesInsertable({
      if (idSeq != null) 'id_seq': idSeq,
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (fName != null) 'f_name': fName,
      if (paymentType != null) 'payment_type': paymentType,
      if (displayOrder != null) 'display_order': displayOrder,
      if (autoOpenCashDrawer != null)
        'auto_open_cash_drawer': autoOpenCashDrawer,
      if (isActive != null) 'is_active': isActive,
      if (isDeleted != null) 'is_deleted': isDeleted,
      if (imageUrl != null) 'image_url': imageUrl,
    });
  }

  PaymentMethodEntityCompanion copyWith(
      {Value<int?>? idSeq,
      Value<String>? id,
      Value<String>? name,
      Value<String>? fName,
      Value<int>? paymentType,
      Value<int?>? displayOrder,
      Value<bool?>? autoOpenCashDrawer,
      Value<bool?>? isActive,
      Value<bool?>? isDeleted,
      Value<String?>? imageUrl}) {
    return PaymentMethodEntityCompanion(
      idSeq: idSeq ?? this.idSeq,
      id: id ?? this.id,
      name: name ?? this.name,
      fName: fName ?? this.fName,
      paymentType: paymentType ?? this.paymentType,
      displayOrder: displayOrder ?? this.displayOrder,
      autoOpenCashDrawer: autoOpenCashDrawer ?? this.autoOpenCashDrawer,
      isActive: isActive ?? this.isActive,
      isDeleted: isDeleted ?? this.isDeleted,
      imageUrl: imageUrl ?? this.imageUrl,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (idSeq.present) {
      map['id_seq'] = Variable<int>(idSeq.value);
    }
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (fName.present) {
      map['f_name'] = Variable<String>(fName.value);
    }
    if (paymentType.present) {
      map['payment_type'] = Variable<int>(paymentType.value);
    }
    if (displayOrder.present) {
      map['display_order'] = Variable<int>(displayOrder.value);
    }
    if (autoOpenCashDrawer.present) {
      map['auto_open_cash_drawer'] = Variable<bool>(autoOpenCashDrawer.value);
    }
    if (isActive.present) {
      map['is_active'] = Variable<bool>(isActive.value);
    }
    if (isDeleted.present) {
      map['is_deleted'] = Variable<bool>(isDeleted.value);
    }
    if (imageUrl.present) {
      map['image_url'] = Variable<String>(imageUrl.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PaymentMethodEntityCompanion(')
          ..write('idSeq: $idSeq, ')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('fName: $fName, ')
          ..write('paymentType: $paymentType, ')
          ..write('displayOrder: $displayOrder, ')
          ..write('autoOpenCashDrawer: $autoOpenCashDrawer, ')
          ..write('isActive: $isActive, ')
          ..write('isDeleted: $isDeleted, ')
          ..write('imageUrl: $imageUrl')
          ..write(')'))
        .toString();
  }
}

class $SettingEntityTable extends SettingEntity
    with TableInfo<$SettingEntityTable, SettingEntityData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SettingEntityTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idSeqMeta = const VerificationMeta('idSeq');
  @override
  late final GeneratedColumn<int> idSeq = GeneratedColumn<int>(
      'id_seq', aliasedName, true,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _idUserMeta = const VerificationMeta('idUser');
  @override
  late final GeneratedColumn<String> idUser = GeneratedColumn<String>(
      'id_user', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _shortcutsMeta =
      const VerificationMeta('shortcuts');
  @override
  late final GeneratedColumnWithTypeConverter<dynamic, String> shortcuts =
      GeneratedColumn<String>('shortcuts', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<dynamic>($SettingEntityTable.$convertershortcuts);
  @override
  List<GeneratedColumn> get $columns => [idSeq, idUser, shortcuts];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'setting_entity';
  @override
  VerificationContext validateIntegrity(Insertable<SettingEntityData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id_seq')) {
      context.handle(
          _idSeqMeta, idSeq.isAcceptableOrUnknown(data['id_seq']!, _idSeqMeta));
    }
    if (data.containsKey('id_user')) {
      context.handle(_idUserMeta,
          idUser.isAcceptableOrUnknown(data['id_user']!, _idUserMeta));
    } else if (isInserting) {
      context.missing(_idUserMeta);
    }
    context.handle(_shortcutsMeta, const VerificationResult.success());
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {idSeq};
  @override
  List<Set<GeneratedColumn>> get uniqueKeys => [
        {idUser},
      ];
  @override
  SettingEntityData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SettingEntityData(
      idSeq: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id_seq']),
      idUser: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id_user'])!,
      shortcuts: $SettingEntityTable.$convertershortcuts.fromSql(
          attachedDatabase.typeMapping
              .read(DriftSqlType.string, data['${effectivePrefix}shortcuts'])),
    );
  }

  @override
  $SettingEntityTable createAlias(String alias) {
    return $SettingEntityTable(attachedDatabase, alias);
  }

  static TypeConverter<dynamic, String?> $convertershortcuts =
      const JsonTypeConverter();
}

class SettingEntityData extends DataClass
    implements Insertable<SettingEntityData> {
  final int? idSeq;
  final String idUser;
  final dynamic shortcuts;
  const SettingEntityData({this.idSeq, required this.idUser, this.shortcuts});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || idSeq != null) {
      map['id_seq'] = Variable<int>(idSeq);
    }
    map['id_user'] = Variable<String>(idUser);
    if (!nullToAbsent || shortcuts != null) {
      map['shortcuts'] = Variable<String>(
          $SettingEntityTable.$convertershortcuts.toSql(shortcuts));
    }
    return map;
  }

  SettingEntityCompanion toCompanion(bool nullToAbsent) {
    return SettingEntityCompanion(
      idSeq:
          idSeq == null && nullToAbsent ? const Value.absent() : Value(idSeq),
      idUser: Value(idUser),
      shortcuts: shortcuts == null && nullToAbsent
          ? const Value.absent()
          : Value(shortcuts),
    );
  }

  factory SettingEntityData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SettingEntityData(
      idSeq: serializer.fromJson<int?>(json['idSeq']),
      idUser: serializer.fromJson<String>(json['idUser']),
      shortcuts: serializer.fromJson<dynamic>(json['shortcuts']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'idSeq': serializer.toJson<int?>(idSeq),
      'idUser': serializer.toJson<String>(idUser),
      'shortcuts': serializer.toJson<dynamic>(shortcuts),
    };
  }

  SettingEntityData copyWith(
          {Value<int?> idSeq = const Value.absent(),
          String? idUser,
          Value<dynamic> shortcuts = const Value.absent()}) =>
      SettingEntityData(
        idSeq: idSeq.present ? idSeq.value : this.idSeq,
        idUser: idUser ?? this.idUser,
        shortcuts: shortcuts.present ? shortcuts.value : this.shortcuts,
      );
  @override
  String toString() {
    return (StringBuffer('SettingEntityData(')
          ..write('idSeq: $idSeq, ')
          ..write('idUser: $idUser, ')
          ..write('shortcuts: $shortcuts')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(idSeq, idUser, shortcuts);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SettingEntityData &&
          other.idSeq == this.idSeq &&
          other.idUser == this.idUser &&
          other.shortcuts == this.shortcuts);
}

class SettingEntityCompanion extends UpdateCompanion<SettingEntityData> {
  final Value<int?> idSeq;
  final Value<String> idUser;
  final Value<dynamic> shortcuts;
  const SettingEntityCompanion({
    this.idSeq = const Value.absent(),
    this.idUser = const Value.absent(),
    this.shortcuts = const Value.absent(),
  });
  SettingEntityCompanion.insert({
    this.idSeq = const Value.absent(),
    required String idUser,
    this.shortcuts = const Value.absent(),
  }) : idUser = Value(idUser);
  static Insertable<SettingEntityData> custom({
    Expression<int>? idSeq,
    Expression<String>? idUser,
    Expression<String>? shortcuts,
  }) {
    return RawValuesInsertable({
      if (idSeq != null) 'id_seq': idSeq,
      if (idUser != null) 'id_user': idUser,
      if (shortcuts != null) 'shortcuts': shortcuts,
    });
  }

  SettingEntityCompanion copyWith(
      {Value<int?>? idSeq, Value<String>? idUser, Value<dynamic>? shortcuts}) {
    return SettingEntityCompanion(
      idSeq: idSeq ?? this.idSeq,
      idUser: idUser ?? this.idUser,
      shortcuts: shortcuts ?? this.shortcuts,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (idSeq.present) {
      map['id_seq'] = Variable<int>(idSeq.value);
    }
    if (idUser.present) {
      map['id_user'] = Variable<String>(idUser.value);
    }
    if (shortcuts.present) {
      map['shortcuts'] = Variable<String>(
          $SettingEntityTable.$convertershortcuts.toSql(shortcuts.value));
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SettingEntityCompanion(')
          ..write('idSeq: $idSeq, ')
          ..write('idUser: $idUser, ')
          ..write('shortcuts: $shortcuts')
          ..write(')'))
        .toString();
  }
}

class $OrderPaymentsTable extends OrderPayments
    with TableInfo<$OrderPaymentsTable, OrderPayment> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $OrderPaymentsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idSeqMeta = const VerificationMeta('idSeq');
  @override
  late final GeneratedColumn<int> idSeq = GeneratedColumn<int>(
      'id_seq', aliasedName, true,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _refreanceMeta =
      const VerificationMeta('refreance');
  @override
  late final GeneratedColumn<String> refreance = GeneratedColumn<String>(
      'refreance', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _tillIdMeta = const VerificationMeta('tillId');
  @override
  late final GeneratedColumn<String> tillId = GeneratedColumn<String>(
      'till_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _paymentMehtodIdMeta =
      const VerificationMeta('paymentMehtodId');
  @override
  late final GeneratedColumn<String> paymentMehtodId = GeneratedColumn<String>(
      'payment_mehtod_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _orderRefMeta =
      const VerificationMeta('orderRef');
  @override
  late final GeneratedColumn<String> orderRef = GeneratedColumn<String>(
      'order_ref', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _orderIdMeta =
      const VerificationMeta('orderId');
  @override
  late final GeneratedColumn<String> orderId = GeneratedColumn<String>(
      'order_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _amountMeta = const VerificationMeta('amount');
  @override
  late final GeneratedColumn<double> amount = GeneratedColumn<double>(
      'amount', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _remainAmtMeta =
      const VerificationMeta('remainAmt');
  @override
  late final GeneratedColumn<double> remainAmt = GeneratedColumn<double>(
      'remain_amt', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const Constant(0.0));
  static const VerificationMeta _amountCurecnyMeta =
      const VerificationMeta('amountCurecny');
  @override
  late final GeneratedColumn<double> amountCurecny = GeneratedColumn<double>(
      'amount_curecny', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const Constant(0.0));
  static const VerificationMeta _exchangeRateMeta =
      const VerificationMeta('exchangeRate');
  @override
  late final GeneratedColumn<double> exchangeRate = GeneratedColumn<double>(
      'exchange_rate', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _currencyCodeMeta =
      const VerificationMeta('currencyCode');
  @override
  late final GeneratedColumn<String> currencyCode = GeneratedColumn<String>(
      'currency_code', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        idSeq,
        refreance,
        tillId,
        paymentMehtodId,
        orderRef,
        orderId,
        amount,
        remainAmt,
        amountCurecny,
        exchangeRate,
        currencyCode
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'order_payments';
  @override
  VerificationContext validateIntegrity(Insertable<OrderPayment> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id_seq')) {
      context.handle(
          _idSeqMeta, idSeq.isAcceptableOrUnknown(data['id_seq']!, _idSeqMeta));
    }
    if (data.containsKey('refreance')) {
      context.handle(_refreanceMeta,
          refreance.isAcceptableOrUnknown(data['refreance']!, _refreanceMeta));
    } else if (isInserting) {
      context.missing(_refreanceMeta);
    }
    if (data.containsKey('till_id')) {
      context.handle(_tillIdMeta,
          tillId.isAcceptableOrUnknown(data['till_id']!, _tillIdMeta));
    } else if (isInserting) {
      context.missing(_tillIdMeta);
    }
    if (data.containsKey('payment_mehtod_id')) {
      context.handle(
          _paymentMehtodIdMeta,
          paymentMehtodId.isAcceptableOrUnknown(
              data['payment_mehtod_id']!, _paymentMehtodIdMeta));
    } else if (isInserting) {
      context.missing(_paymentMehtodIdMeta);
    }
    if (data.containsKey('order_ref')) {
      context.handle(_orderRefMeta,
          orderRef.isAcceptableOrUnknown(data['order_ref']!, _orderRefMeta));
    } else if (isInserting) {
      context.missing(_orderRefMeta);
    }
    if (data.containsKey('order_id')) {
      context.handle(_orderIdMeta,
          orderId.isAcceptableOrUnknown(data['order_id']!, _orderIdMeta));
    }
    if (data.containsKey('amount')) {
      context.handle(_amountMeta,
          amount.isAcceptableOrUnknown(data['amount']!, _amountMeta));
    }
    if (data.containsKey('remain_amt')) {
      context.handle(_remainAmtMeta,
          remainAmt.isAcceptableOrUnknown(data['remain_amt']!, _remainAmtMeta));
    }
    if (data.containsKey('amount_curecny')) {
      context.handle(
          _amountCurecnyMeta,
          amountCurecny.isAcceptableOrUnknown(
              data['amount_curecny']!, _amountCurecnyMeta));
    }
    if (data.containsKey('exchange_rate')) {
      context.handle(
          _exchangeRateMeta,
          exchangeRate.isAcceptableOrUnknown(
              data['exchange_rate']!, _exchangeRateMeta));
    }
    if (data.containsKey('currency_code')) {
      context.handle(
          _currencyCodeMeta,
          currencyCode.isAcceptableOrUnknown(
              data['currency_code']!, _currencyCodeMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {idSeq};
  @override
  List<Set<GeneratedColumn>> get uniqueKeys => [
        {refreance},
      ];
  @override
  OrderPayment map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return OrderPayment(
      idSeq: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id_seq']),
      refreance: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}refreance'])!,
      tillId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}till_id'])!,
      paymentMehtodId: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}payment_mehtod_id'])!,
      orderRef: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}order_ref'])!,
      orderId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}order_id']),
      amount: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}amount']),
      remainAmt: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}remain_amt'])!,
      amountCurecny: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}amount_curecny'])!,
      exchangeRate: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}exchange_rate']),
      currencyCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}currency_code']),
    );
  }

  @override
  $OrderPaymentsTable createAlias(String alias) {
    return $OrderPaymentsTable(attachedDatabase, alias);
  }
}

class OrderPayment extends DataClass implements Insertable<OrderPayment> {
  final int? idSeq;
  final String refreance;
  final String tillId;
  final String paymentMehtodId;
  final String orderRef;
  final String? orderId;
  final double? amount;
  final double remainAmt;
  final double amountCurecny;
  final double? exchangeRate;
  final String? currencyCode;
  const OrderPayment(
      {this.idSeq,
      required this.refreance,
      required this.tillId,
      required this.paymentMehtodId,
      required this.orderRef,
      this.orderId,
      this.amount,
      required this.remainAmt,
      required this.amountCurecny,
      this.exchangeRate,
      this.currencyCode});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || idSeq != null) {
      map['id_seq'] = Variable<int>(idSeq);
    }
    map['refreance'] = Variable<String>(refreance);
    map['till_id'] = Variable<String>(tillId);
    map['payment_mehtod_id'] = Variable<String>(paymentMehtodId);
    map['order_ref'] = Variable<String>(orderRef);
    if (!nullToAbsent || orderId != null) {
      map['order_id'] = Variable<String>(orderId);
    }
    if (!nullToAbsent || amount != null) {
      map['amount'] = Variable<double>(amount);
    }
    map['remain_amt'] = Variable<double>(remainAmt);
    map['amount_curecny'] = Variable<double>(amountCurecny);
    if (!nullToAbsent || exchangeRate != null) {
      map['exchange_rate'] = Variable<double>(exchangeRate);
    }
    if (!nullToAbsent || currencyCode != null) {
      map['currency_code'] = Variable<String>(currencyCode);
    }
    return map;
  }

  OrderPaymentsCompanion toCompanion(bool nullToAbsent) {
    return OrderPaymentsCompanion(
      idSeq:
          idSeq == null && nullToAbsent ? const Value.absent() : Value(idSeq),
      refreance: Value(refreance),
      tillId: Value(tillId),
      paymentMehtodId: Value(paymentMehtodId),
      orderRef: Value(orderRef),
      orderId: orderId == null && nullToAbsent
          ? const Value.absent()
          : Value(orderId),
      amount:
          amount == null && nullToAbsent ? const Value.absent() : Value(amount),
      remainAmt: Value(remainAmt),
      amountCurecny: Value(amountCurecny),
      exchangeRate: exchangeRate == null && nullToAbsent
          ? const Value.absent()
          : Value(exchangeRate),
      currencyCode: currencyCode == null && nullToAbsent
          ? const Value.absent()
          : Value(currencyCode),
    );
  }

  factory OrderPayment.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return OrderPayment(
      idSeq: serializer.fromJson<int?>(json['idSeq']),
      refreance: serializer.fromJson<String>(json['refreance']),
      tillId: serializer.fromJson<String>(json['tillId']),
      paymentMehtodId: serializer.fromJson<String>(json['paymentMehtodId']),
      orderRef: serializer.fromJson<String>(json['orderRef']),
      orderId: serializer.fromJson<String?>(json['orderId']),
      amount: serializer.fromJson<double?>(json['amount']),
      remainAmt: serializer.fromJson<double>(json['remainAmt']),
      amountCurecny: serializer.fromJson<double>(json['amountCurecny']),
      exchangeRate: serializer.fromJson<double?>(json['exchangeRate']),
      currencyCode: serializer.fromJson<String?>(json['currencyCode']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'idSeq': serializer.toJson<int?>(idSeq),
      'refreance': serializer.toJson<String>(refreance),
      'tillId': serializer.toJson<String>(tillId),
      'paymentMehtodId': serializer.toJson<String>(paymentMehtodId),
      'orderRef': serializer.toJson<String>(orderRef),
      'orderId': serializer.toJson<String?>(orderId),
      'amount': serializer.toJson<double?>(amount),
      'remainAmt': serializer.toJson<double>(remainAmt),
      'amountCurecny': serializer.toJson<double>(amountCurecny),
      'exchangeRate': serializer.toJson<double?>(exchangeRate),
      'currencyCode': serializer.toJson<String?>(currencyCode),
    };
  }

  OrderPayment copyWith(
          {Value<int?> idSeq = const Value.absent(),
          String? refreance,
          String? tillId,
          String? paymentMehtodId,
          String? orderRef,
          Value<String?> orderId = const Value.absent(),
          Value<double?> amount = const Value.absent(),
          double? remainAmt,
          double? amountCurecny,
          Value<double?> exchangeRate = const Value.absent(),
          Value<String?> currencyCode = const Value.absent()}) =>
      OrderPayment(
        idSeq: idSeq.present ? idSeq.value : this.idSeq,
        refreance: refreance ?? this.refreance,
        tillId: tillId ?? this.tillId,
        paymentMehtodId: paymentMehtodId ?? this.paymentMehtodId,
        orderRef: orderRef ?? this.orderRef,
        orderId: orderId.present ? orderId.value : this.orderId,
        amount: amount.present ? amount.value : this.amount,
        remainAmt: remainAmt ?? this.remainAmt,
        amountCurecny: amountCurecny ?? this.amountCurecny,
        exchangeRate:
            exchangeRate.present ? exchangeRate.value : this.exchangeRate,
        currencyCode:
            currencyCode.present ? currencyCode.value : this.currencyCode,
      );
  @override
  String toString() {
    return (StringBuffer('OrderPayment(')
          ..write('idSeq: $idSeq, ')
          ..write('refreance: $refreance, ')
          ..write('tillId: $tillId, ')
          ..write('paymentMehtodId: $paymentMehtodId, ')
          ..write('orderRef: $orderRef, ')
          ..write('orderId: $orderId, ')
          ..write('amount: $amount, ')
          ..write('remainAmt: $remainAmt, ')
          ..write('amountCurecny: $amountCurecny, ')
          ..write('exchangeRate: $exchangeRate, ')
          ..write('currencyCode: $currencyCode')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      idSeq,
      refreance,
      tillId,
      paymentMehtodId,
      orderRef,
      orderId,
      amount,
      remainAmt,
      amountCurecny,
      exchangeRate,
      currencyCode);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is OrderPayment &&
          other.idSeq == this.idSeq &&
          other.refreance == this.refreance &&
          other.tillId == this.tillId &&
          other.paymentMehtodId == this.paymentMehtodId &&
          other.orderRef == this.orderRef &&
          other.orderId == this.orderId &&
          other.amount == this.amount &&
          other.remainAmt == this.remainAmt &&
          other.amountCurecny == this.amountCurecny &&
          other.exchangeRate == this.exchangeRate &&
          other.currencyCode == this.currencyCode);
}

class OrderPaymentsCompanion extends UpdateCompanion<OrderPayment> {
  final Value<int?> idSeq;
  final Value<String> refreance;
  final Value<String> tillId;
  final Value<String> paymentMehtodId;
  final Value<String> orderRef;
  final Value<String?> orderId;
  final Value<double?> amount;
  final Value<double> remainAmt;
  final Value<double> amountCurecny;
  final Value<double?> exchangeRate;
  final Value<String?> currencyCode;
  const OrderPaymentsCompanion({
    this.idSeq = const Value.absent(),
    this.refreance = const Value.absent(),
    this.tillId = const Value.absent(),
    this.paymentMehtodId = const Value.absent(),
    this.orderRef = const Value.absent(),
    this.orderId = const Value.absent(),
    this.amount = const Value.absent(),
    this.remainAmt = const Value.absent(),
    this.amountCurecny = const Value.absent(),
    this.exchangeRate = const Value.absent(),
    this.currencyCode = const Value.absent(),
  });
  OrderPaymentsCompanion.insert({
    this.idSeq = const Value.absent(),
    required String refreance,
    required String tillId,
    required String paymentMehtodId,
    required String orderRef,
    this.orderId = const Value.absent(),
    this.amount = const Value.absent(),
    this.remainAmt = const Value.absent(),
    this.amountCurecny = const Value.absent(),
    this.exchangeRate = const Value.absent(),
    this.currencyCode = const Value.absent(),
  })  : refreance = Value(refreance),
        tillId = Value(tillId),
        paymentMehtodId = Value(paymentMehtodId),
        orderRef = Value(orderRef);
  static Insertable<OrderPayment> custom({
    Expression<int>? idSeq,
    Expression<String>? refreance,
    Expression<String>? tillId,
    Expression<String>? paymentMehtodId,
    Expression<String>? orderRef,
    Expression<String>? orderId,
    Expression<double>? amount,
    Expression<double>? remainAmt,
    Expression<double>? amountCurecny,
    Expression<double>? exchangeRate,
    Expression<String>? currencyCode,
  }) {
    return RawValuesInsertable({
      if (idSeq != null) 'id_seq': idSeq,
      if (refreance != null) 'refreance': refreance,
      if (tillId != null) 'till_id': tillId,
      if (paymentMehtodId != null) 'payment_mehtod_id': paymentMehtodId,
      if (orderRef != null) 'order_ref': orderRef,
      if (orderId != null) 'order_id': orderId,
      if (amount != null) 'amount': amount,
      if (remainAmt != null) 'remain_amt': remainAmt,
      if (amountCurecny != null) 'amount_curecny': amountCurecny,
      if (exchangeRate != null) 'exchange_rate': exchangeRate,
      if (currencyCode != null) 'currency_code': currencyCode,
    });
  }

  OrderPaymentsCompanion copyWith(
      {Value<int?>? idSeq,
      Value<String>? refreance,
      Value<String>? tillId,
      Value<String>? paymentMehtodId,
      Value<String>? orderRef,
      Value<String?>? orderId,
      Value<double?>? amount,
      Value<double>? remainAmt,
      Value<double>? amountCurecny,
      Value<double?>? exchangeRate,
      Value<String?>? currencyCode}) {
    return OrderPaymentsCompanion(
      idSeq: idSeq ?? this.idSeq,
      refreance: refreance ?? this.refreance,
      tillId: tillId ?? this.tillId,
      paymentMehtodId: paymentMehtodId ?? this.paymentMehtodId,
      orderRef: orderRef ?? this.orderRef,
      orderId: orderId ?? this.orderId,
      amount: amount ?? this.amount,
      remainAmt: remainAmt ?? this.remainAmt,
      amountCurecny: amountCurecny ?? this.amountCurecny,
      exchangeRate: exchangeRate ?? this.exchangeRate,
      currencyCode: currencyCode ?? this.currencyCode,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (idSeq.present) {
      map['id_seq'] = Variable<int>(idSeq.value);
    }
    if (refreance.present) {
      map['refreance'] = Variable<String>(refreance.value);
    }
    if (tillId.present) {
      map['till_id'] = Variable<String>(tillId.value);
    }
    if (paymentMehtodId.present) {
      map['payment_mehtod_id'] = Variable<String>(paymentMehtodId.value);
    }
    if (orderRef.present) {
      map['order_ref'] = Variable<String>(orderRef.value);
    }
    if (orderId.present) {
      map['order_id'] = Variable<String>(orderId.value);
    }
    if (amount.present) {
      map['amount'] = Variable<double>(amount.value);
    }
    if (remainAmt.present) {
      map['remain_amt'] = Variable<double>(remainAmt.value);
    }
    if (amountCurecny.present) {
      map['amount_curecny'] = Variable<double>(amountCurecny.value);
    }
    if (exchangeRate.present) {
      map['exchange_rate'] = Variable<double>(exchangeRate.value);
    }
    if (currencyCode.present) {
      map['currency_code'] = Variable<String>(currencyCode.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('OrderPaymentsCompanion(')
          ..write('idSeq: $idSeq, ')
          ..write('refreance: $refreance, ')
          ..write('tillId: $tillId, ')
          ..write('paymentMehtodId: $paymentMehtodId, ')
          ..write('orderRef: $orderRef, ')
          ..write('orderId: $orderId, ')
          ..write('amount: $amount, ')
          ..write('remainAmt: $remainAmt, ')
          ..write('amountCurecny: $amountCurecny, ')
          ..write('exchangeRate: $exchangeRate, ')
          ..write('currencyCode: $currencyCode')
          ..write(')'))
        .toString();
  }
}

class $DrawerOperationEntityTable extends DrawerOperationEntity
    with TableInfo<$DrawerOperationEntityTable, DrawerOperationEntityData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DrawerOperationEntityTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idSeqMeta = const VerificationMeta('idSeq');
  @override
  late final GeneratedColumn<int> idSeq = GeneratedColumn<int>(
      'id_seq', aliasedName, true,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _referanceMeta =
      const VerificationMeta('referance');
  @override
  late final GeneratedColumn<String> referance = GeneratedColumn<String>(
      'referance', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _dateWorkMeta =
      const VerificationMeta('dateWork');
  @override
  late final GeneratedColumn<DateTime> dateWork = GeneratedColumn<DateTime>(
      'date_work', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<int> type = GeneratedColumn<int>(
      'type', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _amountMeta = const VerificationMeta('amount');
  @override
  late final GeneratedColumn<double> amount = GeneratedColumn<double>(
      'amount', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _resaonMeta = const VerificationMeta('resaon');
  @override
  late final GeneratedColumn<String> resaon = GeneratedColumn<String>(
      'resaon', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _noteMeta = const VerificationMeta('note');
  @override
  late final GeneratedColumn<String> note = GeneratedColumn<String>(
      'note', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _deviceIdMeta =
      const VerificationMeta('deviceId');
  @override
  late final GeneratedColumn<String> deviceId = GeneratedColumn<String>(
      'device_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
      'user_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _tillIdMeta = const VerificationMeta('tillId');
  @override
  late final GeneratedColumn<String> tillId = GeneratedColumn<String>(
      'till_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _shiftIdMeta =
      const VerificationMeta('shiftId');
  @override
  late final GeneratedColumn<String> shiftId = GeneratedColumn<String>(
      'shift_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        idSeq,
        referance,
        dateWork,
        type,
        amount,
        resaon,
        note,
        deviceId,
        userId,
        tillId,
        shiftId
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'drawer_operation_entity';
  @override
  VerificationContext validateIntegrity(
      Insertable<DrawerOperationEntityData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id_seq')) {
      context.handle(
          _idSeqMeta, idSeq.isAcceptableOrUnknown(data['id_seq']!, _idSeqMeta));
    }
    if (data.containsKey('referance')) {
      context.handle(_referanceMeta,
          referance.isAcceptableOrUnknown(data['referance']!, _referanceMeta));
    } else if (isInserting) {
      context.missing(_referanceMeta);
    }
    if (data.containsKey('date_work')) {
      context.handle(_dateWorkMeta,
          dateWork.isAcceptableOrUnknown(data['date_work']!, _dateWorkMeta));
    } else if (isInserting) {
      context.missing(_dateWorkMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type']!, _typeMeta));
    }
    if (data.containsKey('amount')) {
      context.handle(_amountMeta,
          amount.isAcceptableOrUnknown(data['amount']!, _amountMeta));
    }
    if (data.containsKey('resaon')) {
      context.handle(_resaonMeta,
          resaon.isAcceptableOrUnknown(data['resaon']!, _resaonMeta));
    }
    if (data.containsKey('note')) {
      context.handle(
          _noteMeta, note.isAcceptableOrUnknown(data['note']!, _noteMeta));
    }
    if (data.containsKey('device_id')) {
      context.handle(_deviceIdMeta,
          deviceId.isAcceptableOrUnknown(data['device_id']!, _deviceIdMeta));
    }
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta));
    }
    if (data.containsKey('till_id')) {
      context.handle(_tillIdMeta,
          tillId.isAcceptableOrUnknown(data['till_id']!, _tillIdMeta));
    }
    if (data.containsKey('shift_id')) {
      context.handle(_shiftIdMeta,
          shiftId.isAcceptableOrUnknown(data['shift_id']!, _shiftIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {idSeq};
  @override
  List<Set<GeneratedColumn>> get uniqueKeys => [
        {referance},
      ];
  @override
  DrawerOperationEntityData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DrawerOperationEntityData(
      idSeq: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id_seq']),
      referance: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}referance'])!,
      dateWork: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}date_work'])!,
      type: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}type']),
      amount: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}amount']),
      resaon: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}resaon']),
      note: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}note']),
      deviceId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}device_id']),
      userId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}user_id']),
      tillId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}till_id']),
      shiftId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}shift_id']),
    );
  }

  @override
  $DrawerOperationEntityTable createAlias(String alias) {
    return $DrawerOperationEntityTable(attachedDatabase, alias);
  }
}

class DrawerOperationEntityData extends DataClass
    implements Insertable<DrawerOperationEntityData> {
  final int? idSeq;
  final String referance;
  final DateTime dateWork;
  final int? type;
  final double? amount;
  final String? resaon;
  final String? note;
  final String? deviceId;
  final String? userId;
  final String? tillId;
  final String? shiftId;
  const DrawerOperationEntityData(
      {this.idSeq,
      required this.referance,
      required this.dateWork,
      this.type,
      this.amount,
      this.resaon,
      this.note,
      this.deviceId,
      this.userId,
      this.tillId,
      this.shiftId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || idSeq != null) {
      map['id_seq'] = Variable<int>(idSeq);
    }
    map['referance'] = Variable<String>(referance);
    map['date_work'] = Variable<DateTime>(dateWork);
    if (!nullToAbsent || type != null) {
      map['type'] = Variable<int>(type);
    }
    if (!nullToAbsent || amount != null) {
      map['amount'] = Variable<double>(amount);
    }
    if (!nullToAbsent || resaon != null) {
      map['resaon'] = Variable<String>(resaon);
    }
    if (!nullToAbsent || note != null) {
      map['note'] = Variable<String>(note);
    }
    if (!nullToAbsent || deviceId != null) {
      map['device_id'] = Variable<String>(deviceId);
    }
    if (!nullToAbsent || userId != null) {
      map['user_id'] = Variable<String>(userId);
    }
    if (!nullToAbsent || tillId != null) {
      map['till_id'] = Variable<String>(tillId);
    }
    if (!nullToAbsent || shiftId != null) {
      map['shift_id'] = Variable<String>(shiftId);
    }
    return map;
  }

  DrawerOperationEntityCompanion toCompanion(bool nullToAbsent) {
    return DrawerOperationEntityCompanion(
      idSeq:
          idSeq == null && nullToAbsent ? const Value.absent() : Value(idSeq),
      referance: Value(referance),
      dateWork: Value(dateWork),
      type: type == null && nullToAbsent ? const Value.absent() : Value(type),
      amount:
          amount == null && nullToAbsent ? const Value.absent() : Value(amount),
      resaon:
          resaon == null && nullToAbsent ? const Value.absent() : Value(resaon),
      note: note == null && nullToAbsent ? const Value.absent() : Value(note),
      deviceId: deviceId == null && nullToAbsent
          ? const Value.absent()
          : Value(deviceId),
      userId:
          userId == null && nullToAbsent ? const Value.absent() : Value(userId),
      tillId:
          tillId == null && nullToAbsent ? const Value.absent() : Value(tillId),
      shiftId: shiftId == null && nullToAbsent
          ? const Value.absent()
          : Value(shiftId),
    );
  }

  factory DrawerOperationEntityData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DrawerOperationEntityData(
      idSeq: serializer.fromJson<int?>(json['idSeq']),
      referance: serializer.fromJson<String>(json['referance']),
      dateWork: serializer.fromJson<DateTime>(json['dateWork']),
      type: serializer.fromJson<int?>(json['type']),
      amount: serializer.fromJson<double?>(json['amount']),
      resaon: serializer.fromJson<String?>(json['resaon']),
      note: serializer.fromJson<String?>(json['note']),
      deviceId: serializer.fromJson<String?>(json['deviceId']),
      userId: serializer.fromJson<String?>(json['userId']),
      tillId: serializer.fromJson<String?>(json['tillId']),
      shiftId: serializer.fromJson<String?>(json['shiftId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'idSeq': serializer.toJson<int?>(idSeq),
      'referance': serializer.toJson<String>(referance),
      'dateWork': serializer.toJson<DateTime>(dateWork),
      'type': serializer.toJson<int?>(type),
      'amount': serializer.toJson<double?>(amount),
      'resaon': serializer.toJson<String?>(resaon),
      'note': serializer.toJson<String?>(note),
      'deviceId': serializer.toJson<String?>(deviceId),
      'userId': serializer.toJson<String?>(userId),
      'tillId': serializer.toJson<String?>(tillId),
      'shiftId': serializer.toJson<String?>(shiftId),
    };
  }

  DrawerOperationEntityData copyWith(
          {Value<int?> idSeq = const Value.absent(),
          String? referance,
          DateTime? dateWork,
          Value<int?> type = const Value.absent(),
          Value<double?> amount = const Value.absent(),
          Value<String?> resaon = const Value.absent(),
          Value<String?> note = const Value.absent(),
          Value<String?> deviceId = const Value.absent(),
          Value<String?> userId = const Value.absent(),
          Value<String?> tillId = const Value.absent(),
          Value<String?> shiftId = const Value.absent()}) =>
      DrawerOperationEntityData(
        idSeq: idSeq.present ? idSeq.value : this.idSeq,
        referance: referance ?? this.referance,
        dateWork: dateWork ?? this.dateWork,
        type: type.present ? type.value : this.type,
        amount: amount.present ? amount.value : this.amount,
        resaon: resaon.present ? resaon.value : this.resaon,
        note: note.present ? note.value : this.note,
        deviceId: deviceId.present ? deviceId.value : this.deviceId,
        userId: userId.present ? userId.value : this.userId,
        tillId: tillId.present ? tillId.value : this.tillId,
        shiftId: shiftId.present ? shiftId.value : this.shiftId,
      );
  @override
  String toString() {
    return (StringBuffer('DrawerOperationEntityData(')
          ..write('idSeq: $idSeq, ')
          ..write('referance: $referance, ')
          ..write('dateWork: $dateWork, ')
          ..write('type: $type, ')
          ..write('amount: $amount, ')
          ..write('resaon: $resaon, ')
          ..write('note: $note, ')
          ..write('deviceId: $deviceId, ')
          ..write('userId: $userId, ')
          ..write('tillId: $tillId, ')
          ..write('shiftId: $shiftId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(idSeq, referance, dateWork, type, amount,
      resaon, note, deviceId, userId, tillId, shiftId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DrawerOperationEntityData &&
          other.idSeq == this.idSeq &&
          other.referance == this.referance &&
          other.dateWork == this.dateWork &&
          other.type == this.type &&
          other.amount == this.amount &&
          other.resaon == this.resaon &&
          other.note == this.note &&
          other.deviceId == this.deviceId &&
          other.userId == this.userId &&
          other.tillId == this.tillId &&
          other.shiftId == this.shiftId);
}

class DrawerOperationEntityCompanion
    extends UpdateCompanion<DrawerOperationEntityData> {
  final Value<int?> idSeq;
  final Value<String> referance;
  final Value<DateTime> dateWork;
  final Value<int?> type;
  final Value<double?> amount;
  final Value<String?> resaon;
  final Value<String?> note;
  final Value<String?> deviceId;
  final Value<String?> userId;
  final Value<String?> tillId;
  final Value<String?> shiftId;
  const DrawerOperationEntityCompanion({
    this.idSeq = const Value.absent(),
    this.referance = const Value.absent(),
    this.dateWork = const Value.absent(),
    this.type = const Value.absent(),
    this.amount = const Value.absent(),
    this.resaon = const Value.absent(),
    this.note = const Value.absent(),
    this.deviceId = const Value.absent(),
    this.userId = const Value.absent(),
    this.tillId = const Value.absent(),
    this.shiftId = const Value.absent(),
  });
  DrawerOperationEntityCompanion.insert({
    this.idSeq = const Value.absent(),
    required String referance,
    required DateTime dateWork,
    this.type = const Value.absent(),
    this.amount = const Value.absent(),
    this.resaon = const Value.absent(),
    this.note = const Value.absent(),
    this.deviceId = const Value.absent(),
    this.userId = const Value.absent(),
    this.tillId = const Value.absent(),
    this.shiftId = const Value.absent(),
  })  : referance = Value(referance),
        dateWork = Value(dateWork);
  static Insertable<DrawerOperationEntityData> custom({
    Expression<int>? idSeq,
    Expression<String>? referance,
    Expression<DateTime>? dateWork,
    Expression<int>? type,
    Expression<double>? amount,
    Expression<String>? resaon,
    Expression<String>? note,
    Expression<String>? deviceId,
    Expression<String>? userId,
    Expression<String>? tillId,
    Expression<String>? shiftId,
  }) {
    return RawValuesInsertable({
      if (idSeq != null) 'id_seq': idSeq,
      if (referance != null) 'referance': referance,
      if (dateWork != null) 'date_work': dateWork,
      if (type != null) 'type': type,
      if (amount != null) 'amount': amount,
      if (resaon != null) 'resaon': resaon,
      if (note != null) 'note': note,
      if (deviceId != null) 'device_id': deviceId,
      if (userId != null) 'user_id': userId,
      if (tillId != null) 'till_id': tillId,
      if (shiftId != null) 'shift_id': shiftId,
    });
  }

  DrawerOperationEntityCompanion copyWith(
      {Value<int?>? idSeq,
      Value<String>? referance,
      Value<DateTime>? dateWork,
      Value<int?>? type,
      Value<double?>? amount,
      Value<String?>? resaon,
      Value<String?>? note,
      Value<String?>? deviceId,
      Value<String?>? userId,
      Value<String?>? tillId,
      Value<String?>? shiftId}) {
    return DrawerOperationEntityCompanion(
      idSeq: idSeq ?? this.idSeq,
      referance: referance ?? this.referance,
      dateWork: dateWork ?? this.dateWork,
      type: type ?? this.type,
      amount: amount ?? this.amount,
      resaon: resaon ?? this.resaon,
      note: note ?? this.note,
      deviceId: deviceId ?? this.deviceId,
      userId: userId ?? this.userId,
      tillId: tillId ?? this.tillId,
      shiftId: shiftId ?? this.shiftId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (idSeq.present) {
      map['id_seq'] = Variable<int>(idSeq.value);
    }
    if (referance.present) {
      map['referance'] = Variable<String>(referance.value);
    }
    if (dateWork.present) {
      map['date_work'] = Variable<DateTime>(dateWork.value);
    }
    if (type.present) {
      map['type'] = Variable<int>(type.value);
    }
    if (amount.present) {
      map['amount'] = Variable<double>(amount.value);
    }
    if (resaon.present) {
      map['resaon'] = Variable<String>(resaon.value);
    }
    if (note.present) {
      map['note'] = Variable<String>(note.value);
    }
    if (deviceId.present) {
      map['device_id'] = Variable<String>(deviceId.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (tillId.present) {
      map['till_id'] = Variable<String>(tillId.value);
    }
    if (shiftId.present) {
      map['shift_id'] = Variable<String>(shiftId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DrawerOperationEntityCompanion(')
          ..write('idSeq: $idSeq, ')
          ..write('referance: $referance, ')
          ..write('dateWork: $dateWork, ')
          ..write('type: $type, ')
          ..write('amount: $amount, ')
          ..write('resaon: $resaon, ')
          ..write('note: $note, ')
          ..write('deviceId: $deviceId, ')
          ..write('userId: $userId, ')
          ..write('tillId: $tillId, ')
          ..write('shiftId: $shiftId')
          ..write(')'))
        .toString();
  }
}

class $ActivationInfoEntityTable extends ActivationInfoEntity
    with TableInfo<$ActivationInfoEntityTable, ActivationInfoEntityData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ActivationInfoEntityTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idSeqMeta = const VerificationMeta('idSeq');
  @override
  late final GeneratedColumn<int> idSeq = GeneratedColumn<int>(
      'id_seq', aliasedName, true,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _fNameMeta = const VerificationMeta('fName');
  @override
  late final GeneratedColumn<String> fName = GeneratedColumn<String>(
      'f_name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
      'email', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _phoneMeta = const VerificationMeta('phone');
  @override
  late final GeneratedColumn<String> phone = GeneratedColumn<String>(
      'phone', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _mobileMeta = const VerificationMeta('mobile');
  @override
  late final GeneratedColumn<String> mobile = GeneratedColumn<String>(
      'mobile', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _taxRegNameMeta =
      const VerificationMeta('taxRegName');
  @override
  late final GeneratedColumn<String> taxRegName = GeneratedColumn<String>(
      'tax_reg_name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _fTaxRegNameMeta =
      const VerificationMeta('fTaxRegName');
  @override
  late final GeneratedColumn<String> fTaxRegName = GeneratedColumn<String>(
      'f_tax_reg_name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _taxCodeMeta =
      const VerificationMeta('taxCode');
  @override
  late final GeneratedColumn<String> taxCode = GeneratedColumn<String>(
      'tax_code', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _onlineOrderStartTimeMeta =
      const VerificationMeta('onlineOrderStartTime');
  @override
  late final GeneratedColumn<String> onlineOrderStartTime =
      GeneratedColumn<String>('online_order_start_time', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _onlineOrderEndTimeMeta =
      const VerificationMeta('onlineOrderEndTime');
  @override
  late final GeneratedColumn<String> onlineOrderEndTime =
      GeneratedColumn<String>('online_order_end_time', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _branchPrefixMeta =
      const VerificationMeta('branchPrefix');
  @override
  late final GeneratedColumn<String> branchPrefix = GeneratedColumn<String>(
      'branch_prefix', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _customerServiceMeta =
      const VerificationMeta('customerService');
  @override
  late final GeneratedColumn<String> customerService = GeneratedColumn<String>(
      'customer_service', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _countryIdMeta =
      const VerificationMeta('countryId');
  @override
  late final GeneratedColumn<String> countryId = GeneratedColumn<String>(
      'country_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _cityIdMeta = const VerificationMeta('cityId');
  @override
  late final GeneratedColumn<String> cityId = GeneratedColumn<String>(
      'city_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _addressMeta =
      const VerificationMeta('address');
  @override
  late final GeneratedColumn<String> address = GeneratedColumn<String>(
      'address', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _latitudeMeta =
      const VerificationMeta('latitude');
  @override
  late final GeneratedColumn<String> latitude = GeneratedColumn<String>(
      'latitude', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _longitudeMeta =
      const VerificationMeta('longitude');
  @override
  late final GeneratedColumn<String> longitude = GeneratedColumn<String>(
      'longitude', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _headerInvoiceMsgMeta =
      const VerificationMeta('headerInvoiceMsg');
  @override
  late final GeneratedColumn<String> headerInvoiceMsg = GeneratedColumn<String>(
      'header_invoice_msg', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _footerInvoiceMsgMeta =
      const VerificationMeta('footerInvoiceMsg');
  @override
  late final GeneratedColumn<String> footerInvoiceMsg = GeneratedColumn<String>(
      'footer_invoice_msg', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _receiveOnlineOrdersMeta =
      const VerificationMeta('receiveOnlineOrders');
  @override
  late final GeneratedColumn<bool> receiveOnlineOrders = GeneratedColumn<bool>(
      'receive_online_orders', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("receive_online_orders" IN (0, 1))'));
  static const VerificationMeta _devicesMeta =
      const VerificationMeta('devices');
  @override
  late final GeneratedColumnWithTypeConverter<dynamic, String> devices =
      GeneratedColumn<String>('devices', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<dynamic>($ActivationInfoEntityTable.$converterdevices);
  static const VerificationMeta _codeMeta = const VerificationMeta('code');
  @override
  late final GeneratedColumn<String> code = GeneratedColumn<String>(
      'code', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _currentDeviceIdMeta =
      const VerificationMeta('currentDeviceId');
  @override
  late final GeneratedColumn<String> currentDeviceId = GeneratedColumn<String>(
      'current_device_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _companyMeta =
      const VerificationMeta('company');
  @override
  late final GeneratedColumn<String> company = GeneratedColumn<String>(
      'company', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _fCompanyMeta =
      const VerificationMeta('fCompany');
  @override
  late final GeneratedColumn<String> fCompany = GeneratedColumn<String>(
      'f_company', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _branchMeta = const VerificationMeta('branch');
  @override
  late final GeneratedColumn<String> branch = GeneratedColumn<String>(
      'branch', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _fBranchMeta =
      const VerificationMeta('fBranch');
  @override
  late final GeneratedColumn<String> fBranch = GeneratedColumn<String>(
      'f_branch', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        idSeq,
        id,
        name,
        fName,
        email,
        phone,
        mobile,
        taxRegName,
        fTaxRegName,
        taxCode,
        onlineOrderStartTime,
        onlineOrderEndTime,
        branchPrefix,
        customerService,
        countryId,
        cityId,
        address,
        latitude,
        longitude,
        headerInvoiceMsg,
        footerInvoiceMsg,
        receiveOnlineOrders,
        devices,
        code,
        currentDeviceId,
        company,
        fCompany,
        branch,
        fBranch
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'activation_info_entity';
  @override
  VerificationContext validateIntegrity(
      Insertable<ActivationInfoEntityData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id_seq')) {
      context.handle(
          _idSeqMeta, idSeq.isAcceptableOrUnknown(data['id_seq']!, _idSeqMeta));
    }
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    }
    if (data.containsKey('f_name')) {
      context.handle(
          _fNameMeta, fName.isAcceptableOrUnknown(data['f_name']!, _fNameMeta));
    }
    if (data.containsKey('email')) {
      context.handle(
          _emailMeta, email.isAcceptableOrUnknown(data['email']!, _emailMeta));
    }
    if (data.containsKey('phone')) {
      context.handle(
          _phoneMeta, phone.isAcceptableOrUnknown(data['phone']!, _phoneMeta));
    }
    if (data.containsKey('mobile')) {
      context.handle(_mobileMeta,
          mobile.isAcceptableOrUnknown(data['mobile']!, _mobileMeta));
    }
    if (data.containsKey('tax_reg_name')) {
      context.handle(
          _taxRegNameMeta,
          taxRegName.isAcceptableOrUnknown(
              data['tax_reg_name']!, _taxRegNameMeta));
    }
    if (data.containsKey('f_tax_reg_name')) {
      context.handle(
          _fTaxRegNameMeta,
          fTaxRegName.isAcceptableOrUnknown(
              data['f_tax_reg_name']!, _fTaxRegNameMeta));
    }
    if (data.containsKey('tax_code')) {
      context.handle(_taxCodeMeta,
          taxCode.isAcceptableOrUnknown(data['tax_code']!, _taxCodeMeta));
    }
    if (data.containsKey('online_order_start_time')) {
      context.handle(
          _onlineOrderStartTimeMeta,
          onlineOrderStartTime.isAcceptableOrUnknown(
              data['online_order_start_time']!, _onlineOrderStartTimeMeta));
    }
    if (data.containsKey('online_order_end_time')) {
      context.handle(
          _onlineOrderEndTimeMeta,
          onlineOrderEndTime.isAcceptableOrUnknown(
              data['online_order_end_time']!, _onlineOrderEndTimeMeta));
    }
    if (data.containsKey('branch_prefix')) {
      context.handle(
          _branchPrefixMeta,
          branchPrefix.isAcceptableOrUnknown(
              data['branch_prefix']!, _branchPrefixMeta));
    }
    if (data.containsKey('customer_service')) {
      context.handle(
          _customerServiceMeta,
          customerService.isAcceptableOrUnknown(
              data['customer_service']!, _customerServiceMeta));
    }
    if (data.containsKey('country_id')) {
      context.handle(_countryIdMeta,
          countryId.isAcceptableOrUnknown(data['country_id']!, _countryIdMeta));
    }
    if (data.containsKey('city_id')) {
      context.handle(_cityIdMeta,
          cityId.isAcceptableOrUnknown(data['city_id']!, _cityIdMeta));
    }
    if (data.containsKey('address')) {
      context.handle(_addressMeta,
          address.isAcceptableOrUnknown(data['address']!, _addressMeta));
    }
    if (data.containsKey('latitude')) {
      context.handle(_latitudeMeta,
          latitude.isAcceptableOrUnknown(data['latitude']!, _latitudeMeta));
    }
    if (data.containsKey('longitude')) {
      context.handle(_longitudeMeta,
          longitude.isAcceptableOrUnknown(data['longitude']!, _longitudeMeta));
    }
    if (data.containsKey('header_invoice_msg')) {
      context.handle(
          _headerInvoiceMsgMeta,
          headerInvoiceMsg.isAcceptableOrUnknown(
              data['header_invoice_msg']!, _headerInvoiceMsgMeta));
    }
    if (data.containsKey('footer_invoice_msg')) {
      context.handle(
          _footerInvoiceMsgMeta,
          footerInvoiceMsg.isAcceptableOrUnknown(
              data['footer_invoice_msg']!, _footerInvoiceMsgMeta));
    }
    if (data.containsKey('receive_online_orders')) {
      context.handle(
          _receiveOnlineOrdersMeta,
          receiveOnlineOrders.isAcceptableOrUnknown(
              data['receive_online_orders']!, _receiveOnlineOrdersMeta));
    }
    context.handle(_devicesMeta, const VerificationResult.success());
    if (data.containsKey('code')) {
      context.handle(
          _codeMeta, code.isAcceptableOrUnknown(data['code']!, _codeMeta));
    }
    if (data.containsKey('current_device_id')) {
      context.handle(
          _currentDeviceIdMeta,
          currentDeviceId.isAcceptableOrUnknown(
              data['current_device_id']!, _currentDeviceIdMeta));
    }
    if (data.containsKey('company')) {
      context.handle(_companyMeta,
          company.isAcceptableOrUnknown(data['company']!, _companyMeta));
    }
    if (data.containsKey('f_company')) {
      context.handle(_fCompanyMeta,
          fCompany.isAcceptableOrUnknown(data['f_company']!, _fCompanyMeta));
    }
    if (data.containsKey('branch')) {
      context.handle(_branchMeta,
          branch.isAcceptableOrUnknown(data['branch']!, _branchMeta));
    }
    if (data.containsKey('f_branch')) {
      context.handle(_fBranchMeta,
          fBranch.isAcceptableOrUnknown(data['f_branch']!, _fBranchMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {idSeq};
  @override
  ActivationInfoEntityData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ActivationInfoEntityData(
      idSeq: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id_seq']),
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id']),
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name']),
      fName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}f_name']),
      email: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}email']),
      phone: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}phone']),
      mobile: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}mobile']),
      taxRegName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}tax_reg_name']),
      fTaxRegName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}f_tax_reg_name']),
      taxCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}tax_code']),
      onlineOrderStartTime: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}online_order_start_time']),
      onlineOrderEndTime: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}online_order_end_time']),
      branchPrefix: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}branch_prefix']),
      customerService: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}customer_service']),
      countryId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}country_id']),
      cityId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}city_id']),
      address: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}address']),
      latitude: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}latitude']),
      longitude: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}longitude']),
      headerInvoiceMsg: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}header_invoice_msg']),
      footerInvoiceMsg: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}footer_invoice_msg']),
      receiveOnlineOrders: attachedDatabase.typeMapping.read(
          DriftSqlType.bool, data['${effectivePrefix}receive_online_orders']),
      devices: $ActivationInfoEntityTable.$converterdevices.fromSql(
          attachedDatabase.typeMapping
              .read(DriftSqlType.string, data['${effectivePrefix}devices'])),
      code: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}code']),
      currentDeviceId: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}current_device_id']),
      company: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}company']),
      fCompany: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}f_company']),
      branch: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}branch']),
      fBranch: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}f_branch']),
    );
  }

  @override
  $ActivationInfoEntityTable createAlias(String alias) {
    return $ActivationInfoEntityTable(attachedDatabase, alias);
  }

  static TypeConverter<dynamic, String?> $converterdevices =
      const JsonTypeConverter();
}

class ActivationInfoEntityData extends DataClass
    implements Insertable<ActivationInfoEntityData> {
  final int? idSeq;
  final String? id;
  final String? name;
  final String? fName;
  final String? email;
  final String? phone;
  final String? mobile;
  final String? taxRegName;
  final String? fTaxRegName;
  final String? taxCode;
  final String? onlineOrderStartTime;
  final String? onlineOrderEndTime;
  final String? branchPrefix;
  final String? customerService;
  final String? countryId;
  final String? cityId;
  final String? address;
  final String? latitude;
  final String? longitude;
  final String? headerInvoiceMsg;
  final String? footerInvoiceMsg;
  final bool? receiveOnlineOrders;
  final dynamic devices;
  final String? code;
  final String? currentDeviceId;
  final String? company;
  final String? fCompany;
  final String? branch;
  final String? fBranch;
  const ActivationInfoEntityData(
      {this.idSeq,
      this.id,
      this.name,
      this.fName,
      this.email,
      this.phone,
      this.mobile,
      this.taxRegName,
      this.fTaxRegName,
      this.taxCode,
      this.onlineOrderStartTime,
      this.onlineOrderEndTime,
      this.branchPrefix,
      this.customerService,
      this.countryId,
      this.cityId,
      this.address,
      this.latitude,
      this.longitude,
      this.headerInvoiceMsg,
      this.footerInvoiceMsg,
      this.receiveOnlineOrders,
      this.devices,
      this.code,
      this.currentDeviceId,
      this.company,
      this.fCompany,
      this.branch,
      this.fBranch});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || idSeq != null) {
      map['id_seq'] = Variable<int>(idSeq);
    }
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<String>(id);
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || fName != null) {
      map['f_name'] = Variable<String>(fName);
    }
    if (!nullToAbsent || email != null) {
      map['email'] = Variable<String>(email);
    }
    if (!nullToAbsent || phone != null) {
      map['phone'] = Variable<String>(phone);
    }
    if (!nullToAbsent || mobile != null) {
      map['mobile'] = Variable<String>(mobile);
    }
    if (!nullToAbsent || taxRegName != null) {
      map['tax_reg_name'] = Variable<String>(taxRegName);
    }
    if (!nullToAbsent || fTaxRegName != null) {
      map['f_tax_reg_name'] = Variable<String>(fTaxRegName);
    }
    if (!nullToAbsent || taxCode != null) {
      map['tax_code'] = Variable<String>(taxCode);
    }
    if (!nullToAbsent || onlineOrderStartTime != null) {
      map['online_order_start_time'] = Variable<String>(onlineOrderStartTime);
    }
    if (!nullToAbsent || onlineOrderEndTime != null) {
      map['online_order_end_time'] = Variable<String>(onlineOrderEndTime);
    }
    if (!nullToAbsent || branchPrefix != null) {
      map['branch_prefix'] = Variable<String>(branchPrefix);
    }
    if (!nullToAbsent || customerService != null) {
      map['customer_service'] = Variable<String>(customerService);
    }
    if (!nullToAbsent || countryId != null) {
      map['country_id'] = Variable<String>(countryId);
    }
    if (!nullToAbsent || cityId != null) {
      map['city_id'] = Variable<String>(cityId);
    }
    if (!nullToAbsent || address != null) {
      map['address'] = Variable<String>(address);
    }
    if (!nullToAbsent || latitude != null) {
      map['latitude'] = Variable<String>(latitude);
    }
    if (!nullToAbsent || longitude != null) {
      map['longitude'] = Variable<String>(longitude);
    }
    if (!nullToAbsent || headerInvoiceMsg != null) {
      map['header_invoice_msg'] = Variable<String>(headerInvoiceMsg);
    }
    if (!nullToAbsent || footerInvoiceMsg != null) {
      map['footer_invoice_msg'] = Variable<String>(footerInvoiceMsg);
    }
    if (!nullToAbsent || receiveOnlineOrders != null) {
      map['receive_online_orders'] = Variable<bool>(receiveOnlineOrders);
    }
    if (!nullToAbsent || devices != null) {
      map['devices'] = Variable<String>(
          $ActivationInfoEntityTable.$converterdevices.toSql(devices));
    }
    if (!nullToAbsent || code != null) {
      map['code'] = Variable<String>(code);
    }
    if (!nullToAbsent || currentDeviceId != null) {
      map['current_device_id'] = Variable<String>(currentDeviceId);
    }
    if (!nullToAbsent || company != null) {
      map['company'] = Variable<String>(company);
    }
    if (!nullToAbsent || fCompany != null) {
      map['f_company'] = Variable<String>(fCompany);
    }
    if (!nullToAbsent || branch != null) {
      map['branch'] = Variable<String>(branch);
    }
    if (!nullToAbsent || fBranch != null) {
      map['f_branch'] = Variable<String>(fBranch);
    }
    return map;
  }

  ActivationInfoEntityCompanion toCompanion(bool nullToAbsent) {
    return ActivationInfoEntityCompanion(
      idSeq:
          idSeq == null && nullToAbsent ? const Value.absent() : Value(idSeq),
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      fName:
          fName == null && nullToAbsent ? const Value.absent() : Value(fName),
      email:
          email == null && nullToAbsent ? const Value.absent() : Value(email),
      phone:
          phone == null && nullToAbsent ? const Value.absent() : Value(phone),
      mobile:
          mobile == null && nullToAbsent ? const Value.absent() : Value(mobile),
      taxRegName: taxRegName == null && nullToAbsent
          ? const Value.absent()
          : Value(taxRegName),
      fTaxRegName: fTaxRegName == null && nullToAbsent
          ? const Value.absent()
          : Value(fTaxRegName),
      taxCode: taxCode == null && nullToAbsent
          ? const Value.absent()
          : Value(taxCode),
      onlineOrderStartTime: onlineOrderStartTime == null && nullToAbsent
          ? const Value.absent()
          : Value(onlineOrderStartTime),
      onlineOrderEndTime: onlineOrderEndTime == null && nullToAbsent
          ? const Value.absent()
          : Value(onlineOrderEndTime),
      branchPrefix: branchPrefix == null && nullToAbsent
          ? const Value.absent()
          : Value(branchPrefix),
      customerService: customerService == null && nullToAbsent
          ? const Value.absent()
          : Value(customerService),
      countryId: countryId == null && nullToAbsent
          ? const Value.absent()
          : Value(countryId),
      cityId:
          cityId == null && nullToAbsent ? const Value.absent() : Value(cityId),
      address: address == null && nullToAbsent
          ? const Value.absent()
          : Value(address),
      latitude: latitude == null && nullToAbsent
          ? const Value.absent()
          : Value(latitude),
      longitude: longitude == null && nullToAbsent
          ? const Value.absent()
          : Value(longitude),
      headerInvoiceMsg: headerInvoiceMsg == null && nullToAbsent
          ? const Value.absent()
          : Value(headerInvoiceMsg),
      footerInvoiceMsg: footerInvoiceMsg == null && nullToAbsent
          ? const Value.absent()
          : Value(footerInvoiceMsg),
      receiveOnlineOrders: receiveOnlineOrders == null && nullToAbsent
          ? const Value.absent()
          : Value(receiveOnlineOrders),
      devices: devices == null && nullToAbsent
          ? const Value.absent()
          : Value(devices),
      code: code == null && nullToAbsent ? const Value.absent() : Value(code),
      currentDeviceId: currentDeviceId == null && nullToAbsent
          ? const Value.absent()
          : Value(currentDeviceId),
      company: company == null && nullToAbsent
          ? const Value.absent()
          : Value(company),
      fCompany: fCompany == null && nullToAbsent
          ? const Value.absent()
          : Value(fCompany),
      branch:
          branch == null && nullToAbsent ? const Value.absent() : Value(branch),
      fBranch: fBranch == null && nullToAbsent
          ? const Value.absent()
          : Value(fBranch),
    );
  }

  factory ActivationInfoEntityData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ActivationInfoEntityData(
      idSeq: serializer.fromJson<int?>(json['idSeq']),
      id: serializer.fromJson<String?>(json['id']),
      name: serializer.fromJson<String?>(json['name']),
      fName: serializer.fromJson<String?>(json['fName']),
      email: serializer.fromJson<String?>(json['email']),
      phone: serializer.fromJson<String?>(json['phone']),
      mobile: serializer.fromJson<String?>(json['mobile']),
      taxRegName: serializer.fromJson<String?>(json['taxRegName']),
      fTaxRegName: serializer.fromJson<String?>(json['fTaxRegName']),
      taxCode: serializer.fromJson<String?>(json['taxCode']),
      onlineOrderStartTime:
          serializer.fromJson<String?>(json['onlineOrderStartTime']),
      onlineOrderEndTime:
          serializer.fromJson<String?>(json['onlineOrderEndTime']),
      branchPrefix: serializer.fromJson<String?>(json['branchPrefix']),
      customerService: serializer.fromJson<String?>(json['customerService']),
      countryId: serializer.fromJson<String?>(json['countryId']),
      cityId: serializer.fromJson<String?>(json['cityId']),
      address: serializer.fromJson<String?>(json['address']),
      latitude: serializer.fromJson<String?>(json['latitude']),
      longitude: serializer.fromJson<String?>(json['longitude']),
      headerInvoiceMsg: serializer.fromJson<String?>(json['headerInvoiceMsg']),
      footerInvoiceMsg: serializer.fromJson<String?>(json['footerInvoiceMsg']),
      receiveOnlineOrders:
          serializer.fromJson<bool?>(json['receiveOnlineOrders']),
      devices: serializer.fromJson<dynamic>(json['devices']),
      code: serializer.fromJson<String?>(json['code']),
      currentDeviceId: serializer.fromJson<String?>(json['currentDeviceId']),
      company: serializer.fromJson<String?>(json['company']),
      fCompany: serializer.fromJson<String?>(json['fCompany']),
      branch: serializer.fromJson<String?>(json['branch']),
      fBranch: serializer.fromJson<String?>(json['fBranch']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'idSeq': serializer.toJson<int?>(idSeq),
      'id': serializer.toJson<String?>(id),
      'name': serializer.toJson<String?>(name),
      'fName': serializer.toJson<String?>(fName),
      'email': serializer.toJson<String?>(email),
      'phone': serializer.toJson<String?>(phone),
      'mobile': serializer.toJson<String?>(mobile),
      'taxRegName': serializer.toJson<String?>(taxRegName),
      'fTaxRegName': serializer.toJson<String?>(fTaxRegName),
      'taxCode': serializer.toJson<String?>(taxCode),
      'onlineOrderStartTime': serializer.toJson<String?>(onlineOrderStartTime),
      'onlineOrderEndTime': serializer.toJson<String?>(onlineOrderEndTime),
      'branchPrefix': serializer.toJson<String?>(branchPrefix),
      'customerService': serializer.toJson<String?>(customerService),
      'countryId': serializer.toJson<String?>(countryId),
      'cityId': serializer.toJson<String?>(cityId),
      'address': serializer.toJson<String?>(address),
      'latitude': serializer.toJson<String?>(latitude),
      'longitude': serializer.toJson<String?>(longitude),
      'headerInvoiceMsg': serializer.toJson<String?>(headerInvoiceMsg),
      'footerInvoiceMsg': serializer.toJson<String?>(footerInvoiceMsg),
      'receiveOnlineOrders': serializer.toJson<bool?>(receiveOnlineOrders),
      'devices': serializer.toJson<dynamic>(devices),
      'code': serializer.toJson<String?>(code),
      'currentDeviceId': serializer.toJson<String?>(currentDeviceId),
      'company': serializer.toJson<String?>(company),
      'fCompany': serializer.toJson<String?>(fCompany),
      'branch': serializer.toJson<String?>(branch),
      'fBranch': serializer.toJson<String?>(fBranch),
    };
  }

  ActivationInfoEntityData copyWith(
          {Value<int?> idSeq = const Value.absent(),
          Value<String?> id = const Value.absent(),
          Value<String?> name = const Value.absent(),
          Value<String?> fName = const Value.absent(),
          Value<String?> email = const Value.absent(),
          Value<String?> phone = const Value.absent(),
          Value<String?> mobile = const Value.absent(),
          Value<String?> taxRegName = const Value.absent(),
          Value<String?> fTaxRegName = const Value.absent(),
          Value<String?> taxCode = const Value.absent(),
          Value<String?> onlineOrderStartTime = const Value.absent(),
          Value<String?> onlineOrderEndTime = const Value.absent(),
          Value<String?> branchPrefix = const Value.absent(),
          Value<String?> customerService = const Value.absent(),
          Value<String?> countryId = const Value.absent(),
          Value<String?> cityId = const Value.absent(),
          Value<String?> address = const Value.absent(),
          Value<String?> latitude = const Value.absent(),
          Value<String?> longitude = const Value.absent(),
          Value<String?> headerInvoiceMsg = const Value.absent(),
          Value<String?> footerInvoiceMsg = const Value.absent(),
          Value<bool?> receiveOnlineOrders = const Value.absent(),
          Value<dynamic> devices = const Value.absent(),
          Value<String?> code = const Value.absent(),
          Value<String?> currentDeviceId = const Value.absent(),
          Value<String?> company = const Value.absent(),
          Value<String?> fCompany = const Value.absent(),
          Value<String?> branch = const Value.absent(),
          Value<String?> fBranch = const Value.absent()}) =>
      ActivationInfoEntityData(
        idSeq: idSeq.present ? idSeq.value : this.idSeq,
        id: id.present ? id.value : this.id,
        name: name.present ? name.value : this.name,
        fName: fName.present ? fName.value : this.fName,
        email: email.present ? email.value : this.email,
        phone: phone.present ? phone.value : this.phone,
        mobile: mobile.present ? mobile.value : this.mobile,
        taxRegName: taxRegName.present ? taxRegName.value : this.taxRegName,
        fTaxRegName: fTaxRegName.present ? fTaxRegName.value : this.fTaxRegName,
        taxCode: taxCode.present ? taxCode.value : this.taxCode,
        onlineOrderStartTime: onlineOrderStartTime.present
            ? onlineOrderStartTime.value
            : this.onlineOrderStartTime,
        onlineOrderEndTime: onlineOrderEndTime.present
            ? onlineOrderEndTime.value
            : this.onlineOrderEndTime,
        branchPrefix:
            branchPrefix.present ? branchPrefix.value : this.branchPrefix,
        customerService: customerService.present
            ? customerService.value
            : this.customerService,
        countryId: countryId.present ? countryId.value : this.countryId,
        cityId: cityId.present ? cityId.value : this.cityId,
        address: address.present ? address.value : this.address,
        latitude: latitude.present ? latitude.value : this.latitude,
        longitude: longitude.present ? longitude.value : this.longitude,
        headerInvoiceMsg: headerInvoiceMsg.present
            ? headerInvoiceMsg.value
            : this.headerInvoiceMsg,
        footerInvoiceMsg: footerInvoiceMsg.present
            ? footerInvoiceMsg.value
            : this.footerInvoiceMsg,
        receiveOnlineOrders: receiveOnlineOrders.present
            ? receiveOnlineOrders.value
            : this.receiveOnlineOrders,
        devices: devices.present ? devices.value : this.devices,
        code: code.present ? code.value : this.code,
        currentDeviceId: currentDeviceId.present
            ? currentDeviceId.value
            : this.currentDeviceId,
        company: company.present ? company.value : this.company,
        fCompany: fCompany.present ? fCompany.value : this.fCompany,
        branch: branch.present ? branch.value : this.branch,
        fBranch: fBranch.present ? fBranch.value : this.fBranch,
      );
  @override
  String toString() {
    return (StringBuffer('ActivationInfoEntityData(')
          ..write('idSeq: $idSeq, ')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('fName: $fName, ')
          ..write('email: $email, ')
          ..write('phone: $phone, ')
          ..write('mobile: $mobile, ')
          ..write('taxRegName: $taxRegName, ')
          ..write('fTaxRegName: $fTaxRegName, ')
          ..write('taxCode: $taxCode, ')
          ..write('onlineOrderStartTime: $onlineOrderStartTime, ')
          ..write('onlineOrderEndTime: $onlineOrderEndTime, ')
          ..write('branchPrefix: $branchPrefix, ')
          ..write('customerService: $customerService, ')
          ..write('countryId: $countryId, ')
          ..write('cityId: $cityId, ')
          ..write('address: $address, ')
          ..write('latitude: $latitude, ')
          ..write('longitude: $longitude, ')
          ..write('headerInvoiceMsg: $headerInvoiceMsg, ')
          ..write('footerInvoiceMsg: $footerInvoiceMsg, ')
          ..write('receiveOnlineOrders: $receiveOnlineOrders, ')
          ..write('devices: $devices, ')
          ..write('code: $code, ')
          ..write('currentDeviceId: $currentDeviceId, ')
          ..write('company: $company, ')
          ..write('fCompany: $fCompany, ')
          ..write('branch: $branch, ')
          ..write('fBranch: $fBranch')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
        idSeq,
        id,
        name,
        fName,
        email,
        phone,
        mobile,
        taxRegName,
        fTaxRegName,
        taxCode,
        onlineOrderStartTime,
        onlineOrderEndTime,
        branchPrefix,
        customerService,
        countryId,
        cityId,
        address,
        latitude,
        longitude,
        headerInvoiceMsg,
        footerInvoiceMsg,
        receiveOnlineOrders,
        devices,
        code,
        currentDeviceId,
        company,
        fCompany,
        branch,
        fBranch
      ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ActivationInfoEntityData &&
          other.idSeq == this.idSeq &&
          other.id == this.id &&
          other.name == this.name &&
          other.fName == this.fName &&
          other.email == this.email &&
          other.phone == this.phone &&
          other.mobile == this.mobile &&
          other.taxRegName == this.taxRegName &&
          other.fTaxRegName == this.fTaxRegName &&
          other.taxCode == this.taxCode &&
          other.onlineOrderStartTime == this.onlineOrderStartTime &&
          other.onlineOrderEndTime == this.onlineOrderEndTime &&
          other.branchPrefix == this.branchPrefix &&
          other.customerService == this.customerService &&
          other.countryId == this.countryId &&
          other.cityId == this.cityId &&
          other.address == this.address &&
          other.latitude == this.latitude &&
          other.longitude == this.longitude &&
          other.headerInvoiceMsg == this.headerInvoiceMsg &&
          other.footerInvoiceMsg == this.footerInvoiceMsg &&
          other.receiveOnlineOrders == this.receiveOnlineOrders &&
          other.devices == this.devices &&
          other.code == this.code &&
          other.currentDeviceId == this.currentDeviceId &&
          other.company == this.company &&
          other.fCompany == this.fCompany &&
          other.branch == this.branch &&
          other.fBranch == this.fBranch);
}

class ActivationInfoEntityCompanion
    extends UpdateCompanion<ActivationInfoEntityData> {
  final Value<int?> idSeq;
  final Value<String?> id;
  final Value<String?> name;
  final Value<String?> fName;
  final Value<String?> email;
  final Value<String?> phone;
  final Value<String?> mobile;
  final Value<String?> taxRegName;
  final Value<String?> fTaxRegName;
  final Value<String?> taxCode;
  final Value<String?> onlineOrderStartTime;
  final Value<String?> onlineOrderEndTime;
  final Value<String?> branchPrefix;
  final Value<String?> customerService;
  final Value<String?> countryId;
  final Value<String?> cityId;
  final Value<String?> address;
  final Value<String?> latitude;
  final Value<String?> longitude;
  final Value<String?> headerInvoiceMsg;
  final Value<String?> footerInvoiceMsg;
  final Value<bool?> receiveOnlineOrders;
  final Value<dynamic> devices;
  final Value<String?> code;
  final Value<String?> currentDeviceId;
  final Value<String?> company;
  final Value<String?> fCompany;
  final Value<String?> branch;
  final Value<String?> fBranch;
  const ActivationInfoEntityCompanion({
    this.idSeq = const Value.absent(),
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.fName = const Value.absent(),
    this.email = const Value.absent(),
    this.phone = const Value.absent(),
    this.mobile = const Value.absent(),
    this.taxRegName = const Value.absent(),
    this.fTaxRegName = const Value.absent(),
    this.taxCode = const Value.absent(),
    this.onlineOrderStartTime = const Value.absent(),
    this.onlineOrderEndTime = const Value.absent(),
    this.branchPrefix = const Value.absent(),
    this.customerService = const Value.absent(),
    this.countryId = const Value.absent(),
    this.cityId = const Value.absent(),
    this.address = const Value.absent(),
    this.latitude = const Value.absent(),
    this.longitude = const Value.absent(),
    this.headerInvoiceMsg = const Value.absent(),
    this.footerInvoiceMsg = const Value.absent(),
    this.receiveOnlineOrders = const Value.absent(),
    this.devices = const Value.absent(),
    this.code = const Value.absent(),
    this.currentDeviceId = const Value.absent(),
    this.company = const Value.absent(),
    this.fCompany = const Value.absent(),
    this.branch = const Value.absent(),
    this.fBranch = const Value.absent(),
  });
  ActivationInfoEntityCompanion.insert({
    this.idSeq = const Value.absent(),
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.fName = const Value.absent(),
    this.email = const Value.absent(),
    this.phone = const Value.absent(),
    this.mobile = const Value.absent(),
    this.taxRegName = const Value.absent(),
    this.fTaxRegName = const Value.absent(),
    this.taxCode = const Value.absent(),
    this.onlineOrderStartTime = const Value.absent(),
    this.onlineOrderEndTime = const Value.absent(),
    this.branchPrefix = const Value.absent(),
    this.customerService = const Value.absent(),
    this.countryId = const Value.absent(),
    this.cityId = const Value.absent(),
    this.address = const Value.absent(),
    this.latitude = const Value.absent(),
    this.longitude = const Value.absent(),
    this.headerInvoiceMsg = const Value.absent(),
    this.footerInvoiceMsg = const Value.absent(),
    this.receiveOnlineOrders = const Value.absent(),
    this.devices = const Value.absent(),
    this.code = const Value.absent(),
    this.currentDeviceId = const Value.absent(),
    this.company = const Value.absent(),
    this.fCompany = const Value.absent(),
    this.branch = const Value.absent(),
    this.fBranch = const Value.absent(),
  });
  static Insertable<ActivationInfoEntityData> custom({
    Expression<int>? idSeq,
    Expression<String>? id,
    Expression<String>? name,
    Expression<String>? fName,
    Expression<String>? email,
    Expression<String>? phone,
    Expression<String>? mobile,
    Expression<String>? taxRegName,
    Expression<String>? fTaxRegName,
    Expression<String>? taxCode,
    Expression<String>? onlineOrderStartTime,
    Expression<String>? onlineOrderEndTime,
    Expression<String>? branchPrefix,
    Expression<String>? customerService,
    Expression<String>? countryId,
    Expression<String>? cityId,
    Expression<String>? address,
    Expression<String>? latitude,
    Expression<String>? longitude,
    Expression<String>? headerInvoiceMsg,
    Expression<String>? footerInvoiceMsg,
    Expression<bool>? receiveOnlineOrders,
    Expression<String>? devices,
    Expression<String>? code,
    Expression<String>? currentDeviceId,
    Expression<String>? company,
    Expression<String>? fCompany,
    Expression<String>? branch,
    Expression<String>? fBranch,
  }) {
    return RawValuesInsertable({
      if (idSeq != null) 'id_seq': idSeq,
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (fName != null) 'f_name': fName,
      if (email != null) 'email': email,
      if (phone != null) 'phone': phone,
      if (mobile != null) 'mobile': mobile,
      if (taxRegName != null) 'tax_reg_name': taxRegName,
      if (fTaxRegName != null) 'f_tax_reg_name': fTaxRegName,
      if (taxCode != null) 'tax_code': taxCode,
      if (onlineOrderStartTime != null)
        'online_order_start_time': onlineOrderStartTime,
      if (onlineOrderEndTime != null)
        'online_order_end_time': onlineOrderEndTime,
      if (branchPrefix != null) 'branch_prefix': branchPrefix,
      if (customerService != null) 'customer_service': customerService,
      if (countryId != null) 'country_id': countryId,
      if (cityId != null) 'city_id': cityId,
      if (address != null) 'address': address,
      if (latitude != null) 'latitude': latitude,
      if (longitude != null) 'longitude': longitude,
      if (headerInvoiceMsg != null) 'header_invoice_msg': headerInvoiceMsg,
      if (footerInvoiceMsg != null) 'footer_invoice_msg': footerInvoiceMsg,
      if (receiveOnlineOrders != null)
        'receive_online_orders': receiveOnlineOrders,
      if (devices != null) 'devices': devices,
      if (code != null) 'code': code,
      if (currentDeviceId != null) 'current_device_id': currentDeviceId,
      if (company != null) 'company': company,
      if (fCompany != null) 'f_company': fCompany,
      if (branch != null) 'branch': branch,
      if (fBranch != null) 'f_branch': fBranch,
    });
  }

  ActivationInfoEntityCompanion copyWith(
      {Value<int?>? idSeq,
      Value<String?>? id,
      Value<String?>? name,
      Value<String?>? fName,
      Value<String?>? email,
      Value<String?>? phone,
      Value<String?>? mobile,
      Value<String?>? taxRegName,
      Value<String?>? fTaxRegName,
      Value<String?>? taxCode,
      Value<String?>? onlineOrderStartTime,
      Value<String?>? onlineOrderEndTime,
      Value<String?>? branchPrefix,
      Value<String?>? customerService,
      Value<String?>? countryId,
      Value<String?>? cityId,
      Value<String?>? address,
      Value<String?>? latitude,
      Value<String?>? longitude,
      Value<String?>? headerInvoiceMsg,
      Value<String?>? footerInvoiceMsg,
      Value<bool?>? receiveOnlineOrders,
      Value<dynamic>? devices,
      Value<String?>? code,
      Value<String?>? currentDeviceId,
      Value<String?>? company,
      Value<String?>? fCompany,
      Value<String?>? branch,
      Value<String?>? fBranch}) {
    return ActivationInfoEntityCompanion(
      idSeq: idSeq ?? this.idSeq,
      id: id ?? this.id,
      name: name ?? this.name,
      fName: fName ?? this.fName,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      mobile: mobile ?? this.mobile,
      taxRegName: taxRegName ?? this.taxRegName,
      fTaxRegName: fTaxRegName ?? this.fTaxRegName,
      taxCode: taxCode ?? this.taxCode,
      onlineOrderStartTime: onlineOrderStartTime ?? this.onlineOrderStartTime,
      onlineOrderEndTime: onlineOrderEndTime ?? this.onlineOrderEndTime,
      branchPrefix: branchPrefix ?? this.branchPrefix,
      customerService: customerService ?? this.customerService,
      countryId: countryId ?? this.countryId,
      cityId: cityId ?? this.cityId,
      address: address ?? this.address,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      headerInvoiceMsg: headerInvoiceMsg ?? this.headerInvoiceMsg,
      footerInvoiceMsg: footerInvoiceMsg ?? this.footerInvoiceMsg,
      receiveOnlineOrders: receiveOnlineOrders ?? this.receiveOnlineOrders,
      devices: devices ?? this.devices,
      code: code ?? this.code,
      currentDeviceId: currentDeviceId ?? this.currentDeviceId,
      company: company ?? this.company,
      fCompany: fCompany ?? this.fCompany,
      branch: branch ?? this.branch,
      fBranch: fBranch ?? this.fBranch,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (idSeq.present) {
      map['id_seq'] = Variable<int>(idSeq.value);
    }
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (fName.present) {
      map['f_name'] = Variable<String>(fName.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (phone.present) {
      map['phone'] = Variable<String>(phone.value);
    }
    if (mobile.present) {
      map['mobile'] = Variable<String>(mobile.value);
    }
    if (taxRegName.present) {
      map['tax_reg_name'] = Variable<String>(taxRegName.value);
    }
    if (fTaxRegName.present) {
      map['f_tax_reg_name'] = Variable<String>(fTaxRegName.value);
    }
    if (taxCode.present) {
      map['tax_code'] = Variable<String>(taxCode.value);
    }
    if (onlineOrderStartTime.present) {
      map['online_order_start_time'] =
          Variable<String>(onlineOrderStartTime.value);
    }
    if (onlineOrderEndTime.present) {
      map['online_order_end_time'] = Variable<String>(onlineOrderEndTime.value);
    }
    if (branchPrefix.present) {
      map['branch_prefix'] = Variable<String>(branchPrefix.value);
    }
    if (customerService.present) {
      map['customer_service'] = Variable<String>(customerService.value);
    }
    if (countryId.present) {
      map['country_id'] = Variable<String>(countryId.value);
    }
    if (cityId.present) {
      map['city_id'] = Variable<String>(cityId.value);
    }
    if (address.present) {
      map['address'] = Variable<String>(address.value);
    }
    if (latitude.present) {
      map['latitude'] = Variable<String>(latitude.value);
    }
    if (longitude.present) {
      map['longitude'] = Variable<String>(longitude.value);
    }
    if (headerInvoiceMsg.present) {
      map['header_invoice_msg'] = Variable<String>(headerInvoiceMsg.value);
    }
    if (footerInvoiceMsg.present) {
      map['footer_invoice_msg'] = Variable<String>(footerInvoiceMsg.value);
    }
    if (receiveOnlineOrders.present) {
      map['receive_online_orders'] = Variable<bool>(receiveOnlineOrders.value);
    }
    if (devices.present) {
      map['devices'] = Variable<String>(
          $ActivationInfoEntityTable.$converterdevices.toSql(devices.value));
    }
    if (code.present) {
      map['code'] = Variable<String>(code.value);
    }
    if (currentDeviceId.present) {
      map['current_device_id'] = Variable<String>(currentDeviceId.value);
    }
    if (company.present) {
      map['company'] = Variable<String>(company.value);
    }
    if (fCompany.present) {
      map['f_company'] = Variable<String>(fCompany.value);
    }
    if (branch.present) {
      map['branch'] = Variable<String>(branch.value);
    }
    if (fBranch.present) {
      map['f_branch'] = Variable<String>(fBranch.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ActivationInfoEntityCompanion(')
          ..write('idSeq: $idSeq, ')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('fName: $fName, ')
          ..write('email: $email, ')
          ..write('phone: $phone, ')
          ..write('mobile: $mobile, ')
          ..write('taxRegName: $taxRegName, ')
          ..write('fTaxRegName: $fTaxRegName, ')
          ..write('taxCode: $taxCode, ')
          ..write('onlineOrderStartTime: $onlineOrderStartTime, ')
          ..write('onlineOrderEndTime: $onlineOrderEndTime, ')
          ..write('branchPrefix: $branchPrefix, ')
          ..write('customerService: $customerService, ')
          ..write('countryId: $countryId, ')
          ..write('cityId: $cityId, ')
          ..write('address: $address, ')
          ..write('latitude: $latitude, ')
          ..write('longitude: $longitude, ')
          ..write('headerInvoiceMsg: $headerInvoiceMsg, ')
          ..write('footerInvoiceMsg: $footerInvoiceMsg, ')
          ..write('receiveOnlineOrders: $receiveOnlineOrders, ')
          ..write('devices: $devices, ')
          ..write('code: $code, ')
          ..write('currentDeviceId: $currentDeviceId, ')
          ..write('company: $company, ')
          ..write('fCompany: $fCompany, ')
          ..write('branch: $branch, ')
          ..write('fBranch: $fBranch')
          ..write(')'))
        .toString();
  }
}

class $ProductQtyEntityTable extends ProductQtyEntity
    with TableInfo<$ProductQtyEntityTable, ProductQtyEntityData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ProductQtyEntityTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, true,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _qtyMeta = const VerificationMeta('qty');
  @override
  late final GeneratedColumn<double> qty = GeneratedColumn<double>(
      'qty', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _productIdMeta =
      const VerificationMeta('productId');
  @override
  late final GeneratedColumn<String> productId = GeneratedColumn<String>(
      'product_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _unitIdMeta = const VerificationMeta('unitId');
  @override
  late final GeneratedColumn<String> unitId = GeneratedColumn<String>(
      'unit_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _isAvailableMeta =
      const VerificationMeta('isAvailable');
  @override
  late final GeneratedColumn<bool> isAvailable = GeneratedColumn<bool>(
      'is_available', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_available" IN (0, 1))'));
  @override
  List<GeneratedColumn> get $columns =>
      [id, qty, productId, unitId, isAvailable];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'product_qty_entity';
  @override
  VerificationContext validateIntegrity(
      Insertable<ProductQtyEntityData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('qty')) {
      context.handle(
          _qtyMeta, qty.isAcceptableOrUnknown(data['qty']!, _qtyMeta));
    } else if (isInserting) {
      context.missing(_qtyMeta);
    }
    if (data.containsKey('product_id')) {
      context.handle(_productIdMeta,
          productId.isAcceptableOrUnknown(data['product_id']!, _productIdMeta));
    } else if (isInserting) {
      context.missing(_productIdMeta);
    }
    if (data.containsKey('unit_id')) {
      context.handle(_unitIdMeta,
          unitId.isAcceptableOrUnknown(data['unit_id']!, _unitIdMeta));
    } else if (isInserting) {
      context.missing(_unitIdMeta);
    }
    if (data.containsKey('is_available')) {
      context.handle(
          _isAvailableMeta,
          isAvailable.isAcceptableOrUnknown(
              data['is_available']!, _isAvailableMeta));
    } else if (isInserting) {
      context.missing(_isAvailableMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  List<Set<GeneratedColumn>> get uniqueKeys => [
        {productId, unitId},
      ];
  @override
  ProductQtyEntityData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ProductQtyEntityData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id']),
      qty: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}qty'])!,
      productId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}product_id'])!,
      unitId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}unit_id'])!,
      isAvailable: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_available'])!,
    );
  }

  @override
  $ProductQtyEntityTable createAlias(String alias) {
    return $ProductQtyEntityTable(attachedDatabase, alias);
  }
}

class ProductQtyEntityData extends DataClass
    implements Insertable<ProductQtyEntityData> {
  final int? id;
  final double qty;
  final String productId;
  final String unitId;
  final bool isAvailable;
  const ProductQtyEntityData(
      {this.id,
      required this.qty,
      required this.productId,
      required this.unitId,
      required this.isAvailable});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    map['qty'] = Variable<double>(qty);
    map['product_id'] = Variable<String>(productId);
    map['unit_id'] = Variable<String>(unitId);
    map['is_available'] = Variable<bool>(isAvailable);
    return map;
  }

  ProductQtyEntityCompanion toCompanion(bool nullToAbsent) {
    return ProductQtyEntityCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      qty: Value(qty),
      productId: Value(productId),
      unitId: Value(unitId),
      isAvailable: Value(isAvailable),
    );
  }

  factory ProductQtyEntityData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ProductQtyEntityData(
      id: serializer.fromJson<int?>(json['id']),
      qty: serializer.fromJson<double>(json['qty']),
      productId: serializer.fromJson<String>(json['productId']),
      unitId: serializer.fromJson<String>(json['unitId']),
      isAvailable: serializer.fromJson<bool>(json['isAvailable']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int?>(id),
      'qty': serializer.toJson<double>(qty),
      'productId': serializer.toJson<String>(productId),
      'unitId': serializer.toJson<String>(unitId),
      'isAvailable': serializer.toJson<bool>(isAvailable),
    };
  }

  ProductQtyEntityData copyWith(
          {Value<int?> id = const Value.absent(),
          double? qty,
          String? productId,
          String? unitId,
          bool? isAvailable}) =>
      ProductQtyEntityData(
        id: id.present ? id.value : this.id,
        qty: qty ?? this.qty,
        productId: productId ?? this.productId,
        unitId: unitId ?? this.unitId,
        isAvailable: isAvailable ?? this.isAvailable,
      );
  @override
  String toString() {
    return (StringBuffer('ProductQtyEntityData(')
          ..write('id: $id, ')
          ..write('qty: $qty, ')
          ..write('productId: $productId, ')
          ..write('unitId: $unitId, ')
          ..write('isAvailable: $isAvailable')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, qty, productId, unitId, isAvailable);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ProductQtyEntityData &&
          other.id == this.id &&
          other.qty == this.qty &&
          other.productId == this.productId &&
          other.unitId == this.unitId &&
          other.isAvailable == this.isAvailable);
}

class ProductQtyEntityCompanion extends UpdateCompanion<ProductQtyEntityData> {
  final Value<int?> id;
  final Value<double> qty;
  final Value<String> productId;
  final Value<String> unitId;
  final Value<bool> isAvailable;
  const ProductQtyEntityCompanion({
    this.id = const Value.absent(),
    this.qty = const Value.absent(),
    this.productId = const Value.absent(),
    this.unitId = const Value.absent(),
    this.isAvailable = const Value.absent(),
  });
  ProductQtyEntityCompanion.insert({
    this.id = const Value.absent(),
    required double qty,
    required String productId,
    required String unitId,
    required bool isAvailable,
  })  : qty = Value(qty),
        productId = Value(productId),
        unitId = Value(unitId),
        isAvailable = Value(isAvailable);
  static Insertable<ProductQtyEntityData> custom({
    Expression<int>? id,
    Expression<double>? qty,
    Expression<String>? productId,
    Expression<String>? unitId,
    Expression<bool>? isAvailable,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (qty != null) 'qty': qty,
      if (productId != null) 'product_id': productId,
      if (unitId != null) 'unit_id': unitId,
      if (isAvailable != null) 'is_available': isAvailable,
    });
  }

  ProductQtyEntityCompanion copyWith(
      {Value<int?>? id,
      Value<double>? qty,
      Value<String>? productId,
      Value<String>? unitId,
      Value<bool>? isAvailable}) {
    return ProductQtyEntityCompanion(
      id: id ?? this.id,
      qty: qty ?? this.qty,
      productId: productId ?? this.productId,
      unitId: unitId ?? this.unitId,
      isAvailable: isAvailable ?? this.isAvailable,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (qty.present) {
      map['qty'] = Variable<double>(qty.value);
    }
    if (productId.present) {
      map['product_id'] = Variable<String>(productId.value);
    }
    if (unitId.present) {
      map['unit_id'] = Variable<String>(unitId.value);
    }
    if (isAvailable.present) {
      map['is_available'] = Variable<bool>(isAvailable.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProductQtyEntityCompanion(')
          ..write('id: $id, ')
          ..write('qty: $qty, ')
          ..write('productId: $productId, ')
          ..write('unitId: $unitId, ')
          ..write('isAvailable: $isAvailable')
          ..write(')'))
        .toString();
  }
}

abstract class _$MyDatabase extends GeneratedDatabase {
  _$MyDatabase(QueryExecutor e) : super(e);
  late final $OrderEntityTable orderEntity = $OrderEntityTable(this);
  late final $OrderHistoryEntityTable orderHistoryEntity =
      $OrderHistoryEntityTable(this);
  late final $OrderNumbersTable orderNumbers = $OrderNumbersTable(this);
  late final $ShiftEntityTable shiftEntity = $ShiftEntityTable(this);
  late final $TillEntityTable tillEntity = $TillEntityTable(this);
  late final $TillAmountsEntityTable tillAmountsEntity =
      $TillAmountsEntityTable(this);
  late final $PaymentMethodEntityTable paymentMethodEntity =
      $PaymentMethodEntityTable(this);
  late final $SettingEntityTable settingEntity = $SettingEntityTable(this);
  late final $OrderPaymentsTable orderPayments = $OrderPaymentsTable(this);
  late final $DrawerOperationEntityTable drawerOperationEntity =
      $DrawerOperationEntityTable(this);
  late final $ActivationInfoEntityTable activationInfoEntity =
      $ActivationInfoEntityTable(this);
  late final $ProductQtyEntityTable productQtyEntity =
      $ProductQtyEntityTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        orderEntity,
        orderHistoryEntity,
        orderNumbers,
        shiftEntity,
        tillEntity,
        tillAmountsEntity,
        paymentMethodEntity,
        settingEntity,
        orderPayments,
        drawerOperationEntity,
        activationInfoEntity,
        productQtyEntity
      ];
}
