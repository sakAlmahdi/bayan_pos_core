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
  late final GeneratedColumn<String> callNumber = GeneratedColumn<String>(
      'call_number', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
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
          .read(DriftSqlType.string, data['${effectivePrefix}call_number']),
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
  final String? callNumber;
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
      map['call_number'] = Variable<String>(callNumber);
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
      callNumber: serializer.fromJson<String?>(json['callNumber']),
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
      'callNumber': serializer.toJson<String?>(callNumber),
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
          Value<String?> callNumber = const Value.absent(),
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
  final Value<String?> callNumber;
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
    Expression<String>? callNumber,
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
      Value<String?>? callNumber,
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
      map['call_number'] = Variable<String>(callNumber.value);
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
  static const VerificationMeta _currencyIdMeta =
      const VerificationMeta('currencyId');
  @override
  late final GeneratedColumn<String> currencyId = GeneratedColumn<String>(
      'currency_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _currencyNameMeta =
      const VerificationMeta('currencyName');
  @override
  late final GeneratedColumn<String> currencyName = GeneratedColumn<String>(
      'currency_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _currencyFNameMeta =
      const VerificationMeta('currencyFName');
  @override
  late final GeneratedColumn<String> currencyFName = GeneratedColumn<String>(
      'currency_f_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _paymentMethodIdMeta =
      const VerificationMeta('paymentMethodId');
  @override
  late final GeneratedColumn<String> paymentMethodId = GeneratedColumn<String>(
      'payment_method_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _paymentMethodNameMeta =
      const VerificationMeta('paymentMethodName');
  @override
  late final GeneratedColumn<String> paymentMethodName =
      GeneratedColumn<String>('payment_method_name', aliasedName, false,
          type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _paymentMethodFNameMeta =
      const VerificationMeta('paymentMethodFName');
  @override
  late final GeneratedColumn<String> paymentMethodFName =
      GeneratedColumn<String>('payment_method_f_name', aliasedName, false,
          type: DriftSqlType.string, requiredDuringInsert: true);
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
        idTill,
        currencyCode,
        currencyId,
        currencyName,
        currencyFName,
        paymentMethodId,
        paymentMethodName,
        paymentMethodFName,
        amount
      ];
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
    if (data.containsKey('currency_id')) {
      context.handle(
          _currencyIdMeta,
          currencyId.isAcceptableOrUnknown(
              data['currency_id']!, _currencyIdMeta));
    } else if (isInserting) {
      context.missing(_currencyIdMeta);
    }
    if (data.containsKey('currency_name')) {
      context.handle(
          _currencyNameMeta,
          currencyName.isAcceptableOrUnknown(
              data['currency_name']!, _currencyNameMeta));
    } else if (isInserting) {
      context.missing(_currencyNameMeta);
    }
    if (data.containsKey('currency_f_name')) {
      context.handle(
          _currencyFNameMeta,
          currencyFName.isAcceptableOrUnknown(
              data['currency_f_name']!, _currencyFNameMeta));
    } else if (isInserting) {
      context.missing(_currencyFNameMeta);
    }
    if (data.containsKey('payment_method_id')) {
      context.handle(
          _paymentMethodIdMeta,
          paymentMethodId.isAcceptableOrUnknown(
              data['payment_method_id']!, _paymentMethodIdMeta));
    } else if (isInserting) {
      context.missing(_paymentMethodIdMeta);
    }
    if (data.containsKey('payment_method_name')) {
      context.handle(
          _paymentMethodNameMeta,
          paymentMethodName.isAcceptableOrUnknown(
              data['payment_method_name']!, _paymentMethodNameMeta));
    } else if (isInserting) {
      context.missing(_paymentMethodNameMeta);
    }
    if (data.containsKey('payment_method_f_name')) {
      context.handle(
          _paymentMethodFNameMeta,
          paymentMethodFName.isAcceptableOrUnknown(
              data['payment_method_f_name']!, _paymentMethodFNameMeta));
    } else if (isInserting) {
      context.missing(_paymentMethodFNameMeta);
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
        {idTill, currencyCode, paymentMethodId, amount},
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
      currencyId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}currency_id'])!,
      currencyName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}currency_name'])!,
      currencyFName: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}currency_f_name'])!,
      paymentMethodId: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}payment_method_id'])!,
      paymentMethodName: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}payment_method_name'])!,
      paymentMethodFName: attachedDatabase.typeMapping.read(DriftSqlType.string,
          data['${effectivePrefix}payment_method_f_name'])!,
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
  final String currencyId;
  final String currencyName;
  final String currencyFName;
  final String paymentMethodId;
  final String paymentMethodName;
  final String paymentMethodFName;
  final double amount;
  const TillAmountsEntityData(
      {this.id,
      required this.idTill,
      required this.currencyCode,
      required this.currencyId,
      required this.currencyName,
      required this.currencyFName,
      required this.paymentMethodId,
      required this.paymentMethodName,
      required this.paymentMethodFName,
      required this.amount});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    map['id_till'] = Variable<String>(idTill);
    map['currency_code'] = Variable<String>(currencyCode);
    map['currency_id'] = Variable<String>(currencyId);
    map['currency_name'] = Variable<String>(currencyName);
    map['currency_f_name'] = Variable<String>(currencyFName);
    map['payment_method_id'] = Variable<String>(paymentMethodId);
    map['payment_method_name'] = Variable<String>(paymentMethodName);
    map['payment_method_f_name'] = Variable<String>(paymentMethodFName);
    map['amount'] = Variable<double>(amount);
    return map;
  }

  TillAmountsEntityCompanion toCompanion(bool nullToAbsent) {
    return TillAmountsEntityCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      idTill: Value(idTill),
      currencyCode: Value(currencyCode),
      currencyId: Value(currencyId),
      currencyName: Value(currencyName),
      currencyFName: Value(currencyFName),
      paymentMethodId: Value(paymentMethodId),
      paymentMethodName: Value(paymentMethodName),
      paymentMethodFName: Value(paymentMethodFName),
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
      currencyId: serializer.fromJson<String>(json['currencyId']),
      currencyName: serializer.fromJson<String>(json['currencyName']),
      currencyFName: serializer.fromJson<String>(json['currencyFName']),
      paymentMethodId: serializer.fromJson<String>(json['paymentMethodId']),
      paymentMethodName: serializer.fromJson<String>(json['paymentMethodName']),
      paymentMethodFName:
          serializer.fromJson<String>(json['paymentMethodFName']),
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
      'currencyId': serializer.toJson<String>(currencyId),
      'currencyName': serializer.toJson<String>(currencyName),
      'currencyFName': serializer.toJson<String>(currencyFName),
      'paymentMethodId': serializer.toJson<String>(paymentMethodId),
      'paymentMethodName': serializer.toJson<String>(paymentMethodName),
      'paymentMethodFName': serializer.toJson<String>(paymentMethodFName),
      'amount': serializer.toJson<double>(amount),
    };
  }

  TillAmountsEntityData copyWith(
          {Value<int?> id = const Value.absent(),
          String? idTill,
          String? currencyCode,
          String? currencyId,
          String? currencyName,
          String? currencyFName,
          String? paymentMethodId,
          String? paymentMethodName,
          String? paymentMethodFName,
          double? amount}) =>
      TillAmountsEntityData(
        id: id.present ? id.value : this.id,
        idTill: idTill ?? this.idTill,
        currencyCode: currencyCode ?? this.currencyCode,
        currencyId: currencyId ?? this.currencyId,
        currencyName: currencyName ?? this.currencyName,
        currencyFName: currencyFName ?? this.currencyFName,
        paymentMethodId: paymentMethodId ?? this.paymentMethodId,
        paymentMethodName: paymentMethodName ?? this.paymentMethodName,
        paymentMethodFName: paymentMethodFName ?? this.paymentMethodFName,
        amount: amount ?? this.amount,
      );
  @override
  String toString() {
    return (StringBuffer('TillAmountsEntityData(')
          ..write('id: $id, ')
          ..write('idTill: $idTill, ')
          ..write('currencyCode: $currencyCode, ')
          ..write('currencyId: $currencyId, ')
          ..write('currencyName: $currencyName, ')
          ..write('currencyFName: $currencyFName, ')
          ..write('paymentMethodId: $paymentMethodId, ')
          ..write('paymentMethodName: $paymentMethodName, ')
          ..write('paymentMethodFName: $paymentMethodFName, ')
          ..write('amount: $amount')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      idTill,
      currencyCode,
      currencyId,
      currencyName,
      currencyFName,
      paymentMethodId,
      paymentMethodName,
      paymentMethodFName,
      amount);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TillAmountsEntityData &&
          other.id == this.id &&
          other.idTill == this.idTill &&
          other.currencyCode == this.currencyCode &&
          other.currencyId == this.currencyId &&
          other.currencyName == this.currencyName &&
          other.currencyFName == this.currencyFName &&
          other.paymentMethodId == this.paymentMethodId &&
          other.paymentMethodName == this.paymentMethodName &&
          other.paymentMethodFName == this.paymentMethodFName &&
          other.amount == this.amount);
}

class TillAmountsEntityCompanion
    extends UpdateCompanion<TillAmountsEntityData> {
  final Value<int?> id;
  final Value<String> idTill;
  final Value<String> currencyCode;
  final Value<String> currencyId;
  final Value<String> currencyName;
  final Value<String> currencyFName;
  final Value<String> paymentMethodId;
  final Value<String> paymentMethodName;
  final Value<String> paymentMethodFName;
  final Value<double> amount;
  const TillAmountsEntityCompanion({
    this.id = const Value.absent(),
    this.idTill = const Value.absent(),
    this.currencyCode = const Value.absent(),
    this.currencyId = const Value.absent(),
    this.currencyName = const Value.absent(),
    this.currencyFName = const Value.absent(),
    this.paymentMethodId = const Value.absent(),
    this.paymentMethodName = const Value.absent(),
    this.paymentMethodFName = const Value.absent(),
    this.amount = const Value.absent(),
  });
  TillAmountsEntityCompanion.insert({
    this.id = const Value.absent(),
    required String idTill,
    required String currencyCode,
    required String currencyId,
    required String currencyName,
    required String currencyFName,
    required String paymentMethodId,
    required String paymentMethodName,
    required String paymentMethodFName,
    this.amount = const Value.absent(),
  })  : idTill = Value(idTill),
        currencyCode = Value(currencyCode),
        currencyId = Value(currencyId),
        currencyName = Value(currencyName),
        currencyFName = Value(currencyFName),
        paymentMethodId = Value(paymentMethodId),
        paymentMethodName = Value(paymentMethodName),
        paymentMethodFName = Value(paymentMethodFName);
  static Insertable<TillAmountsEntityData> custom({
    Expression<int>? id,
    Expression<String>? idTill,
    Expression<String>? currencyCode,
    Expression<String>? currencyId,
    Expression<String>? currencyName,
    Expression<String>? currencyFName,
    Expression<String>? paymentMethodId,
    Expression<String>? paymentMethodName,
    Expression<String>? paymentMethodFName,
    Expression<double>? amount,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (idTill != null) 'id_till': idTill,
      if (currencyCode != null) 'currency_code': currencyCode,
      if (currencyId != null) 'currency_id': currencyId,
      if (currencyName != null) 'currency_name': currencyName,
      if (currencyFName != null) 'currency_f_name': currencyFName,
      if (paymentMethodId != null) 'payment_method_id': paymentMethodId,
      if (paymentMethodName != null) 'payment_method_name': paymentMethodName,
      if (paymentMethodFName != null)
        'payment_method_f_name': paymentMethodFName,
      if (amount != null) 'amount': amount,
    });
  }

  TillAmountsEntityCompanion copyWith(
      {Value<int?>? id,
      Value<String>? idTill,
      Value<String>? currencyCode,
      Value<String>? currencyId,
      Value<String>? currencyName,
      Value<String>? currencyFName,
      Value<String>? paymentMethodId,
      Value<String>? paymentMethodName,
      Value<String>? paymentMethodFName,
      Value<double>? amount}) {
    return TillAmountsEntityCompanion(
      id: id ?? this.id,
      idTill: idTill ?? this.idTill,
      currencyCode: currencyCode ?? this.currencyCode,
      currencyId: currencyId ?? this.currencyId,
      currencyName: currencyName ?? this.currencyName,
      currencyFName: currencyFName ?? this.currencyFName,
      paymentMethodId: paymentMethodId ?? this.paymentMethodId,
      paymentMethodName: paymentMethodName ?? this.paymentMethodName,
      paymentMethodFName: paymentMethodFName ?? this.paymentMethodFName,
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
    if (currencyId.present) {
      map['currency_id'] = Variable<String>(currencyId.value);
    }
    if (currencyName.present) {
      map['currency_name'] = Variable<String>(currencyName.value);
    }
    if (currencyFName.present) {
      map['currency_f_name'] = Variable<String>(currencyFName.value);
    }
    if (paymentMethodId.present) {
      map['payment_method_id'] = Variable<String>(paymentMethodId.value);
    }
    if (paymentMethodName.present) {
      map['payment_method_name'] = Variable<String>(paymentMethodName.value);
    }
    if (paymentMethodFName.present) {
      map['payment_method_f_name'] = Variable<String>(paymentMethodFName.value);
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
          ..write('currencyId: $currencyId, ')
          ..write('currencyName: $currencyName, ')
          ..write('currencyFName: $currencyFName, ')
          ..write('paymentMethodId: $paymentMethodId, ')
          ..write('paymentMethodName: $paymentMethodName, ')
          ..write('paymentMethodFName: $paymentMethodFName, ')
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
  static const VerificationMeta _currencyIdMeta =
      const VerificationMeta('currencyId');
  @override
  late final GeneratedColumn<String> currencyId = GeneratedColumn<String>(
      'currency_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _currencyCodeMeta =
      const VerificationMeta('currencyCode');
  @override
  late final GeneratedColumn<String> currencyCode = GeneratedColumn<String>(
      'currency_code', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
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
        shiftId,
        currencyId,
        currencyCode,
        createdAt
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
    if (data.containsKey('currency_id')) {
      context.handle(
          _currencyIdMeta,
          currencyId.isAcceptableOrUnknown(
              data['currency_id']!, _currencyIdMeta));
    }
    if (data.containsKey('currency_code')) {
      context.handle(
          _currencyCodeMeta,
          currencyCode.isAcceptableOrUnknown(
              data['currency_code']!, _currencyCodeMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
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
      currencyId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}currency_id']),
      currencyCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}currency_code']),
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
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
  final String? currencyId;
  final String? currencyCode;
  final DateTime createdAt;
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
      this.shiftId,
      this.currencyId,
      this.currencyCode,
      required this.createdAt});
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
    if (!nullToAbsent || currencyId != null) {
      map['currency_id'] = Variable<String>(currencyId);
    }
    if (!nullToAbsent || currencyCode != null) {
      map['currency_code'] = Variable<String>(currencyCode);
    }
    map['created_at'] = Variable<DateTime>(createdAt);
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
      currencyId: currencyId == null && nullToAbsent
          ? const Value.absent()
          : Value(currencyId),
      currencyCode: currencyCode == null && nullToAbsent
          ? const Value.absent()
          : Value(currencyCode),
      createdAt: Value(createdAt),
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
      currencyId: serializer.fromJson<String?>(json['currencyId']),
      currencyCode: serializer.fromJson<String?>(json['currencyCode']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
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
      'currencyId': serializer.toJson<String?>(currencyId),
      'currencyCode': serializer.toJson<String?>(currencyCode),
      'createdAt': serializer.toJson<DateTime>(createdAt),
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
          Value<String?> shiftId = const Value.absent(),
          Value<String?> currencyId = const Value.absent(),
          Value<String?> currencyCode = const Value.absent(),
          DateTime? createdAt}) =>
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
        currencyId: currencyId.present ? currencyId.value : this.currencyId,
        currencyCode:
            currencyCode.present ? currencyCode.value : this.currencyCode,
        createdAt: createdAt ?? this.createdAt,
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
          ..write('shiftId: $shiftId, ')
          ..write('currencyId: $currencyId, ')
          ..write('currencyCode: $currencyCode, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
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
      shiftId,
      currencyId,
      currencyCode,
      createdAt);
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
          other.shiftId == this.shiftId &&
          other.currencyId == this.currencyId &&
          other.currencyCode == this.currencyCode &&
          other.createdAt == this.createdAt);
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
  final Value<String?> currencyId;
  final Value<String?> currencyCode;
  final Value<DateTime> createdAt;
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
    this.currencyId = const Value.absent(),
    this.currencyCode = const Value.absent(),
    this.createdAt = const Value.absent(),
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
    this.currencyId = const Value.absent(),
    this.currencyCode = const Value.absent(),
    this.createdAt = const Value.absent(),
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
    Expression<String>? currencyId,
    Expression<String>? currencyCode,
    Expression<DateTime>? createdAt,
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
      if (currencyId != null) 'currency_id': currencyId,
      if (currencyCode != null) 'currency_code': currencyCode,
      if (createdAt != null) 'created_at': createdAt,
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
      Value<String?>? shiftId,
      Value<String?>? currencyId,
      Value<String?>? currencyCode,
      Value<DateTime>? createdAt}) {
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
      currencyId: currencyId ?? this.currencyId,
      currencyCode: currencyCode ?? this.currencyCode,
      createdAt: createdAt ?? this.createdAt,
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
    if (currencyId.present) {
      map['currency_id'] = Variable<String>(currencyId.value);
    }
    if (currencyCode.present) {
      map['currency_code'] = Variable<String>(currencyCode.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
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
          ..write('shiftId: $shiftId, ')
          ..write('currencyId: $currencyId, ')
          ..write('currencyCode: $currencyCode, ')
          ..write('createdAt: $createdAt')
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

class $SyncQueueEntityTable extends SyncQueueEntity
    with TableInfo<$SyncQueueEntityTable, SyncQueueEntityData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SyncQueueEntityTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _entityMeta = const VerificationMeta('entity');
  @override
  late final GeneratedColumn<String> entity = GeneratedColumn<String>(
      'entity', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _entityIdMeta =
      const VerificationMeta('entityId');
  @override
  late final GeneratedColumn<String> entityId = GeneratedColumn<String>(
      'entity_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _processMeta =
      const VerificationMeta('process');
  @override
  late final GeneratedColumn<String> process = GeneratedColumn<String>(
      'process', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
      'user_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _syncedMeta = const VerificationMeta('synced');
  @override
  late final GeneratedColumn<bool> synced = GeneratedColumn<bool>(
      'synced', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("synced" IN (0, 1))'),
      defaultValue: Constant(false));
  static const VerificationMeta _checksumLocalMeta =
      const VerificationMeta('checksumLocal');
  @override
  late final GeneratedColumn<String> checksumLocal = GeneratedColumn<String>(
      'checksum_local', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _checksumBaseCashierMeta =
      const VerificationMeta('checksumBaseCashier');
  @override
  late final GeneratedColumn<String> checksumBaseCashier =
      GeneratedColumn<String>('checksum_base_cashier', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _checksumCloudMeta =
      const VerificationMeta('checksumCloud');
  @override
  late final GeneratedColumn<String> checksumCloud = GeneratedColumn<String>(
      'checksum_cloud', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _dataMeta = const VerificationMeta('data');
  @override
  late final GeneratedColumnWithTypeConverter<dynamic, String> data =
      GeneratedColumn<String>('data', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<dynamic>($SyncQueueEntityTable.$converterdata);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        entity,
        entityId,
        process,
        createdAt,
        userId,
        synced,
        checksumLocal,
        checksumBaseCashier,
        checksumCloud,
        data
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'sync_queue_entity';
  @override
  VerificationContext validateIntegrity(
      Insertable<SyncQueueEntityData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('entity')) {
      context.handle(_entityMeta,
          entity.isAcceptableOrUnknown(data['entity']!, _entityMeta));
    } else if (isInserting) {
      context.missing(_entityMeta);
    }
    if (data.containsKey('entity_id')) {
      context.handle(_entityIdMeta,
          entityId.isAcceptableOrUnknown(data['entity_id']!, _entityIdMeta));
    } else if (isInserting) {
      context.missing(_entityIdMeta);
    }
    if (data.containsKey('process')) {
      context.handle(_processMeta,
          process.isAcceptableOrUnknown(data['process']!, _processMeta));
    } else if (isInserting) {
      context.missing(_processMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta));
    }
    if (data.containsKey('synced')) {
      context.handle(_syncedMeta,
          synced.isAcceptableOrUnknown(data['synced']!, _syncedMeta));
    }
    if (data.containsKey('checksum_local')) {
      context.handle(
          _checksumLocalMeta,
          checksumLocal.isAcceptableOrUnknown(
              data['checksum_local']!, _checksumLocalMeta));
    }
    if (data.containsKey('checksum_base_cashier')) {
      context.handle(
          _checksumBaseCashierMeta,
          checksumBaseCashier.isAcceptableOrUnknown(
              data['checksum_base_cashier']!, _checksumBaseCashierMeta));
    }
    if (data.containsKey('checksum_cloud')) {
      context.handle(
          _checksumCloudMeta,
          checksumCloud.isAcceptableOrUnknown(
              data['checksum_cloud']!, _checksumCloudMeta));
    }
    context.handle(_dataMeta, const VerificationResult.success());
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  List<Set<GeneratedColumn>> get uniqueKeys => [
        {entity, entityId},
      ];
  @override
  SyncQueueEntityData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SyncQueueEntityData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      entity: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}entity'])!,
      entityId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}entity_id'])!,
      process: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}process'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
      userId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}user_id']),
      synced: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}synced'])!,
      checksumLocal: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}checksum_local']),
      checksumBaseCashier: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}checksum_base_cashier']),
      checksumCloud: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}checksum_cloud']),
      data: $SyncQueueEntityTable.$converterdata.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}data'])!),
    );
  }

  @override
  $SyncQueueEntityTable createAlias(String alias) {
    return $SyncQueueEntityTable(attachedDatabase, alias);
  }

  static TypeConverter<dynamic, String?> $converterdata =
      const JsonTypeConverter();
}

class SyncQueueEntityData extends DataClass
    implements Insertable<SyncQueueEntityData> {
  final int id;
  final String entity;
  final String entityId;
  final String process;
  final DateTime createdAt;
  final String? userId;
  final bool synced;
  final String? checksumLocal;
  final String? checksumBaseCashier;
  final String? checksumCloud;
  final dynamic data;
  const SyncQueueEntityData(
      {required this.id,
      required this.entity,
      required this.entityId,
      required this.process,
      required this.createdAt,
      this.userId,
      required this.synced,
      this.checksumLocal,
      this.checksumBaseCashier,
      this.checksumCloud,
      this.data});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['entity'] = Variable<String>(entity);
    map['entity_id'] = Variable<String>(entityId);
    map['process'] = Variable<String>(process);
    map['created_at'] = Variable<DateTime>(createdAt);
    if (!nullToAbsent || userId != null) {
      map['user_id'] = Variable<String>(userId);
    }
    map['synced'] = Variable<bool>(synced);
    if (!nullToAbsent || checksumLocal != null) {
      map['checksum_local'] = Variable<String>(checksumLocal);
    }
    if (!nullToAbsent || checksumBaseCashier != null) {
      map['checksum_base_cashier'] = Variable<String>(checksumBaseCashier);
    }
    if (!nullToAbsent || checksumCloud != null) {
      map['checksum_cloud'] = Variable<String>(checksumCloud);
    }
    if (!nullToAbsent || data != null) {
      map['data'] =
          Variable<String>($SyncQueueEntityTable.$converterdata.toSql(data));
    }
    return map;
  }

  SyncQueueEntityCompanion toCompanion(bool nullToAbsent) {
    return SyncQueueEntityCompanion(
      id: Value(id),
      entity: Value(entity),
      entityId: Value(entityId),
      process: Value(process),
      createdAt: Value(createdAt),
      userId:
          userId == null && nullToAbsent ? const Value.absent() : Value(userId),
      synced: Value(synced),
      checksumLocal: checksumLocal == null && nullToAbsent
          ? const Value.absent()
          : Value(checksumLocal),
      checksumBaseCashier: checksumBaseCashier == null && nullToAbsent
          ? const Value.absent()
          : Value(checksumBaseCashier),
      checksumCloud: checksumCloud == null && nullToAbsent
          ? const Value.absent()
          : Value(checksumCloud),
      data: data == null && nullToAbsent ? const Value.absent() : Value(data),
    );
  }

  factory SyncQueueEntityData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SyncQueueEntityData(
      id: serializer.fromJson<int>(json['id']),
      entity: serializer.fromJson<String>(json['entity']),
      entityId: serializer.fromJson<String>(json['entityId']),
      process: serializer.fromJson<String>(json['process']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      userId: serializer.fromJson<String?>(json['userId']),
      synced: serializer.fromJson<bool>(json['synced']),
      checksumLocal: serializer.fromJson<String?>(json['checksumLocal']),
      checksumBaseCashier:
          serializer.fromJson<String?>(json['checksumBaseCashier']),
      checksumCloud: serializer.fromJson<String?>(json['checksumCloud']),
      data: serializer.fromJson<dynamic>(json['data']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'entity': serializer.toJson<String>(entity),
      'entityId': serializer.toJson<String>(entityId),
      'process': serializer.toJson<String>(process),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'userId': serializer.toJson<String?>(userId),
      'synced': serializer.toJson<bool>(synced),
      'checksumLocal': serializer.toJson<String?>(checksumLocal),
      'checksumBaseCashier': serializer.toJson<String?>(checksumBaseCashier),
      'checksumCloud': serializer.toJson<String?>(checksumCloud),
      'data': serializer.toJson<dynamic>(data),
    };
  }

  SyncQueueEntityData copyWith(
          {int? id,
          String? entity,
          String? entityId,
          String? process,
          DateTime? createdAt,
          Value<String?> userId = const Value.absent(),
          bool? synced,
          Value<String?> checksumLocal = const Value.absent(),
          Value<String?> checksumBaseCashier = const Value.absent(),
          Value<String?> checksumCloud = const Value.absent(),
          Value<dynamic> data = const Value.absent()}) =>
      SyncQueueEntityData(
        id: id ?? this.id,
        entity: entity ?? this.entity,
        entityId: entityId ?? this.entityId,
        process: process ?? this.process,
        createdAt: createdAt ?? this.createdAt,
        userId: userId.present ? userId.value : this.userId,
        synced: synced ?? this.synced,
        checksumLocal:
            checksumLocal.present ? checksumLocal.value : this.checksumLocal,
        checksumBaseCashier: checksumBaseCashier.present
            ? checksumBaseCashier.value
            : this.checksumBaseCashier,
        checksumCloud:
            checksumCloud.present ? checksumCloud.value : this.checksumCloud,
        data: data.present ? data.value : this.data,
      );
  @override
  String toString() {
    return (StringBuffer('SyncQueueEntityData(')
          ..write('id: $id, ')
          ..write('entity: $entity, ')
          ..write('entityId: $entityId, ')
          ..write('process: $process, ')
          ..write('createdAt: $createdAt, ')
          ..write('userId: $userId, ')
          ..write('synced: $synced, ')
          ..write('checksumLocal: $checksumLocal, ')
          ..write('checksumBaseCashier: $checksumBaseCashier, ')
          ..write('checksumCloud: $checksumCloud, ')
          ..write('data: $data')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, entity, entityId, process, createdAt,
      userId, synced, checksumLocal, checksumBaseCashier, checksumCloud, data);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SyncQueueEntityData &&
          other.id == this.id &&
          other.entity == this.entity &&
          other.entityId == this.entityId &&
          other.process == this.process &&
          other.createdAt == this.createdAt &&
          other.userId == this.userId &&
          other.synced == this.synced &&
          other.checksumLocal == this.checksumLocal &&
          other.checksumBaseCashier == this.checksumBaseCashier &&
          other.checksumCloud == this.checksumCloud &&
          other.data == this.data);
}

class SyncQueueEntityCompanion extends UpdateCompanion<SyncQueueEntityData> {
  final Value<int> id;
  final Value<String> entity;
  final Value<String> entityId;
  final Value<String> process;
  final Value<DateTime> createdAt;
  final Value<String?> userId;
  final Value<bool> synced;
  final Value<String?> checksumLocal;
  final Value<String?> checksumBaseCashier;
  final Value<String?> checksumCloud;
  final Value<dynamic> data;
  const SyncQueueEntityCompanion({
    this.id = const Value.absent(),
    this.entity = const Value.absent(),
    this.entityId = const Value.absent(),
    this.process = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.userId = const Value.absent(),
    this.synced = const Value.absent(),
    this.checksumLocal = const Value.absent(),
    this.checksumBaseCashier = const Value.absent(),
    this.checksumCloud = const Value.absent(),
    this.data = const Value.absent(),
  });
  SyncQueueEntityCompanion.insert({
    this.id = const Value.absent(),
    required String entity,
    required String entityId,
    required String process,
    required DateTime createdAt,
    this.userId = const Value.absent(),
    this.synced = const Value.absent(),
    this.checksumLocal = const Value.absent(),
    this.checksumBaseCashier = const Value.absent(),
    this.checksumCloud = const Value.absent(),
    required dynamic data,
  })  : entity = Value(entity),
        entityId = Value(entityId),
        process = Value(process),
        createdAt = Value(createdAt),
        data = Value(data);
  static Insertable<SyncQueueEntityData> custom({
    Expression<int>? id,
    Expression<String>? entity,
    Expression<String>? entityId,
    Expression<String>? process,
    Expression<DateTime>? createdAt,
    Expression<String>? userId,
    Expression<bool>? synced,
    Expression<String>? checksumLocal,
    Expression<String>? checksumBaseCashier,
    Expression<String>? checksumCloud,
    Expression<String>? data,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (entity != null) 'entity': entity,
      if (entityId != null) 'entity_id': entityId,
      if (process != null) 'process': process,
      if (createdAt != null) 'created_at': createdAt,
      if (userId != null) 'user_id': userId,
      if (synced != null) 'synced': synced,
      if (checksumLocal != null) 'checksum_local': checksumLocal,
      if (checksumBaseCashier != null)
        'checksum_base_cashier': checksumBaseCashier,
      if (checksumCloud != null) 'checksum_cloud': checksumCloud,
      if (data != null) 'data': data,
    });
  }

  SyncQueueEntityCompanion copyWith(
      {Value<int>? id,
      Value<String>? entity,
      Value<String>? entityId,
      Value<String>? process,
      Value<DateTime>? createdAt,
      Value<String?>? userId,
      Value<bool>? synced,
      Value<String?>? checksumLocal,
      Value<String?>? checksumBaseCashier,
      Value<String?>? checksumCloud,
      Value<dynamic>? data}) {
    return SyncQueueEntityCompanion(
      id: id ?? this.id,
      entity: entity ?? this.entity,
      entityId: entityId ?? this.entityId,
      process: process ?? this.process,
      createdAt: createdAt ?? this.createdAt,
      userId: userId ?? this.userId,
      synced: synced ?? this.synced,
      checksumLocal: checksumLocal ?? this.checksumLocal,
      checksumBaseCashier: checksumBaseCashier ?? this.checksumBaseCashier,
      checksumCloud: checksumCloud ?? this.checksumCloud,
      data: data ?? this.data,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (entity.present) {
      map['entity'] = Variable<String>(entity.value);
    }
    if (entityId.present) {
      map['entity_id'] = Variable<String>(entityId.value);
    }
    if (process.present) {
      map['process'] = Variable<String>(process.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (synced.present) {
      map['synced'] = Variable<bool>(synced.value);
    }
    if (checksumLocal.present) {
      map['checksum_local'] = Variable<String>(checksumLocal.value);
    }
    if (checksumBaseCashier.present) {
      map['checksum_base_cashier'] =
          Variable<String>(checksumBaseCashier.value);
    }
    if (checksumCloud.present) {
      map['checksum_cloud'] = Variable<String>(checksumCloud.value);
    }
    if (data.present) {
      map['data'] = Variable<String>(
          $SyncQueueEntityTable.$converterdata.toSql(data.value));
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SyncQueueEntityCompanion(')
          ..write('id: $id, ')
          ..write('entity: $entity, ')
          ..write('entityId: $entityId, ')
          ..write('process: $process, ')
          ..write('createdAt: $createdAt, ')
          ..write('userId: $userId, ')
          ..write('synced: $synced, ')
          ..write('checksumLocal: $checksumLocal, ')
          ..write('checksumBaseCashier: $checksumBaseCashier, ')
          ..write('checksumCloud: $checksumCloud, ')
          ..write('data: $data')
          ..write(')'))
        .toString();
  }
}

class $OrderEntityV2Table extends OrderEntityV2
    with TableInfo<$OrderEntityV2Table, OrderEntityV2Data> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $OrderEntityV2Table(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _totalPriceMeta =
      const VerificationMeta('totalPrice');
  @override
  late final GeneratedColumn<double> totalPrice = GeneratedColumn<double>(
      'total_price', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _discountAmountMeta =
      const VerificationMeta('discountAmount');
  @override
  late final GeneratedColumn<double> discountAmount = GeneratedColumn<double>(
      'discount_amount', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _netTotalPriceMeta =
      const VerificationMeta('netTotalPrice');
  @override
  late final GeneratedColumn<double> netTotalPrice = GeneratedColumn<double>(
      'net_total_price', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _chargeAmountMeta =
      const VerificationMeta('chargeAmount');
  @override
  late final GeneratedColumn<double> chargeAmount = GeneratedColumn<double>(
      'charge_amount', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _taxableAmountMeta =
      const VerificationMeta('taxableAmount');
  @override
  late final GeneratedColumn<double> taxableAmount = GeneratedColumn<double>(
      'taxable_amount', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _taxAmountMeta =
      const VerificationMeta('taxAmount');
  @override
  late final GeneratedColumn<double> taxAmount = GeneratedColumn<double>(
      'tax_amount', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _finalAmountMeta =
      const VerificationMeta('finalAmount');
  @override
  late final GeneratedColumn<double> finalAmount = GeneratedColumn<double>(
      'final_amount', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _paidAmountMeta =
      const VerificationMeta('paidAmount');
  @override
  late final GeneratedColumn<double> paidAmount = GeneratedColumn<double>(
      'paid_amount', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _dueAmountMeta =
      const VerificationMeta('dueAmount');
  @override
  late final GeneratedColumn<double> dueAmount = GeneratedColumn<double>(
      'due_amount', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _changeAmountMeta =
      const VerificationMeta('changeAmount');
  @override
  late final GeneratedColumn<double> changeAmount = GeneratedColumn<double>(
      'change_amount', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _shippingAmountMeta =
      const VerificationMeta('shippingAmount');
  @override
  late final GeneratedColumn<double> shippingAmount = GeneratedColumn<double>(
      'shipping_amount', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _shippingDiscountAmountMeta =
      const VerificationMeta('shippingDiscountAmount');
  @override
  late final GeneratedColumn<double> shippingDiscountAmount =
      GeneratedColumn<double>('shipping_discount_amount', aliasedName, true,
          type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _shippingDiscountPercentageMeta =
      const VerificationMeta('shippingDiscountPercentage');
  @override
  late final GeneratedColumn<double> shippingDiscountPercentage =
      GeneratedColumn<double>('shipping_discount_percentage', aliasedName, true,
          type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _productDiscountAmountMeta =
      const VerificationMeta('productDiscountAmount');
  @override
  late final GeneratedColumn<double> productDiscountAmount =
      GeneratedColumn<double>('product_discount_amount', aliasedName, true,
          type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _discountPercentageMeta =
      const VerificationMeta('discountPercentage');
  @override
  late final GeneratedColumn<double> discountPercentage =
      GeneratedColumn<double>('discount_percentage', aliasedName, true,
          type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _totalDiscountAmountMeta =
      const VerificationMeta('totalDiscountAmount');
  @override
  late final GeneratedColumn<double> totalDiscountAmount =
      GeneratedColumn<double>('total_discount_amount', aliasedName, true,
          type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _promotionDiscountAmountMeta =
      const VerificationMeta('promotionDiscountAmount');
  @override
  late final GeneratedColumn<double> promotionDiscountAmount =
      GeneratedColumn<double>('promotion_discount_amount', aliasedName, true,
          type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _timeEventDiscountAmountMeta =
      const VerificationMeta('timeEventDiscountAmount');
  @override
  late final GeneratedColumn<double> timeEventDiscountAmount =
      GeneratedColumn<double>('time_event_discount_amount', aliasedName, true,
          type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _timeEventChargeAmountMeta =
      const VerificationMeta('timeEventChargeAmount');
  @override
  late final GeneratedColumn<double> timeEventChargeAmount =
      GeneratedColumn<double>('time_event_charge_amount', aliasedName, true,
          type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _roundingDecimalAmountMeta =
      const VerificationMeta('roundingDecimalAmount');
  @override
  late final GeneratedColumn<double> roundingDecimalAmount =
      GeneratedColumn<double>('rounding_decimal_amount', aliasedName, true,
          type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _noteMeta = const VerificationMeta('note');
  @override
  late final GeneratedColumn<String> note = GeneratedColumn<String>(
      'note', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _orderRefMeta =
      const VerificationMeta('orderRef');
  @override
  late final GeneratedColumn<String> orderRef = GeneratedColumn<String>(
      'order_ref', aliasedName, true,
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
      'start_date', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _endTimeMeta =
      const VerificationMeta('endTime');
  @override
  late final GeneratedColumn<DateTime> endTime = GeneratedColumn<DateTime>(
      'end_time', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _timeOfReceiptMeta =
      const VerificationMeta('timeOfReceipt');
  @override
  late final GeneratedColumn<DateTime> timeOfReceipt =
      GeneratedColumn<DateTime>('time_of_receipt', aliasedName, true,
          type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _orderTypeMeta =
      const VerificationMeta('orderType');
  @override
  late final GeneratedColumn<int> orderType = GeneratedColumn<int>(
      'order_type', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _orderSourceMeta =
      const VerificationMeta('orderSource');
  @override
  late final GeneratedColumn<int> orderSource = GeneratedColumn<int>(
      'order_source', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<int> status = GeneratedColumn<int>(
      'status', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _deliveryStatusMeta =
      const VerificationMeta('deliveryStatus');
  @override
  late final GeneratedColumn<int> deliveryStatus = GeneratedColumn<int>(
      'delivery_status', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
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
  static const VerificationMeta _tableIdMeta =
      const VerificationMeta('tableId');
  @override
  late final GeneratedColumn<String> tableId = GeneratedColumn<String>(
      'table_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _tableCaptionMeta =
      const VerificationMeta('tableCaption');
  @override
  late final GeneratedColumn<String> tableCaption = GeneratedColumn<String>(
      'table_caption', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _numberVisitorMeta =
      const VerificationMeta('numberVisitor');
  @override
  late final GeneratedColumn<int> numberVisitor = GeneratedColumn<int>(
      'number_visitor', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _minimumReservationPriceMeta =
      const VerificationMeta('minimumReservationPrice');
  @override
  late final GeneratedColumn<double> minimumReservationPrice =
      GeneratedColumn<double>('minimum_reservation_price', aliasedName, true,
          type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _callNameMeta =
      const VerificationMeta('callName');
  @override
  late final GeneratedColumn<String> callName = GeneratedColumn<String>(
      'call_name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _callNumberMeta =
      const VerificationMeta('callNumber');
  @override
  late final GeneratedColumn<String> callNumber = GeneratedColumn<String>(
      'call_number', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _cancelReasonIdMeta =
      const VerificationMeta('cancelReasonId');
  @override
  late final GeneratedColumn<String> cancelReasonId = GeneratedColumn<String>(
      'cancel_reason_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _msgCancelMeta =
      const VerificationMeta('msgCancel');
  @override
  late final GeneratedColumn<String> msgCancel = GeneratedColumn<String>(
      'msg_cancel', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _kitchenNoteMeta =
      const VerificationMeta('kitchenNote');
  @override
  late final GeneratedColumn<String> kitchenNote = GeneratedColumn<String>(
      'kitchen_note', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _casherNoteMeta =
      const VerificationMeta('casherNote');
  @override
  late final GeneratedColumn<String> casherNote = GeneratedColumn<String>(
      'casher_note', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _supervisorIdMeta =
      const VerificationMeta('supervisorId');
  @override
  late final GeneratedColumn<String> supervisorId = GeneratedColumn<String>(
      'supervisor_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
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
  static const VerificationMeta _totalCaloriesMeta =
      const VerificationMeta('totalCalories');
  @override
  late final GeneratedColumn<double> totalCalories = GeneratedColumn<double>(
      'total_calories', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _priceIncludeTaxMeta =
      const VerificationMeta('priceIncludeTax');
  @override
  late final GeneratedColumn<bool> priceIncludeTax = GeneratedColumn<bool>(
      'price_include_tax', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("price_include_tax" IN (0, 1))'));
  static const VerificationMeta _customerIdMeta =
      const VerificationMeta('customerId');
  @override
  late final GeneratedColumn<String> customerId = GeneratedColumn<String>(
      'customer_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _customerJsonMeta =
      const VerificationMeta('customerJson');
  @override
  late final GeneratedColumnWithTypeConverter<dynamic, String> customerJson =
      GeneratedColumn<String>('customer_json', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<dynamic>($OrderEntityV2Table.$convertercustomerJson);
  static const VerificationMeta _addressIdMeta =
      const VerificationMeta('addressId');
  @override
  late final GeneratedColumn<String> addressId = GeneratedColumn<String>(
      'address_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _addressJsonMeta =
      const VerificationMeta('addressJson');
  @override
  late final GeneratedColumnWithTypeConverter<dynamic, String> addressJson =
      GeneratedColumn<String>('address_json', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<dynamic>($OrderEntityV2Table.$converteraddressJson);
  static const VerificationMeta _promotionIdMeta =
      const VerificationMeta('promotionId');
  @override
  late final GeneratedColumn<String> promotionId = GeneratedColumn<String>(
      'promotion_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _promotionJsonMeta =
      const VerificationMeta('promotionJson');
  @override
  late final GeneratedColumnWithTypeConverter<dynamic, String> promotionJson =
      GeneratedColumn<String>('promotion_json', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<dynamic>($OrderEntityV2Table.$converterpromotionJson);
  static const VerificationMeta _giftCardJsonMeta =
      const VerificationMeta('giftCardJson');
  @override
  late final GeneratedColumnWithTypeConverter<dynamic, String> giftCardJson =
      GeneratedColumn<String>('gift_card_json', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<dynamic>($OrderEntityV2Table.$convertergiftCardJson);
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
  static const VerificationMeta _lastModifiedOnMeta =
      const VerificationMeta('lastModifiedOn');
  @override
  late final GeneratedColumn<String> lastModifiedOn = GeneratedColumn<String>(
      'last_modified_on', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _lastModifiedByMeta =
      const VerificationMeta('lastModifiedBy');
  @override
  late final GeneratedColumn<String> lastModifiedBy = GeneratedColumn<String>(
      'last_modified_by', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        totalPrice,
        discountAmount,
        netTotalPrice,
        chargeAmount,
        taxableAmount,
        taxAmount,
        finalAmount,
        paidAmount,
        dueAmount,
        changeAmount,
        shippingAmount,
        shippingDiscountAmount,
        shippingDiscountPercentage,
        productDiscountAmount,
        discountPercentage,
        totalDiscountAmount,
        promotionDiscountAmount,
        timeEventDiscountAmount,
        timeEventChargeAmount,
        roundingDecimalAmount,
        note,
        orderRef,
        deviceId,
        startDate,
        endTime,
        timeOfReceipt,
        orderType,
        orderSource,
        status,
        deliveryStatus,
        paymentStatus,
        refundStatus,
        shiftId,
        tillId,
        tableId,
        tableCaption,
        numberVisitor,
        minimumReservationPrice,
        callName,
        callNumber,
        cancelReasonId,
        msgCancel,
        kitchenNote,
        casherNote,
        supervisorId,
        parentOrderId,
        splitIndex,
        checksum,
        masterChecksum,
        serverChecksum,
        totalCalories,
        priceIncludeTax,
        customerId,
        customerJson,
        addressId,
        addressJson,
        promotionId,
        promotionJson,
        giftCardJson,
        createdOn,
        createdBy,
        lastModifiedOn,
        lastModifiedBy
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'order_entity_v2';
  @override
  VerificationContext validateIntegrity(Insertable<OrderEntityV2Data> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('total_price')) {
      context.handle(
          _totalPriceMeta,
          totalPrice.isAcceptableOrUnknown(
              data['total_price']!, _totalPriceMeta));
    } else if (isInserting) {
      context.missing(_totalPriceMeta);
    }
    if (data.containsKey('discount_amount')) {
      context.handle(
          _discountAmountMeta,
          discountAmount.isAcceptableOrUnknown(
              data['discount_amount']!, _discountAmountMeta));
    }
    if (data.containsKey('net_total_price')) {
      context.handle(
          _netTotalPriceMeta,
          netTotalPrice.isAcceptableOrUnknown(
              data['net_total_price']!, _netTotalPriceMeta));
    } else if (isInserting) {
      context.missing(_netTotalPriceMeta);
    }
    if (data.containsKey('charge_amount')) {
      context.handle(
          _chargeAmountMeta,
          chargeAmount.isAcceptableOrUnknown(
              data['charge_amount']!, _chargeAmountMeta));
    }
    if (data.containsKey('taxable_amount')) {
      context.handle(
          _taxableAmountMeta,
          taxableAmount.isAcceptableOrUnknown(
              data['taxable_amount']!, _taxableAmountMeta));
    }
    if (data.containsKey('tax_amount')) {
      context.handle(_taxAmountMeta,
          taxAmount.isAcceptableOrUnknown(data['tax_amount']!, _taxAmountMeta));
    }
    if (data.containsKey('final_amount')) {
      context.handle(
          _finalAmountMeta,
          finalAmount.isAcceptableOrUnknown(
              data['final_amount']!, _finalAmountMeta));
    } else if (isInserting) {
      context.missing(_finalAmountMeta);
    }
    if (data.containsKey('paid_amount')) {
      context.handle(
          _paidAmountMeta,
          paidAmount.isAcceptableOrUnknown(
              data['paid_amount']!, _paidAmountMeta));
    }
    if (data.containsKey('due_amount')) {
      context.handle(_dueAmountMeta,
          dueAmount.isAcceptableOrUnknown(data['due_amount']!, _dueAmountMeta));
    }
    if (data.containsKey('change_amount')) {
      context.handle(
          _changeAmountMeta,
          changeAmount.isAcceptableOrUnknown(
              data['change_amount']!, _changeAmountMeta));
    }
    if (data.containsKey('shipping_amount')) {
      context.handle(
          _shippingAmountMeta,
          shippingAmount.isAcceptableOrUnknown(
              data['shipping_amount']!, _shippingAmountMeta));
    }
    if (data.containsKey('shipping_discount_amount')) {
      context.handle(
          _shippingDiscountAmountMeta,
          shippingDiscountAmount.isAcceptableOrUnknown(
              data['shipping_discount_amount']!, _shippingDiscountAmountMeta));
    }
    if (data.containsKey('shipping_discount_percentage')) {
      context.handle(
          _shippingDiscountPercentageMeta,
          shippingDiscountPercentage.isAcceptableOrUnknown(
              data['shipping_discount_percentage']!,
              _shippingDiscountPercentageMeta));
    }
    if (data.containsKey('product_discount_amount')) {
      context.handle(
          _productDiscountAmountMeta,
          productDiscountAmount.isAcceptableOrUnknown(
              data['product_discount_amount']!, _productDiscountAmountMeta));
    }
    if (data.containsKey('discount_percentage')) {
      context.handle(
          _discountPercentageMeta,
          discountPercentage.isAcceptableOrUnknown(
              data['discount_percentage']!, _discountPercentageMeta));
    }
    if (data.containsKey('total_discount_amount')) {
      context.handle(
          _totalDiscountAmountMeta,
          totalDiscountAmount.isAcceptableOrUnknown(
              data['total_discount_amount']!, _totalDiscountAmountMeta));
    }
    if (data.containsKey('promotion_discount_amount')) {
      context.handle(
          _promotionDiscountAmountMeta,
          promotionDiscountAmount.isAcceptableOrUnknown(
              data['promotion_discount_amount']!,
              _promotionDiscountAmountMeta));
    }
    if (data.containsKey('time_event_discount_amount')) {
      context.handle(
          _timeEventDiscountAmountMeta,
          timeEventDiscountAmount.isAcceptableOrUnknown(
              data['time_event_discount_amount']!,
              _timeEventDiscountAmountMeta));
    }
    if (data.containsKey('time_event_charge_amount')) {
      context.handle(
          _timeEventChargeAmountMeta,
          timeEventChargeAmount.isAcceptableOrUnknown(
              data['time_event_charge_amount']!, _timeEventChargeAmountMeta));
    }
    if (data.containsKey('rounding_decimal_amount')) {
      context.handle(
          _roundingDecimalAmountMeta,
          roundingDecimalAmount.isAcceptableOrUnknown(
              data['rounding_decimal_amount']!, _roundingDecimalAmountMeta));
    }
    if (data.containsKey('note')) {
      context.handle(
          _noteMeta, note.isAcceptableOrUnknown(data['note']!, _noteMeta));
    }
    if (data.containsKey('order_ref')) {
      context.handle(_orderRefMeta,
          orderRef.isAcceptableOrUnknown(data['order_ref']!, _orderRefMeta));
    }
    if (data.containsKey('device_id')) {
      context.handle(_deviceIdMeta,
          deviceId.isAcceptableOrUnknown(data['device_id']!, _deviceIdMeta));
    }
    if (data.containsKey('start_date')) {
      context.handle(_startDateMeta,
          startDate.isAcceptableOrUnknown(data['start_date']!, _startDateMeta));
    }
    if (data.containsKey('end_time')) {
      context.handle(_endTimeMeta,
          endTime.isAcceptableOrUnknown(data['end_time']!, _endTimeMeta));
    }
    if (data.containsKey('time_of_receipt')) {
      context.handle(
          _timeOfReceiptMeta,
          timeOfReceipt.isAcceptableOrUnknown(
              data['time_of_receipt']!, _timeOfReceiptMeta));
    }
    if (data.containsKey('order_type')) {
      context.handle(_orderTypeMeta,
          orderType.isAcceptableOrUnknown(data['order_type']!, _orderTypeMeta));
    }
    if (data.containsKey('order_source')) {
      context.handle(
          _orderSourceMeta,
          orderSource.isAcceptableOrUnknown(
              data['order_source']!, _orderSourceMeta));
    }
    if (data.containsKey('status')) {
      context.handle(_statusMeta,
          status.isAcceptableOrUnknown(data['status']!, _statusMeta));
    }
    if (data.containsKey('delivery_status')) {
      context.handle(
          _deliveryStatusMeta,
          deliveryStatus.isAcceptableOrUnknown(
              data['delivery_status']!, _deliveryStatusMeta));
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
    if (data.containsKey('shift_id')) {
      context.handle(_shiftIdMeta,
          shiftId.isAcceptableOrUnknown(data['shift_id']!, _shiftIdMeta));
    }
    if (data.containsKey('till_id')) {
      context.handle(_tillIdMeta,
          tillId.isAcceptableOrUnknown(data['till_id']!, _tillIdMeta));
    }
    if (data.containsKey('table_id')) {
      context.handle(_tableIdMeta,
          tableId.isAcceptableOrUnknown(data['table_id']!, _tableIdMeta));
    }
    if (data.containsKey('table_caption')) {
      context.handle(
          _tableCaptionMeta,
          tableCaption.isAcceptableOrUnknown(
              data['table_caption']!, _tableCaptionMeta));
    }
    if (data.containsKey('number_visitor')) {
      context.handle(
          _numberVisitorMeta,
          numberVisitor.isAcceptableOrUnknown(
              data['number_visitor']!, _numberVisitorMeta));
    }
    if (data.containsKey('minimum_reservation_price')) {
      context.handle(
          _minimumReservationPriceMeta,
          minimumReservationPrice.isAcceptableOrUnknown(
              data['minimum_reservation_price']!,
              _minimumReservationPriceMeta));
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
    if (data.containsKey('cancel_reason_id')) {
      context.handle(
          _cancelReasonIdMeta,
          cancelReasonId.isAcceptableOrUnknown(
              data['cancel_reason_id']!, _cancelReasonIdMeta));
    }
    if (data.containsKey('msg_cancel')) {
      context.handle(_msgCancelMeta,
          msgCancel.isAcceptableOrUnknown(data['msg_cancel']!, _msgCancelMeta));
    }
    if (data.containsKey('kitchen_note')) {
      context.handle(
          _kitchenNoteMeta,
          kitchenNote.isAcceptableOrUnknown(
              data['kitchen_note']!, _kitchenNoteMeta));
    }
    if (data.containsKey('casher_note')) {
      context.handle(
          _casherNoteMeta,
          casherNote.isAcceptableOrUnknown(
              data['casher_note']!, _casherNoteMeta));
    }
    if (data.containsKey('supervisor_id')) {
      context.handle(
          _supervisorIdMeta,
          supervisorId.isAcceptableOrUnknown(
              data['supervisor_id']!, _supervisorIdMeta));
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
    if (data.containsKey('total_calories')) {
      context.handle(
          _totalCaloriesMeta,
          totalCalories.isAcceptableOrUnknown(
              data['total_calories']!, _totalCaloriesMeta));
    }
    if (data.containsKey('price_include_tax')) {
      context.handle(
          _priceIncludeTaxMeta,
          priceIncludeTax.isAcceptableOrUnknown(
              data['price_include_tax']!, _priceIncludeTaxMeta));
    }
    if (data.containsKey('customer_id')) {
      context.handle(
          _customerIdMeta,
          customerId.isAcceptableOrUnknown(
              data['customer_id']!, _customerIdMeta));
    }
    context.handle(_customerJsonMeta, const VerificationResult.success());
    if (data.containsKey('address_id')) {
      context.handle(_addressIdMeta,
          addressId.isAcceptableOrUnknown(data['address_id']!, _addressIdMeta));
    }
    context.handle(_addressJsonMeta, const VerificationResult.success());
    if (data.containsKey('promotion_id')) {
      context.handle(
          _promotionIdMeta,
          promotionId.isAcceptableOrUnknown(
              data['promotion_id']!, _promotionIdMeta));
    }
    context.handle(_promotionJsonMeta, const VerificationResult.success());
    context.handle(_giftCardJsonMeta, const VerificationResult.success());
    if (data.containsKey('created_on')) {
      context.handle(_createdOnMeta,
          createdOn.isAcceptableOrUnknown(data['created_on']!, _createdOnMeta));
    }
    if (data.containsKey('created_by')) {
      context.handle(_createdByMeta,
          createdBy.isAcceptableOrUnknown(data['created_by']!, _createdByMeta));
    }
    if (data.containsKey('last_modified_on')) {
      context.handle(
          _lastModifiedOnMeta,
          lastModifiedOn.isAcceptableOrUnknown(
              data['last_modified_on']!, _lastModifiedOnMeta));
    }
    if (data.containsKey('last_modified_by')) {
      context.handle(
          _lastModifiedByMeta,
          lastModifiedBy.isAcceptableOrUnknown(
              data['last_modified_by']!, _lastModifiedByMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {orderRef};
  @override
  OrderEntityV2Data map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return OrderEntityV2Data(
      totalPrice: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}total_price'])!,
      discountAmount: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}discount_amount']),
      netTotalPrice: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}net_total_price'])!,
      chargeAmount: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}charge_amount']),
      taxableAmount: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}taxable_amount']),
      taxAmount: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}tax_amount']),
      finalAmount: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}final_amount'])!,
      paidAmount: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}paid_amount']),
      dueAmount: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}due_amount']),
      changeAmount: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}change_amount']),
      shippingAmount: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}shipping_amount']),
      shippingDiscountAmount: attachedDatabase.typeMapping.read(
          DriftSqlType.double,
          data['${effectivePrefix}shipping_discount_amount']),
      shippingDiscountPercentage: attachedDatabase.typeMapping.read(
          DriftSqlType.double,
          data['${effectivePrefix}shipping_discount_percentage']),
      productDiscountAmount: attachedDatabase.typeMapping.read(
          DriftSqlType.double,
          data['${effectivePrefix}product_discount_amount']),
      discountPercentage: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}discount_percentage']),
      totalDiscountAmount: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}total_discount_amount']),
      promotionDiscountAmount: attachedDatabase.typeMapping.read(
          DriftSqlType.double,
          data['${effectivePrefix}promotion_discount_amount']),
      timeEventDiscountAmount: attachedDatabase.typeMapping.read(
          DriftSqlType.double,
          data['${effectivePrefix}time_event_discount_amount']),
      timeEventChargeAmount: attachedDatabase.typeMapping.read(
          DriftSqlType.double,
          data['${effectivePrefix}time_event_charge_amount']),
      roundingDecimalAmount: attachedDatabase.typeMapping.read(
          DriftSqlType.double,
          data['${effectivePrefix}rounding_decimal_amount']),
      note: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}note']),
      orderRef: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}order_ref']),
      deviceId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}device_id']),
      startDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}start_date']),
      endTime: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}end_time']),
      timeOfReceipt: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}time_of_receipt']),
      orderType: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}order_type']),
      orderSource: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}order_source']),
      status: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}status']),
      deliveryStatus: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}delivery_status']),
      paymentStatus: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}payment_status']),
      refundStatus: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}refund_status']),
      shiftId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}shift_id']),
      tillId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}till_id']),
      tableId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}table_id']),
      tableCaption: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}table_caption']),
      numberVisitor: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}number_visitor']),
      minimumReservationPrice: attachedDatabase.typeMapping.read(
          DriftSqlType.double,
          data['${effectivePrefix}minimum_reservation_price']),
      callName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}call_name']),
      callNumber: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}call_number']),
      cancelReasonId: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}cancel_reason_id']),
      msgCancel: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}msg_cancel']),
      kitchenNote: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}kitchen_note']),
      casherNote: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}casher_note']),
      supervisorId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}supervisor_id']),
      parentOrderId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}parent_order_id']),
      splitIndex: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}split_index']),
      checksum: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}checksum']),
      masterChecksum: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}master_checksum']),
      serverChecksum: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}server_checksum']),
      totalCalories: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}total_calories']),
      priceIncludeTax: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}price_include_tax']),
      customerId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}customer_id']),
      customerJson: $OrderEntityV2Table.$convertercustomerJson.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}customer_json'])),
      addressId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}address_id']),
      addressJson: $OrderEntityV2Table.$converteraddressJson.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}address_json'])),
      promotionId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}promotion_id']),
      promotionJson: $OrderEntityV2Table.$converterpromotionJson.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}promotion_json'])),
      giftCardJson: $OrderEntityV2Table.$convertergiftCardJson.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}gift_card_json'])),
      createdOn: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}created_on']),
      createdBy: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}created_by']),
      lastModifiedOn: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}last_modified_on']),
      lastModifiedBy: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}last_modified_by']),
    );
  }

  @override
  $OrderEntityV2Table createAlias(String alias) {
    return $OrderEntityV2Table(attachedDatabase, alias);
  }

  static TypeConverter<dynamic, String?> $convertercustomerJson =
      const JsonTypeConverter();
  static TypeConverter<dynamic, String?> $converteraddressJson =
      const JsonTypeConverter();
  static TypeConverter<dynamic, String?> $converterpromotionJson =
      const JsonTypeConverter();
  static TypeConverter<dynamic, String?> $convertergiftCardJson =
      const JsonTypeConverter();
}

class OrderEntityV2Data extends DataClass
    implements Insertable<OrderEntityV2Data> {
  final double totalPrice;
  final double? discountAmount;
  final double netTotalPrice;
  final double? chargeAmount;
  final double? taxableAmount;
  final double? taxAmount;
  final double finalAmount;
  final double? paidAmount;
  final double? dueAmount;
  final double? changeAmount;
  final double? shippingAmount;
  final double? shippingDiscountAmount;
  final double? shippingDiscountPercentage;
  final double? productDiscountAmount;
  final double? discountPercentage;
  final double? totalDiscountAmount;
  final double? promotionDiscountAmount;
  final double? timeEventDiscountAmount;
  final double? timeEventChargeAmount;
  final double? roundingDecimalAmount;
  final String? note;
  final String? orderRef;
  final String? deviceId;
  final DateTime? startDate;
  final DateTime? endTime;
  final DateTime? timeOfReceipt;
  final int? orderType;
  final int? orderSource;
  final int? status;
  final int? deliveryStatus;
  final int? paymentStatus;
  final int? refundStatus;
  final String? shiftId;
  final String? tillId;
  final String? tableId;
  final String? tableCaption;
  final int? numberVisitor;
  final double? minimumReservationPrice;
  final String? callName;
  final String? callNumber;
  final String? cancelReasonId;
  final String? msgCancel;
  final String? kitchenNote;
  final String? casherNote;
  final String? supervisorId;
  final String? parentOrderId;
  final int? splitIndex;
  final String? checksum;
  final String? masterChecksum;
  final String? serverChecksum;
  final double? totalCalories;
  final bool? priceIncludeTax;
  final String? customerId;
  final dynamic customerJson;
  final String? addressId;
  final dynamic addressJson;
  final String? promotionId;
  final dynamic promotionJson;
  final dynamic giftCardJson;
  final String? createdOn;
  final String? createdBy;
  final String? lastModifiedOn;
  final String? lastModifiedBy;
  const OrderEntityV2Data(
      {required this.totalPrice,
      this.discountAmount,
      required this.netTotalPrice,
      this.chargeAmount,
      this.taxableAmount,
      this.taxAmount,
      required this.finalAmount,
      this.paidAmount,
      this.dueAmount,
      this.changeAmount,
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
      this.lastModifiedBy});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['total_price'] = Variable<double>(totalPrice);
    if (!nullToAbsent || discountAmount != null) {
      map['discount_amount'] = Variable<double>(discountAmount);
    }
    map['net_total_price'] = Variable<double>(netTotalPrice);
    if (!nullToAbsent || chargeAmount != null) {
      map['charge_amount'] = Variable<double>(chargeAmount);
    }
    if (!nullToAbsent || taxableAmount != null) {
      map['taxable_amount'] = Variable<double>(taxableAmount);
    }
    if (!nullToAbsent || taxAmount != null) {
      map['tax_amount'] = Variable<double>(taxAmount);
    }
    map['final_amount'] = Variable<double>(finalAmount);
    if (!nullToAbsent || paidAmount != null) {
      map['paid_amount'] = Variable<double>(paidAmount);
    }
    if (!nullToAbsent || dueAmount != null) {
      map['due_amount'] = Variable<double>(dueAmount);
    }
    if (!nullToAbsent || changeAmount != null) {
      map['change_amount'] = Variable<double>(changeAmount);
    }
    if (!nullToAbsent || shippingAmount != null) {
      map['shipping_amount'] = Variable<double>(shippingAmount);
    }
    if (!nullToAbsent || shippingDiscountAmount != null) {
      map['shipping_discount_amount'] =
          Variable<double>(shippingDiscountAmount);
    }
    if (!nullToAbsent || shippingDiscountPercentage != null) {
      map['shipping_discount_percentage'] =
          Variable<double>(shippingDiscountPercentage);
    }
    if (!nullToAbsent || productDiscountAmount != null) {
      map['product_discount_amount'] = Variable<double>(productDiscountAmount);
    }
    if (!nullToAbsent || discountPercentage != null) {
      map['discount_percentage'] = Variable<double>(discountPercentage);
    }
    if (!nullToAbsent || totalDiscountAmount != null) {
      map['total_discount_amount'] = Variable<double>(totalDiscountAmount);
    }
    if (!nullToAbsent || promotionDiscountAmount != null) {
      map['promotion_discount_amount'] =
          Variable<double>(promotionDiscountAmount);
    }
    if (!nullToAbsent || timeEventDiscountAmount != null) {
      map['time_event_discount_amount'] =
          Variable<double>(timeEventDiscountAmount);
    }
    if (!nullToAbsent || timeEventChargeAmount != null) {
      map['time_event_charge_amount'] = Variable<double>(timeEventChargeAmount);
    }
    if (!nullToAbsent || roundingDecimalAmount != null) {
      map['rounding_decimal_amount'] = Variable<double>(roundingDecimalAmount);
    }
    if (!nullToAbsent || note != null) {
      map['note'] = Variable<String>(note);
    }
    if (!nullToAbsent || orderRef != null) {
      map['order_ref'] = Variable<String>(orderRef);
    }
    if (!nullToAbsent || deviceId != null) {
      map['device_id'] = Variable<String>(deviceId);
    }
    if (!nullToAbsent || startDate != null) {
      map['start_date'] = Variable<DateTime>(startDate);
    }
    if (!nullToAbsent || endTime != null) {
      map['end_time'] = Variable<DateTime>(endTime);
    }
    if (!nullToAbsent || timeOfReceipt != null) {
      map['time_of_receipt'] = Variable<DateTime>(timeOfReceipt);
    }
    if (!nullToAbsent || orderType != null) {
      map['order_type'] = Variable<int>(orderType);
    }
    if (!nullToAbsent || orderSource != null) {
      map['order_source'] = Variable<int>(orderSource);
    }
    if (!nullToAbsent || status != null) {
      map['status'] = Variable<int>(status);
    }
    if (!nullToAbsent || deliveryStatus != null) {
      map['delivery_status'] = Variable<int>(deliveryStatus);
    }
    if (!nullToAbsent || paymentStatus != null) {
      map['payment_status'] = Variable<int>(paymentStatus);
    }
    if (!nullToAbsent || refundStatus != null) {
      map['refund_status'] = Variable<int>(refundStatus);
    }
    if (!nullToAbsent || shiftId != null) {
      map['shift_id'] = Variable<String>(shiftId);
    }
    if (!nullToAbsent || tillId != null) {
      map['till_id'] = Variable<String>(tillId);
    }
    if (!nullToAbsent || tableId != null) {
      map['table_id'] = Variable<String>(tableId);
    }
    if (!nullToAbsent || tableCaption != null) {
      map['table_caption'] = Variable<String>(tableCaption);
    }
    if (!nullToAbsent || numberVisitor != null) {
      map['number_visitor'] = Variable<int>(numberVisitor);
    }
    if (!nullToAbsent || minimumReservationPrice != null) {
      map['minimum_reservation_price'] =
          Variable<double>(minimumReservationPrice);
    }
    if (!nullToAbsent || callName != null) {
      map['call_name'] = Variable<String>(callName);
    }
    if (!nullToAbsent || callNumber != null) {
      map['call_number'] = Variable<String>(callNumber);
    }
    if (!nullToAbsent || cancelReasonId != null) {
      map['cancel_reason_id'] = Variable<String>(cancelReasonId);
    }
    if (!nullToAbsent || msgCancel != null) {
      map['msg_cancel'] = Variable<String>(msgCancel);
    }
    if (!nullToAbsent || kitchenNote != null) {
      map['kitchen_note'] = Variable<String>(kitchenNote);
    }
    if (!nullToAbsent || casherNote != null) {
      map['casher_note'] = Variable<String>(casherNote);
    }
    if (!nullToAbsent || supervisorId != null) {
      map['supervisor_id'] = Variable<String>(supervisorId);
    }
    if (!nullToAbsent || parentOrderId != null) {
      map['parent_order_id'] = Variable<String>(parentOrderId);
    }
    if (!nullToAbsent || splitIndex != null) {
      map['split_index'] = Variable<int>(splitIndex);
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
    if (!nullToAbsent || totalCalories != null) {
      map['total_calories'] = Variable<double>(totalCalories);
    }
    if (!nullToAbsent || priceIncludeTax != null) {
      map['price_include_tax'] = Variable<bool>(priceIncludeTax);
    }
    if (!nullToAbsent || customerId != null) {
      map['customer_id'] = Variable<String>(customerId);
    }
    if (!nullToAbsent || customerJson != null) {
      map['customer_json'] = Variable<String>(
          $OrderEntityV2Table.$convertercustomerJson.toSql(customerJson));
    }
    if (!nullToAbsent || addressId != null) {
      map['address_id'] = Variable<String>(addressId);
    }
    if (!nullToAbsent || addressJson != null) {
      map['address_json'] = Variable<String>(
          $OrderEntityV2Table.$converteraddressJson.toSql(addressJson));
    }
    if (!nullToAbsent || promotionId != null) {
      map['promotion_id'] = Variable<String>(promotionId);
    }
    if (!nullToAbsent || promotionJson != null) {
      map['promotion_json'] = Variable<String>(
          $OrderEntityV2Table.$converterpromotionJson.toSql(promotionJson));
    }
    if (!nullToAbsent || giftCardJson != null) {
      map['gift_card_json'] = Variable<String>(
          $OrderEntityV2Table.$convertergiftCardJson.toSql(giftCardJson));
    }
    if (!nullToAbsent || createdOn != null) {
      map['created_on'] = Variable<String>(createdOn);
    }
    if (!nullToAbsent || createdBy != null) {
      map['created_by'] = Variable<String>(createdBy);
    }
    if (!nullToAbsent || lastModifiedOn != null) {
      map['last_modified_on'] = Variable<String>(lastModifiedOn);
    }
    if (!nullToAbsent || lastModifiedBy != null) {
      map['last_modified_by'] = Variable<String>(lastModifiedBy);
    }
    return map;
  }

  OrderEntityV2Companion toCompanion(bool nullToAbsent) {
    return OrderEntityV2Companion(
      totalPrice: Value(totalPrice),
      discountAmount: discountAmount == null && nullToAbsent
          ? const Value.absent()
          : Value(discountAmount),
      netTotalPrice: Value(netTotalPrice),
      chargeAmount: chargeAmount == null && nullToAbsent
          ? const Value.absent()
          : Value(chargeAmount),
      taxableAmount: taxableAmount == null && nullToAbsent
          ? const Value.absent()
          : Value(taxableAmount),
      taxAmount: taxAmount == null && nullToAbsent
          ? const Value.absent()
          : Value(taxAmount),
      finalAmount: Value(finalAmount),
      paidAmount: paidAmount == null && nullToAbsent
          ? const Value.absent()
          : Value(paidAmount),
      dueAmount: dueAmount == null && nullToAbsent
          ? const Value.absent()
          : Value(dueAmount),
      changeAmount: changeAmount == null && nullToAbsent
          ? const Value.absent()
          : Value(changeAmount),
      shippingAmount: shippingAmount == null && nullToAbsent
          ? const Value.absent()
          : Value(shippingAmount),
      shippingDiscountAmount: shippingDiscountAmount == null && nullToAbsent
          ? const Value.absent()
          : Value(shippingDiscountAmount),
      shippingDiscountPercentage:
          shippingDiscountPercentage == null && nullToAbsent
              ? const Value.absent()
              : Value(shippingDiscountPercentage),
      productDiscountAmount: productDiscountAmount == null && nullToAbsent
          ? const Value.absent()
          : Value(productDiscountAmount),
      discountPercentage: discountPercentage == null && nullToAbsent
          ? const Value.absent()
          : Value(discountPercentage),
      totalDiscountAmount: totalDiscountAmount == null && nullToAbsent
          ? const Value.absent()
          : Value(totalDiscountAmount),
      promotionDiscountAmount: promotionDiscountAmount == null && nullToAbsent
          ? const Value.absent()
          : Value(promotionDiscountAmount),
      timeEventDiscountAmount: timeEventDiscountAmount == null && nullToAbsent
          ? const Value.absent()
          : Value(timeEventDiscountAmount),
      timeEventChargeAmount: timeEventChargeAmount == null && nullToAbsent
          ? const Value.absent()
          : Value(timeEventChargeAmount),
      roundingDecimalAmount: roundingDecimalAmount == null && nullToAbsent
          ? const Value.absent()
          : Value(roundingDecimalAmount),
      note: note == null && nullToAbsent ? const Value.absent() : Value(note),
      orderRef: orderRef == null && nullToAbsent
          ? const Value.absent()
          : Value(orderRef),
      deviceId: deviceId == null && nullToAbsent
          ? const Value.absent()
          : Value(deviceId),
      startDate: startDate == null && nullToAbsent
          ? const Value.absent()
          : Value(startDate),
      endTime: endTime == null && nullToAbsent
          ? const Value.absent()
          : Value(endTime),
      timeOfReceipt: timeOfReceipt == null && nullToAbsent
          ? const Value.absent()
          : Value(timeOfReceipt),
      orderType: orderType == null && nullToAbsent
          ? const Value.absent()
          : Value(orderType),
      orderSource: orderSource == null && nullToAbsent
          ? const Value.absent()
          : Value(orderSource),
      status:
          status == null && nullToAbsent ? const Value.absent() : Value(status),
      deliveryStatus: deliveryStatus == null && nullToAbsent
          ? const Value.absent()
          : Value(deliveryStatus),
      paymentStatus: paymentStatus == null && nullToAbsent
          ? const Value.absent()
          : Value(paymentStatus),
      refundStatus: refundStatus == null && nullToAbsent
          ? const Value.absent()
          : Value(refundStatus),
      shiftId: shiftId == null && nullToAbsent
          ? const Value.absent()
          : Value(shiftId),
      tillId:
          tillId == null && nullToAbsent ? const Value.absent() : Value(tillId),
      tableId: tableId == null && nullToAbsent
          ? const Value.absent()
          : Value(tableId),
      tableCaption: tableCaption == null && nullToAbsent
          ? const Value.absent()
          : Value(tableCaption),
      numberVisitor: numberVisitor == null && nullToAbsent
          ? const Value.absent()
          : Value(numberVisitor),
      minimumReservationPrice: minimumReservationPrice == null && nullToAbsent
          ? const Value.absent()
          : Value(minimumReservationPrice),
      callName: callName == null && nullToAbsent
          ? const Value.absent()
          : Value(callName),
      callNumber: callNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(callNumber),
      cancelReasonId: cancelReasonId == null && nullToAbsent
          ? const Value.absent()
          : Value(cancelReasonId),
      msgCancel: msgCancel == null && nullToAbsent
          ? const Value.absent()
          : Value(msgCancel),
      kitchenNote: kitchenNote == null && nullToAbsent
          ? const Value.absent()
          : Value(kitchenNote),
      casherNote: casherNote == null && nullToAbsent
          ? const Value.absent()
          : Value(casherNote),
      supervisorId: supervisorId == null && nullToAbsent
          ? const Value.absent()
          : Value(supervisorId),
      parentOrderId: parentOrderId == null && nullToAbsent
          ? const Value.absent()
          : Value(parentOrderId),
      splitIndex: splitIndex == null && nullToAbsent
          ? const Value.absent()
          : Value(splitIndex),
      checksum: checksum == null && nullToAbsent
          ? const Value.absent()
          : Value(checksum),
      masterChecksum: masterChecksum == null && nullToAbsent
          ? const Value.absent()
          : Value(masterChecksum),
      serverChecksum: serverChecksum == null && nullToAbsent
          ? const Value.absent()
          : Value(serverChecksum),
      totalCalories: totalCalories == null && nullToAbsent
          ? const Value.absent()
          : Value(totalCalories),
      priceIncludeTax: priceIncludeTax == null && nullToAbsent
          ? const Value.absent()
          : Value(priceIncludeTax),
      customerId: customerId == null && nullToAbsent
          ? const Value.absent()
          : Value(customerId),
      customerJson: customerJson == null && nullToAbsent
          ? const Value.absent()
          : Value(customerJson),
      addressId: addressId == null && nullToAbsent
          ? const Value.absent()
          : Value(addressId),
      addressJson: addressJson == null && nullToAbsent
          ? const Value.absent()
          : Value(addressJson),
      promotionId: promotionId == null && nullToAbsent
          ? const Value.absent()
          : Value(promotionId),
      promotionJson: promotionJson == null && nullToAbsent
          ? const Value.absent()
          : Value(promotionJson),
      giftCardJson: giftCardJson == null && nullToAbsent
          ? const Value.absent()
          : Value(giftCardJson),
      createdOn: createdOn == null && nullToAbsent
          ? const Value.absent()
          : Value(createdOn),
      createdBy: createdBy == null && nullToAbsent
          ? const Value.absent()
          : Value(createdBy),
      lastModifiedOn: lastModifiedOn == null && nullToAbsent
          ? const Value.absent()
          : Value(lastModifiedOn),
      lastModifiedBy: lastModifiedBy == null && nullToAbsent
          ? const Value.absent()
          : Value(lastModifiedBy),
    );
  }

  factory OrderEntityV2Data.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return OrderEntityV2Data(
      totalPrice: serializer.fromJson<double>(json['totalPrice']),
      discountAmount: serializer.fromJson<double?>(json['discountAmount']),
      netTotalPrice: serializer.fromJson<double>(json['netTotalPrice']),
      chargeAmount: serializer.fromJson<double?>(json['chargeAmount']),
      taxableAmount: serializer.fromJson<double?>(json['taxableAmount']),
      taxAmount: serializer.fromJson<double?>(json['taxAmount']),
      finalAmount: serializer.fromJson<double>(json['finalAmount']),
      paidAmount: serializer.fromJson<double?>(json['paidAmount']),
      dueAmount: serializer.fromJson<double?>(json['dueAmount']),
      changeAmount: serializer.fromJson<double?>(json['changeAmount']),
      shippingAmount: serializer.fromJson<double?>(json['shippingAmount']),
      shippingDiscountAmount:
          serializer.fromJson<double?>(json['shippingDiscountAmount']),
      shippingDiscountPercentage:
          serializer.fromJson<double?>(json['shippingDiscountPercentage']),
      productDiscountAmount:
          serializer.fromJson<double?>(json['productDiscountAmount']),
      discountPercentage:
          serializer.fromJson<double?>(json['discountPercentage']),
      totalDiscountAmount:
          serializer.fromJson<double?>(json['totalDiscountAmount']),
      promotionDiscountAmount:
          serializer.fromJson<double?>(json['promotionDiscountAmount']),
      timeEventDiscountAmount:
          serializer.fromJson<double?>(json['timeEventDiscountAmount']),
      timeEventChargeAmount:
          serializer.fromJson<double?>(json['timeEventChargeAmount']),
      roundingDecimalAmount:
          serializer.fromJson<double?>(json['roundingDecimalAmount']),
      note: serializer.fromJson<String?>(json['note']),
      orderRef: serializer.fromJson<String?>(json['orderRef']),
      deviceId: serializer.fromJson<String?>(json['deviceId']),
      startDate: serializer.fromJson<DateTime?>(json['startDate']),
      endTime: serializer.fromJson<DateTime?>(json['endTime']),
      timeOfReceipt: serializer.fromJson<DateTime?>(json['timeOfReceipt']),
      orderType: serializer.fromJson<int?>(json['orderType']),
      orderSource: serializer.fromJson<int?>(json['orderSource']),
      status: serializer.fromJson<int?>(json['status']),
      deliveryStatus: serializer.fromJson<int?>(json['deliveryStatus']),
      paymentStatus: serializer.fromJson<int?>(json['paymentStatus']),
      refundStatus: serializer.fromJson<int?>(json['refundStatus']),
      shiftId: serializer.fromJson<String?>(json['shiftId']),
      tillId: serializer.fromJson<String?>(json['tillId']),
      tableId: serializer.fromJson<String?>(json['tableId']),
      tableCaption: serializer.fromJson<String?>(json['tableCaption']),
      numberVisitor: serializer.fromJson<int?>(json['numberVisitor']),
      minimumReservationPrice:
          serializer.fromJson<double?>(json['minimumReservationPrice']),
      callName: serializer.fromJson<String?>(json['callName']),
      callNumber: serializer.fromJson<String?>(json['callNumber']),
      cancelReasonId: serializer.fromJson<String?>(json['cancelReasonId']),
      msgCancel: serializer.fromJson<String?>(json['msgCancel']),
      kitchenNote: serializer.fromJson<String?>(json['kitchenNote']),
      casherNote: serializer.fromJson<String?>(json['casherNote']),
      supervisorId: serializer.fromJson<String?>(json['supervisorId']),
      parentOrderId: serializer.fromJson<String?>(json['parentOrderId']),
      splitIndex: serializer.fromJson<int?>(json['splitIndex']),
      checksum: serializer.fromJson<String?>(json['checksum']),
      masterChecksum: serializer.fromJson<String?>(json['masterChecksum']),
      serverChecksum: serializer.fromJson<String?>(json['serverChecksum']),
      totalCalories: serializer.fromJson<double?>(json['totalCalories']),
      priceIncludeTax: serializer.fromJson<bool?>(json['priceIncludeTax']),
      customerId: serializer.fromJson<String?>(json['customerId']),
      customerJson: serializer.fromJson<dynamic>(json['customerJson']),
      addressId: serializer.fromJson<String?>(json['addressId']),
      addressJson: serializer.fromJson<dynamic>(json['addressJson']),
      promotionId: serializer.fromJson<String?>(json['promotionId']),
      promotionJson: serializer.fromJson<dynamic>(json['promotionJson']),
      giftCardJson: serializer.fromJson<dynamic>(json['giftCardJson']),
      createdOn: serializer.fromJson<String?>(json['createdOn']),
      createdBy: serializer.fromJson<String?>(json['createdBy']),
      lastModifiedOn: serializer.fromJson<String?>(json['lastModifiedOn']),
      lastModifiedBy: serializer.fromJson<String?>(json['lastModifiedBy']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'totalPrice': serializer.toJson<double>(totalPrice),
      'discountAmount': serializer.toJson<double?>(discountAmount),
      'netTotalPrice': serializer.toJson<double>(netTotalPrice),
      'chargeAmount': serializer.toJson<double?>(chargeAmount),
      'taxableAmount': serializer.toJson<double?>(taxableAmount),
      'taxAmount': serializer.toJson<double?>(taxAmount),
      'finalAmount': serializer.toJson<double>(finalAmount),
      'paidAmount': serializer.toJson<double?>(paidAmount),
      'dueAmount': serializer.toJson<double?>(dueAmount),
      'changeAmount': serializer.toJson<double?>(changeAmount),
      'shippingAmount': serializer.toJson<double?>(shippingAmount),
      'shippingDiscountAmount':
          serializer.toJson<double?>(shippingDiscountAmount),
      'shippingDiscountPercentage':
          serializer.toJson<double?>(shippingDiscountPercentage),
      'productDiscountAmount':
          serializer.toJson<double?>(productDiscountAmount),
      'discountPercentage': serializer.toJson<double?>(discountPercentage),
      'totalDiscountAmount': serializer.toJson<double?>(totalDiscountAmount),
      'promotionDiscountAmount':
          serializer.toJson<double?>(promotionDiscountAmount),
      'timeEventDiscountAmount':
          serializer.toJson<double?>(timeEventDiscountAmount),
      'timeEventChargeAmount':
          serializer.toJson<double?>(timeEventChargeAmount),
      'roundingDecimalAmount':
          serializer.toJson<double?>(roundingDecimalAmount),
      'note': serializer.toJson<String?>(note),
      'orderRef': serializer.toJson<String?>(orderRef),
      'deviceId': serializer.toJson<String?>(deviceId),
      'startDate': serializer.toJson<DateTime?>(startDate),
      'endTime': serializer.toJson<DateTime?>(endTime),
      'timeOfReceipt': serializer.toJson<DateTime?>(timeOfReceipt),
      'orderType': serializer.toJson<int?>(orderType),
      'orderSource': serializer.toJson<int?>(orderSource),
      'status': serializer.toJson<int?>(status),
      'deliveryStatus': serializer.toJson<int?>(deliveryStatus),
      'paymentStatus': serializer.toJson<int?>(paymentStatus),
      'refundStatus': serializer.toJson<int?>(refundStatus),
      'shiftId': serializer.toJson<String?>(shiftId),
      'tillId': serializer.toJson<String?>(tillId),
      'tableId': serializer.toJson<String?>(tableId),
      'tableCaption': serializer.toJson<String?>(tableCaption),
      'numberVisitor': serializer.toJson<int?>(numberVisitor),
      'minimumReservationPrice':
          serializer.toJson<double?>(minimumReservationPrice),
      'callName': serializer.toJson<String?>(callName),
      'callNumber': serializer.toJson<String?>(callNumber),
      'cancelReasonId': serializer.toJson<String?>(cancelReasonId),
      'msgCancel': serializer.toJson<String?>(msgCancel),
      'kitchenNote': serializer.toJson<String?>(kitchenNote),
      'casherNote': serializer.toJson<String?>(casherNote),
      'supervisorId': serializer.toJson<String?>(supervisorId),
      'parentOrderId': serializer.toJson<String?>(parentOrderId),
      'splitIndex': serializer.toJson<int?>(splitIndex),
      'checksum': serializer.toJson<String?>(checksum),
      'masterChecksum': serializer.toJson<String?>(masterChecksum),
      'serverChecksum': serializer.toJson<String?>(serverChecksum),
      'totalCalories': serializer.toJson<double?>(totalCalories),
      'priceIncludeTax': serializer.toJson<bool?>(priceIncludeTax),
      'customerId': serializer.toJson<String?>(customerId),
      'customerJson': serializer.toJson<dynamic>(customerJson),
      'addressId': serializer.toJson<String?>(addressId),
      'addressJson': serializer.toJson<dynamic>(addressJson),
      'promotionId': serializer.toJson<String?>(promotionId),
      'promotionJson': serializer.toJson<dynamic>(promotionJson),
      'giftCardJson': serializer.toJson<dynamic>(giftCardJson),
      'createdOn': serializer.toJson<String?>(createdOn),
      'createdBy': serializer.toJson<String?>(createdBy),
      'lastModifiedOn': serializer.toJson<String?>(lastModifiedOn),
      'lastModifiedBy': serializer.toJson<String?>(lastModifiedBy),
    };
  }

  OrderEntityV2Data copyWith(
          {double? totalPrice,
          Value<double?> discountAmount = const Value.absent(),
          double? netTotalPrice,
          Value<double?> chargeAmount = const Value.absent(),
          Value<double?> taxableAmount = const Value.absent(),
          Value<double?> taxAmount = const Value.absent(),
          double? finalAmount,
          Value<double?> paidAmount = const Value.absent(),
          Value<double?> dueAmount = const Value.absent(),
          Value<double?> changeAmount = const Value.absent(),
          Value<double?> shippingAmount = const Value.absent(),
          Value<double?> shippingDiscountAmount = const Value.absent(),
          Value<double?> shippingDiscountPercentage = const Value.absent(),
          Value<double?> productDiscountAmount = const Value.absent(),
          Value<double?> discountPercentage = const Value.absent(),
          Value<double?> totalDiscountAmount = const Value.absent(),
          Value<double?> promotionDiscountAmount = const Value.absent(),
          Value<double?> timeEventDiscountAmount = const Value.absent(),
          Value<double?> timeEventChargeAmount = const Value.absent(),
          Value<double?> roundingDecimalAmount = const Value.absent(),
          Value<String?> note = const Value.absent(),
          Value<String?> orderRef = const Value.absent(),
          Value<String?> deviceId = const Value.absent(),
          Value<DateTime?> startDate = const Value.absent(),
          Value<DateTime?> endTime = const Value.absent(),
          Value<DateTime?> timeOfReceipt = const Value.absent(),
          Value<int?> orderType = const Value.absent(),
          Value<int?> orderSource = const Value.absent(),
          Value<int?> status = const Value.absent(),
          Value<int?> deliveryStatus = const Value.absent(),
          Value<int?> paymentStatus = const Value.absent(),
          Value<int?> refundStatus = const Value.absent(),
          Value<String?> shiftId = const Value.absent(),
          Value<String?> tillId = const Value.absent(),
          Value<String?> tableId = const Value.absent(),
          Value<String?> tableCaption = const Value.absent(),
          Value<int?> numberVisitor = const Value.absent(),
          Value<double?> minimumReservationPrice = const Value.absent(),
          Value<String?> callName = const Value.absent(),
          Value<String?> callNumber = const Value.absent(),
          Value<String?> cancelReasonId = const Value.absent(),
          Value<String?> msgCancel = const Value.absent(),
          Value<String?> kitchenNote = const Value.absent(),
          Value<String?> casherNote = const Value.absent(),
          Value<String?> supervisorId = const Value.absent(),
          Value<String?> parentOrderId = const Value.absent(),
          Value<int?> splitIndex = const Value.absent(),
          Value<String?> checksum = const Value.absent(),
          Value<String?> masterChecksum = const Value.absent(),
          Value<String?> serverChecksum = const Value.absent(),
          Value<double?> totalCalories = const Value.absent(),
          Value<bool?> priceIncludeTax = const Value.absent(),
          Value<String?> customerId = const Value.absent(),
          Value<dynamic> customerJson = const Value.absent(),
          Value<String?> addressId = const Value.absent(),
          Value<dynamic> addressJson = const Value.absent(),
          Value<String?> promotionId = const Value.absent(),
          Value<dynamic> promotionJson = const Value.absent(),
          Value<dynamic> giftCardJson = const Value.absent(),
          Value<String?> createdOn = const Value.absent(),
          Value<String?> createdBy = const Value.absent(),
          Value<String?> lastModifiedOn = const Value.absent(),
          Value<String?> lastModifiedBy = const Value.absent()}) =>
      OrderEntityV2Data(
        totalPrice: totalPrice ?? this.totalPrice,
        discountAmount:
            discountAmount.present ? discountAmount.value : this.discountAmount,
        netTotalPrice: netTotalPrice ?? this.netTotalPrice,
        chargeAmount:
            chargeAmount.present ? chargeAmount.value : this.chargeAmount,
        taxableAmount:
            taxableAmount.present ? taxableAmount.value : this.taxableAmount,
        taxAmount: taxAmount.present ? taxAmount.value : this.taxAmount,
        finalAmount: finalAmount ?? this.finalAmount,
        paidAmount: paidAmount.present ? paidAmount.value : this.paidAmount,
        dueAmount: dueAmount.present ? dueAmount.value : this.dueAmount,
        changeAmount:
            changeAmount.present ? changeAmount.value : this.changeAmount,
        shippingAmount:
            shippingAmount.present ? shippingAmount.value : this.shippingAmount,
        shippingDiscountAmount: shippingDiscountAmount.present
            ? shippingDiscountAmount.value
            : this.shippingDiscountAmount,
        shippingDiscountPercentage: shippingDiscountPercentage.present
            ? shippingDiscountPercentage.value
            : this.shippingDiscountPercentage,
        productDiscountAmount: productDiscountAmount.present
            ? productDiscountAmount.value
            : this.productDiscountAmount,
        discountPercentage: discountPercentage.present
            ? discountPercentage.value
            : this.discountPercentage,
        totalDiscountAmount: totalDiscountAmount.present
            ? totalDiscountAmount.value
            : this.totalDiscountAmount,
        promotionDiscountAmount: promotionDiscountAmount.present
            ? promotionDiscountAmount.value
            : this.promotionDiscountAmount,
        timeEventDiscountAmount: timeEventDiscountAmount.present
            ? timeEventDiscountAmount.value
            : this.timeEventDiscountAmount,
        timeEventChargeAmount: timeEventChargeAmount.present
            ? timeEventChargeAmount.value
            : this.timeEventChargeAmount,
        roundingDecimalAmount: roundingDecimalAmount.present
            ? roundingDecimalAmount.value
            : this.roundingDecimalAmount,
        note: note.present ? note.value : this.note,
        orderRef: orderRef.present ? orderRef.value : this.orderRef,
        deviceId: deviceId.present ? deviceId.value : this.deviceId,
        startDate: startDate.present ? startDate.value : this.startDate,
        endTime: endTime.present ? endTime.value : this.endTime,
        timeOfReceipt:
            timeOfReceipt.present ? timeOfReceipt.value : this.timeOfReceipt,
        orderType: orderType.present ? orderType.value : this.orderType,
        orderSource: orderSource.present ? orderSource.value : this.orderSource,
        status: status.present ? status.value : this.status,
        deliveryStatus:
            deliveryStatus.present ? deliveryStatus.value : this.deliveryStatus,
        paymentStatus:
            paymentStatus.present ? paymentStatus.value : this.paymentStatus,
        refundStatus:
            refundStatus.present ? refundStatus.value : this.refundStatus,
        shiftId: shiftId.present ? shiftId.value : this.shiftId,
        tillId: tillId.present ? tillId.value : this.tillId,
        tableId: tableId.present ? tableId.value : this.tableId,
        tableCaption:
            tableCaption.present ? tableCaption.value : this.tableCaption,
        numberVisitor:
            numberVisitor.present ? numberVisitor.value : this.numberVisitor,
        minimumReservationPrice: minimumReservationPrice.present
            ? minimumReservationPrice.value
            : this.minimumReservationPrice,
        callName: callName.present ? callName.value : this.callName,
        callNumber: callNumber.present ? callNumber.value : this.callNumber,
        cancelReasonId:
            cancelReasonId.present ? cancelReasonId.value : this.cancelReasonId,
        msgCancel: msgCancel.present ? msgCancel.value : this.msgCancel,
        kitchenNote: kitchenNote.present ? kitchenNote.value : this.kitchenNote,
        casherNote: casherNote.present ? casherNote.value : this.casherNote,
        supervisorId:
            supervisorId.present ? supervisorId.value : this.supervisorId,
        parentOrderId:
            parentOrderId.present ? parentOrderId.value : this.parentOrderId,
        splitIndex: splitIndex.present ? splitIndex.value : this.splitIndex,
        checksum: checksum.present ? checksum.value : this.checksum,
        masterChecksum:
            masterChecksum.present ? masterChecksum.value : this.masterChecksum,
        serverChecksum:
            serverChecksum.present ? serverChecksum.value : this.serverChecksum,
        totalCalories:
            totalCalories.present ? totalCalories.value : this.totalCalories,
        priceIncludeTax: priceIncludeTax.present
            ? priceIncludeTax.value
            : this.priceIncludeTax,
        customerId: customerId.present ? customerId.value : this.customerId,
        customerJson:
            customerJson.present ? customerJson.value : this.customerJson,
        addressId: addressId.present ? addressId.value : this.addressId,
        addressJson: addressJson.present ? addressJson.value : this.addressJson,
        promotionId: promotionId.present ? promotionId.value : this.promotionId,
        promotionJson:
            promotionJson.present ? promotionJson.value : this.promotionJson,
        giftCardJson:
            giftCardJson.present ? giftCardJson.value : this.giftCardJson,
        createdOn: createdOn.present ? createdOn.value : this.createdOn,
        createdBy: createdBy.present ? createdBy.value : this.createdBy,
        lastModifiedOn:
            lastModifiedOn.present ? lastModifiedOn.value : this.lastModifiedOn,
        lastModifiedBy:
            lastModifiedBy.present ? lastModifiedBy.value : this.lastModifiedBy,
      );
  @override
  String toString() {
    return (StringBuffer('OrderEntityV2Data(')
          ..write('totalPrice: $totalPrice, ')
          ..write('discountAmount: $discountAmount, ')
          ..write('netTotalPrice: $netTotalPrice, ')
          ..write('chargeAmount: $chargeAmount, ')
          ..write('taxableAmount: $taxableAmount, ')
          ..write('taxAmount: $taxAmount, ')
          ..write('finalAmount: $finalAmount, ')
          ..write('paidAmount: $paidAmount, ')
          ..write('dueAmount: $dueAmount, ')
          ..write('changeAmount: $changeAmount, ')
          ..write('shippingAmount: $shippingAmount, ')
          ..write('shippingDiscountAmount: $shippingDiscountAmount, ')
          ..write('shippingDiscountPercentage: $shippingDiscountPercentage, ')
          ..write('productDiscountAmount: $productDiscountAmount, ')
          ..write('discountPercentage: $discountPercentage, ')
          ..write('totalDiscountAmount: $totalDiscountAmount, ')
          ..write('promotionDiscountAmount: $promotionDiscountAmount, ')
          ..write('timeEventDiscountAmount: $timeEventDiscountAmount, ')
          ..write('timeEventChargeAmount: $timeEventChargeAmount, ')
          ..write('roundingDecimalAmount: $roundingDecimalAmount, ')
          ..write('note: $note, ')
          ..write('orderRef: $orderRef, ')
          ..write('deviceId: $deviceId, ')
          ..write('startDate: $startDate, ')
          ..write('endTime: $endTime, ')
          ..write('timeOfReceipt: $timeOfReceipt, ')
          ..write('orderType: $orderType, ')
          ..write('orderSource: $orderSource, ')
          ..write('status: $status, ')
          ..write('deliveryStatus: $deliveryStatus, ')
          ..write('paymentStatus: $paymentStatus, ')
          ..write('refundStatus: $refundStatus, ')
          ..write('shiftId: $shiftId, ')
          ..write('tillId: $tillId, ')
          ..write('tableId: $tableId, ')
          ..write('tableCaption: $tableCaption, ')
          ..write('numberVisitor: $numberVisitor, ')
          ..write('minimumReservationPrice: $minimumReservationPrice, ')
          ..write('callName: $callName, ')
          ..write('callNumber: $callNumber, ')
          ..write('cancelReasonId: $cancelReasonId, ')
          ..write('msgCancel: $msgCancel, ')
          ..write('kitchenNote: $kitchenNote, ')
          ..write('casherNote: $casherNote, ')
          ..write('supervisorId: $supervisorId, ')
          ..write('parentOrderId: $parentOrderId, ')
          ..write('splitIndex: $splitIndex, ')
          ..write('checksum: $checksum, ')
          ..write('masterChecksum: $masterChecksum, ')
          ..write('serverChecksum: $serverChecksum, ')
          ..write('totalCalories: $totalCalories, ')
          ..write('priceIncludeTax: $priceIncludeTax, ')
          ..write('customerId: $customerId, ')
          ..write('customerJson: $customerJson, ')
          ..write('addressId: $addressId, ')
          ..write('addressJson: $addressJson, ')
          ..write('promotionId: $promotionId, ')
          ..write('promotionJson: $promotionJson, ')
          ..write('giftCardJson: $giftCardJson, ')
          ..write('createdOn: $createdOn, ')
          ..write('createdBy: $createdBy, ')
          ..write('lastModifiedOn: $lastModifiedOn, ')
          ..write('lastModifiedBy: $lastModifiedBy')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
        totalPrice,
        discountAmount,
        netTotalPrice,
        chargeAmount,
        taxableAmount,
        taxAmount,
        finalAmount,
        paidAmount,
        dueAmount,
        changeAmount,
        shippingAmount,
        shippingDiscountAmount,
        shippingDiscountPercentage,
        productDiscountAmount,
        discountPercentage,
        totalDiscountAmount,
        promotionDiscountAmount,
        timeEventDiscountAmount,
        timeEventChargeAmount,
        roundingDecimalAmount,
        note,
        orderRef,
        deviceId,
        startDate,
        endTime,
        timeOfReceipt,
        orderType,
        orderSource,
        status,
        deliveryStatus,
        paymentStatus,
        refundStatus,
        shiftId,
        tillId,
        tableId,
        tableCaption,
        numberVisitor,
        minimumReservationPrice,
        callName,
        callNumber,
        cancelReasonId,
        msgCancel,
        kitchenNote,
        casherNote,
        supervisorId,
        parentOrderId,
        splitIndex,
        checksum,
        masterChecksum,
        serverChecksum,
        totalCalories,
        priceIncludeTax,
        customerId,
        customerJson,
        addressId,
        addressJson,
        promotionId,
        promotionJson,
        giftCardJson,
        createdOn,
        createdBy,
        lastModifiedOn,
        lastModifiedBy
      ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is OrderEntityV2Data &&
          other.totalPrice == this.totalPrice &&
          other.discountAmount == this.discountAmount &&
          other.netTotalPrice == this.netTotalPrice &&
          other.chargeAmount == this.chargeAmount &&
          other.taxableAmount == this.taxableAmount &&
          other.taxAmount == this.taxAmount &&
          other.finalAmount == this.finalAmount &&
          other.paidAmount == this.paidAmount &&
          other.dueAmount == this.dueAmount &&
          other.changeAmount == this.changeAmount &&
          other.shippingAmount == this.shippingAmount &&
          other.shippingDiscountAmount == this.shippingDiscountAmount &&
          other.shippingDiscountPercentage == this.shippingDiscountPercentage &&
          other.productDiscountAmount == this.productDiscountAmount &&
          other.discountPercentage == this.discountPercentage &&
          other.totalDiscountAmount == this.totalDiscountAmount &&
          other.promotionDiscountAmount == this.promotionDiscountAmount &&
          other.timeEventDiscountAmount == this.timeEventDiscountAmount &&
          other.timeEventChargeAmount == this.timeEventChargeAmount &&
          other.roundingDecimalAmount == this.roundingDecimalAmount &&
          other.note == this.note &&
          other.orderRef == this.orderRef &&
          other.deviceId == this.deviceId &&
          other.startDate == this.startDate &&
          other.endTime == this.endTime &&
          other.timeOfReceipt == this.timeOfReceipt &&
          other.orderType == this.orderType &&
          other.orderSource == this.orderSource &&
          other.status == this.status &&
          other.deliveryStatus == this.deliveryStatus &&
          other.paymentStatus == this.paymentStatus &&
          other.refundStatus == this.refundStatus &&
          other.shiftId == this.shiftId &&
          other.tillId == this.tillId &&
          other.tableId == this.tableId &&
          other.tableCaption == this.tableCaption &&
          other.numberVisitor == this.numberVisitor &&
          other.minimumReservationPrice == this.minimumReservationPrice &&
          other.callName == this.callName &&
          other.callNumber == this.callNumber &&
          other.cancelReasonId == this.cancelReasonId &&
          other.msgCancel == this.msgCancel &&
          other.kitchenNote == this.kitchenNote &&
          other.casherNote == this.casherNote &&
          other.supervisorId == this.supervisorId &&
          other.parentOrderId == this.parentOrderId &&
          other.splitIndex == this.splitIndex &&
          other.checksum == this.checksum &&
          other.masterChecksum == this.masterChecksum &&
          other.serverChecksum == this.serverChecksum &&
          other.totalCalories == this.totalCalories &&
          other.priceIncludeTax == this.priceIncludeTax &&
          other.customerId == this.customerId &&
          other.customerJson == this.customerJson &&
          other.addressId == this.addressId &&
          other.addressJson == this.addressJson &&
          other.promotionId == this.promotionId &&
          other.promotionJson == this.promotionJson &&
          other.giftCardJson == this.giftCardJson &&
          other.createdOn == this.createdOn &&
          other.createdBy == this.createdBy &&
          other.lastModifiedOn == this.lastModifiedOn &&
          other.lastModifiedBy == this.lastModifiedBy);
}

class OrderEntityV2Companion extends UpdateCompanion<OrderEntityV2Data> {
  final Value<double> totalPrice;
  final Value<double?> discountAmount;
  final Value<double> netTotalPrice;
  final Value<double?> chargeAmount;
  final Value<double?> taxableAmount;
  final Value<double?> taxAmount;
  final Value<double> finalAmount;
  final Value<double?> paidAmount;
  final Value<double?> dueAmount;
  final Value<double?> changeAmount;
  final Value<double?> shippingAmount;
  final Value<double?> shippingDiscountAmount;
  final Value<double?> shippingDiscountPercentage;
  final Value<double?> productDiscountAmount;
  final Value<double?> discountPercentage;
  final Value<double?> totalDiscountAmount;
  final Value<double?> promotionDiscountAmount;
  final Value<double?> timeEventDiscountAmount;
  final Value<double?> timeEventChargeAmount;
  final Value<double?> roundingDecimalAmount;
  final Value<String?> note;
  final Value<String?> orderRef;
  final Value<String?> deviceId;
  final Value<DateTime?> startDate;
  final Value<DateTime?> endTime;
  final Value<DateTime?> timeOfReceipt;
  final Value<int?> orderType;
  final Value<int?> orderSource;
  final Value<int?> status;
  final Value<int?> deliveryStatus;
  final Value<int?> paymentStatus;
  final Value<int?> refundStatus;
  final Value<String?> shiftId;
  final Value<String?> tillId;
  final Value<String?> tableId;
  final Value<String?> tableCaption;
  final Value<int?> numberVisitor;
  final Value<double?> minimumReservationPrice;
  final Value<String?> callName;
  final Value<String?> callNumber;
  final Value<String?> cancelReasonId;
  final Value<String?> msgCancel;
  final Value<String?> kitchenNote;
  final Value<String?> casherNote;
  final Value<String?> supervisorId;
  final Value<String?> parentOrderId;
  final Value<int?> splitIndex;
  final Value<String?> checksum;
  final Value<String?> masterChecksum;
  final Value<String?> serverChecksum;
  final Value<double?> totalCalories;
  final Value<bool?> priceIncludeTax;
  final Value<String?> customerId;
  final Value<dynamic> customerJson;
  final Value<String?> addressId;
  final Value<dynamic> addressJson;
  final Value<String?> promotionId;
  final Value<dynamic> promotionJson;
  final Value<dynamic> giftCardJson;
  final Value<String?> createdOn;
  final Value<String?> createdBy;
  final Value<String?> lastModifiedOn;
  final Value<String?> lastModifiedBy;
  final Value<int> rowid;
  const OrderEntityV2Companion({
    this.totalPrice = const Value.absent(),
    this.discountAmount = const Value.absent(),
    this.netTotalPrice = const Value.absent(),
    this.chargeAmount = const Value.absent(),
    this.taxableAmount = const Value.absent(),
    this.taxAmount = const Value.absent(),
    this.finalAmount = const Value.absent(),
    this.paidAmount = const Value.absent(),
    this.dueAmount = const Value.absent(),
    this.changeAmount = const Value.absent(),
    this.shippingAmount = const Value.absent(),
    this.shippingDiscountAmount = const Value.absent(),
    this.shippingDiscountPercentage = const Value.absent(),
    this.productDiscountAmount = const Value.absent(),
    this.discountPercentage = const Value.absent(),
    this.totalDiscountAmount = const Value.absent(),
    this.promotionDiscountAmount = const Value.absent(),
    this.timeEventDiscountAmount = const Value.absent(),
    this.timeEventChargeAmount = const Value.absent(),
    this.roundingDecimalAmount = const Value.absent(),
    this.note = const Value.absent(),
    this.orderRef = const Value.absent(),
    this.deviceId = const Value.absent(),
    this.startDate = const Value.absent(),
    this.endTime = const Value.absent(),
    this.timeOfReceipt = const Value.absent(),
    this.orderType = const Value.absent(),
    this.orderSource = const Value.absent(),
    this.status = const Value.absent(),
    this.deliveryStatus = const Value.absent(),
    this.paymentStatus = const Value.absent(),
    this.refundStatus = const Value.absent(),
    this.shiftId = const Value.absent(),
    this.tillId = const Value.absent(),
    this.tableId = const Value.absent(),
    this.tableCaption = const Value.absent(),
    this.numberVisitor = const Value.absent(),
    this.minimumReservationPrice = const Value.absent(),
    this.callName = const Value.absent(),
    this.callNumber = const Value.absent(),
    this.cancelReasonId = const Value.absent(),
    this.msgCancel = const Value.absent(),
    this.kitchenNote = const Value.absent(),
    this.casherNote = const Value.absent(),
    this.supervisorId = const Value.absent(),
    this.parentOrderId = const Value.absent(),
    this.splitIndex = const Value.absent(),
    this.checksum = const Value.absent(),
    this.masterChecksum = const Value.absent(),
    this.serverChecksum = const Value.absent(),
    this.totalCalories = const Value.absent(),
    this.priceIncludeTax = const Value.absent(),
    this.customerId = const Value.absent(),
    this.customerJson = const Value.absent(),
    this.addressId = const Value.absent(),
    this.addressJson = const Value.absent(),
    this.promotionId = const Value.absent(),
    this.promotionJson = const Value.absent(),
    this.giftCardJson = const Value.absent(),
    this.createdOn = const Value.absent(),
    this.createdBy = const Value.absent(),
    this.lastModifiedOn = const Value.absent(),
    this.lastModifiedBy = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  OrderEntityV2Companion.insert({
    required double totalPrice,
    this.discountAmount = const Value.absent(),
    required double netTotalPrice,
    this.chargeAmount = const Value.absent(),
    this.taxableAmount = const Value.absent(),
    this.taxAmount = const Value.absent(),
    required double finalAmount,
    this.paidAmount = const Value.absent(),
    this.dueAmount = const Value.absent(),
    this.changeAmount = const Value.absent(),
    this.shippingAmount = const Value.absent(),
    this.shippingDiscountAmount = const Value.absent(),
    this.shippingDiscountPercentage = const Value.absent(),
    this.productDiscountAmount = const Value.absent(),
    this.discountPercentage = const Value.absent(),
    this.totalDiscountAmount = const Value.absent(),
    this.promotionDiscountAmount = const Value.absent(),
    this.timeEventDiscountAmount = const Value.absent(),
    this.timeEventChargeAmount = const Value.absent(),
    this.roundingDecimalAmount = const Value.absent(),
    this.note = const Value.absent(),
    this.orderRef = const Value.absent(),
    this.deviceId = const Value.absent(),
    this.startDate = const Value.absent(),
    this.endTime = const Value.absent(),
    this.timeOfReceipt = const Value.absent(),
    this.orderType = const Value.absent(),
    this.orderSource = const Value.absent(),
    this.status = const Value.absent(),
    this.deliveryStatus = const Value.absent(),
    this.paymentStatus = const Value.absent(),
    this.refundStatus = const Value.absent(),
    this.shiftId = const Value.absent(),
    this.tillId = const Value.absent(),
    this.tableId = const Value.absent(),
    this.tableCaption = const Value.absent(),
    this.numberVisitor = const Value.absent(),
    this.minimumReservationPrice = const Value.absent(),
    this.callName = const Value.absent(),
    this.callNumber = const Value.absent(),
    this.cancelReasonId = const Value.absent(),
    this.msgCancel = const Value.absent(),
    this.kitchenNote = const Value.absent(),
    this.casherNote = const Value.absent(),
    this.supervisorId = const Value.absent(),
    this.parentOrderId = const Value.absent(),
    this.splitIndex = const Value.absent(),
    this.checksum = const Value.absent(),
    this.masterChecksum = const Value.absent(),
    this.serverChecksum = const Value.absent(),
    this.totalCalories = const Value.absent(),
    this.priceIncludeTax = const Value.absent(),
    this.customerId = const Value.absent(),
    this.customerJson = const Value.absent(),
    this.addressId = const Value.absent(),
    this.addressJson = const Value.absent(),
    this.promotionId = const Value.absent(),
    this.promotionJson = const Value.absent(),
    this.giftCardJson = const Value.absent(),
    this.createdOn = const Value.absent(),
    this.createdBy = const Value.absent(),
    this.lastModifiedOn = const Value.absent(),
    this.lastModifiedBy = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : totalPrice = Value(totalPrice),
        netTotalPrice = Value(netTotalPrice),
        finalAmount = Value(finalAmount);
  static Insertable<OrderEntityV2Data> custom({
    Expression<double>? totalPrice,
    Expression<double>? discountAmount,
    Expression<double>? netTotalPrice,
    Expression<double>? chargeAmount,
    Expression<double>? taxableAmount,
    Expression<double>? taxAmount,
    Expression<double>? finalAmount,
    Expression<double>? paidAmount,
    Expression<double>? dueAmount,
    Expression<double>? changeAmount,
    Expression<double>? shippingAmount,
    Expression<double>? shippingDiscountAmount,
    Expression<double>? shippingDiscountPercentage,
    Expression<double>? productDiscountAmount,
    Expression<double>? discountPercentage,
    Expression<double>? totalDiscountAmount,
    Expression<double>? promotionDiscountAmount,
    Expression<double>? timeEventDiscountAmount,
    Expression<double>? timeEventChargeAmount,
    Expression<double>? roundingDecimalAmount,
    Expression<String>? note,
    Expression<String>? orderRef,
    Expression<String>? deviceId,
    Expression<DateTime>? startDate,
    Expression<DateTime>? endTime,
    Expression<DateTime>? timeOfReceipt,
    Expression<int>? orderType,
    Expression<int>? orderSource,
    Expression<int>? status,
    Expression<int>? deliveryStatus,
    Expression<int>? paymentStatus,
    Expression<int>? refundStatus,
    Expression<String>? shiftId,
    Expression<String>? tillId,
    Expression<String>? tableId,
    Expression<String>? tableCaption,
    Expression<int>? numberVisitor,
    Expression<double>? minimumReservationPrice,
    Expression<String>? callName,
    Expression<String>? callNumber,
    Expression<String>? cancelReasonId,
    Expression<String>? msgCancel,
    Expression<String>? kitchenNote,
    Expression<String>? casherNote,
    Expression<String>? supervisorId,
    Expression<String>? parentOrderId,
    Expression<int>? splitIndex,
    Expression<String>? checksum,
    Expression<String>? masterChecksum,
    Expression<String>? serverChecksum,
    Expression<double>? totalCalories,
    Expression<bool>? priceIncludeTax,
    Expression<String>? customerId,
    Expression<String>? customerJson,
    Expression<String>? addressId,
    Expression<String>? addressJson,
    Expression<String>? promotionId,
    Expression<String>? promotionJson,
    Expression<String>? giftCardJson,
    Expression<String>? createdOn,
    Expression<String>? createdBy,
    Expression<String>? lastModifiedOn,
    Expression<String>? lastModifiedBy,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (totalPrice != null) 'total_price': totalPrice,
      if (discountAmount != null) 'discount_amount': discountAmount,
      if (netTotalPrice != null) 'net_total_price': netTotalPrice,
      if (chargeAmount != null) 'charge_amount': chargeAmount,
      if (taxableAmount != null) 'taxable_amount': taxableAmount,
      if (taxAmount != null) 'tax_amount': taxAmount,
      if (finalAmount != null) 'final_amount': finalAmount,
      if (paidAmount != null) 'paid_amount': paidAmount,
      if (dueAmount != null) 'due_amount': dueAmount,
      if (changeAmount != null) 'change_amount': changeAmount,
      if (shippingAmount != null) 'shipping_amount': shippingAmount,
      if (shippingDiscountAmount != null)
        'shipping_discount_amount': shippingDiscountAmount,
      if (shippingDiscountPercentage != null)
        'shipping_discount_percentage': shippingDiscountPercentage,
      if (productDiscountAmount != null)
        'product_discount_amount': productDiscountAmount,
      if (discountPercentage != null) 'discount_percentage': discountPercentage,
      if (totalDiscountAmount != null)
        'total_discount_amount': totalDiscountAmount,
      if (promotionDiscountAmount != null)
        'promotion_discount_amount': promotionDiscountAmount,
      if (timeEventDiscountAmount != null)
        'time_event_discount_amount': timeEventDiscountAmount,
      if (timeEventChargeAmount != null)
        'time_event_charge_amount': timeEventChargeAmount,
      if (roundingDecimalAmount != null)
        'rounding_decimal_amount': roundingDecimalAmount,
      if (note != null) 'note': note,
      if (orderRef != null) 'order_ref': orderRef,
      if (deviceId != null) 'device_id': deviceId,
      if (startDate != null) 'start_date': startDate,
      if (endTime != null) 'end_time': endTime,
      if (timeOfReceipt != null) 'time_of_receipt': timeOfReceipt,
      if (orderType != null) 'order_type': orderType,
      if (orderSource != null) 'order_source': orderSource,
      if (status != null) 'status': status,
      if (deliveryStatus != null) 'delivery_status': deliveryStatus,
      if (paymentStatus != null) 'payment_status': paymentStatus,
      if (refundStatus != null) 'refund_status': refundStatus,
      if (shiftId != null) 'shift_id': shiftId,
      if (tillId != null) 'till_id': tillId,
      if (tableId != null) 'table_id': tableId,
      if (tableCaption != null) 'table_caption': tableCaption,
      if (numberVisitor != null) 'number_visitor': numberVisitor,
      if (minimumReservationPrice != null)
        'minimum_reservation_price': minimumReservationPrice,
      if (callName != null) 'call_name': callName,
      if (callNumber != null) 'call_number': callNumber,
      if (cancelReasonId != null) 'cancel_reason_id': cancelReasonId,
      if (msgCancel != null) 'msg_cancel': msgCancel,
      if (kitchenNote != null) 'kitchen_note': kitchenNote,
      if (casherNote != null) 'casher_note': casherNote,
      if (supervisorId != null) 'supervisor_id': supervisorId,
      if (parentOrderId != null) 'parent_order_id': parentOrderId,
      if (splitIndex != null) 'split_index': splitIndex,
      if (checksum != null) 'checksum': checksum,
      if (masterChecksum != null) 'master_checksum': masterChecksum,
      if (serverChecksum != null) 'server_checksum': serverChecksum,
      if (totalCalories != null) 'total_calories': totalCalories,
      if (priceIncludeTax != null) 'price_include_tax': priceIncludeTax,
      if (customerId != null) 'customer_id': customerId,
      if (customerJson != null) 'customer_json': customerJson,
      if (addressId != null) 'address_id': addressId,
      if (addressJson != null) 'address_json': addressJson,
      if (promotionId != null) 'promotion_id': promotionId,
      if (promotionJson != null) 'promotion_json': promotionJson,
      if (giftCardJson != null) 'gift_card_json': giftCardJson,
      if (createdOn != null) 'created_on': createdOn,
      if (createdBy != null) 'created_by': createdBy,
      if (lastModifiedOn != null) 'last_modified_on': lastModifiedOn,
      if (lastModifiedBy != null) 'last_modified_by': lastModifiedBy,
      if (rowid != null) 'rowid': rowid,
    });
  }

  OrderEntityV2Companion copyWith(
      {Value<double>? totalPrice,
      Value<double?>? discountAmount,
      Value<double>? netTotalPrice,
      Value<double?>? chargeAmount,
      Value<double?>? taxableAmount,
      Value<double?>? taxAmount,
      Value<double>? finalAmount,
      Value<double?>? paidAmount,
      Value<double?>? dueAmount,
      Value<double?>? changeAmount,
      Value<double?>? shippingAmount,
      Value<double?>? shippingDiscountAmount,
      Value<double?>? shippingDiscountPercentage,
      Value<double?>? productDiscountAmount,
      Value<double?>? discountPercentage,
      Value<double?>? totalDiscountAmount,
      Value<double?>? promotionDiscountAmount,
      Value<double?>? timeEventDiscountAmount,
      Value<double?>? timeEventChargeAmount,
      Value<double?>? roundingDecimalAmount,
      Value<String?>? note,
      Value<String?>? orderRef,
      Value<String?>? deviceId,
      Value<DateTime?>? startDate,
      Value<DateTime?>? endTime,
      Value<DateTime?>? timeOfReceipt,
      Value<int?>? orderType,
      Value<int?>? orderSource,
      Value<int?>? status,
      Value<int?>? deliveryStatus,
      Value<int?>? paymentStatus,
      Value<int?>? refundStatus,
      Value<String?>? shiftId,
      Value<String?>? tillId,
      Value<String?>? tableId,
      Value<String?>? tableCaption,
      Value<int?>? numberVisitor,
      Value<double?>? minimumReservationPrice,
      Value<String?>? callName,
      Value<String?>? callNumber,
      Value<String?>? cancelReasonId,
      Value<String?>? msgCancel,
      Value<String?>? kitchenNote,
      Value<String?>? casherNote,
      Value<String?>? supervisorId,
      Value<String?>? parentOrderId,
      Value<int?>? splitIndex,
      Value<String?>? checksum,
      Value<String?>? masterChecksum,
      Value<String?>? serverChecksum,
      Value<double?>? totalCalories,
      Value<bool?>? priceIncludeTax,
      Value<String?>? customerId,
      Value<dynamic>? customerJson,
      Value<String?>? addressId,
      Value<dynamic>? addressJson,
      Value<String?>? promotionId,
      Value<dynamic>? promotionJson,
      Value<dynamic>? giftCardJson,
      Value<String?>? createdOn,
      Value<String?>? createdBy,
      Value<String?>? lastModifiedOn,
      Value<String?>? lastModifiedBy,
      Value<int>? rowid}) {
    return OrderEntityV2Companion(
      totalPrice: totalPrice ?? this.totalPrice,
      discountAmount: discountAmount ?? this.discountAmount,
      netTotalPrice: netTotalPrice ?? this.netTotalPrice,
      chargeAmount: chargeAmount ?? this.chargeAmount,
      taxableAmount: taxableAmount ?? this.taxableAmount,
      taxAmount: taxAmount ?? this.taxAmount,
      finalAmount: finalAmount ?? this.finalAmount,
      paidAmount: paidAmount ?? this.paidAmount,
      dueAmount: dueAmount ?? this.dueAmount,
      changeAmount: changeAmount ?? this.changeAmount,
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
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (totalPrice.present) {
      map['total_price'] = Variable<double>(totalPrice.value);
    }
    if (discountAmount.present) {
      map['discount_amount'] = Variable<double>(discountAmount.value);
    }
    if (netTotalPrice.present) {
      map['net_total_price'] = Variable<double>(netTotalPrice.value);
    }
    if (chargeAmount.present) {
      map['charge_amount'] = Variable<double>(chargeAmount.value);
    }
    if (taxableAmount.present) {
      map['taxable_amount'] = Variable<double>(taxableAmount.value);
    }
    if (taxAmount.present) {
      map['tax_amount'] = Variable<double>(taxAmount.value);
    }
    if (finalAmount.present) {
      map['final_amount'] = Variable<double>(finalAmount.value);
    }
    if (paidAmount.present) {
      map['paid_amount'] = Variable<double>(paidAmount.value);
    }
    if (dueAmount.present) {
      map['due_amount'] = Variable<double>(dueAmount.value);
    }
    if (changeAmount.present) {
      map['change_amount'] = Variable<double>(changeAmount.value);
    }
    if (shippingAmount.present) {
      map['shipping_amount'] = Variable<double>(shippingAmount.value);
    }
    if (shippingDiscountAmount.present) {
      map['shipping_discount_amount'] =
          Variable<double>(shippingDiscountAmount.value);
    }
    if (shippingDiscountPercentage.present) {
      map['shipping_discount_percentage'] =
          Variable<double>(shippingDiscountPercentage.value);
    }
    if (productDiscountAmount.present) {
      map['product_discount_amount'] =
          Variable<double>(productDiscountAmount.value);
    }
    if (discountPercentage.present) {
      map['discount_percentage'] = Variable<double>(discountPercentage.value);
    }
    if (totalDiscountAmount.present) {
      map['total_discount_amount'] =
          Variable<double>(totalDiscountAmount.value);
    }
    if (promotionDiscountAmount.present) {
      map['promotion_discount_amount'] =
          Variable<double>(promotionDiscountAmount.value);
    }
    if (timeEventDiscountAmount.present) {
      map['time_event_discount_amount'] =
          Variable<double>(timeEventDiscountAmount.value);
    }
    if (timeEventChargeAmount.present) {
      map['time_event_charge_amount'] =
          Variable<double>(timeEventChargeAmount.value);
    }
    if (roundingDecimalAmount.present) {
      map['rounding_decimal_amount'] =
          Variable<double>(roundingDecimalAmount.value);
    }
    if (note.present) {
      map['note'] = Variable<String>(note.value);
    }
    if (orderRef.present) {
      map['order_ref'] = Variable<String>(orderRef.value);
    }
    if (deviceId.present) {
      map['device_id'] = Variable<String>(deviceId.value);
    }
    if (startDate.present) {
      map['start_date'] = Variable<DateTime>(startDate.value);
    }
    if (endTime.present) {
      map['end_time'] = Variable<DateTime>(endTime.value);
    }
    if (timeOfReceipt.present) {
      map['time_of_receipt'] = Variable<DateTime>(timeOfReceipt.value);
    }
    if (orderType.present) {
      map['order_type'] = Variable<int>(orderType.value);
    }
    if (orderSource.present) {
      map['order_source'] = Variable<int>(orderSource.value);
    }
    if (status.present) {
      map['status'] = Variable<int>(status.value);
    }
    if (deliveryStatus.present) {
      map['delivery_status'] = Variable<int>(deliveryStatus.value);
    }
    if (paymentStatus.present) {
      map['payment_status'] = Variable<int>(paymentStatus.value);
    }
    if (refundStatus.present) {
      map['refund_status'] = Variable<int>(refundStatus.value);
    }
    if (shiftId.present) {
      map['shift_id'] = Variable<String>(shiftId.value);
    }
    if (tillId.present) {
      map['till_id'] = Variable<String>(tillId.value);
    }
    if (tableId.present) {
      map['table_id'] = Variable<String>(tableId.value);
    }
    if (tableCaption.present) {
      map['table_caption'] = Variable<String>(tableCaption.value);
    }
    if (numberVisitor.present) {
      map['number_visitor'] = Variable<int>(numberVisitor.value);
    }
    if (minimumReservationPrice.present) {
      map['minimum_reservation_price'] =
          Variable<double>(minimumReservationPrice.value);
    }
    if (callName.present) {
      map['call_name'] = Variable<String>(callName.value);
    }
    if (callNumber.present) {
      map['call_number'] = Variable<String>(callNumber.value);
    }
    if (cancelReasonId.present) {
      map['cancel_reason_id'] = Variable<String>(cancelReasonId.value);
    }
    if (msgCancel.present) {
      map['msg_cancel'] = Variable<String>(msgCancel.value);
    }
    if (kitchenNote.present) {
      map['kitchen_note'] = Variable<String>(kitchenNote.value);
    }
    if (casherNote.present) {
      map['casher_note'] = Variable<String>(casherNote.value);
    }
    if (supervisorId.present) {
      map['supervisor_id'] = Variable<String>(supervisorId.value);
    }
    if (parentOrderId.present) {
      map['parent_order_id'] = Variable<String>(parentOrderId.value);
    }
    if (splitIndex.present) {
      map['split_index'] = Variable<int>(splitIndex.value);
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
    if (totalCalories.present) {
      map['total_calories'] = Variable<double>(totalCalories.value);
    }
    if (priceIncludeTax.present) {
      map['price_include_tax'] = Variable<bool>(priceIncludeTax.value);
    }
    if (customerId.present) {
      map['customer_id'] = Variable<String>(customerId.value);
    }
    if (customerJson.present) {
      map['customer_json'] = Variable<String>(
          $OrderEntityV2Table.$convertercustomerJson.toSql(customerJson.value));
    }
    if (addressId.present) {
      map['address_id'] = Variable<String>(addressId.value);
    }
    if (addressJson.present) {
      map['address_json'] = Variable<String>(
          $OrderEntityV2Table.$converteraddressJson.toSql(addressJson.value));
    }
    if (promotionId.present) {
      map['promotion_id'] = Variable<String>(promotionId.value);
    }
    if (promotionJson.present) {
      map['promotion_json'] = Variable<String>($OrderEntityV2Table
          .$converterpromotionJson
          .toSql(promotionJson.value));
    }
    if (giftCardJson.present) {
      map['gift_card_json'] = Variable<String>(
          $OrderEntityV2Table.$convertergiftCardJson.toSql(giftCardJson.value));
    }
    if (createdOn.present) {
      map['created_on'] = Variable<String>(createdOn.value);
    }
    if (createdBy.present) {
      map['created_by'] = Variable<String>(createdBy.value);
    }
    if (lastModifiedOn.present) {
      map['last_modified_on'] = Variable<String>(lastModifiedOn.value);
    }
    if (lastModifiedBy.present) {
      map['last_modified_by'] = Variable<String>(lastModifiedBy.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('OrderEntityV2Companion(')
          ..write('totalPrice: $totalPrice, ')
          ..write('discountAmount: $discountAmount, ')
          ..write('netTotalPrice: $netTotalPrice, ')
          ..write('chargeAmount: $chargeAmount, ')
          ..write('taxableAmount: $taxableAmount, ')
          ..write('taxAmount: $taxAmount, ')
          ..write('finalAmount: $finalAmount, ')
          ..write('paidAmount: $paidAmount, ')
          ..write('dueAmount: $dueAmount, ')
          ..write('changeAmount: $changeAmount, ')
          ..write('shippingAmount: $shippingAmount, ')
          ..write('shippingDiscountAmount: $shippingDiscountAmount, ')
          ..write('shippingDiscountPercentage: $shippingDiscountPercentage, ')
          ..write('productDiscountAmount: $productDiscountAmount, ')
          ..write('discountPercentage: $discountPercentage, ')
          ..write('totalDiscountAmount: $totalDiscountAmount, ')
          ..write('promotionDiscountAmount: $promotionDiscountAmount, ')
          ..write('timeEventDiscountAmount: $timeEventDiscountAmount, ')
          ..write('timeEventChargeAmount: $timeEventChargeAmount, ')
          ..write('roundingDecimalAmount: $roundingDecimalAmount, ')
          ..write('note: $note, ')
          ..write('orderRef: $orderRef, ')
          ..write('deviceId: $deviceId, ')
          ..write('startDate: $startDate, ')
          ..write('endTime: $endTime, ')
          ..write('timeOfReceipt: $timeOfReceipt, ')
          ..write('orderType: $orderType, ')
          ..write('orderSource: $orderSource, ')
          ..write('status: $status, ')
          ..write('deliveryStatus: $deliveryStatus, ')
          ..write('paymentStatus: $paymentStatus, ')
          ..write('refundStatus: $refundStatus, ')
          ..write('shiftId: $shiftId, ')
          ..write('tillId: $tillId, ')
          ..write('tableId: $tableId, ')
          ..write('tableCaption: $tableCaption, ')
          ..write('numberVisitor: $numberVisitor, ')
          ..write('minimumReservationPrice: $minimumReservationPrice, ')
          ..write('callName: $callName, ')
          ..write('callNumber: $callNumber, ')
          ..write('cancelReasonId: $cancelReasonId, ')
          ..write('msgCancel: $msgCancel, ')
          ..write('kitchenNote: $kitchenNote, ')
          ..write('casherNote: $casherNote, ')
          ..write('supervisorId: $supervisorId, ')
          ..write('parentOrderId: $parentOrderId, ')
          ..write('splitIndex: $splitIndex, ')
          ..write('checksum: $checksum, ')
          ..write('masterChecksum: $masterChecksum, ')
          ..write('serverChecksum: $serverChecksum, ')
          ..write('totalCalories: $totalCalories, ')
          ..write('priceIncludeTax: $priceIncludeTax, ')
          ..write('customerId: $customerId, ')
          ..write('customerJson: $customerJson, ')
          ..write('addressId: $addressId, ')
          ..write('addressJson: $addressJson, ')
          ..write('promotionId: $promotionId, ')
          ..write('promotionJson: $promotionJson, ')
          ..write('giftCardJson: $giftCardJson, ')
          ..write('createdOn: $createdOn, ')
          ..write('createdBy: $createdBy, ')
          ..write('lastModifiedOn: $lastModifiedOn, ')
          ..write('lastModifiedBy: $lastModifiedBy, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $OrderProductEntityV2Table extends OrderProductEntityV2
    with TableInfo<$OrderProductEntityV2Table, OrderProductEntityV2Data> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $OrderProductEntityV2Table(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _orderRefMeta =
      const VerificationMeta('orderRef');
  @override
  late final GeneratedColumn<String> orderRef = GeneratedColumn<String>(
      'order_ref', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES order_entity_v2 (order_ref) ON DELETE CASCADE'));
  static const VerificationMeta _productRefMeta =
      const VerificationMeta('productRef');
  @override
  late final GeneratedColumn<String> productRef = GeneratedColumn<String>(
      'product_ref', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _tableRowIndexMeta =
      const VerificationMeta('tableRowIndex');
  @override
  late final GeneratedColumn<int> tableRowIndex = GeneratedColumn<int>(
      'table_row_index', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
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
  static const VerificationMeta _quantityMeta =
      const VerificationMeta('quantity');
  @override
  late final GeneratedColumn<double> quantity = GeneratedColumn<double>(
      'quantity', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _freeQuantityMeta =
      const VerificationMeta('freeQuantity');
  @override
  late final GeneratedColumn<double> freeQuantity = GeneratedColumn<double>(
      'free_quantity', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _unitPriceMeta =
      const VerificationMeta('unitPrice');
  @override
  late final GeneratedColumn<double> unitPrice = GeneratedColumn<double>(
      'unit_price', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _totalPriceMeta =
      const VerificationMeta('totalPrice');
  @override
  late final GeneratedColumn<double> totalPrice = GeneratedColumn<double>(
      'total_price', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _discountAmountMeta =
      const VerificationMeta('discountAmount');
  @override
  late final GeneratedColumn<double> discountAmount = GeneratedColumn<double>(
      'discount_amount', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _discountPercentageMeta =
      const VerificationMeta('discountPercentage');
  @override
  late final GeneratedColumn<double> discountPercentage =
      GeneratedColumn<double>('discount_percentage', aliasedName, true,
          type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _netUnitPriceMeta =
      const VerificationMeta('netUnitPrice');
  @override
  late final GeneratedColumn<double> netUnitPrice = GeneratedColumn<double>(
      'net_unit_price', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _netTotalPriceMeta =
      const VerificationMeta('netTotalPrice');
  @override
  late final GeneratedColumn<double> netTotalPrice = GeneratedColumn<double>(
      'net_total_price', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _netUnitPriceExcludeTaxMeta =
      const VerificationMeta('netUnitPriceExcludeTax');
  @override
  late final GeneratedColumn<double> netUnitPriceExcludeTax =
      GeneratedColumn<double>('net_unit_price_exclude_tax', aliasedName, true,
          type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _netTotalPriceExcludeTaxMeta =
      const VerificationMeta('netTotalPriceExcludeTax');
  @override
  late final GeneratedColumn<double> netTotalPriceExcludeTax =
      GeneratedColumn<double>('net_total_price_exclude_tax', aliasedName, true,
          type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _orderDiscountAmountMeta =
      const VerificationMeta('orderDiscountAmount');
  @override
  late final GeneratedColumn<double> orderDiscountAmount =
      GeneratedColumn<double>('order_discount_amount', aliasedName, true,
          type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _taxableAmountMeta =
      const VerificationMeta('taxableAmount');
  @override
  late final GeneratedColumn<double> taxableAmount = GeneratedColumn<double>(
      'taxable_amount', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _taxAmountMeta =
      const VerificationMeta('taxAmount');
  @override
  late final GeneratedColumn<double> taxAmount = GeneratedColumn<double>(
      'tax_amount', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _finalAmountMeta =
      const VerificationMeta('finalAmount');
  @override
  late final GeneratedColumn<double> finalAmount = GeneratedColumn<double>(
      'final_amount', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _roundingDecimalAmountMeta =
      const VerificationMeta('roundingDecimalAmount');
  @override
  late final GeneratedColumn<double> roundingDecimalAmount =
      GeneratedColumn<double>('rounding_decimal_amount', aliasedName, true,
          type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _notesMeta = const VerificationMeta('notes');
  @override
  late final GeneratedColumn<String> notes = GeneratedColumn<String>(
      'notes', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _departmentIdMeta =
      const VerificationMeta('departmentId');
  @override
  late final GeneratedColumn<String> departmentId = GeneratedColumn<String>(
      'department_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _categoryIdMeta =
      const VerificationMeta('categoryId');
  @override
  late final GeneratedColumn<String> categoryId = GeneratedColumn<String>(
      'category_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        orderRef,
        productRef,
        tableRowIndex,
        name,
        productId,
        unitId,
        quantity,
        freeQuantity,
        unitPrice,
        totalPrice,
        discountAmount,
        discountPercentage,
        netUnitPrice,
        netTotalPrice,
        netUnitPriceExcludeTax,
        netTotalPriceExcludeTax,
        orderDiscountAmount,
        taxableAmount,
        taxAmount,
        finalAmount,
        roundingDecimalAmount,
        notes,
        departmentId,
        categoryId
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'order_product_entity_v2';
  @override
  VerificationContext validateIntegrity(
      Insertable<OrderProductEntityV2Data> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('order_ref')) {
      context.handle(_orderRefMeta,
          orderRef.isAcceptableOrUnknown(data['order_ref']!, _orderRefMeta));
    }
    if (data.containsKey('product_ref')) {
      context.handle(
          _productRefMeta,
          productRef.isAcceptableOrUnknown(
              data['product_ref']!, _productRefMeta));
    }
    if (data.containsKey('table_row_index')) {
      context.handle(
          _tableRowIndexMeta,
          tableRowIndex.isAcceptableOrUnknown(
              data['table_row_index']!, _tableRowIndexMeta));
    } else if (isInserting) {
      context.missing(_tableRowIndexMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
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
    if (data.containsKey('quantity')) {
      context.handle(_quantityMeta,
          quantity.isAcceptableOrUnknown(data['quantity']!, _quantityMeta));
    } else if (isInserting) {
      context.missing(_quantityMeta);
    }
    if (data.containsKey('free_quantity')) {
      context.handle(
          _freeQuantityMeta,
          freeQuantity.isAcceptableOrUnknown(
              data['free_quantity']!, _freeQuantityMeta));
    }
    if (data.containsKey('unit_price')) {
      context.handle(_unitPriceMeta,
          unitPrice.isAcceptableOrUnknown(data['unit_price']!, _unitPriceMeta));
    } else if (isInserting) {
      context.missing(_unitPriceMeta);
    }
    if (data.containsKey('total_price')) {
      context.handle(
          _totalPriceMeta,
          totalPrice.isAcceptableOrUnknown(
              data['total_price']!, _totalPriceMeta));
    } else if (isInserting) {
      context.missing(_totalPriceMeta);
    }
    if (data.containsKey('discount_amount')) {
      context.handle(
          _discountAmountMeta,
          discountAmount.isAcceptableOrUnknown(
              data['discount_amount']!, _discountAmountMeta));
    }
    if (data.containsKey('discount_percentage')) {
      context.handle(
          _discountPercentageMeta,
          discountPercentage.isAcceptableOrUnknown(
              data['discount_percentage']!, _discountPercentageMeta));
    }
    if (data.containsKey('net_unit_price')) {
      context.handle(
          _netUnitPriceMeta,
          netUnitPrice.isAcceptableOrUnknown(
              data['net_unit_price']!, _netUnitPriceMeta));
    } else if (isInserting) {
      context.missing(_netUnitPriceMeta);
    }
    if (data.containsKey('net_total_price')) {
      context.handle(
          _netTotalPriceMeta,
          netTotalPrice.isAcceptableOrUnknown(
              data['net_total_price']!, _netTotalPriceMeta));
    } else if (isInserting) {
      context.missing(_netTotalPriceMeta);
    }
    if (data.containsKey('net_unit_price_exclude_tax')) {
      context.handle(
          _netUnitPriceExcludeTaxMeta,
          netUnitPriceExcludeTax.isAcceptableOrUnknown(
              data['net_unit_price_exclude_tax']!,
              _netUnitPriceExcludeTaxMeta));
    }
    if (data.containsKey('net_total_price_exclude_tax')) {
      context.handle(
          _netTotalPriceExcludeTaxMeta,
          netTotalPriceExcludeTax.isAcceptableOrUnknown(
              data['net_total_price_exclude_tax']!,
              _netTotalPriceExcludeTaxMeta));
    }
    if (data.containsKey('order_discount_amount')) {
      context.handle(
          _orderDiscountAmountMeta,
          orderDiscountAmount.isAcceptableOrUnknown(
              data['order_discount_amount']!, _orderDiscountAmountMeta));
    }
    if (data.containsKey('taxable_amount')) {
      context.handle(
          _taxableAmountMeta,
          taxableAmount.isAcceptableOrUnknown(
              data['taxable_amount']!, _taxableAmountMeta));
    }
    if (data.containsKey('tax_amount')) {
      context.handle(_taxAmountMeta,
          taxAmount.isAcceptableOrUnknown(data['tax_amount']!, _taxAmountMeta));
    }
    if (data.containsKey('final_amount')) {
      context.handle(
          _finalAmountMeta,
          finalAmount.isAcceptableOrUnknown(
              data['final_amount']!, _finalAmountMeta));
    } else if (isInserting) {
      context.missing(_finalAmountMeta);
    }
    if (data.containsKey('rounding_decimal_amount')) {
      context.handle(
          _roundingDecimalAmountMeta,
          roundingDecimalAmount.isAcceptableOrUnknown(
              data['rounding_decimal_amount']!, _roundingDecimalAmountMeta));
    }
    if (data.containsKey('notes')) {
      context.handle(
          _notesMeta, notes.isAcceptableOrUnknown(data['notes']!, _notesMeta));
    }
    if (data.containsKey('department_id')) {
      context.handle(
          _departmentIdMeta,
          departmentId.isAcceptableOrUnknown(
              data['department_id']!, _departmentIdMeta));
    }
    if (data.containsKey('category_id')) {
      context.handle(
          _categoryIdMeta,
          categoryId.isAcceptableOrUnknown(
              data['category_id']!, _categoryIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {orderRef, productRef};
  @override
  OrderProductEntityV2Data map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return OrderProductEntityV2Data(
      orderRef: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}order_ref']),
      productRef: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}product_ref']),
      tableRowIndex: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}table_row_index'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      productId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}product_id'])!,
      unitId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}unit_id'])!,
      quantity: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}quantity'])!,
      freeQuantity: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}free_quantity']),
      unitPrice: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}unit_price'])!,
      totalPrice: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}total_price'])!,
      discountAmount: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}discount_amount']),
      discountPercentage: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}discount_percentage']),
      netUnitPrice: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}net_unit_price'])!,
      netTotalPrice: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}net_total_price'])!,
      netUnitPriceExcludeTax: attachedDatabase.typeMapping.read(
          DriftSqlType.double,
          data['${effectivePrefix}net_unit_price_exclude_tax']),
      netTotalPriceExcludeTax: attachedDatabase.typeMapping.read(
          DriftSqlType.double,
          data['${effectivePrefix}net_total_price_exclude_tax']),
      orderDiscountAmount: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}order_discount_amount']),
      taxableAmount: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}taxable_amount']),
      taxAmount: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}tax_amount']),
      finalAmount: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}final_amount'])!,
      roundingDecimalAmount: attachedDatabase.typeMapping.read(
          DriftSqlType.double,
          data['${effectivePrefix}rounding_decimal_amount']),
      notes: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}notes']),
      departmentId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}department_id']),
      categoryId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}category_id']),
    );
  }

  @override
  $OrderProductEntityV2Table createAlias(String alias) {
    return $OrderProductEntityV2Table(attachedDatabase, alias);
  }
}

class OrderProductEntityV2Data extends DataClass
    implements Insertable<OrderProductEntityV2Data> {
  final String? orderRef;
  final String? productRef;
  final int tableRowIndex;
  final String name;
  final String productId;
  final String unitId;
  final double quantity;
  final double? freeQuantity;
  final double unitPrice;
  final double totalPrice;
  final double? discountAmount;
  final double? discountPercentage;
  final double netUnitPrice;
  final double netTotalPrice;
  final double? netUnitPriceExcludeTax;
  final double? netTotalPriceExcludeTax;
  final double? orderDiscountAmount;
  final double? taxableAmount;
  final double? taxAmount;
  final double finalAmount;
  final double? roundingDecimalAmount;
  final String? notes;
  final String? departmentId;
  final String? categoryId;
  const OrderProductEntityV2Data(
      {this.orderRef,
      this.productRef,
      required this.tableRowIndex,
      required this.name,
      required this.productId,
      required this.unitId,
      required this.quantity,
      this.freeQuantity,
      required this.unitPrice,
      required this.totalPrice,
      this.discountAmount,
      this.discountPercentage,
      required this.netUnitPrice,
      required this.netTotalPrice,
      this.netUnitPriceExcludeTax,
      this.netTotalPriceExcludeTax,
      this.orderDiscountAmount,
      this.taxableAmount,
      this.taxAmount,
      required this.finalAmount,
      this.roundingDecimalAmount,
      this.notes,
      this.departmentId,
      this.categoryId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || orderRef != null) {
      map['order_ref'] = Variable<String>(orderRef);
    }
    if (!nullToAbsent || productRef != null) {
      map['product_ref'] = Variable<String>(productRef);
    }
    map['table_row_index'] = Variable<int>(tableRowIndex);
    map['name'] = Variable<String>(name);
    map['product_id'] = Variable<String>(productId);
    map['unit_id'] = Variable<String>(unitId);
    map['quantity'] = Variable<double>(quantity);
    if (!nullToAbsent || freeQuantity != null) {
      map['free_quantity'] = Variable<double>(freeQuantity);
    }
    map['unit_price'] = Variable<double>(unitPrice);
    map['total_price'] = Variable<double>(totalPrice);
    if (!nullToAbsent || discountAmount != null) {
      map['discount_amount'] = Variable<double>(discountAmount);
    }
    if (!nullToAbsent || discountPercentage != null) {
      map['discount_percentage'] = Variable<double>(discountPercentage);
    }
    map['net_unit_price'] = Variable<double>(netUnitPrice);
    map['net_total_price'] = Variable<double>(netTotalPrice);
    if (!nullToAbsent || netUnitPriceExcludeTax != null) {
      map['net_unit_price_exclude_tax'] =
          Variable<double>(netUnitPriceExcludeTax);
    }
    if (!nullToAbsent || netTotalPriceExcludeTax != null) {
      map['net_total_price_exclude_tax'] =
          Variable<double>(netTotalPriceExcludeTax);
    }
    if (!nullToAbsent || orderDiscountAmount != null) {
      map['order_discount_amount'] = Variable<double>(orderDiscountAmount);
    }
    if (!nullToAbsent || taxableAmount != null) {
      map['taxable_amount'] = Variable<double>(taxableAmount);
    }
    if (!nullToAbsent || taxAmount != null) {
      map['tax_amount'] = Variable<double>(taxAmount);
    }
    map['final_amount'] = Variable<double>(finalAmount);
    if (!nullToAbsent || roundingDecimalAmount != null) {
      map['rounding_decimal_amount'] = Variable<double>(roundingDecimalAmount);
    }
    if (!nullToAbsent || notes != null) {
      map['notes'] = Variable<String>(notes);
    }
    if (!nullToAbsent || departmentId != null) {
      map['department_id'] = Variable<String>(departmentId);
    }
    if (!nullToAbsent || categoryId != null) {
      map['category_id'] = Variable<String>(categoryId);
    }
    return map;
  }

  OrderProductEntityV2Companion toCompanion(bool nullToAbsent) {
    return OrderProductEntityV2Companion(
      orderRef: orderRef == null && nullToAbsent
          ? const Value.absent()
          : Value(orderRef),
      productRef: productRef == null && nullToAbsent
          ? const Value.absent()
          : Value(productRef),
      tableRowIndex: Value(tableRowIndex),
      name: Value(name),
      productId: Value(productId),
      unitId: Value(unitId),
      quantity: Value(quantity),
      freeQuantity: freeQuantity == null && nullToAbsent
          ? const Value.absent()
          : Value(freeQuantity),
      unitPrice: Value(unitPrice),
      totalPrice: Value(totalPrice),
      discountAmount: discountAmount == null && nullToAbsent
          ? const Value.absent()
          : Value(discountAmount),
      discountPercentage: discountPercentage == null && nullToAbsent
          ? const Value.absent()
          : Value(discountPercentage),
      netUnitPrice: Value(netUnitPrice),
      netTotalPrice: Value(netTotalPrice),
      netUnitPriceExcludeTax: netUnitPriceExcludeTax == null && nullToAbsent
          ? const Value.absent()
          : Value(netUnitPriceExcludeTax),
      netTotalPriceExcludeTax: netTotalPriceExcludeTax == null && nullToAbsent
          ? const Value.absent()
          : Value(netTotalPriceExcludeTax),
      orderDiscountAmount: orderDiscountAmount == null && nullToAbsent
          ? const Value.absent()
          : Value(orderDiscountAmount),
      taxableAmount: taxableAmount == null && nullToAbsent
          ? const Value.absent()
          : Value(taxableAmount),
      taxAmount: taxAmount == null && nullToAbsent
          ? const Value.absent()
          : Value(taxAmount),
      finalAmount: Value(finalAmount),
      roundingDecimalAmount: roundingDecimalAmount == null && nullToAbsent
          ? const Value.absent()
          : Value(roundingDecimalAmount),
      notes:
          notes == null && nullToAbsent ? const Value.absent() : Value(notes),
      departmentId: departmentId == null && nullToAbsent
          ? const Value.absent()
          : Value(departmentId),
      categoryId: categoryId == null && nullToAbsent
          ? const Value.absent()
          : Value(categoryId),
    );
  }

  factory OrderProductEntityV2Data.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return OrderProductEntityV2Data(
      orderRef: serializer.fromJson<String?>(json['orderRef']),
      productRef: serializer.fromJson<String?>(json['productRef']),
      tableRowIndex: serializer.fromJson<int>(json['tableRowIndex']),
      name: serializer.fromJson<String>(json['name']),
      productId: serializer.fromJson<String>(json['productId']),
      unitId: serializer.fromJson<String>(json['unitId']),
      quantity: serializer.fromJson<double>(json['quantity']),
      freeQuantity: serializer.fromJson<double?>(json['freeQuantity']),
      unitPrice: serializer.fromJson<double>(json['unitPrice']),
      totalPrice: serializer.fromJson<double>(json['totalPrice']),
      discountAmount: serializer.fromJson<double?>(json['discountAmount']),
      discountPercentage:
          serializer.fromJson<double?>(json['discountPercentage']),
      netUnitPrice: serializer.fromJson<double>(json['netUnitPrice']),
      netTotalPrice: serializer.fromJson<double>(json['netTotalPrice']),
      netUnitPriceExcludeTax:
          serializer.fromJson<double?>(json['netUnitPriceExcludeTax']),
      netTotalPriceExcludeTax:
          serializer.fromJson<double?>(json['netTotalPriceExcludeTax']),
      orderDiscountAmount:
          serializer.fromJson<double?>(json['orderDiscountAmount']),
      taxableAmount: serializer.fromJson<double?>(json['taxableAmount']),
      taxAmount: serializer.fromJson<double?>(json['taxAmount']),
      finalAmount: serializer.fromJson<double>(json['finalAmount']),
      roundingDecimalAmount:
          serializer.fromJson<double?>(json['roundingDecimalAmount']),
      notes: serializer.fromJson<String?>(json['notes']),
      departmentId: serializer.fromJson<String?>(json['departmentId']),
      categoryId: serializer.fromJson<String?>(json['categoryId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'orderRef': serializer.toJson<String?>(orderRef),
      'productRef': serializer.toJson<String?>(productRef),
      'tableRowIndex': serializer.toJson<int>(tableRowIndex),
      'name': serializer.toJson<String>(name),
      'productId': serializer.toJson<String>(productId),
      'unitId': serializer.toJson<String>(unitId),
      'quantity': serializer.toJson<double>(quantity),
      'freeQuantity': serializer.toJson<double?>(freeQuantity),
      'unitPrice': serializer.toJson<double>(unitPrice),
      'totalPrice': serializer.toJson<double>(totalPrice),
      'discountAmount': serializer.toJson<double?>(discountAmount),
      'discountPercentage': serializer.toJson<double?>(discountPercentage),
      'netUnitPrice': serializer.toJson<double>(netUnitPrice),
      'netTotalPrice': serializer.toJson<double>(netTotalPrice),
      'netUnitPriceExcludeTax':
          serializer.toJson<double?>(netUnitPriceExcludeTax),
      'netTotalPriceExcludeTax':
          serializer.toJson<double?>(netTotalPriceExcludeTax),
      'orderDiscountAmount': serializer.toJson<double?>(orderDiscountAmount),
      'taxableAmount': serializer.toJson<double?>(taxableAmount),
      'taxAmount': serializer.toJson<double?>(taxAmount),
      'finalAmount': serializer.toJson<double>(finalAmount),
      'roundingDecimalAmount':
          serializer.toJson<double?>(roundingDecimalAmount),
      'notes': serializer.toJson<String?>(notes),
      'departmentId': serializer.toJson<String?>(departmentId),
      'categoryId': serializer.toJson<String?>(categoryId),
    };
  }

  OrderProductEntityV2Data copyWith(
          {Value<String?> orderRef = const Value.absent(),
          Value<String?> productRef = const Value.absent(),
          int? tableRowIndex,
          String? name,
          String? productId,
          String? unitId,
          double? quantity,
          Value<double?> freeQuantity = const Value.absent(),
          double? unitPrice,
          double? totalPrice,
          Value<double?> discountAmount = const Value.absent(),
          Value<double?> discountPercentage = const Value.absent(),
          double? netUnitPrice,
          double? netTotalPrice,
          Value<double?> netUnitPriceExcludeTax = const Value.absent(),
          Value<double?> netTotalPriceExcludeTax = const Value.absent(),
          Value<double?> orderDiscountAmount = const Value.absent(),
          Value<double?> taxableAmount = const Value.absent(),
          Value<double?> taxAmount = const Value.absent(),
          double? finalAmount,
          Value<double?> roundingDecimalAmount = const Value.absent(),
          Value<String?> notes = const Value.absent(),
          Value<String?> departmentId = const Value.absent(),
          Value<String?> categoryId = const Value.absent()}) =>
      OrderProductEntityV2Data(
        orderRef: orderRef.present ? orderRef.value : this.orderRef,
        productRef: productRef.present ? productRef.value : this.productRef,
        tableRowIndex: tableRowIndex ?? this.tableRowIndex,
        name: name ?? this.name,
        productId: productId ?? this.productId,
        unitId: unitId ?? this.unitId,
        quantity: quantity ?? this.quantity,
        freeQuantity:
            freeQuantity.present ? freeQuantity.value : this.freeQuantity,
        unitPrice: unitPrice ?? this.unitPrice,
        totalPrice: totalPrice ?? this.totalPrice,
        discountAmount:
            discountAmount.present ? discountAmount.value : this.discountAmount,
        discountPercentage: discountPercentage.present
            ? discountPercentage.value
            : this.discountPercentage,
        netUnitPrice: netUnitPrice ?? this.netUnitPrice,
        netTotalPrice: netTotalPrice ?? this.netTotalPrice,
        netUnitPriceExcludeTax: netUnitPriceExcludeTax.present
            ? netUnitPriceExcludeTax.value
            : this.netUnitPriceExcludeTax,
        netTotalPriceExcludeTax: netTotalPriceExcludeTax.present
            ? netTotalPriceExcludeTax.value
            : this.netTotalPriceExcludeTax,
        orderDiscountAmount: orderDiscountAmount.present
            ? orderDiscountAmount.value
            : this.orderDiscountAmount,
        taxableAmount:
            taxableAmount.present ? taxableAmount.value : this.taxableAmount,
        taxAmount: taxAmount.present ? taxAmount.value : this.taxAmount,
        finalAmount: finalAmount ?? this.finalAmount,
        roundingDecimalAmount: roundingDecimalAmount.present
            ? roundingDecimalAmount.value
            : this.roundingDecimalAmount,
        notes: notes.present ? notes.value : this.notes,
        departmentId:
            departmentId.present ? departmentId.value : this.departmentId,
        categoryId: categoryId.present ? categoryId.value : this.categoryId,
      );
  @override
  String toString() {
    return (StringBuffer('OrderProductEntityV2Data(')
          ..write('orderRef: $orderRef, ')
          ..write('productRef: $productRef, ')
          ..write('tableRowIndex: $tableRowIndex, ')
          ..write('name: $name, ')
          ..write('productId: $productId, ')
          ..write('unitId: $unitId, ')
          ..write('quantity: $quantity, ')
          ..write('freeQuantity: $freeQuantity, ')
          ..write('unitPrice: $unitPrice, ')
          ..write('totalPrice: $totalPrice, ')
          ..write('discountAmount: $discountAmount, ')
          ..write('discountPercentage: $discountPercentage, ')
          ..write('netUnitPrice: $netUnitPrice, ')
          ..write('netTotalPrice: $netTotalPrice, ')
          ..write('netUnitPriceExcludeTax: $netUnitPriceExcludeTax, ')
          ..write('netTotalPriceExcludeTax: $netTotalPriceExcludeTax, ')
          ..write('orderDiscountAmount: $orderDiscountAmount, ')
          ..write('taxableAmount: $taxableAmount, ')
          ..write('taxAmount: $taxAmount, ')
          ..write('finalAmount: $finalAmount, ')
          ..write('roundingDecimalAmount: $roundingDecimalAmount, ')
          ..write('notes: $notes, ')
          ..write('departmentId: $departmentId, ')
          ..write('categoryId: $categoryId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
        orderRef,
        productRef,
        tableRowIndex,
        name,
        productId,
        unitId,
        quantity,
        freeQuantity,
        unitPrice,
        totalPrice,
        discountAmount,
        discountPercentage,
        netUnitPrice,
        netTotalPrice,
        netUnitPriceExcludeTax,
        netTotalPriceExcludeTax,
        orderDiscountAmount,
        taxableAmount,
        taxAmount,
        finalAmount,
        roundingDecimalAmount,
        notes,
        departmentId,
        categoryId
      ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is OrderProductEntityV2Data &&
          other.orderRef == this.orderRef &&
          other.productRef == this.productRef &&
          other.tableRowIndex == this.tableRowIndex &&
          other.name == this.name &&
          other.productId == this.productId &&
          other.unitId == this.unitId &&
          other.quantity == this.quantity &&
          other.freeQuantity == this.freeQuantity &&
          other.unitPrice == this.unitPrice &&
          other.totalPrice == this.totalPrice &&
          other.discountAmount == this.discountAmount &&
          other.discountPercentage == this.discountPercentage &&
          other.netUnitPrice == this.netUnitPrice &&
          other.netTotalPrice == this.netTotalPrice &&
          other.netUnitPriceExcludeTax == this.netUnitPriceExcludeTax &&
          other.netTotalPriceExcludeTax == this.netTotalPriceExcludeTax &&
          other.orderDiscountAmount == this.orderDiscountAmount &&
          other.taxableAmount == this.taxableAmount &&
          other.taxAmount == this.taxAmount &&
          other.finalAmount == this.finalAmount &&
          other.roundingDecimalAmount == this.roundingDecimalAmount &&
          other.notes == this.notes &&
          other.departmentId == this.departmentId &&
          other.categoryId == this.categoryId);
}

class OrderProductEntityV2Companion
    extends UpdateCompanion<OrderProductEntityV2Data> {
  final Value<String?> orderRef;
  final Value<String?> productRef;
  final Value<int> tableRowIndex;
  final Value<String> name;
  final Value<String> productId;
  final Value<String> unitId;
  final Value<double> quantity;
  final Value<double?> freeQuantity;
  final Value<double> unitPrice;
  final Value<double> totalPrice;
  final Value<double?> discountAmount;
  final Value<double?> discountPercentage;
  final Value<double> netUnitPrice;
  final Value<double> netTotalPrice;
  final Value<double?> netUnitPriceExcludeTax;
  final Value<double?> netTotalPriceExcludeTax;
  final Value<double?> orderDiscountAmount;
  final Value<double?> taxableAmount;
  final Value<double?> taxAmount;
  final Value<double> finalAmount;
  final Value<double?> roundingDecimalAmount;
  final Value<String?> notes;
  final Value<String?> departmentId;
  final Value<String?> categoryId;
  final Value<int> rowid;
  const OrderProductEntityV2Companion({
    this.orderRef = const Value.absent(),
    this.productRef = const Value.absent(),
    this.tableRowIndex = const Value.absent(),
    this.name = const Value.absent(),
    this.productId = const Value.absent(),
    this.unitId = const Value.absent(),
    this.quantity = const Value.absent(),
    this.freeQuantity = const Value.absent(),
    this.unitPrice = const Value.absent(),
    this.totalPrice = const Value.absent(),
    this.discountAmount = const Value.absent(),
    this.discountPercentage = const Value.absent(),
    this.netUnitPrice = const Value.absent(),
    this.netTotalPrice = const Value.absent(),
    this.netUnitPriceExcludeTax = const Value.absent(),
    this.netTotalPriceExcludeTax = const Value.absent(),
    this.orderDiscountAmount = const Value.absent(),
    this.taxableAmount = const Value.absent(),
    this.taxAmount = const Value.absent(),
    this.finalAmount = const Value.absent(),
    this.roundingDecimalAmount = const Value.absent(),
    this.notes = const Value.absent(),
    this.departmentId = const Value.absent(),
    this.categoryId = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  OrderProductEntityV2Companion.insert({
    this.orderRef = const Value.absent(),
    this.productRef = const Value.absent(),
    required int tableRowIndex,
    required String name,
    required String productId,
    required String unitId,
    required double quantity,
    this.freeQuantity = const Value.absent(),
    required double unitPrice,
    required double totalPrice,
    this.discountAmount = const Value.absent(),
    this.discountPercentage = const Value.absent(),
    required double netUnitPrice,
    required double netTotalPrice,
    this.netUnitPriceExcludeTax = const Value.absent(),
    this.netTotalPriceExcludeTax = const Value.absent(),
    this.orderDiscountAmount = const Value.absent(),
    this.taxableAmount = const Value.absent(),
    this.taxAmount = const Value.absent(),
    required double finalAmount,
    this.roundingDecimalAmount = const Value.absent(),
    this.notes = const Value.absent(),
    this.departmentId = const Value.absent(),
    this.categoryId = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : tableRowIndex = Value(tableRowIndex),
        name = Value(name),
        productId = Value(productId),
        unitId = Value(unitId),
        quantity = Value(quantity),
        unitPrice = Value(unitPrice),
        totalPrice = Value(totalPrice),
        netUnitPrice = Value(netUnitPrice),
        netTotalPrice = Value(netTotalPrice),
        finalAmount = Value(finalAmount);
  static Insertable<OrderProductEntityV2Data> custom({
    Expression<String>? orderRef,
    Expression<String>? productRef,
    Expression<int>? tableRowIndex,
    Expression<String>? name,
    Expression<String>? productId,
    Expression<String>? unitId,
    Expression<double>? quantity,
    Expression<double>? freeQuantity,
    Expression<double>? unitPrice,
    Expression<double>? totalPrice,
    Expression<double>? discountAmount,
    Expression<double>? discountPercentage,
    Expression<double>? netUnitPrice,
    Expression<double>? netTotalPrice,
    Expression<double>? netUnitPriceExcludeTax,
    Expression<double>? netTotalPriceExcludeTax,
    Expression<double>? orderDiscountAmount,
    Expression<double>? taxableAmount,
    Expression<double>? taxAmount,
    Expression<double>? finalAmount,
    Expression<double>? roundingDecimalAmount,
    Expression<String>? notes,
    Expression<String>? departmentId,
    Expression<String>? categoryId,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (orderRef != null) 'order_ref': orderRef,
      if (productRef != null) 'product_ref': productRef,
      if (tableRowIndex != null) 'table_row_index': tableRowIndex,
      if (name != null) 'name': name,
      if (productId != null) 'product_id': productId,
      if (unitId != null) 'unit_id': unitId,
      if (quantity != null) 'quantity': quantity,
      if (freeQuantity != null) 'free_quantity': freeQuantity,
      if (unitPrice != null) 'unit_price': unitPrice,
      if (totalPrice != null) 'total_price': totalPrice,
      if (discountAmount != null) 'discount_amount': discountAmount,
      if (discountPercentage != null) 'discount_percentage': discountPercentage,
      if (netUnitPrice != null) 'net_unit_price': netUnitPrice,
      if (netTotalPrice != null) 'net_total_price': netTotalPrice,
      if (netUnitPriceExcludeTax != null)
        'net_unit_price_exclude_tax': netUnitPriceExcludeTax,
      if (netTotalPriceExcludeTax != null)
        'net_total_price_exclude_tax': netTotalPriceExcludeTax,
      if (orderDiscountAmount != null)
        'order_discount_amount': orderDiscountAmount,
      if (taxableAmount != null) 'taxable_amount': taxableAmount,
      if (taxAmount != null) 'tax_amount': taxAmount,
      if (finalAmount != null) 'final_amount': finalAmount,
      if (roundingDecimalAmount != null)
        'rounding_decimal_amount': roundingDecimalAmount,
      if (notes != null) 'notes': notes,
      if (departmentId != null) 'department_id': departmentId,
      if (categoryId != null) 'category_id': categoryId,
      if (rowid != null) 'rowid': rowid,
    });
  }

  OrderProductEntityV2Companion copyWith(
      {Value<String?>? orderRef,
      Value<String?>? productRef,
      Value<int>? tableRowIndex,
      Value<String>? name,
      Value<String>? productId,
      Value<String>? unitId,
      Value<double>? quantity,
      Value<double?>? freeQuantity,
      Value<double>? unitPrice,
      Value<double>? totalPrice,
      Value<double?>? discountAmount,
      Value<double?>? discountPercentage,
      Value<double>? netUnitPrice,
      Value<double>? netTotalPrice,
      Value<double?>? netUnitPriceExcludeTax,
      Value<double?>? netTotalPriceExcludeTax,
      Value<double?>? orderDiscountAmount,
      Value<double?>? taxableAmount,
      Value<double?>? taxAmount,
      Value<double>? finalAmount,
      Value<double?>? roundingDecimalAmount,
      Value<String?>? notes,
      Value<String?>? departmentId,
      Value<String?>? categoryId,
      Value<int>? rowid}) {
    return OrderProductEntityV2Companion(
      orderRef: orderRef ?? this.orderRef,
      productRef: productRef ?? this.productRef,
      tableRowIndex: tableRowIndex ?? this.tableRowIndex,
      name: name ?? this.name,
      productId: productId ?? this.productId,
      unitId: unitId ?? this.unitId,
      quantity: quantity ?? this.quantity,
      freeQuantity: freeQuantity ?? this.freeQuantity,
      unitPrice: unitPrice ?? this.unitPrice,
      totalPrice: totalPrice ?? this.totalPrice,
      discountAmount: discountAmount ?? this.discountAmount,
      discountPercentage: discountPercentage ?? this.discountPercentage,
      netUnitPrice: netUnitPrice ?? this.netUnitPrice,
      netTotalPrice: netTotalPrice ?? this.netTotalPrice,
      netUnitPriceExcludeTax:
          netUnitPriceExcludeTax ?? this.netUnitPriceExcludeTax,
      netTotalPriceExcludeTax:
          netTotalPriceExcludeTax ?? this.netTotalPriceExcludeTax,
      orderDiscountAmount: orderDiscountAmount ?? this.orderDiscountAmount,
      taxableAmount: taxableAmount ?? this.taxableAmount,
      taxAmount: taxAmount ?? this.taxAmount,
      finalAmount: finalAmount ?? this.finalAmount,
      roundingDecimalAmount:
          roundingDecimalAmount ?? this.roundingDecimalAmount,
      notes: notes ?? this.notes,
      departmentId: departmentId ?? this.departmentId,
      categoryId: categoryId ?? this.categoryId,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (orderRef.present) {
      map['order_ref'] = Variable<String>(orderRef.value);
    }
    if (productRef.present) {
      map['product_ref'] = Variable<String>(productRef.value);
    }
    if (tableRowIndex.present) {
      map['table_row_index'] = Variable<int>(tableRowIndex.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (productId.present) {
      map['product_id'] = Variable<String>(productId.value);
    }
    if (unitId.present) {
      map['unit_id'] = Variable<String>(unitId.value);
    }
    if (quantity.present) {
      map['quantity'] = Variable<double>(quantity.value);
    }
    if (freeQuantity.present) {
      map['free_quantity'] = Variable<double>(freeQuantity.value);
    }
    if (unitPrice.present) {
      map['unit_price'] = Variable<double>(unitPrice.value);
    }
    if (totalPrice.present) {
      map['total_price'] = Variable<double>(totalPrice.value);
    }
    if (discountAmount.present) {
      map['discount_amount'] = Variable<double>(discountAmount.value);
    }
    if (discountPercentage.present) {
      map['discount_percentage'] = Variable<double>(discountPercentage.value);
    }
    if (netUnitPrice.present) {
      map['net_unit_price'] = Variable<double>(netUnitPrice.value);
    }
    if (netTotalPrice.present) {
      map['net_total_price'] = Variable<double>(netTotalPrice.value);
    }
    if (netUnitPriceExcludeTax.present) {
      map['net_unit_price_exclude_tax'] =
          Variable<double>(netUnitPriceExcludeTax.value);
    }
    if (netTotalPriceExcludeTax.present) {
      map['net_total_price_exclude_tax'] =
          Variable<double>(netTotalPriceExcludeTax.value);
    }
    if (orderDiscountAmount.present) {
      map['order_discount_amount'] =
          Variable<double>(orderDiscountAmount.value);
    }
    if (taxableAmount.present) {
      map['taxable_amount'] = Variable<double>(taxableAmount.value);
    }
    if (taxAmount.present) {
      map['tax_amount'] = Variable<double>(taxAmount.value);
    }
    if (finalAmount.present) {
      map['final_amount'] = Variable<double>(finalAmount.value);
    }
    if (roundingDecimalAmount.present) {
      map['rounding_decimal_amount'] =
          Variable<double>(roundingDecimalAmount.value);
    }
    if (notes.present) {
      map['notes'] = Variable<String>(notes.value);
    }
    if (departmentId.present) {
      map['department_id'] = Variable<String>(departmentId.value);
    }
    if (categoryId.present) {
      map['category_id'] = Variable<String>(categoryId.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('OrderProductEntityV2Companion(')
          ..write('orderRef: $orderRef, ')
          ..write('productRef: $productRef, ')
          ..write('tableRowIndex: $tableRowIndex, ')
          ..write('name: $name, ')
          ..write('productId: $productId, ')
          ..write('unitId: $unitId, ')
          ..write('quantity: $quantity, ')
          ..write('freeQuantity: $freeQuantity, ')
          ..write('unitPrice: $unitPrice, ')
          ..write('totalPrice: $totalPrice, ')
          ..write('discountAmount: $discountAmount, ')
          ..write('discountPercentage: $discountPercentage, ')
          ..write('netUnitPrice: $netUnitPrice, ')
          ..write('netTotalPrice: $netTotalPrice, ')
          ..write('netUnitPriceExcludeTax: $netUnitPriceExcludeTax, ')
          ..write('netTotalPriceExcludeTax: $netTotalPriceExcludeTax, ')
          ..write('orderDiscountAmount: $orderDiscountAmount, ')
          ..write('taxableAmount: $taxableAmount, ')
          ..write('taxAmount: $taxAmount, ')
          ..write('finalAmount: $finalAmount, ')
          ..write('roundingDecimalAmount: $roundingDecimalAmount, ')
          ..write('notes: $notes, ')
          ..write('departmentId: $departmentId, ')
          ..write('categoryId: $categoryId, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $OrderProductUnitPriceV2Table extends OrderProductUnitPriceV2
    with TableInfo<$OrderProductUnitPriceV2Table, OrderProductUnitPriceV2Data> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $OrderProductUnitPriceV2Table(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _orderRefMeta =
      const VerificationMeta('orderRef');
  @override
  late final GeneratedColumn<String> orderRef = GeneratedColumn<String>(
      'order_ref', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES order_entity_v2 (order_ref) ON DELETE CASCADE'));
  static const VerificationMeta _productRefMeta =
      const VerificationMeta('productRef');
  @override
  late final GeneratedColumn<String> productRef = GeneratedColumn<String>(
      'product_ref', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _unitPriceMeta =
      const VerificationMeta('unitPrice');
  @override
  late final GeneratedColumn<double> unitPrice = GeneratedColumn<double>(
      'unit_price', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _unitIdMeta = const VerificationMeta('unitId');
  @override
  late final GeneratedColumn<String> unitId = GeneratedColumn<String>(
      'unit_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _productUnitIdMeta =
      const VerificationMeta('productUnitId');
  @override
  late final GeneratedColumn<String> productUnitId = GeneratedColumn<String>(
      'product_unit_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _productUnitPriceListIdMeta =
      const VerificationMeta('productUnitPriceListId');
  @override
  late final GeneratedColumn<String> productUnitPriceListId =
      GeneratedColumn<String>('product_unit_price_list_id', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _productUnitPriceListSlapIdMeta =
      const VerificationMeta('productUnitPriceListSlapId');
  @override
  late final GeneratedColumn<String> productUnitPriceListSlapId =
      GeneratedColumn<String>(
          'product_unit_price_list_slap_id', aliasedName, true,
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
  @override
  List<GeneratedColumn> get $columns => [
        orderRef,
        productRef,
        unitPrice,
        description,
        unitId,
        productUnitId,
        productUnitPriceListId,
        productUnitPriceListSlapId,
        name,
        fName
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'order_product_unit_price_v2';
  @override
  VerificationContext validateIntegrity(
      Insertable<OrderProductUnitPriceV2Data> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('order_ref')) {
      context.handle(_orderRefMeta,
          orderRef.isAcceptableOrUnknown(data['order_ref']!, _orderRefMeta));
    }
    if (data.containsKey('product_ref')) {
      context.handle(
          _productRefMeta,
          productRef.isAcceptableOrUnknown(
              data['product_ref']!, _productRefMeta));
    }
    if (data.containsKey('unit_price')) {
      context.handle(_unitPriceMeta,
          unitPrice.isAcceptableOrUnknown(data['unit_price']!, _unitPriceMeta));
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    }
    if (data.containsKey('unit_id')) {
      context.handle(_unitIdMeta,
          unitId.isAcceptableOrUnknown(data['unit_id']!, _unitIdMeta));
    }
    if (data.containsKey('product_unit_id')) {
      context.handle(
          _productUnitIdMeta,
          productUnitId.isAcceptableOrUnknown(
              data['product_unit_id']!, _productUnitIdMeta));
    }
    if (data.containsKey('product_unit_price_list_id')) {
      context.handle(
          _productUnitPriceListIdMeta,
          productUnitPriceListId.isAcceptableOrUnknown(
              data['product_unit_price_list_id']!,
              _productUnitPriceListIdMeta));
    }
    if (data.containsKey('product_unit_price_list_slap_id')) {
      context.handle(
          _productUnitPriceListSlapIdMeta,
          productUnitPriceListSlapId.isAcceptableOrUnknown(
              data['product_unit_price_list_slap_id']!,
              _productUnitPriceListSlapIdMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    }
    if (data.containsKey('f_name')) {
      context.handle(
          _fNameMeta, fName.isAcceptableOrUnknown(data['f_name']!, _fNameMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {orderRef, productRef};
  @override
  OrderProductUnitPriceV2Data map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return OrderProductUnitPriceV2Data(
      orderRef: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}order_ref']),
      productRef: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}product_ref']),
      unitPrice: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}unit_price']),
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description']),
      unitId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}unit_id']),
      productUnitId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}product_unit_id']),
      productUnitPriceListId: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}product_unit_price_list_id']),
      productUnitPriceListSlapId: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}product_unit_price_list_slap_id']),
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name']),
      fName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}f_name']),
    );
  }

  @override
  $OrderProductUnitPriceV2Table createAlias(String alias) {
    return $OrderProductUnitPriceV2Table(attachedDatabase, alias);
  }
}

class OrderProductUnitPriceV2Data extends DataClass
    implements Insertable<OrderProductUnitPriceV2Data> {
  final String? orderRef;
  final String? productRef;
  final double? unitPrice;
  final String? description;
  final String? unitId;
  final String? productUnitId;
  final String? productUnitPriceListId;
  final String? productUnitPriceListSlapId;
  final String? name;
  final String? fName;
  const OrderProductUnitPriceV2Data(
      {this.orderRef,
      this.productRef,
      this.unitPrice,
      this.description,
      this.unitId,
      this.productUnitId,
      this.productUnitPriceListId,
      this.productUnitPriceListSlapId,
      this.name,
      this.fName});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || orderRef != null) {
      map['order_ref'] = Variable<String>(orderRef);
    }
    if (!nullToAbsent || productRef != null) {
      map['product_ref'] = Variable<String>(productRef);
    }
    if (!nullToAbsent || unitPrice != null) {
      map['unit_price'] = Variable<double>(unitPrice);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    if (!nullToAbsent || unitId != null) {
      map['unit_id'] = Variable<String>(unitId);
    }
    if (!nullToAbsent || productUnitId != null) {
      map['product_unit_id'] = Variable<String>(productUnitId);
    }
    if (!nullToAbsent || productUnitPriceListId != null) {
      map['product_unit_price_list_id'] =
          Variable<String>(productUnitPriceListId);
    }
    if (!nullToAbsent || productUnitPriceListSlapId != null) {
      map['product_unit_price_list_slap_id'] =
          Variable<String>(productUnitPriceListSlapId);
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || fName != null) {
      map['f_name'] = Variable<String>(fName);
    }
    return map;
  }

  OrderProductUnitPriceV2Companion toCompanion(bool nullToAbsent) {
    return OrderProductUnitPriceV2Companion(
      orderRef: orderRef == null && nullToAbsent
          ? const Value.absent()
          : Value(orderRef),
      productRef: productRef == null && nullToAbsent
          ? const Value.absent()
          : Value(productRef),
      unitPrice: unitPrice == null && nullToAbsent
          ? const Value.absent()
          : Value(unitPrice),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      unitId:
          unitId == null && nullToAbsent ? const Value.absent() : Value(unitId),
      productUnitId: productUnitId == null && nullToAbsent
          ? const Value.absent()
          : Value(productUnitId),
      productUnitPriceListId: productUnitPriceListId == null && nullToAbsent
          ? const Value.absent()
          : Value(productUnitPriceListId),
      productUnitPriceListSlapId:
          productUnitPriceListSlapId == null && nullToAbsent
              ? const Value.absent()
              : Value(productUnitPriceListSlapId),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      fName:
          fName == null && nullToAbsent ? const Value.absent() : Value(fName),
    );
  }

  factory OrderProductUnitPriceV2Data.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return OrderProductUnitPriceV2Data(
      orderRef: serializer.fromJson<String?>(json['orderRef']),
      productRef: serializer.fromJson<String?>(json['productRef']),
      unitPrice: serializer.fromJson<double?>(json['unitPrice']),
      description: serializer.fromJson<String?>(json['description']),
      unitId: serializer.fromJson<String?>(json['unitId']),
      productUnitId: serializer.fromJson<String?>(json['productUnitId']),
      productUnitPriceListId:
          serializer.fromJson<String?>(json['productUnitPriceListId']),
      productUnitPriceListSlapId:
          serializer.fromJson<String?>(json['productUnitPriceListSlapId']),
      name: serializer.fromJson<String?>(json['name']),
      fName: serializer.fromJson<String?>(json['fName']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'orderRef': serializer.toJson<String?>(orderRef),
      'productRef': serializer.toJson<String?>(productRef),
      'unitPrice': serializer.toJson<double?>(unitPrice),
      'description': serializer.toJson<String?>(description),
      'unitId': serializer.toJson<String?>(unitId),
      'productUnitId': serializer.toJson<String?>(productUnitId),
      'productUnitPriceListId':
          serializer.toJson<String?>(productUnitPriceListId),
      'productUnitPriceListSlapId':
          serializer.toJson<String?>(productUnitPriceListSlapId),
      'name': serializer.toJson<String?>(name),
      'fName': serializer.toJson<String?>(fName),
    };
  }

  OrderProductUnitPriceV2Data copyWith(
          {Value<String?> orderRef = const Value.absent(),
          Value<String?> productRef = const Value.absent(),
          Value<double?> unitPrice = const Value.absent(),
          Value<String?> description = const Value.absent(),
          Value<String?> unitId = const Value.absent(),
          Value<String?> productUnitId = const Value.absent(),
          Value<String?> productUnitPriceListId = const Value.absent(),
          Value<String?> productUnitPriceListSlapId = const Value.absent(),
          Value<String?> name = const Value.absent(),
          Value<String?> fName = const Value.absent()}) =>
      OrderProductUnitPriceV2Data(
        orderRef: orderRef.present ? orderRef.value : this.orderRef,
        productRef: productRef.present ? productRef.value : this.productRef,
        unitPrice: unitPrice.present ? unitPrice.value : this.unitPrice,
        description: description.present ? description.value : this.description,
        unitId: unitId.present ? unitId.value : this.unitId,
        productUnitId:
            productUnitId.present ? productUnitId.value : this.productUnitId,
        productUnitPriceListId: productUnitPriceListId.present
            ? productUnitPriceListId.value
            : this.productUnitPriceListId,
        productUnitPriceListSlapId: productUnitPriceListSlapId.present
            ? productUnitPriceListSlapId.value
            : this.productUnitPriceListSlapId,
        name: name.present ? name.value : this.name,
        fName: fName.present ? fName.value : this.fName,
      );
  @override
  String toString() {
    return (StringBuffer('OrderProductUnitPriceV2Data(')
          ..write('orderRef: $orderRef, ')
          ..write('productRef: $productRef, ')
          ..write('unitPrice: $unitPrice, ')
          ..write('description: $description, ')
          ..write('unitId: $unitId, ')
          ..write('productUnitId: $productUnitId, ')
          ..write('productUnitPriceListId: $productUnitPriceListId, ')
          ..write('productUnitPriceListSlapId: $productUnitPriceListSlapId, ')
          ..write('name: $name, ')
          ..write('fName: $fName')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      orderRef,
      productRef,
      unitPrice,
      description,
      unitId,
      productUnitId,
      productUnitPriceListId,
      productUnitPriceListSlapId,
      name,
      fName);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is OrderProductUnitPriceV2Data &&
          other.orderRef == this.orderRef &&
          other.productRef == this.productRef &&
          other.unitPrice == this.unitPrice &&
          other.description == this.description &&
          other.unitId == this.unitId &&
          other.productUnitId == this.productUnitId &&
          other.productUnitPriceListId == this.productUnitPriceListId &&
          other.productUnitPriceListSlapId == this.productUnitPriceListSlapId &&
          other.name == this.name &&
          other.fName == this.fName);
}

class OrderProductUnitPriceV2Companion
    extends UpdateCompanion<OrderProductUnitPriceV2Data> {
  final Value<String?> orderRef;
  final Value<String?> productRef;
  final Value<double?> unitPrice;
  final Value<String?> description;
  final Value<String?> unitId;
  final Value<String?> productUnitId;
  final Value<String?> productUnitPriceListId;
  final Value<String?> productUnitPriceListSlapId;
  final Value<String?> name;
  final Value<String?> fName;
  final Value<int> rowid;
  const OrderProductUnitPriceV2Companion({
    this.orderRef = const Value.absent(),
    this.productRef = const Value.absent(),
    this.unitPrice = const Value.absent(),
    this.description = const Value.absent(),
    this.unitId = const Value.absent(),
    this.productUnitId = const Value.absent(),
    this.productUnitPriceListId = const Value.absent(),
    this.productUnitPriceListSlapId = const Value.absent(),
    this.name = const Value.absent(),
    this.fName = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  OrderProductUnitPriceV2Companion.insert({
    this.orderRef = const Value.absent(),
    this.productRef = const Value.absent(),
    this.unitPrice = const Value.absent(),
    this.description = const Value.absent(),
    this.unitId = const Value.absent(),
    this.productUnitId = const Value.absent(),
    this.productUnitPriceListId = const Value.absent(),
    this.productUnitPriceListSlapId = const Value.absent(),
    this.name = const Value.absent(),
    this.fName = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  static Insertable<OrderProductUnitPriceV2Data> custom({
    Expression<String>? orderRef,
    Expression<String>? productRef,
    Expression<double>? unitPrice,
    Expression<String>? description,
    Expression<String>? unitId,
    Expression<String>? productUnitId,
    Expression<String>? productUnitPriceListId,
    Expression<String>? productUnitPriceListSlapId,
    Expression<String>? name,
    Expression<String>? fName,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (orderRef != null) 'order_ref': orderRef,
      if (productRef != null) 'product_ref': productRef,
      if (unitPrice != null) 'unit_price': unitPrice,
      if (description != null) 'description': description,
      if (unitId != null) 'unit_id': unitId,
      if (productUnitId != null) 'product_unit_id': productUnitId,
      if (productUnitPriceListId != null)
        'product_unit_price_list_id': productUnitPriceListId,
      if (productUnitPriceListSlapId != null)
        'product_unit_price_list_slap_id': productUnitPriceListSlapId,
      if (name != null) 'name': name,
      if (fName != null) 'f_name': fName,
      if (rowid != null) 'rowid': rowid,
    });
  }

  OrderProductUnitPriceV2Companion copyWith(
      {Value<String?>? orderRef,
      Value<String?>? productRef,
      Value<double?>? unitPrice,
      Value<String?>? description,
      Value<String?>? unitId,
      Value<String?>? productUnitId,
      Value<String?>? productUnitPriceListId,
      Value<String?>? productUnitPriceListSlapId,
      Value<String?>? name,
      Value<String?>? fName,
      Value<int>? rowid}) {
    return OrderProductUnitPriceV2Companion(
      orderRef: orderRef ?? this.orderRef,
      productRef: productRef ?? this.productRef,
      unitPrice: unitPrice ?? this.unitPrice,
      description: description ?? this.description,
      unitId: unitId ?? this.unitId,
      productUnitId: productUnitId ?? this.productUnitId,
      productUnitPriceListId:
          productUnitPriceListId ?? this.productUnitPriceListId,
      productUnitPriceListSlapId:
          productUnitPriceListSlapId ?? this.productUnitPriceListSlapId,
      name: name ?? this.name,
      fName: fName ?? this.fName,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (orderRef.present) {
      map['order_ref'] = Variable<String>(orderRef.value);
    }
    if (productRef.present) {
      map['product_ref'] = Variable<String>(productRef.value);
    }
    if (unitPrice.present) {
      map['unit_price'] = Variable<double>(unitPrice.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (unitId.present) {
      map['unit_id'] = Variable<String>(unitId.value);
    }
    if (productUnitId.present) {
      map['product_unit_id'] = Variable<String>(productUnitId.value);
    }
    if (productUnitPriceListId.present) {
      map['product_unit_price_list_id'] =
          Variable<String>(productUnitPriceListId.value);
    }
    if (productUnitPriceListSlapId.present) {
      map['product_unit_price_list_slap_id'] =
          Variable<String>(productUnitPriceListSlapId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (fName.present) {
      map['f_name'] = Variable<String>(fName.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('OrderProductUnitPriceV2Companion(')
          ..write('orderRef: $orderRef, ')
          ..write('productRef: $productRef, ')
          ..write('unitPrice: $unitPrice, ')
          ..write('description: $description, ')
          ..write('unitId: $unitId, ')
          ..write('productUnitId: $productUnitId, ')
          ..write('productUnitPriceListId: $productUnitPriceListId, ')
          ..write('productUnitPriceListSlapId: $productUnitPriceListSlapId, ')
          ..write('name: $name, ')
          ..write('fName: $fName, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $OrderProductTieredPricingV2Table extends OrderProductTieredPricingV2
    with
        TableInfo<$OrderProductTieredPricingV2Table,
            OrderProductTieredPricingV2Data> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $OrderProductTieredPricingV2Table(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _orderRefMeta =
      const VerificationMeta('orderRef');
  @override
  late final GeneratedColumn<String> orderRef = GeneratedColumn<String>(
      'order_ref', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES order_entity_v2 (order_ref) ON DELETE CASCADE'));
  static const VerificationMeta _productRefMeta =
      const VerificationMeta('productRef');
  @override
  late final GeneratedColumn<String> productRef = GeneratedColumn<String>(
      'product_ref', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _tieredPricingIdMeta =
      const VerificationMeta('tieredPricingId');
  @override
  late final GeneratedColumn<String> tieredPricingId = GeneratedColumn<String>(
      'tiered_pricing_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _unitPriceMeta =
      const VerificationMeta('unitPrice');
  @override
  late final GeneratedColumn<double> unitPrice = GeneratedColumn<double>(
      'unit_price', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _netUnitPriceMeta =
      const VerificationMeta('netUnitPrice');
  @override
  late final GeneratedColumn<double> netUnitPrice = GeneratedColumn<double>(
      'net_unit_price', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [orderRef, productRef, tieredPricingId, name, unitPrice, netUnitPrice];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'order_product_tiered_pricing_v2';
  @override
  VerificationContext validateIntegrity(
      Insertable<OrderProductTieredPricingV2Data> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('order_ref')) {
      context.handle(_orderRefMeta,
          orderRef.isAcceptableOrUnknown(data['order_ref']!, _orderRefMeta));
    }
    if (data.containsKey('product_ref')) {
      context.handle(
          _productRefMeta,
          productRef.isAcceptableOrUnknown(
              data['product_ref']!, _productRefMeta));
    }
    if (data.containsKey('tiered_pricing_id')) {
      context.handle(
          _tieredPricingIdMeta,
          tieredPricingId.isAcceptableOrUnknown(
              data['tiered_pricing_id']!, _tieredPricingIdMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    }
    if (data.containsKey('unit_price')) {
      context.handle(_unitPriceMeta,
          unitPrice.isAcceptableOrUnknown(data['unit_price']!, _unitPriceMeta));
    }
    if (data.containsKey('net_unit_price')) {
      context.handle(
          _netUnitPriceMeta,
          netUnitPrice.isAcceptableOrUnknown(
              data['net_unit_price']!, _netUnitPriceMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {orderRef, productRef};
  @override
  OrderProductTieredPricingV2Data map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return OrderProductTieredPricingV2Data(
      orderRef: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}order_ref']),
      productRef: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}product_ref']),
      tieredPricingId: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}tiered_pricing_id']),
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name']),
      unitPrice: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}unit_price']),
      netUnitPrice: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}net_unit_price']),
    );
  }

  @override
  $OrderProductTieredPricingV2Table createAlias(String alias) {
    return $OrderProductTieredPricingV2Table(attachedDatabase, alias);
  }
}

class OrderProductTieredPricingV2Data extends DataClass
    implements Insertable<OrderProductTieredPricingV2Data> {
  final String? orderRef;
  final String? productRef;
  final String? tieredPricingId;
  final String? name;
  final double? unitPrice;
  final double? netUnitPrice;
  const OrderProductTieredPricingV2Data(
      {this.orderRef,
      this.productRef,
      this.tieredPricingId,
      this.name,
      this.unitPrice,
      this.netUnitPrice});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || orderRef != null) {
      map['order_ref'] = Variable<String>(orderRef);
    }
    if (!nullToAbsent || productRef != null) {
      map['product_ref'] = Variable<String>(productRef);
    }
    if (!nullToAbsent || tieredPricingId != null) {
      map['tiered_pricing_id'] = Variable<String>(tieredPricingId);
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || unitPrice != null) {
      map['unit_price'] = Variable<double>(unitPrice);
    }
    if (!nullToAbsent || netUnitPrice != null) {
      map['net_unit_price'] = Variable<double>(netUnitPrice);
    }
    return map;
  }

  OrderProductTieredPricingV2Companion toCompanion(bool nullToAbsent) {
    return OrderProductTieredPricingV2Companion(
      orderRef: orderRef == null && nullToAbsent
          ? const Value.absent()
          : Value(orderRef),
      productRef: productRef == null && nullToAbsent
          ? const Value.absent()
          : Value(productRef),
      tieredPricingId: tieredPricingId == null && nullToAbsent
          ? const Value.absent()
          : Value(tieredPricingId),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      unitPrice: unitPrice == null && nullToAbsent
          ? const Value.absent()
          : Value(unitPrice),
      netUnitPrice: netUnitPrice == null && nullToAbsent
          ? const Value.absent()
          : Value(netUnitPrice),
    );
  }

  factory OrderProductTieredPricingV2Data.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return OrderProductTieredPricingV2Data(
      orderRef: serializer.fromJson<String?>(json['orderRef']),
      productRef: serializer.fromJson<String?>(json['productRef']),
      tieredPricingId: serializer.fromJson<String?>(json['tieredPricingId']),
      name: serializer.fromJson<String?>(json['name']),
      unitPrice: serializer.fromJson<double?>(json['unitPrice']),
      netUnitPrice: serializer.fromJson<double?>(json['netUnitPrice']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'orderRef': serializer.toJson<String?>(orderRef),
      'productRef': serializer.toJson<String?>(productRef),
      'tieredPricingId': serializer.toJson<String?>(tieredPricingId),
      'name': serializer.toJson<String?>(name),
      'unitPrice': serializer.toJson<double?>(unitPrice),
      'netUnitPrice': serializer.toJson<double?>(netUnitPrice),
    };
  }

  OrderProductTieredPricingV2Data copyWith(
          {Value<String?> orderRef = const Value.absent(),
          Value<String?> productRef = const Value.absent(),
          Value<String?> tieredPricingId = const Value.absent(),
          Value<String?> name = const Value.absent(),
          Value<double?> unitPrice = const Value.absent(),
          Value<double?> netUnitPrice = const Value.absent()}) =>
      OrderProductTieredPricingV2Data(
        orderRef: orderRef.present ? orderRef.value : this.orderRef,
        productRef: productRef.present ? productRef.value : this.productRef,
        tieredPricingId: tieredPricingId.present
            ? tieredPricingId.value
            : this.tieredPricingId,
        name: name.present ? name.value : this.name,
        unitPrice: unitPrice.present ? unitPrice.value : this.unitPrice,
        netUnitPrice:
            netUnitPrice.present ? netUnitPrice.value : this.netUnitPrice,
      );
  @override
  String toString() {
    return (StringBuffer('OrderProductTieredPricingV2Data(')
          ..write('orderRef: $orderRef, ')
          ..write('productRef: $productRef, ')
          ..write('tieredPricingId: $tieredPricingId, ')
          ..write('name: $name, ')
          ..write('unitPrice: $unitPrice, ')
          ..write('netUnitPrice: $netUnitPrice')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      orderRef, productRef, tieredPricingId, name, unitPrice, netUnitPrice);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is OrderProductTieredPricingV2Data &&
          other.orderRef == this.orderRef &&
          other.productRef == this.productRef &&
          other.tieredPricingId == this.tieredPricingId &&
          other.name == this.name &&
          other.unitPrice == this.unitPrice &&
          other.netUnitPrice == this.netUnitPrice);
}

class OrderProductTieredPricingV2Companion
    extends UpdateCompanion<OrderProductTieredPricingV2Data> {
  final Value<String?> orderRef;
  final Value<String?> productRef;
  final Value<String?> tieredPricingId;
  final Value<String?> name;
  final Value<double?> unitPrice;
  final Value<double?> netUnitPrice;
  final Value<int> rowid;
  const OrderProductTieredPricingV2Companion({
    this.orderRef = const Value.absent(),
    this.productRef = const Value.absent(),
    this.tieredPricingId = const Value.absent(),
    this.name = const Value.absent(),
    this.unitPrice = const Value.absent(),
    this.netUnitPrice = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  OrderProductTieredPricingV2Companion.insert({
    this.orderRef = const Value.absent(),
    this.productRef = const Value.absent(),
    this.tieredPricingId = const Value.absent(),
    this.name = const Value.absent(),
    this.unitPrice = const Value.absent(),
    this.netUnitPrice = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  static Insertable<OrderProductTieredPricingV2Data> custom({
    Expression<String>? orderRef,
    Expression<String>? productRef,
    Expression<String>? tieredPricingId,
    Expression<String>? name,
    Expression<double>? unitPrice,
    Expression<double>? netUnitPrice,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (orderRef != null) 'order_ref': orderRef,
      if (productRef != null) 'product_ref': productRef,
      if (tieredPricingId != null) 'tiered_pricing_id': tieredPricingId,
      if (name != null) 'name': name,
      if (unitPrice != null) 'unit_price': unitPrice,
      if (netUnitPrice != null) 'net_unit_price': netUnitPrice,
      if (rowid != null) 'rowid': rowid,
    });
  }

  OrderProductTieredPricingV2Companion copyWith(
      {Value<String?>? orderRef,
      Value<String?>? productRef,
      Value<String?>? tieredPricingId,
      Value<String?>? name,
      Value<double?>? unitPrice,
      Value<double?>? netUnitPrice,
      Value<int>? rowid}) {
    return OrderProductTieredPricingV2Companion(
      orderRef: orderRef ?? this.orderRef,
      productRef: productRef ?? this.productRef,
      tieredPricingId: tieredPricingId ?? this.tieredPricingId,
      name: name ?? this.name,
      unitPrice: unitPrice ?? this.unitPrice,
      netUnitPrice: netUnitPrice ?? this.netUnitPrice,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (orderRef.present) {
      map['order_ref'] = Variable<String>(orderRef.value);
    }
    if (productRef.present) {
      map['product_ref'] = Variable<String>(productRef.value);
    }
    if (tieredPricingId.present) {
      map['tiered_pricing_id'] = Variable<String>(tieredPricingId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (unitPrice.present) {
      map['unit_price'] = Variable<double>(unitPrice.value);
    }
    if (netUnitPrice.present) {
      map['net_unit_price'] = Variable<double>(netUnitPrice.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('OrderProductTieredPricingV2Companion(')
          ..write('orderRef: $orderRef, ')
          ..write('productRef: $productRef, ')
          ..write('tieredPricingId: $tieredPricingId, ')
          ..write('name: $name, ')
          ..write('unitPrice: $unitPrice, ')
          ..write('netUnitPrice: $netUnitPrice, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $OrderProductTimeEventV2Table extends OrderProductTimeEventV2
    with TableInfo<$OrderProductTimeEventV2Table, OrderProductTimeEventV2Data> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $OrderProductTimeEventV2Table(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _orderRefMeta =
      const VerificationMeta('orderRef');
  @override
  late final GeneratedColumn<String> orderRef = GeneratedColumn<String>(
      'order_ref', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES order_entity_v2 (order_ref) ON DELETE CASCADE'));
  static const VerificationMeta _productRefMeta =
      const VerificationMeta('productRef');
  @override
  late final GeneratedColumn<String> productRef = GeneratedColumn<String>(
      'product_ref', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _timeEventIdMeta =
      const VerificationMeta('timeEventId');
  @override
  late final GeneratedColumn<String> timeEventId = GeneratedColumn<String>(
      'time_event_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _unitPriceMeta =
      const VerificationMeta('unitPrice');
  @override
  late final GeneratedColumn<double> unitPrice = GeneratedColumn<double>(
      'unit_price', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _netUnitPriceMeta =
      const VerificationMeta('netUnitPrice');
  @override
  late final GeneratedColumn<double> netUnitPrice = GeneratedColumn<double>(
      'net_unit_price', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [orderRef, productRef, timeEventId, name, unitPrice, netUnitPrice];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'order_product_time_event_v2';
  @override
  VerificationContext validateIntegrity(
      Insertable<OrderProductTimeEventV2Data> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('order_ref')) {
      context.handle(_orderRefMeta,
          orderRef.isAcceptableOrUnknown(data['order_ref']!, _orderRefMeta));
    }
    if (data.containsKey('product_ref')) {
      context.handle(
          _productRefMeta,
          productRef.isAcceptableOrUnknown(
              data['product_ref']!, _productRefMeta));
    }
    if (data.containsKey('time_event_id')) {
      context.handle(
          _timeEventIdMeta,
          timeEventId.isAcceptableOrUnknown(
              data['time_event_id']!, _timeEventIdMeta));
    } else if (isInserting) {
      context.missing(_timeEventIdMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    }
    if (data.containsKey('unit_price')) {
      context.handle(_unitPriceMeta,
          unitPrice.isAcceptableOrUnknown(data['unit_price']!, _unitPriceMeta));
    } else if (isInserting) {
      context.missing(_unitPriceMeta);
    }
    if (data.containsKey('net_unit_price')) {
      context.handle(
          _netUnitPriceMeta,
          netUnitPrice.isAcceptableOrUnknown(
              data['net_unit_price']!, _netUnitPriceMeta));
    } else if (isInserting) {
      context.missing(_netUnitPriceMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {orderRef, productRef};
  @override
  OrderProductTimeEventV2Data map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return OrderProductTimeEventV2Data(
      orderRef: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}order_ref']),
      productRef: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}product_ref']),
      timeEventId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}time_event_id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name']),
      unitPrice: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}unit_price'])!,
      netUnitPrice: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}net_unit_price'])!,
    );
  }

  @override
  $OrderProductTimeEventV2Table createAlias(String alias) {
    return $OrderProductTimeEventV2Table(attachedDatabase, alias);
  }
}

class OrderProductTimeEventV2Data extends DataClass
    implements Insertable<OrderProductTimeEventV2Data> {
  final String? orderRef;
  final String? productRef;
  final String timeEventId;
  final String? name;
  final double unitPrice;
  final double netUnitPrice;
  const OrderProductTimeEventV2Data(
      {this.orderRef,
      this.productRef,
      required this.timeEventId,
      this.name,
      required this.unitPrice,
      required this.netUnitPrice});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || orderRef != null) {
      map['order_ref'] = Variable<String>(orderRef);
    }
    if (!nullToAbsent || productRef != null) {
      map['product_ref'] = Variable<String>(productRef);
    }
    map['time_event_id'] = Variable<String>(timeEventId);
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    map['unit_price'] = Variable<double>(unitPrice);
    map['net_unit_price'] = Variable<double>(netUnitPrice);
    return map;
  }

  OrderProductTimeEventV2Companion toCompanion(bool nullToAbsent) {
    return OrderProductTimeEventV2Companion(
      orderRef: orderRef == null && nullToAbsent
          ? const Value.absent()
          : Value(orderRef),
      productRef: productRef == null && nullToAbsent
          ? const Value.absent()
          : Value(productRef),
      timeEventId: Value(timeEventId),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      unitPrice: Value(unitPrice),
      netUnitPrice: Value(netUnitPrice),
    );
  }

  factory OrderProductTimeEventV2Data.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return OrderProductTimeEventV2Data(
      orderRef: serializer.fromJson<String?>(json['orderRef']),
      productRef: serializer.fromJson<String?>(json['productRef']),
      timeEventId: serializer.fromJson<String>(json['timeEventId']),
      name: serializer.fromJson<String?>(json['name']),
      unitPrice: serializer.fromJson<double>(json['unitPrice']),
      netUnitPrice: serializer.fromJson<double>(json['netUnitPrice']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'orderRef': serializer.toJson<String?>(orderRef),
      'productRef': serializer.toJson<String?>(productRef),
      'timeEventId': serializer.toJson<String>(timeEventId),
      'name': serializer.toJson<String?>(name),
      'unitPrice': serializer.toJson<double>(unitPrice),
      'netUnitPrice': serializer.toJson<double>(netUnitPrice),
    };
  }

  OrderProductTimeEventV2Data copyWith(
          {Value<String?> orderRef = const Value.absent(),
          Value<String?> productRef = const Value.absent(),
          String? timeEventId,
          Value<String?> name = const Value.absent(),
          double? unitPrice,
          double? netUnitPrice}) =>
      OrderProductTimeEventV2Data(
        orderRef: orderRef.present ? orderRef.value : this.orderRef,
        productRef: productRef.present ? productRef.value : this.productRef,
        timeEventId: timeEventId ?? this.timeEventId,
        name: name.present ? name.value : this.name,
        unitPrice: unitPrice ?? this.unitPrice,
        netUnitPrice: netUnitPrice ?? this.netUnitPrice,
      );
  @override
  String toString() {
    return (StringBuffer('OrderProductTimeEventV2Data(')
          ..write('orderRef: $orderRef, ')
          ..write('productRef: $productRef, ')
          ..write('timeEventId: $timeEventId, ')
          ..write('name: $name, ')
          ..write('unitPrice: $unitPrice, ')
          ..write('netUnitPrice: $netUnitPrice')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      orderRef, productRef, timeEventId, name, unitPrice, netUnitPrice);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is OrderProductTimeEventV2Data &&
          other.orderRef == this.orderRef &&
          other.productRef == this.productRef &&
          other.timeEventId == this.timeEventId &&
          other.name == this.name &&
          other.unitPrice == this.unitPrice &&
          other.netUnitPrice == this.netUnitPrice);
}

class OrderProductTimeEventV2Companion
    extends UpdateCompanion<OrderProductTimeEventV2Data> {
  final Value<String?> orderRef;
  final Value<String?> productRef;
  final Value<String> timeEventId;
  final Value<String?> name;
  final Value<double> unitPrice;
  final Value<double> netUnitPrice;
  final Value<int> rowid;
  const OrderProductTimeEventV2Companion({
    this.orderRef = const Value.absent(),
    this.productRef = const Value.absent(),
    this.timeEventId = const Value.absent(),
    this.name = const Value.absent(),
    this.unitPrice = const Value.absent(),
    this.netUnitPrice = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  OrderProductTimeEventV2Companion.insert({
    this.orderRef = const Value.absent(),
    this.productRef = const Value.absent(),
    required String timeEventId,
    this.name = const Value.absent(),
    required double unitPrice,
    required double netUnitPrice,
    this.rowid = const Value.absent(),
  })  : timeEventId = Value(timeEventId),
        unitPrice = Value(unitPrice),
        netUnitPrice = Value(netUnitPrice);
  static Insertable<OrderProductTimeEventV2Data> custom({
    Expression<String>? orderRef,
    Expression<String>? productRef,
    Expression<String>? timeEventId,
    Expression<String>? name,
    Expression<double>? unitPrice,
    Expression<double>? netUnitPrice,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (orderRef != null) 'order_ref': orderRef,
      if (productRef != null) 'product_ref': productRef,
      if (timeEventId != null) 'time_event_id': timeEventId,
      if (name != null) 'name': name,
      if (unitPrice != null) 'unit_price': unitPrice,
      if (netUnitPrice != null) 'net_unit_price': netUnitPrice,
      if (rowid != null) 'rowid': rowid,
    });
  }

  OrderProductTimeEventV2Companion copyWith(
      {Value<String?>? orderRef,
      Value<String?>? productRef,
      Value<String>? timeEventId,
      Value<String?>? name,
      Value<double>? unitPrice,
      Value<double>? netUnitPrice,
      Value<int>? rowid}) {
    return OrderProductTimeEventV2Companion(
      orderRef: orderRef ?? this.orderRef,
      productRef: productRef ?? this.productRef,
      timeEventId: timeEventId ?? this.timeEventId,
      name: name ?? this.name,
      unitPrice: unitPrice ?? this.unitPrice,
      netUnitPrice: netUnitPrice ?? this.netUnitPrice,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (orderRef.present) {
      map['order_ref'] = Variable<String>(orderRef.value);
    }
    if (productRef.present) {
      map['product_ref'] = Variable<String>(productRef.value);
    }
    if (timeEventId.present) {
      map['time_event_id'] = Variable<String>(timeEventId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (unitPrice.present) {
      map['unit_price'] = Variable<double>(unitPrice.value);
    }
    if (netUnitPrice.present) {
      map['net_unit_price'] = Variable<double>(netUnitPrice.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('OrderProductTimeEventV2Companion(')
          ..write('orderRef: $orderRef, ')
          ..write('productRef: $productRef, ')
          ..write('timeEventId: $timeEventId, ')
          ..write('name: $name, ')
          ..write('unitPrice: $unitPrice, ')
          ..write('netUnitPrice: $netUnitPrice, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $OrderProductDiscountV2Table extends OrderProductDiscountV2
    with TableInfo<$OrderProductDiscountV2Table, OrderProductDiscountV2Data> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $OrderProductDiscountV2Table(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _orderRefMeta =
      const VerificationMeta('orderRef');
  @override
  late final GeneratedColumn<String> orderRef = GeneratedColumn<String>(
      'order_ref', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES order_entity_v2 (order_ref) ON DELETE CASCADE'));
  static const VerificationMeta _productRefMeta =
      const VerificationMeta('productRef');
  @override
  late final GeneratedColumn<String> productRef = GeneratedColumn<String>(
      'product_ref', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _discountAmountMeta =
      const VerificationMeta('discountAmount');
  @override
  late final GeneratedColumn<double> discountAmount = GeneratedColumn<double>(
      'discount_amount', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _discountPercentageMeta =
      const VerificationMeta('discountPercentage');
  @override
  late final GeneratedColumn<double> discountPercentage =
      GeneratedColumn<double>('discount_percentage', aliasedName, true,
          type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _discountTypeMeta =
      const VerificationMeta('discountType');
  @override
  late final GeneratedColumn<String> discountType = GeneratedColumn<String>(
      'discount_type', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _discountIdMeta =
      const VerificationMeta('discountId');
  @override
  late final GeneratedColumn<String> discountId = GeneratedColumn<String>(
      'discount_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        orderRef,
        productRef,
        discountAmount,
        discountPercentage,
        discountType,
        discountId
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'order_product_discount_v2';
  @override
  VerificationContext validateIntegrity(
      Insertable<OrderProductDiscountV2Data> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('order_ref')) {
      context.handle(_orderRefMeta,
          orderRef.isAcceptableOrUnknown(data['order_ref']!, _orderRefMeta));
    }
    if (data.containsKey('product_ref')) {
      context.handle(
          _productRefMeta,
          productRef.isAcceptableOrUnknown(
              data['product_ref']!, _productRefMeta));
    }
    if (data.containsKey('discount_amount')) {
      context.handle(
          _discountAmountMeta,
          discountAmount.isAcceptableOrUnknown(
              data['discount_amount']!, _discountAmountMeta));
    }
    if (data.containsKey('discount_percentage')) {
      context.handle(
          _discountPercentageMeta,
          discountPercentage.isAcceptableOrUnknown(
              data['discount_percentage']!, _discountPercentageMeta));
    }
    if (data.containsKey('discount_type')) {
      context.handle(
          _discountTypeMeta,
          discountType.isAcceptableOrUnknown(
              data['discount_type']!, _discountTypeMeta));
    }
    if (data.containsKey('discount_id')) {
      context.handle(
          _discountIdMeta,
          discountId.isAcceptableOrUnknown(
              data['discount_id']!, _discountIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {orderRef, productRef};
  @override
  OrderProductDiscountV2Data map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return OrderProductDiscountV2Data(
      orderRef: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}order_ref']),
      productRef: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}product_ref']),
      discountAmount: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}discount_amount']),
      discountPercentage: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}discount_percentage']),
      discountType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}discount_type']),
      discountId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}discount_id']),
    );
  }

  @override
  $OrderProductDiscountV2Table createAlias(String alias) {
    return $OrderProductDiscountV2Table(attachedDatabase, alias);
  }
}

class OrderProductDiscountV2Data extends DataClass
    implements Insertable<OrderProductDiscountV2Data> {
  final String? orderRef;
  final String? productRef;
  final double? discountAmount;
  final double? discountPercentage;
  final String? discountType;
  final String? discountId;
  const OrderProductDiscountV2Data(
      {this.orderRef,
      this.productRef,
      this.discountAmount,
      this.discountPercentage,
      this.discountType,
      this.discountId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || orderRef != null) {
      map['order_ref'] = Variable<String>(orderRef);
    }
    if (!nullToAbsent || productRef != null) {
      map['product_ref'] = Variable<String>(productRef);
    }
    if (!nullToAbsent || discountAmount != null) {
      map['discount_amount'] = Variable<double>(discountAmount);
    }
    if (!nullToAbsent || discountPercentage != null) {
      map['discount_percentage'] = Variable<double>(discountPercentage);
    }
    if (!nullToAbsent || discountType != null) {
      map['discount_type'] = Variable<String>(discountType);
    }
    if (!nullToAbsent || discountId != null) {
      map['discount_id'] = Variable<String>(discountId);
    }
    return map;
  }

  OrderProductDiscountV2Companion toCompanion(bool nullToAbsent) {
    return OrderProductDiscountV2Companion(
      orderRef: orderRef == null && nullToAbsent
          ? const Value.absent()
          : Value(orderRef),
      productRef: productRef == null && nullToAbsent
          ? const Value.absent()
          : Value(productRef),
      discountAmount: discountAmount == null && nullToAbsent
          ? const Value.absent()
          : Value(discountAmount),
      discountPercentage: discountPercentage == null && nullToAbsent
          ? const Value.absent()
          : Value(discountPercentage),
      discountType: discountType == null && nullToAbsent
          ? const Value.absent()
          : Value(discountType),
      discountId: discountId == null && nullToAbsent
          ? const Value.absent()
          : Value(discountId),
    );
  }

  factory OrderProductDiscountV2Data.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return OrderProductDiscountV2Data(
      orderRef: serializer.fromJson<String?>(json['orderRef']),
      productRef: serializer.fromJson<String?>(json['productRef']),
      discountAmount: serializer.fromJson<double?>(json['discountAmount']),
      discountPercentage:
          serializer.fromJson<double?>(json['discountPercentage']),
      discountType: serializer.fromJson<String?>(json['discountType']),
      discountId: serializer.fromJson<String?>(json['discountId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'orderRef': serializer.toJson<String?>(orderRef),
      'productRef': serializer.toJson<String?>(productRef),
      'discountAmount': serializer.toJson<double?>(discountAmount),
      'discountPercentage': serializer.toJson<double?>(discountPercentage),
      'discountType': serializer.toJson<String?>(discountType),
      'discountId': serializer.toJson<String?>(discountId),
    };
  }

  OrderProductDiscountV2Data copyWith(
          {Value<String?> orderRef = const Value.absent(),
          Value<String?> productRef = const Value.absent(),
          Value<double?> discountAmount = const Value.absent(),
          Value<double?> discountPercentage = const Value.absent(),
          Value<String?> discountType = const Value.absent(),
          Value<String?> discountId = const Value.absent()}) =>
      OrderProductDiscountV2Data(
        orderRef: orderRef.present ? orderRef.value : this.orderRef,
        productRef: productRef.present ? productRef.value : this.productRef,
        discountAmount:
            discountAmount.present ? discountAmount.value : this.discountAmount,
        discountPercentage: discountPercentage.present
            ? discountPercentage.value
            : this.discountPercentage,
        discountType:
            discountType.present ? discountType.value : this.discountType,
        discountId: discountId.present ? discountId.value : this.discountId,
      );
  @override
  String toString() {
    return (StringBuffer('OrderProductDiscountV2Data(')
          ..write('orderRef: $orderRef, ')
          ..write('productRef: $productRef, ')
          ..write('discountAmount: $discountAmount, ')
          ..write('discountPercentage: $discountPercentage, ')
          ..write('discountType: $discountType, ')
          ..write('discountId: $discountId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(orderRef, productRef, discountAmount,
      discountPercentage, discountType, discountId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is OrderProductDiscountV2Data &&
          other.orderRef == this.orderRef &&
          other.productRef == this.productRef &&
          other.discountAmount == this.discountAmount &&
          other.discountPercentage == this.discountPercentage &&
          other.discountType == this.discountType &&
          other.discountId == this.discountId);
}

class OrderProductDiscountV2Companion
    extends UpdateCompanion<OrderProductDiscountV2Data> {
  final Value<String?> orderRef;
  final Value<String?> productRef;
  final Value<double?> discountAmount;
  final Value<double?> discountPercentage;
  final Value<String?> discountType;
  final Value<String?> discountId;
  final Value<int> rowid;
  const OrderProductDiscountV2Companion({
    this.orderRef = const Value.absent(),
    this.productRef = const Value.absent(),
    this.discountAmount = const Value.absent(),
    this.discountPercentage = const Value.absent(),
    this.discountType = const Value.absent(),
    this.discountId = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  OrderProductDiscountV2Companion.insert({
    this.orderRef = const Value.absent(),
    this.productRef = const Value.absent(),
    this.discountAmount = const Value.absent(),
    this.discountPercentage = const Value.absent(),
    this.discountType = const Value.absent(),
    this.discountId = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  static Insertable<OrderProductDiscountV2Data> custom({
    Expression<String>? orderRef,
    Expression<String>? productRef,
    Expression<double>? discountAmount,
    Expression<double>? discountPercentage,
    Expression<String>? discountType,
    Expression<String>? discountId,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (orderRef != null) 'order_ref': orderRef,
      if (productRef != null) 'product_ref': productRef,
      if (discountAmount != null) 'discount_amount': discountAmount,
      if (discountPercentage != null) 'discount_percentage': discountPercentage,
      if (discountType != null) 'discount_type': discountType,
      if (discountId != null) 'discount_id': discountId,
      if (rowid != null) 'rowid': rowid,
    });
  }

  OrderProductDiscountV2Companion copyWith(
      {Value<String?>? orderRef,
      Value<String?>? productRef,
      Value<double?>? discountAmount,
      Value<double?>? discountPercentage,
      Value<String?>? discountType,
      Value<String?>? discountId,
      Value<int>? rowid}) {
    return OrderProductDiscountV2Companion(
      orderRef: orderRef ?? this.orderRef,
      productRef: productRef ?? this.productRef,
      discountAmount: discountAmount ?? this.discountAmount,
      discountPercentage: discountPercentage ?? this.discountPercentage,
      discountType: discountType ?? this.discountType,
      discountId: discountId ?? this.discountId,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (orderRef.present) {
      map['order_ref'] = Variable<String>(orderRef.value);
    }
    if (productRef.present) {
      map['product_ref'] = Variable<String>(productRef.value);
    }
    if (discountAmount.present) {
      map['discount_amount'] = Variable<double>(discountAmount.value);
    }
    if (discountPercentage.present) {
      map['discount_percentage'] = Variable<double>(discountPercentage.value);
    }
    if (discountType.present) {
      map['discount_type'] = Variable<String>(discountType.value);
    }
    if (discountId.present) {
      map['discount_id'] = Variable<String>(discountId.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('OrderProductDiscountV2Companion(')
          ..write('orderRef: $orderRef, ')
          ..write('productRef: $productRef, ')
          ..write('discountAmount: $discountAmount, ')
          ..write('discountPercentage: $discountPercentage, ')
          ..write('discountType: $discountType, ')
          ..write('discountId: $discountId, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $OrderProductPromotionInfoV2Table extends OrderProductPromotionInfoV2
    with
        TableInfo<$OrderProductPromotionInfoV2Table,
            OrderProductPromotionInfoV2Data> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $OrderProductPromotionInfoV2Table(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _orderRefMeta =
      const VerificationMeta('orderRef');
  @override
  late final GeneratedColumn<String> orderRef = GeneratedColumn<String>(
      'order_ref', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES order_entity_v2 (order_ref) ON DELETE CASCADE'));
  static const VerificationMeta _productRefMeta =
      const VerificationMeta('productRef');
  @override
  late final GeneratedColumn<String> productRef = GeneratedColumn<String>(
      'product_ref', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _notAppliesQuantityMeta =
      const VerificationMeta('notAppliesQuantity');
  @override
  late final GeneratedColumn<double> notAppliesQuantity =
      GeneratedColumn<double>('not_applies_quantity', aliasedName, true,
          type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _appliesAsPurchaseQuantityMeta =
      const VerificationMeta('appliesAsPurchaseQuantity');
  @override
  late final GeneratedColumn<double> appliesAsPurchaseQuantity =
      GeneratedColumn<double>('applies_as_purchase_quantity', aliasedName, true,
          type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _appliesAsDiscountQuantityMeta =
      const VerificationMeta('appliesAsDiscountQuantity');
  @override
  late final GeneratedColumn<double> appliesAsDiscountQuantity =
      GeneratedColumn<double>('applies_as_discount_quantity', aliasedName, true,
          type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _promotionDiscountAmountMeta =
      const VerificationMeta('promotionDiscountAmount');
  @override
  late final GeneratedColumn<double> promotionDiscountAmount =
      GeneratedColumn<double>('promotion_discount_amount', aliasedName, true,
          type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _promotionDiscountPercentageMeta =
      const VerificationMeta('promotionDiscountPercentage');
  @override
  late final GeneratedColumn<double> promotionDiscountPercentage =
      GeneratedColumn<double>(
          'promotion_discount_percentage', aliasedName, true,
          type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _promotionsJsonMeta =
      const VerificationMeta('promotionsJson');
  @override
  late final GeneratedColumnWithTypeConverter<dynamic, String> promotionsJson =
      GeneratedColumn<String>('promotions_json', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<dynamic>(
              $OrderProductPromotionInfoV2Table.$converterpromotionsJson);
  @override
  List<GeneratedColumn> get $columns => [
        orderRef,
        productRef,
        notAppliesQuantity,
        appliesAsPurchaseQuantity,
        appliesAsDiscountQuantity,
        promotionDiscountAmount,
        promotionDiscountPercentage,
        promotionsJson
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'order_product_promotion_info_v2';
  @override
  VerificationContext validateIntegrity(
      Insertable<OrderProductPromotionInfoV2Data> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('order_ref')) {
      context.handle(_orderRefMeta,
          orderRef.isAcceptableOrUnknown(data['order_ref']!, _orderRefMeta));
    }
    if (data.containsKey('product_ref')) {
      context.handle(
          _productRefMeta,
          productRef.isAcceptableOrUnknown(
              data['product_ref']!, _productRefMeta));
    }
    if (data.containsKey('not_applies_quantity')) {
      context.handle(
          _notAppliesQuantityMeta,
          notAppliesQuantity.isAcceptableOrUnknown(
              data['not_applies_quantity']!, _notAppliesQuantityMeta));
    }
    if (data.containsKey('applies_as_purchase_quantity')) {
      context.handle(
          _appliesAsPurchaseQuantityMeta,
          appliesAsPurchaseQuantity.isAcceptableOrUnknown(
              data['applies_as_purchase_quantity']!,
              _appliesAsPurchaseQuantityMeta));
    }
    if (data.containsKey('applies_as_discount_quantity')) {
      context.handle(
          _appliesAsDiscountQuantityMeta,
          appliesAsDiscountQuantity.isAcceptableOrUnknown(
              data['applies_as_discount_quantity']!,
              _appliesAsDiscountQuantityMeta));
    }
    if (data.containsKey('promotion_discount_amount')) {
      context.handle(
          _promotionDiscountAmountMeta,
          promotionDiscountAmount.isAcceptableOrUnknown(
              data['promotion_discount_amount']!,
              _promotionDiscountAmountMeta));
    }
    if (data.containsKey('promotion_discount_percentage')) {
      context.handle(
          _promotionDiscountPercentageMeta,
          promotionDiscountPercentage.isAcceptableOrUnknown(
              data['promotion_discount_percentage']!,
              _promotionDiscountPercentageMeta));
    }
    context.handle(_promotionsJsonMeta, const VerificationResult.success());
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {orderRef, productRef};
  @override
  OrderProductPromotionInfoV2Data map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return OrderProductPromotionInfoV2Data(
      orderRef: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}order_ref']),
      productRef: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}product_ref']),
      notAppliesQuantity: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}not_applies_quantity']),
      appliesAsPurchaseQuantity: attachedDatabase.typeMapping.read(
          DriftSqlType.double,
          data['${effectivePrefix}applies_as_purchase_quantity']),
      appliesAsDiscountQuantity: attachedDatabase.typeMapping.read(
          DriftSqlType.double,
          data['${effectivePrefix}applies_as_discount_quantity']),
      promotionDiscountAmount: attachedDatabase.typeMapping.read(
          DriftSqlType.double,
          data['${effectivePrefix}promotion_discount_amount']),
      promotionDiscountPercentage: attachedDatabase.typeMapping.read(
          DriftSqlType.double,
          data['${effectivePrefix}promotion_discount_percentage']),
      promotionsJson: $OrderProductPromotionInfoV2Table.$converterpromotionsJson
          .fromSql(attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}promotions_json'])),
    );
  }

  @override
  $OrderProductPromotionInfoV2Table createAlias(String alias) {
    return $OrderProductPromotionInfoV2Table(attachedDatabase, alias);
  }

  static TypeConverter<dynamic, String?> $converterpromotionsJson =
      const JsonTypeConverter();
}

class OrderProductPromotionInfoV2Data extends DataClass
    implements Insertable<OrderProductPromotionInfoV2Data> {
  final String? orderRef;
  final String? productRef;
  final double? notAppliesQuantity;
  final double? appliesAsPurchaseQuantity;
  final double? appliesAsDiscountQuantity;
  final double? promotionDiscountAmount;
  final double? promotionDiscountPercentage;
  final dynamic promotionsJson;
  const OrderProductPromotionInfoV2Data(
      {this.orderRef,
      this.productRef,
      this.notAppliesQuantity,
      this.appliesAsPurchaseQuantity,
      this.appliesAsDiscountQuantity,
      this.promotionDiscountAmount,
      this.promotionDiscountPercentage,
      this.promotionsJson});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || orderRef != null) {
      map['order_ref'] = Variable<String>(orderRef);
    }
    if (!nullToAbsent || productRef != null) {
      map['product_ref'] = Variable<String>(productRef);
    }
    if (!nullToAbsent || notAppliesQuantity != null) {
      map['not_applies_quantity'] = Variable<double>(notAppliesQuantity);
    }
    if (!nullToAbsent || appliesAsPurchaseQuantity != null) {
      map['applies_as_purchase_quantity'] =
          Variable<double>(appliesAsPurchaseQuantity);
    }
    if (!nullToAbsent || appliesAsDiscountQuantity != null) {
      map['applies_as_discount_quantity'] =
          Variable<double>(appliesAsDiscountQuantity);
    }
    if (!nullToAbsent || promotionDiscountAmount != null) {
      map['promotion_discount_amount'] =
          Variable<double>(promotionDiscountAmount);
    }
    if (!nullToAbsent || promotionDiscountPercentage != null) {
      map['promotion_discount_percentage'] =
          Variable<double>(promotionDiscountPercentage);
    }
    if (!nullToAbsent || promotionsJson != null) {
      map['promotions_json'] = Variable<String>(
          $OrderProductPromotionInfoV2Table.$converterpromotionsJson
              .toSql(promotionsJson));
    }
    return map;
  }

  OrderProductPromotionInfoV2Companion toCompanion(bool nullToAbsent) {
    return OrderProductPromotionInfoV2Companion(
      orderRef: orderRef == null && nullToAbsent
          ? const Value.absent()
          : Value(orderRef),
      productRef: productRef == null && nullToAbsent
          ? const Value.absent()
          : Value(productRef),
      notAppliesQuantity: notAppliesQuantity == null && nullToAbsent
          ? const Value.absent()
          : Value(notAppliesQuantity),
      appliesAsPurchaseQuantity:
          appliesAsPurchaseQuantity == null && nullToAbsent
              ? const Value.absent()
              : Value(appliesAsPurchaseQuantity),
      appliesAsDiscountQuantity:
          appliesAsDiscountQuantity == null && nullToAbsent
              ? const Value.absent()
              : Value(appliesAsDiscountQuantity),
      promotionDiscountAmount: promotionDiscountAmount == null && nullToAbsent
          ? const Value.absent()
          : Value(promotionDiscountAmount),
      promotionDiscountPercentage:
          promotionDiscountPercentage == null && nullToAbsent
              ? const Value.absent()
              : Value(promotionDiscountPercentage),
      promotionsJson: promotionsJson == null && nullToAbsent
          ? const Value.absent()
          : Value(promotionsJson),
    );
  }

  factory OrderProductPromotionInfoV2Data.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return OrderProductPromotionInfoV2Data(
      orderRef: serializer.fromJson<String?>(json['orderRef']),
      productRef: serializer.fromJson<String?>(json['productRef']),
      notAppliesQuantity:
          serializer.fromJson<double?>(json['notAppliesQuantity']),
      appliesAsPurchaseQuantity:
          serializer.fromJson<double?>(json['appliesAsPurchaseQuantity']),
      appliesAsDiscountQuantity:
          serializer.fromJson<double?>(json['appliesAsDiscountQuantity']),
      promotionDiscountAmount:
          serializer.fromJson<double?>(json['promotionDiscountAmount']),
      promotionDiscountPercentage:
          serializer.fromJson<double?>(json['promotionDiscountPercentage']),
      promotionsJson: serializer.fromJson<dynamic>(json['promotionsJson']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'orderRef': serializer.toJson<String?>(orderRef),
      'productRef': serializer.toJson<String?>(productRef),
      'notAppliesQuantity': serializer.toJson<double?>(notAppliesQuantity),
      'appliesAsPurchaseQuantity':
          serializer.toJson<double?>(appliesAsPurchaseQuantity),
      'appliesAsDiscountQuantity':
          serializer.toJson<double?>(appliesAsDiscountQuantity),
      'promotionDiscountAmount':
          serializer.toJson<double?>(promotionDiscountAmount),
      'promotionDiscountPercentage':
          serializer.toJson<double?>(promotionDiscountPercentage),
      'promotionsJson': serializer.toJson<dynamic>(promotionsJson),
    };
  }

  OrderProductPromotionInfoV2Data copyWith(
          {Value<String?> orderRef = const Value.absent(),
          Value<String?> productRef = const Value.absent(),
          Value<double?> notAppliesQuantity = const Value.absent(),
          Value<double?> appliesAsPurchaseQuantity = const Value.absent(),
          Value<double?> appliesAsDiscountQuantity = const Value.absent(),
          Value<double?> promotionDiscountAmount = const Value.absent(),
          Value<double?> promotionDiscountPercentage = const Value.absent(),
          Value<dynamic> promotionsJson = const Value.absent()}) =>
      OrderProductPromotionInfoV2Data(
        orderRef: orderRef.present ? orderRef.value : this.orderRef,
        productRef: productRef.present ? productRef.value : this.productRef,
        notAppliesQuantity: notAppliesQuantity.present
            ? notAppliesQuantity.value
            : this.notAppliesQuantity,
        appliesAsPurchaseQuantity: appliesAsPurchaseQuantity.present
            ? appliesAsPurchaseQuantity.value
            : this.appliesAsPurchaseQuantity,
        appliesAsDiscountQuantity: appliesAsDiscountQuantity.present
            ? appliesAsDiscountQuantity.value
            : this.appliesAsDiscountQuantity,
        promotionDiscountAmount: promotionDiscountAmount.present
            ? promotionDiscountAmount.value
            : this.promotionDiscountAmount,
        promotionDiscountPercentage: promotionDiscountPercentage.present
            ? promotionDiscountPercentage.value
            : this.promotionDiscountPercentage,
        promotionsJson:
            promotionsJson.present ? promotionsJson.value : this.promotionsJson,
      );
  @override
  String toString() {
    return (StringBuffer('OrderProductPromotionInfoV2Data(')
          ..write('orderRef: $orderRef, ')
          ..write('productRef: $productRef, ')
          ..write('notAppliesQuantity: $notAppliesQuantity, ')
          ..write('appliesAsPurchaseQuantity: $appliesAsPurchaseQuantity, ')
          ..write('appliesAsDiscountQuantity: $appliesAsDiscountQuantity, ')
          ..write('promotionDiscountAmount: $promotionDiscountAmount, ')
          ..write('promotionDiscountPercentage: $promotionDiscountPercentage, ')
          ..write('promotionsJson: $promotionsJson')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      orderRef,
      productRef,
      notAppliesQuantity,
      appliesAsPurchaseQuantity,
      appliesAsDiscountQuantity,
      promotionDiscountAmount,
      promotionDiscountPercentage,
      promotionsJson);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is OrderProductPromotionInfoV2Data &&
          other.orderRef == this.orderRef &&
          other.productRef == this.productRef &&
          other.notAppliesQuantity == this.notAppliesQuantity &&
          other.appliesAsPurchaseQuantity == this.appliesAsPurchaseQuantity &&
          other.appliesAsDiscountQuantity == this.appliesAsDiscountQuantity &&
          other.promotionDiscountAmount == this.promotionDiscountAmount &&
          other.promotionDiscountPercentage ==
              this.promotionDiscountPercentage &&
          other.promotionsJson == this.promotionsJson);
}

class OrderProductPromotionInfoV2Companion
    extends UpdateCompanion<OrderProductPromotionInfoV2Data> {
  final Value<String?> orderRef;
  final Value<String?> productRef;
  final Value<double?> notAppliesQuantity;
  final Value<double?> appliesAsPurchaseQuantity;
  final Value<double?> appliesAsDiscountQuantity;
  final Value<double?> promotionDiscountAmount;
  final Value<double?> promotionDiscountPercentage;
  final Value<dynamic> promotionsJson;
  final Value<int> rowid;
  const OrderProductPromotionInfoV2Companion({
    this.orderRef = const Value.absent(),
    this.productRef = const Value.absent(),
    this.notAppliesQuantity = const Value.absent(),
    this.appliesAsPurchaseQuantity = const Value.absent(),
    this.appliesAsDiscountQuantity = const Value.absent(),
    this.promotionDiscountAmount = const Value.absent(),
    this.promotionDiscountPercentage = const Value.absent(),
    this.promotionsJson = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  OrderProductPromotionInfoV2Companion.insert({
    this.orderRef = const Value.absent(),
    this.productRef = const Value.absent(),
    this.notAppliesQuantity = const Value.absent(),
    this.appliesAsPurchaseQuantity = const Value.absent(),
    this.appliesAsDiscountQuantity = const Value.absent(),
    this.promotionDiscountAmount = const Value.absent(),
    this.promotionDiscountPercentage = const Value.absent(),
    this.promotionsJson = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  static Insertable<OrderProductPromotionInfoV2Data> custom({
    Expression<String>? orderRef,
    Expression<String>? productRef,
    Expression<double>? notAppliesQuantity,
    Expression<double>? appliesAsPurchaseQuantity,
    Expression<double>? appliesAsDiscountQuantity,
    Expression<double>? promotionDiscountAmount,
    Expression<double>? promotionDiscountPercentage,
    Expression<String>? promotionsJson,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (orderRef != null) 'order_ref': orderRef,
      if (productRef != null) 'product_ref': productRef,
      if (notAppliesQuantity != null)
        'not_applies_quantity': notAppliesQuantity,
      if (appliesAsPurchaseQuantity != null)
        'applies_as_purchase_quantity': appliesAsPurchaseQuantity,
      if (appliesAsDiscountQuantity != null)
        'applies_as_discount_quantity': appliesAsDiscountQuantity,
      if (promotionDiscountAmount != null)
        'promotion_discount_amount': promotionDiscountAmount,
      if (promotionDiscountPercentage != null)
        'promotion_discount_percentage': promotionDiscountPercentage,
      if (promotionsJson != null) 'promotions_json': promotionsJson,
      if (rowid != null) 'rowid': rowid,
    });
  }

  OrderProductPromotionInfoV2Companion copyWith(
      {Value<String?>? orderRef,
      Value<String?>? productRef,
      Value<double?>? notAppliesQuantity,
      Value<double?>? appliesAsPurchaseQuantity,
      Value<double?>? appliesAsDiscountQuantity,
      Value<double?>? promotionDiscountAmount,
      Value<double?>? promotionDiscountPercentage,
      Value<dynamic>? promotionsJson,
      Value<int>? rowid}) {
    return OrderProductPromotionInfoV2Companion(
      orderRef: orderRef ?? this.orderRef,
      productRef: productRef ?? this.productRef,
      notAppliesQuantity: notAppliesQuantity ?? this.notAppliesQuantity,
      appliesAsPurchaseQuantity:
          appliesAsPurchaseQuantity ?? this.appliesAsPurchaseQuantity,
      appliesAsDiscountQuantity:
          appliesAsDiscountQuantity ?? this.appliesAsDiscountQuantity,
      promotionDiscountAmount:
          promotionDiscountAmount ?? this.promotionDiscountAmount,
      promotionDiscountPercentage:
          promotionDiscountPercentage ?? this.promotionDiscountPercentage,
      promotionsJson: promotionsJson ?? this.promotionsJson,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (orderRef.present) {
      map['order_ref'] = Variable<String>(orderRef.value);
    }
    if (productRef.present) {
      map['product_ref'] = Variable<String>(productRef.value);
    }
    if (notAppliesQuantity.present) {
      map['not_applies_quantity'] = Variable<double>(notAppliesQuantity.value);
    }
    if (appliesAsPurchaseQuantity.present) {
      map['applies_as_purchase_quantity'] =
          Variable<double>(appliesAsPurchaseQuantity.value);
    }
    if (appliesAsDiscountQuantity.present) {
      map['applies_as_discount_quantity'] =
          Variable<double>(appliesAsDiscountQuantity.value);
    }
    if (promotionDiscountAmount.present) {
      map['promotion_discount_amount'] =
          Variable<double>(promotionDiscountAmount.value);
    }
    if (promotionDiscountPercentage.present) {
      map['promotion_discount_percentage'] =
          Variable<double>(promotionDiscountPercentage.value);
    }
    if (promotionsJson.present) {
      map['promotions_json'] = Variable<String>(
          $OrderProductPromotionInfoV2Table.$converterpromotionsJson
              .toSql(promotionsJson.value));
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('OrderProductPromotionInfoV2Companion(')
          ..write('orderRef: $orderRef, ')
          ..write('productRef: $productRef, ')
          ..write('notAppliesQuantity: $notAppliesQuantity, ')
          ..write('appliesAsPurchaseQuantity: $appliesAsPurchaseQuantity, ')
          ..write('appliesAsDiscountQuantity: $appliesAsDiscountQuantity, ')
          ..write('promotionDiscountAmount: $promotionDiscountAmount, ')
          ..write('promotionDiscountPercentage: $promotionDiscountPercentage, ')
          ..write('promotionsJson: $promotionsJson, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $OrderProductChargeV2Table extends OrderProductChargeV2
    with TableInfo<$OrderProductChargeV2Table, OrderProductChargeV2Data> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $OrderProductChargeV2Table(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _orderRefMeta =
      const VerificationMeta('orderRef');
  @override
  late final GeneratedColumn<String> orderRef = GeneratedColumn<String>(
      'order_ref', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES order_entity_v2 (order_ref) ON DELETE CASCADE'));
  static const VerificationMeta _productRefMeta =
      const VerificationMeta('productRef');
  @override
  late final GeneratedColumn<String> productRef = GeneratedColumn<String>(
      'product_ref', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _chargeIdMeta =
      const VerificationMeta('chargeId');
  @override
  late final GeneratedColumn<String> chargeId = GeneratedColumn<String>(
      'charge_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _amountMeta = const VerificationMeta('amount');
  @override
  late final GeneratedColumn<double> amount = GeneratedColumn<double>(
      'amount', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _percentageMeta =
      const VerificationMeta('percentage');
  @override
  late final GeneratedColumn<double> percentage = GeneratedColumn<double>(
      'percentage', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [orderRef, productRef, chargeId, name, amount, percentage];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'order_product_charge_v2';
  @override
  VerificationContext validateIntegrity(
      Insertable<OrderProductChargeV2Data> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('order_ref')) {
      context.handle(_orderRefMeta,
          orderRef.isAcceptableOrUnknown(data['order_ref']!, _orderRefMeta));
    }
    if (data.containsKey('product_ref')) {
      context.handle(
          _productRefMeta,
          productRef.isAcceptableOrUnknown(
              data['product_ref']!, _productRefMeta));
    }
    if (data.containsKey('charge_id')) {
      context.handle(_chargeIdMeta,
          chargeId.isAcceptableOrUnknown(data['charge_id']!, _chargeIdMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    }
    if (data.containsKey('amount')) {
      context.handle(_amountMeta,
          amount.isAcceptableOrUnknown(data['amount']!, _amountMeta));
    }
    if (data.containsKey('percentage')) {
      context.handle(
          _percentageMeta,
          percentage.isAcceptableOrUnknown(
              data['percentage']!, _percentageMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {orderRef, productRef, chargeId};
  @override
  OrderProductChargeV2Data map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return OrderProductChargeV2Data(
      orderRef: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}order_ref']),
      productRef: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}product_ref']),
      chargeId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}charge_id']),
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name']),
      amount: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}amount']),
      percentage: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}percentage']),
    );
  }

  @override
  $OrderProductChargeV2Table createAlias(String alias) {
    return $OrderProductChargeV2Table(attachedDatabase, alias);
  }
}

class OrderProductChargeV2Data extends DataClass
    implements Insertable<OrderProductChargeV2Data> {
  final String? orderRef;
  final String? productRef;
  final String? chargeId;
  final String? name;
  final double? amount;
  final double? percentage;
  const OrderProductChargeV2Data(
      {this.orderRef,
      this.productRef,
      this.chargeId,
      this.name,
      this.amount,
      this.percentage});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || orderRef != null) {
      map['order_ref'] = Variable<String>(orderRef);
    }
    if (!nullToAbsent || productRef != null) {
      map['product_ref'] = Variable<String>(productRef);
    }
    if (!nullToAbsent || chargeId != null) {
      map['charge_id'] = Variable<String>(chargeId);
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || amount != null) {
      map['amount'] = Variable<double>(amount);
    }
    if (!nullToAbsent || percentage != null) {
      map['percentage'] = Variable<double>(percentage);
    }
    return map;
  }

  OrderProductChargeV2Companion toCompanion(bool nullToAbsent) {
    return OrderProductChargeV2Companion(
      orderRef: orderRef == null && nullToAbsent
          ? const Value.absent()
          : Value(orderRef),
      productRef: productRef == null && nullToAbsent
          ? const Value.absent()
          : Value(productRef),
      chargeId: chargeId == null && nullToAbsent
          ? const Value.absent()
          : Value(chargeId),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      amount:
          amount == null && nullToAbsent ? const Value.absent() : Value(amount),
      percentage: percentage == null && nullToAbsent
          ? const Value.absent()
          : Value(percentage),
    );
  }

  factory OrderProductChargeV2Data.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return OrderProductChargeV2Data(
      orderRef: serializer.fromJson<String?>(json['orderRef']),
      productRef: serializer.fromJson<String?>(json['productRef']),
      chargeId: serializer.fromJson<String?>(json['chargeId']),
      name: serializer.fromJson<String?>(json['name']),
      amount: serializer.fromJson<double?>(json['amount']),
      percentage: serializer.fromJson<double?>(json['percentage']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'orderRef': serializer.toJson<String?>(orderRef),
      'productRef': serializer.toJson<String?>(productRef),
      'chargeId': serializer.toJson<String?>(chargeId),
      'name': serializer.toJson<String?>(name),
      'amount': serializer.toJson<double?>(amount),
      'percentage': serializer.toJson<double?>(percentage),
    };
  }

  OrderProductChargeV2Data copyWith(
          {Value<String?> orderRef = const Value.absent(),
          Value<String?> productRef = const Value.absent(),
          Value<String?> chargeId = const Value.absent(),
          Value<String?> name = const Value.absent(),
          Value<double?> amount = const Value.absent(),
          Value<double?> percentage = const Value.absent()}) =>
      OrderProductChargeV2Data(
        orderRef: orderRef.present ? orderRef.value : this.orderRef,
        productRef: productRef.present ? productRef.value : this.productRef,
        chargeId: chargeId.present ? chargeId.value : this.chargeId,
        name: name.present ? name.value : this.name,
        amount: amount.present ? amount.value : this.amount,
        percentage: percentage.present ? percentage.value : this.percentage,
      );
  @override
  String toString() {
    return (StringBuffer('OrderProductChargeV2Data(')
          ..write('orderRef: $orderRef, ')
          ..write('productRef: $productRef, ')
          ..write('chargeId: $chargeId, ')
          ..write('name: $name, ')
          ..write('amount: $amount, ')
          ..write('percentage: $percentage')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(orderRef, productRef, chargeId, name, amount, percentage);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is OrderProductChargeV2Data &&
          other.orderRef == this.orderRef &&
          other.productRef == this.productRef &&
          other.chargeId == this.chargeId &&
          other.name == this.name &&
          other.amount == this.amount &&
          other.percentage == this.percentage);
}

class OrderProductChargeV2Companion
    extends UpdateCompanion<OrderProductChargeV2Data> {
  final Value<String?> orderRef;
  final Value<String?> productRef;
  final Value<String?> chargeId;
  final Value<String?> name;
  final Value<double?> amount;
  final Value<double?> percentage;
  final Value<int> rowid;
  const OrderProductChargeV2Companion({
    this.orderRef = const Value.absent(),
    this.productRef = const Value.absent(),
    this.chargeId = const Value.absent(),
    this.name = const Value.absent(),
    this.amount = const Value.absent(),
    this.percentage = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  OrderProductChargeV2Companion.insert({
    this.orderRef = const Value.absent(),
    this.productRef = const Value.absent(),
    this.chargeId = const Value.absent(),
    this.name = const Value.absent(),
    this.amount = const Value.absent(),
    this.percentage = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  static Insertable<OrderProductChargeV2Data> custom({
    Expression<String>? orderRef,
    Expression<String>? productRef,
    Expression<String>? chargeId,
    Expression<String>? name,
    Expression<double>? amount,
    Expression<double>? percentage,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (orderRef != null) 'order_ref': orderRef,
      if (productRef != null) 'product_ref': productRef,
      if (chargeId != null) 'charge_id': chargeId,
      if (name != null) 'name': name,
      if (amount != null) 'amount': amount,
      if (percentage != null) 'percentage': percentage,
      if (rowid != null) 'rowid': rowid,
    });
  }

  OrderProductChargeV2Companion copyWith(
      {Value<String?>? orderRef,
      Value<String?>? productRef,
      Value<String?>? chargeId,
      Value<String?>? name,
      Value<double?>? amount,
      Value<double?>? percentage,
      Value<int>? rowid}) {
    return OrderProductChargeV2Companion(
      orderRef: orderRef ?? this.orderRef,
      productRef: productRef ?? this.productRef,
      chargeId: chargeId ?? this.chargeId,
      name: name ?? this.name,
      amount: amount ?? this.amount,
      percentage: percentage ?? this.percentage,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (orderRef.present) {
      map['order_ref'] = Variable<String>(orderRef.value);
    }
    if (productRef.present) {
      map['product_ref'] = Variable<String>(productRef.value);
    }
    if (chargeId.present) {
      map['charge_id'] = Variable<String>(chargeId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (amount.present) {
      map['amount'] = Variable<double>(amount.value);
    }
    if (percentage.present) {
      map['percentage'] = Variable<double>(percentage.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('OrderProductChargeV2Companion(')
          ..write('orderRef: $orderRef, ')
          ..write('productRef: $productRef, ')
          ..write('chargeId: $chargeId, ')
          ..write('name: $name, ')
          ..write('amount: $amount, ')
          ..write('percentage: $percentage, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $OrderProductTaxInfoV2Table extends OrderProductTaxInfoV2
    with TableInfo<$OrderProductTaxInfoV2Table, OrderProductTaxInfoV2Data> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $OrderProductTaxInfoV2Table(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _orderRefMeta =
      const VerificationMeta('orderRef');
  @override
  late final GeneratedColumn<String> orderRef = GeneratedColumn<String>(
      'order_ref', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES order_entity_v2 (order_ref) ON DELETE CASCADE'));
  static const VerificationMeta _productRefMeta =
      const VerificationMeta('productRef');
  @override
  late final GeneratedColumn<String> productRef = GeneratedColumn<String>(
      'product_ref', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _modifierIdMeta =
      const VerificationMeta('modifierId');
  @override
  late final GeneratedColumn<String> modifierId = GeneratedColumn<String>(
      'modifier_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _optionIdMeta =
      const VerificationMeta('optionId');
  @override
  late final GeneratedColumn<String> optionId = GeneratedColumn<String>(
      'option_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _taxableAmountMeta =
      const VerificationMeta('taxableAmount');
  @override
  late final GeneratedColumn<double> taxableAmount = GeneratedColumn<double>(
      'taxable_amount', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _taxAmountMeta =
      const VerificationMeta('taxAmount');
  @override
  late final GeneratedColumn<double> taxAmount = GeneratedColumn<double>(
      'tax_amount', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _taxPercentageMeta =
      const VerificationMeta('taxPercentage');
  @override
  late final GeneratedColumn<double> taxPercentage = GeneratedColumn<double>(
      'tax_percentage', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _taxGroupIdMeta =
      const VerificationMeta('taxGroupId');
  @override
  late final GeneratedColumn<String> taxGroupId = GeneratedColumn<String>(
      'tax_group_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        orderRef,
        productRef,
        modifierId,
        optionId,
        taxableAmount,
        taxAmount,
        taxPercentage,
        taxGroupId
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'order_product_tax_info_v2';
  @override
  VerificationContext validateIntegrity(
      Insertable<OrderProductTaxInfoV2Data> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('order_ref')) {
      context.handle(_orderRefMeta,
          orderRef.isAcceptableOrUnknown(data['order_ref']!, _orderRefMeta));
    }
    if (data.containsKey('product_ref')) {
      context.handle(
          _productRefMeta,
          productRef.isAcceptableOrUnknown(
              data['product_ref']!, _productRefMeta));
    }
    if (data.containsKey('modifier_id')) {
      context.handle(
          _modifierIdMeta,
          modifierId.isAcceptableOrUnknown(
              data['modifier_id']!, _modifierIdMeta));
    }
    if (data.containsKey('option_id')) {
      context.handle(_optionIdMeta,
          optionId.isAcceptableOrUnknown(data['option_id']!, _optionIdMeta));
    }
    if (data.containsKey('taxable_amount')) {
      context.handle(
          _taxableAmountMeta,
          taxableAmount.isAcceptableOrUnknown(
              data['taxable_amount']!, _taxableAmountMeta));
    }
    if (data.containsKey('tax_amount')) {
      context.handle(_taxAmountMeta,
          taxAmount.isAcceptableOrUnknown(data['tax_amount']!, _taxAmountMeta));
    }
    if (data.containsKey('tax_percentage')) {
      context.handle(
          _taxPercentageMeta,
          taxPercentage.isAcceptableOrUnknown(
              data['tax_percentage']!, _taxPercentageMeta));
    }
    if (data.containsKey('tax_group_id')) {
      context.handle(
          _taxGroupIdMeta,
          taxGroupId.isAcceptableOrUnknown(
              data['tax_group_id']!, _taxGroupIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {orderRef, productRef};
  @override
  OrderProductTaxInfoV2Data map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return OrderProductTaxInfoV2Data(
      orderRef: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}order_ref']),
      productRef: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}product_ref']),
      modifierId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}modifier_id']),
      optionId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}option_id']),
      taxableAmount: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}taxable_amount']),
      taxAmount: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}tax_amount']),
      taxPercentage: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}tax_percentage']),
      taxGroupId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}tax_group_id']),
    );
  }

  @override
  $OrderProductTaxInfoV2Table createAlias(String alias) {
    return $OrderProductTaxInfoV2Table(attachedDatabase, alias);
  }
}

class OrderProductTaxInfoV2Data extends DataClass
    implements Insertable<OrderProductTaxInfoV2Data> {
  final String? orderRef;
  final String? productRef;
  final String? modifierId;
  final String? optionId;
  final double? taxableAmount;
  final double? taxAmount;
  final double? taxPercentage;
  final String? taxGroupId;
  const OrderProductTaxInfoV2Data(
      {this.orderRef,
      this.productRef,
      this.modifierId,
      this.optionId,
      this.taxableAmount,
      this.taxAmount,
      this.taxPercentage,
      this.taxGroupId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || orderRef != null) {
      map['order_ref'] = Variable<String>(orderRef);
    }
    if (!nullToAbsent || productRef != null) {
      map['product_ref'] = Variable<String>(productRef);
    }
    if (!nullToAbsent || modifierId != null) {
      map['modifier_id'] = Variable<String>(modifierId);
    }
    if (!nullToAbsent || optionId != null) {
      map['option_id'] = Variable<String>(optionId);
    }
    if (!nullToAbsent || taxableAmount != null) {
      map['taxable_amount'] = Variable<double>(taxableAmount);
    }
    if (!nullToAbsent || taxAmount != null) {
      map['tax_amount'] = Variable<double>(taxAmount);
    }
    if (!nullToAbsent || taxPercentage != null) {
      map['tax_percentage'] = Variable<double>(taxPercentage);
    }
    if (!nullToAbsent || taxGroupId != null) {
      map['tax_group_id'] = Variable<String>(taxGroupId);
    }
    return map;
  }

  OrderProductTaxInfoV2Companion toCompanion(bool nullToAbsent) {
    return OrderProductTaxInfoV2Companion(
      orderRef: orderRef == null && nullToAbsent
          ? const Value.absent()
          : Value(orderRef),
      productRef: productRef == null && nullToAbsent
          ? const Value.absent()
          : Value(productRef),
      modifierId: modifierId == null && nullToAbsent
          ? const Value.absent()
          : Value(modifierId),
      optionId: optionId == null && nullToAbsent
          ? const Value.absent()
          : Value(optionId),
      taxableAmount: taxableAmount == null && nullToAbsent
          ? const Value.absent()
          : Value(taxableAmount),
      taxAmount: taxAmount == null && nullToAbsent
          ? const Value.absent()
          : Value(taxAmount),
      taxPercentage: taxPercentage == null && nullToAbsent
          ? const Value.absent()
          : Value(taxPercentage),
      taxGroupId: taxGroupId == null && nullToAbsent
          ? const Value.absent()
          : Value(taxGroupId),
    );
  }

  factory OrderProductTaxInfoV2Data.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return OrderProductTaxInfoV2Data(
      orderRef: serializer.fromJson<String?>(json['orderRef']),
      productRef: serializer.fromJson<String?>(json['productRef']),
      modifierId: serializer.fromJson<String?>(json['modifierId']),
      optionId: serializer.fromJson<String?>(json['optionId']),
      taxableAmount: serializer.fromJson<double?>(json['taxableAmount']),
      taxAmount: serializer.fromJson<double?>(json['taxAmount']),
      taxPercentage: serializer.fromJson<double?>(json['taxPercentage']),
      taxGroupId: serializer.fromJson<String?>(json['taxGroupId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'orderRef': serializer.toJson<String?>(orderRef),
      'productRef': serializer.toJson<String?>(productRef),
      'modifierId': serializer.toJson<String?>(modifierId),
      'optionId': serializer.toJson<String?>(optionId),
      'taxableAmount': serializer.toJson<double?>(taxableAmount),
      'taxAmount': serializer.toJson<double?>(taxAmount),
      'taxPercentage': serializer.toJson<double?>(taxPercentage),
      'taxGroupId': serializer.toJson<String?>(taxGroupId),
    };
  }

  OrderProductTaxInfoV2Data copyWith(
          {Value<String?> orderRef = const Value.absent(),
          Value<String?> productRef = const Value.absent(),
          Value<String?> modifierId = const Value.absent(),
          Value<String?> optionId = const Value.absent(),
          Value<double?> taxableAmount = const Value.absent(),
          Value<double?> taxAmount = const Value.absent(),
          Value<double?> taxPercentage = const Value.absent(),
          Value<String?> taxGroupId = const Value.absent()}) =>
      OrderProductTaxInfoV2Data(
        orderRef: orderRef.present ? orderRef.value : this.orderRef,
        productRef: productRef.present ? productRef.value : this.productRef,
        modifierId: modifierId.present ? modifierId.value : this.modifierId,
        optionId: optionId.present ? optionId.value : this.optionId,
        taxableAmount:
            taxableAmount.present ? taxableAmount.value : this.taxableAmount,
        taxAmount: taxAmount.present ? taxAmount.value : this.taxAmount,
        taxPercentage:
            taxPercentage.present ? taxPercentage.value : this.taxPercentage,
        taxGroupId: taxGroupId.present ? taxGroupId.value : this.taxGroupId,
      );
  @override
  String toString() {
    return (StringBuffer('OrderProductTaxInfoV2Data(')
          ..write('orderRef: $orderRef, ')
          ..write('productRef: $productRef, ')
          ..write('modifierId: $modifierId, ')
          ..write('optionId: $optionId, ')
          ..write('taxableAmount: $taxableAmount, ')
          ..write('taxAmount: $taxAmount, ')
          ..write('taxPercentage: $taxPercentage, ')
          ..write('taxGroupId: $taxGroupId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(orderRef, productRef, modifierId, optionId,
      taxableAmount, taxAmount, taxPercentage, taxGroupId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is OrderProductTaxInfoV2Data &&
          other.orderRef == this.orderRef &&
          other.productRef == this.productRef &&
          other.modifierId == this.modifierId &&
          other.optionId == this.optionId &&
          other.taxableAmount == this.taxableAmount &&
          other.taxAmount == this.taxAmount &&
          other.taxPercentage == this.taxPercentage &&
          other.taxGroupId == this.taxGroupId);
}

class OrderProductTaxInfoV2Companion
    extends UpdateCompanion<OrderProductTaxInfoV2Data> {
  final Value<String?> orderRef;
  final Value<String?> productRef;
  final Value<String?> modifierId;
  final Value<String?> optionId;
  final Value<double?> taxableAmount;
  final Value<double?> taxAmount;
  final Value<double?> taxPercentage;
  final Value<String?> taxGroupId;
  final Value<int> rowid;
  const OrderProductTaxInfoV2Companion({
    this.orderRef = const Value.absent(),
    this.productRef = const Value.absent(),
    this.modifierId = const Value.absent(),
    this.optionId = const Value.absent(),
    this.taxableAmount = const Value.absent(),
    this.taxAmount = const Value.absent(),
    this.taxPercentage = const Value.absent(),
    this.taxGroupId = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  OrderProductTaxInfoV2Companion.insert({
    this.orderRef = const Value.absent(),
    this.productRef = const Value.absent(),
    this.modifierId = const Value.absent(),
    this.optionId = const Value.absent(),
    this.taxableAmount = const Value.absent(),
    this.taxAmount = const Value.absent(),
    this.taxPercentage = const Value.absent(),
    this.taxGroupId = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  static Insertable<OrderProductTaxInfoV2Data> custom({
    Expression<String>? orderRef,
    Expression<String>? productRef,
    Expression<String>? modifierId,
    Expression<String>? optionId,
    Expression<double>? taxableAmount,
    Expression<double>? taxAmount,
    Expression<double>? taxPercentage,
    Expression<String>? taxGroupId,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (orderRef != null) 'order_ref': orderRef,
      if (productRef != null) 'product_ref': productRef,
      if (modifierId != null) 'modifier_id': modifierId,
      if (optionId != null) 'option_id': optionId,
      if (taxableAmount != null) 'taxable_amount': taxableAmount,
      if (taxAmount != null) 'tax_amount': taxAmount,
      if (taxPercentage != null) 'tax_percentage': taxPercentage,
      if (taxGroupId != null) 'tax_group_id': taxGroupId,
      if (rowid != null) 'rowid': rowid,
    });
  }

  OrderProductTaxInfoV2Companion copyWith(
      {Value<String?>? orderRef,
      Value<String?>? productRef,
      Value<String?>? modifierId,
      Value<String?>? optionId,
      Value<double?>? taxableAmount,
      Value<double?>? taxAmount,
      Value<double?>? taxPercentage,
      Value<String?>? taxGroupId,
      Value<int>? rowid}) {
    return OrderProductTaxInfoV2Companion(
      orderRef: orderRef ?? this.orderRef,
      productRef: productRef ?? this.productRef,
      modifierId: modifierId ?? this.modifierId,
      optionId: optionId ?? this.optionId,
      taxableAmount: taxableAmount ?? this.taxableAmount,
      taxAmount: taxAmount ?? this.taxAmount,
      taxPercentage: taxPercentage ?? this.taxPercentage,
      taxGroupId: taxGroupId ?? this.taxGroupId,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (orderRef.present) {
      map['order_ref'] = Variable<String>(orderRef.value);
    }
    if (productRef.present) {
      map['product_ref'] = Variable<String>(productRef.value);
    }
    if (modifierId.present) {
      map['modifier_id'] = Variable<String>(modifierId.value);
    }
    if (optionId.present) {
      map['option_id'] = Variable<String>(optionId.value);
    }
    if (taxableAmount.present) {
      map['taxable_amount'] = Variable<double>(taxableAmount.value);
    }
    if (taxAmount.present) {
      map['tax_amount'] = Variable<double>(taxAmount.value);
    }
    if (taxPercentage.present) {
      map['tax_percentage'] = Variable<double>(taxPercentage.value);
    }
    if (taxGroupId.present) {
      map['tax_group_id'] = Variable<String>(taxGroupId.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('OrderProductTaxInfoV2Companion(')
          ..write('orderRef: $orderRef, ')
          ..write('productRef: $productRef, ')
          ..write('modifierId: $modifierId, ')
          ..write('optionId: $optionId, ')
          ..write('taxableAmount: $taxableAmount, ')
          ..write('taxAmount: $taxAmount, ')
          ..write('taxPercentage: $taxPercentage, ')
          ..write('taxGroupId: $taxGroupId, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $OrderProductChargeTaxV2Table extends OrderProductChargeTaxV2
    with TableInfo<$OrderProductChargeTaxV2Table, OrderProductChargeTaxV2Data> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $OrderProductChargeTaxV2Table(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _orderRefMeta =
      const VerificationMeta('orderRef');
  @override
  late final GeneratedColumn<String> orderRef = GeneratedColumn<String>(
      'order_ref', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES order_entity_v2 (order_ref) ON DELETE CASCADE'));
  static const VerificationMeta _productRefMeta =
      const VerificationMeta('productRef');
  @override
  late final GeneratedColumn<String> productRef = GeneratedColumn<String>(
      'product_ref', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _taxIdMeta = const VerificationMeta('taxId');
  @override
  late final GeneratedColumn<String> taxId = GeneratedColumn<String>(
      'tax_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _amountMeta = const VerificationMeta('amount');
  @override
  late final GeneratedColumn<double> amount = GeneratedColumn<double>(
      'amount', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _percentageMeta =
      const VerificationMeta('percentage');
  @override
  late final GeneratedColumn<double> percentage = GeneratedColumn<double>(
      'percentage', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [orderRef, productRef, taxId, name, amount, percentage];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'order_product_charge_tax_v2';
  @override
  VerificationContext validateIntegrity(
      Insertable<OrderProductChargeTaxV2Data> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('order_ref')) {
      context.handle(_orderRefMeta,
          orderRef.isAcceptableOrUnknown(data['order_ref']!, _orderRefMeta));
    }
    if (data.containsKey('product_ref')) {
      context.handle(
          _productRefMeta,
          productRef.isAcceptableOrUnknown(
              data['product_ref']!, _productRefMeta));
    }
    if (data.containsKey('tax_id')) {
      context.handle(
          _taxIdMeta, taxId.isAcceptableOrUnknown(data['tax_id']!, _taxIdMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    }
    if (data.containsKey('amount')) {
      context.handle(_amountMeta,
          amount.isAcceptableOrUnknown(data['amount']!, _amountMeta));
    }
    if (data.containsKey('percentage')) {
      context.handle(
          _percentageMeta,
          percentage.isAcceptableOrUnknown(
              data['percentage']!, _percentageMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {orderRef, productRef, taxId};
  @override
  OrderProductChargeTaxV2Data map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return OrderProductChargeTaxV2Data(
      orderRef: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}order_ref']),
      productRef: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}product_ref']),
      taxId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}tax_id']),
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name']),
      amount: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}amount']),
      percentage: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}percentage']),
    );
  }

  @override
  $OrderProductChargeTaxV2Table createAlias(String alias) {
    return $OrderProductChargeTaxV2Table(attachedDatabase, alias);
  }
}

class OrderProductChargeTaxV2Data extends DataClass
    implements Insertable<OrderProductChargeTaxV2Data> {
  final String? orderRef;
  final String? productRef;
  final String? taxId;
  final String? name;
  final double? amount;
  final double? percentage;
  const OrderProductChargeTaxV2Data(
      {this.orderRef,
      this.productRef,
      this.taxId,
      this.name,
      this.amount,
      this.percentage});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || orderRef != null) {
      map['order_ref'] = Variable<String>(orderRef);
    }
    if (!nullToAbsent || productRef != null) {
      map['product_ref'] = Variable<String>(productRef);
    }
    if (!nullToAbsent || taxId != null) {
      map['tax_id'] = Variable<String>(taxId);
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || amount != null) {
      map['amount'] = Variable<double>(amount);
    }
    if (!nullToAbsent || percentage != null) {
      map['percentage'] = Variable<double>(percentage);
    }
    return map;
  }

  OrderProductChargeTaxV2Companion toCompanion(bool nullToAbsent) {
    return OrderProductChargeTaxV2Companion(
      orderRef: orderRef == null && nullToAbsent
          ? const Value.absent()
          : Value(orderRef),
      productRef: productRef == null && nullToAbsent
          ? const Value.absent()
          : Value(productRef),
      taxId:
          taxId == null && nullToAbsent ? const Value.absent() : Value(taxId),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      amount:
          amount == null && nullToAbsent ? const Value.absent() : Value(amount),
      percentage: percentage == null && nullToAbsent
          ? const Value.absent()
          : Value(percentage),
    );
  }

  factory OrderProductChargeTaxV2Data.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return OrderProductChargeTaxV2Data(
      orderRef: serializer.fromJson<String?>(json['orderRef']),
      productRef: serializer.fromJson<String?>(json['productRef']),
      taxId: serializer.fromJson<String?>(json['taxId']),
      name: serializer.fromJson<String?>(json['name']),
      amount: serializer.fromJson<double?>(json['amount']),
      percentage: serializer.fromJson<double?>(json['percentage']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'orderRef': serializer.toJson<String?>(orderRef),
      'productRef': serializer.toJson<String?>(productRef),
      'taxId': serializer.toJson<String?>(taxId),
      'name': serializer.toJson<String?>(name),
      'amount': serializer.toJson<double?>(amount),
      'percentage': serializer.toJson<double?>(percentage),
    };
  }

  OrderProductChargeTaxV2Data copyWith(
          {Value<String?> orderRef = const Value.absent(),
          Value<String?> productRef = const Value.absent(),
          Value<String?> taxId = const Value.absent(),
          Value<String?> name = const Value.absent(),
          Value<double?> amount = const Value.absent(),
          Value<double?> percentage = const Value.absent()}) =>
      OrderProductChargeTaxV2Data(
        orderRef: orderRef.present ? orderRef.value : this.orderRef,
        productRef: productRef.present ? productRef.value : this.productRef,
        taxId: taxId.present ? taxId.value : this.taxId,
        name: name.present ? name.value : this.name,
        amount: amount.present ? amount.value : this.amount,
        percentage: percentage.present ? percentage.value : this.percentage,
      );
  @override
  String toString() {
    return (StringBuffer('OrderProductChargeTaxV2Data(')
          ..write('orderRef: $orderRef, ')
          ..write('productRef: $productRef, ')
          ..write('taxId: $taxId, ')
          ..write('name: $name, ')
          ..write('amount: $amount, ')
          ..write('percentage: $percentage')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(orderRef, productRef, taxId, name, amount, percentage);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is OrderProductChargeTaxV2Data &&
          other.orderRef == this.orderRef &&
          other.productRef == this.productRef &&
          other.taxId == this.taxId &&
          other.name == this.name &&
          other.amount == this.amount &&
          other.percentage == this.percentage);
}

class OrderProductChargeTaxV2Companion
    extends UpdateCompanion<OrderProductChargeTaxV2Data> {
  final Value<String?> orderRef;
  final Value<String?> productRef;
  final Value<String?> taxId;
  final Value<String?> name;
  final Value<double?> amount;
  final Value<double?> percentage;
  final Value<int> rowid;
  const OrderProductChargeTaxV2Companion({
    this.orderRef = const Value.absent(),
    this.productRef = const Value.absent(),
    this.taxId = const Value.absent(),
    this.name = const Value.absent(),
    this.amount = const Value.absent(),
    this.percentage = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  OrderProductChargeTaxV2Companion.insert({
    this.orderRef = const Value.absent(),
    this.productRef = const Value.absent(),
    this.taxId = const Value.absent(),
    this.name = const Value.absent(),
    this.amount = const Value.absent(),
    this.percentage = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  static Insertable<OrderProductChargeTaxV2Data> custom({
    Expression<String>? orderRef,
    Expression<String>? productRef,
    Expression<String>? taxId,
    Expression<String>? name,
    Expression<double>? amount,
    Expression<double>? percentage,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (orderRef != null) 'order_ref': orderRef,
      if (productRef != null) 'product_ref': productRef,
      if (taxId != null) 'tax_id': taxId,
      if (name != null) 'name': name,
      if (amount != null) 'amount': amount,
      if (percentage != null) 'percentage': percentage,
      if (rowid != null) 'rowid': rowid,
    });
  }

  OrderProductChargeTaxV2Companion copyWith(
      {Value<String?>? orderRef,
      Value<String?>? productRef,
      Value<String?>? taxId,
      Value<String?>? name,
      Value<double?>? amount,
      Value<double?>? percentage,
      Value<int>? rowid}) {
    return OrderProductChargeTaxV2Companion(
      orderRef: orderRef ?? this.orderRef,
      productRef: productRef ?? this.productRef,
      taxId: taxId ?? this.taxId,
      name: name ?? this.name,
      amount: amount ?? this.amount,
      percentage: percentage ?? this.percentage,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (orderRef.present) {
      map['order_ref'] = Variable<String>(orderRef.value);
    }
    if (productRef.present) {
      map['product_ref'] = Variable<String>(productRef.value);
    }
    if (taxId.present) {
      map['tax_id'] = Variable<String>(taxId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (amount.present) {
      map['amount'] = Variable<double>(amount.value);
    }
    if (percentage.present) {
      map['percentage'] = Variable<double>(percentage.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('OrderProductChargeTaxV2Companion(')
          ..write('orderRef: $orderRef, ')
          ..write('productRef: $productRef, ')
          ..write('taxId: $taxId, ')
          ..write('name: $name, ')
          ..write('amount: $amount, ')
          ..write('percentage: $percentage, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $OrderProductTaxTypeV2Table extends OrderProductTaxTypeV2
    with TableInfo<$OrderProductTaxTypeV2Table, OrderProductTaxTypeV2Data> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $OrderProductTaxTypeV2Table(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _productRefMeta =
      const VerificationMeta('productRef');
  @override
  late final GeneratedColumn<String> productRef = GeneratedColumn<String>(
      'product_ref', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _modifierIdMeta =
      const VerificationMeta('modifierId');
  @override
  late final GeneratedColumn<String> modifierId = GeneratedColumn<String>(
      'modifier_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _optionIdMeta =
      const VerificationMeta('optionId');
  @override
  late final GeneratedColumn<String> optionId = GeneratedColumn<String>(
      'option_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _taxAccountMeta =
      const VerificationMeta('taxAccount');
  @override
  late final GeneratedColumn<String> taxAccount = GeneratedColumn<String>(
      'tax_account', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _taxCodeMeta =
      const VerificationMeta('taxCode');
  @override
  late final GeneratedColumn<String> taxCode = GeneratedColumn<String>(
      'tax_code', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _orderRefMeta =
      const VerificationMeta('orderRef');
  @override
  late final GeneratedColumn<String> orderRef = GeneratedColumn<String>(
      'order_ref', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES order_entity_v2 (order_ref) ON DELETE CASCADE'));
  static const VerificationMeta _taxTypeIdMeta =
      const VerificationMeta('taxTypeId');
  @override
  late final GeneratedColumn<String> taxTypeId = GeneratedColumn<String>(
      'tax_type_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _taxTypeNameMeta =
      const VerificationMeta('taxTypeName');
  @override
  late final GeneratedColumn<String> taxTypeName = GeneratedColumn<String>(
      'tax_type_name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _taxAmountMeta =
      const VerificationMeta('taxAmount');
  @override
  late final GeneratedColumn<double> taxAmount = GeneratedColumn<double>(
      'tax_amount', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _taxPercentageMeta =
      const VerificationMeta('taxPercentage');
  @override
  late final GeneratedColumn<double> taxPercentage = GeneratedColumn<double>(
      'tax_percentage', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _taxableAmountMeta =
      const VerificationMeta('taxableAmount');
  @override
  late final GeneratedColumn<double> taxableAmount = GeneratedColumn<double>(
      'taxable_amount', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _taxGroupIdMeta =
      const VerificationMeta('taxGroupId');
  @override
  late final GeneratedColumn<String> taxGroupId = GeneratedColumn<String>(
      'tax_group_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _isTaxExemptMeta =
      const VerificationMeta('isTaxExempt');
  @override
  late final GeneratedColumn<bool> isTaxExempt = GeneratedColumn<bool>(
      'is_tax_exempt', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_tax_exempt" IN (0, 1))'));
  static const VerificationMeta _isZeroTaxMeta =
      const VerificationMeta('isZeroTax');
  @override
  late final GeneratedColumn<bool> isZeroTax = GeneratedColumn<bool>(
      'is_zero_tax', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_zero_tax" IN (0, 1))'));
  static const VerificationMeta _isNotApplyForThisCustomerMeta =
      const VerificationMeta('isNotApplyForThisCustomer');
  @override
  late final GeneratedColumn<bool> isNotApplyForThisCustomer =
      GeneratedColumn<bool>('is_not_apply_for_this_customer', aliasedName, true,
          type: DriftSqlType.bool,
          requiredDuringInsert: false,
          defaultConstraints: GeneratedColumn.constraintIsAlways(
              'CHECK ("is_not_apply_for_this_customer" IN (0, 1))'));
  static const VerificationMeta _isNotApplyForThisOrderTypeMeta =
      const VerificationMeta('isNotApplyForThisOrderType');
  @override
  late final GeneratedColumn<bool> isNotApplyForThisOrderType =
      GeneratedColumn<bool>(
          'is_not_apply_for_this_order_type', aliasedName, true,
          type: DriftSqlType.bool,
          requiredDuringInsert: false,
          defaultConstraints: GeneratedColumn.constraintIsAlways(
              'CHECK ("is_not_apply_for_this_order_type" IN (0, 1))'));
  static const VerificationMeta _isNotApplyForThisPeriodMeta =
      const VerificationMeta('isNotApplyForThisPeriod');
  @override
  late final GeneratedColumn<bool> isNotApplyForThisPeriod =
      GeneratedColumn<bool>('is_not_apply_for_this_period', aliasedName, true,
          type: DriftSqlType.bool,
          requiredDuringInsert: false,
          defaultConstraints: GeneratedColumn.constraintIsAlways(
              'CHECK ("is_not_apply_for_this_period" IN (0, 1))'));
  @override
  List<GeneratedColumn> get $columns => [
        productRef,
        modifierId,
        optionId,
        taxAccount,
        taxCode,
        orderRef,
        taxTypeId,
        taxTypeName,
        taxAmount,
        taxPercentage,
        taxableAmount,
        taxGroupId,
        isTaxExempt,
        isZeroTax,
        isNotApplyForThisCustomer,
        isNotApplyForThisOrderType,
        isNotApplyForThisPeriod
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'order_product_tax_type_v2';
  @override
  VerificationContext validateIntegrity(
      Insertable<OrderProductTaxTypeV2Data> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('product_ref')) {
      context.handle(
          _productRefMeta,
          productRef.isAcceptableOrUnknown(
              data['product_ref']!, _productRefMeta));
    }
    if (data.containsKey('modifier_id')) {
      context.handle(
          _modifierIdMeta,
          modifierId.isAcceptableOrUnknown(
              data['modifier_id']!, _modifierIdMeta));
    }
    if (data.containsKey('option_id')) {
      context.handle(_optionIdMeta,
          optionId.isAcceptableOrUnknown(data['option_id']!, _optionIdMeta));
    }
    if (data.containsKey('tax_account')) {
      context.handle(
          _taxAccountMeta,
          taxAccount.isAcceptableOrUnknown(
              data['tax_account']!, _taxAccountMeta));
    }
    if (data.containsKey('tax_code')) {
      context.handle(_taxCodeMeta,
          taxCode.isAcceptableOrUnknown(data['tax_code']!, _taxCodeMeta));
    }
    if (data.containsKey('order_ref')) {
      context.handle(_orderRefMeta,
          orderRef.isAcceptableOrUnknown(data['order_ref']!, _orderRefMeta));
    }
    if (data.containsKey('tax_type_id')) {
      context.handle(
          _taxTypeIdMeta,
          taxTypeId.isAcceptableOrUnknown(
              data['tax_type_id']!, _taxTypeIdMeta));
    }
    if (data.containsKey('tax_type_name')) {
      context.handle(
          _taxTypeNameMeta,
          taxTypeName.isAcceptableOrUnknown(
              data['tax_type_name']!, _taxTypeNameMeta));
    }
    if (data.containsKey('tax_amount')) {
      context.handle(_taxAmountMeta,
          taxAmount.isAcceptableOrUnknown(data['tax_amount']!, _taxAmountMeta));
    }
    if (data.containsKey('tax_percentage')) {
      context.handle(
          _taxPercentageMeta,
          taxPercentage.isAcceptableOrUnknown(
              data['tax_percentage']!, _taxPercentageMeta));
    }
    if (data.containsKey('taxable_amount')) {
      context.handle(
          _taxableAmountMeta,
          taxableAmount.isAcceptableOrUnknown(
              data['taxable_amount']!, _taxableAmountMeta));
    } else if (isInserting) {
      context.missing(_taxableAmountMeta);
    }
    if (data.containsKey('tax_group_id')) {
      context.handle(
          _taxGroupIdMeta,
          taxGroupId.isAcceptableOrUnknown(
              data['tax_group_id']!, _taxGroupIdMeta));
    }
    if (data.containsKey('is_tax_exempt')) {
      context.handle(
          _isTaxExemptMeta,
          isTaxExempt.isAcceptableOrUnknown(
              data['is_tax_exempt']!, _isTaxExemptMeta));
    }
    if (data.containsKey('is_zero_tax')) {
      context.handle(
          _isZeroTaxMeta,
          isZeroTax.isAcceptableOrUnknown(
              data['is_zero_tax']!, _isZeroTaxMeta));
    }
    if (data.containsKey('is_not_apply_for_this_customer')) {
      context.handle(
          _isNotApplyForThisCustomerMeta,
          isNotApplyForThisCustomer.isAcceptableOrUnknown(
              data['is_not_apply_for_this_customer']!,
              _isNotApplyForThisCustomerMeta));
    }
    if (data.containsKey('is_not_apply_for_this_order_type')) {
      context.handle(
          _isNotApplyForThisOrderTypeMeta,
          isNotApplyForThisOrderType.isAcceptableOrUnknown(
              data['is_not_apply_for_this_order_type']!,
              _isNotApplyForThisOrderTypeMeta));
    }
    if (data.containsKey('is_not_apply_for_this_period')) {
      context.handle(
          _isNotApplyForThisPeriodMeta,
          isNotApplyForThisPeriod.isAcceptableOrUnknown(
              data['is_not_apply_for_this_period']!,
              _isNotApplyForThisPeriodMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {orderRef, taxTypeId};
  @override
  OrderProductTaxTypeV2Data map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return OrderProductTaxTypeV2Data(
      productRef: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}product_ref']),
      modifierId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}modifier_id']),
      optionId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}option_id']),
      taxAccount: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}tax_account']),
      taxCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}tax_code']),
      orderRef: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}order_ref']),
      taxTypeId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}tax_type_id']),
      taxTypeName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}tax_type_name']),
      taxAmount: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}tax_amount']),
      taxPercentage: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}tax_percentage']),
      taxableAmount: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}taxable_amount'])!,
      taxGroupId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}tax_group_id']),
      isTaxExempt: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_tax_exempt']),
      isZeroTax: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_zero_tax']),
      isNotApplyForThisCustomer: attachedDatabase.typeMapping.read(
          DriftSqlType.bool,
          data['${effectivePrefix}is_not_apply_for_this_customer']),
      isNotApplyForThisOrderType: attachedDatabase.typeMapping.read(
          DriftSqlType.bool,
          data['${effectivePrefix}is_not_apply_for_this_order_type']),
      isNotApplyForThisPeriod: attachedDatabase.typeMapping.read(
          DriftSqlType.bool,
          data['${effectivePrefix}is_not_apply_for_this_period']),
    );
  }

  @override
  $OrderProductTaxTypeV2Table createAlias(String alias) {
    return $OrderProductTaxTypeV2Table(attachedDatabase, alias);
  }
}

class OrderProductTaxTypeV2Data extends DataClass
    implements Insertable<OrderProductTaxTypeV2Data> {
  final String? productRef;
  final String? modifierId;
  final String? optionId;
  final String? taxAccount;
  final String? taxCode;
  final String? orderRef;
  final String? taxTypeId;
  final String? taxTypeName;
  final double? taxAmount;
  final double? taxPercentage;
  final double taxableAmount;
  final String? taxGroupId;
  final bool? isTaxExempt;
  final bool? isZeroTax;
  final bool? isNotApplyForThisCustomer;
  final bool? isNotApplyForThisOrderType;
  final bool? isNotApplyForThisPeriod;
  const OrderProductTaxTypeV2Data(
      {this.productRef,
      this.modifierId,
      this.optionId,
      this.taxAccount,
      this.taxCode,
      this.orderRef,
      this.taxTypeId,
      this.taxTypeName,
      this.taxAmount,
      this.taxPercentage,
      required this.taxableAmount,
      this.taxGroupId,
      this.isTaxExempt,
      this.isZeroTax,
      this.isNotApplyForThisCustomer,
      this.isNotApplyForThisOrderType,
      this.isNotApplyForThisPeriod});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || productRef != null) {
      map['product_ref'] = Variable<String>(productRef);
    }
    if (!nullToAbsent || modifierId != null) {
      map['modifier_id'] = Variable<String>(modifierId);
    }
    if (!nullToAbsent || optionId != null) {
      map['option_id'] = Variable<String>(optionId);
    }
    if (!nullToAbsent || taxAccount != null) {
      map['tax_account'] = Variable<String>(taxAccount);
    }
    if (!nullToAbsent || taxCode != null) {
      map['tax_code'] = Variable<String>(taxCode);
    }
    if (!nullToAbsent || orderRef != null) {
      map['order_ref'] = Variable<String>(orderRef);
    }
    if (!nullToAbsent || taxTypeId != null) {
      map['tax_type_id'] = Variable<String>(taxTypeId);
    }
    if (!nullToAbsent || taxTypeName != null) {
      map['tax_type_name'] = Variable<String>(taxTypeName);
    }
    if (!nullToAbsent || taxAmount != null) {
      map['tax_amount'] = Variable<double>(taxAmount);
    }
    if (!nullToAbsent || taxPercentage != null) {
      map['tax_percentage'] = Variable<double>(taxPercentage);
    }
    map['taxable_amount'] = Variable<double>(taxableAmount);
    if (!nullToAbsent || taxGroupId != null) {
      map['tax_group_id'] = Variable<String>(taxGroupId);
    }
    if (!nullToAbsent || isTaxExempt != null) {
      map['is_tax_exempt'] = Variable<bool>(isTaxExempt);
    }
    if (!nullToAbsent || isZeroTax != null) {
      map['is_zero_tax'] = Variable<bool>(isZeroTax);
    }
    if (!nullToAbsent || isNotApplyForThisCustomer != null) {
      map['is_not_apply_for_this_customer'] =
          Variable<bool>(isNotApplyForThisCustomer);
    }
    if (!nullToAbsent || isNotApplyForThisOrderType != null) {
      map['is_not_apply_for_this_order_type'] =
          Variable<bool>(isNotApplyForThisOrderType);
    }
    if (!nullToAbsent || isNotApplyForThisPeriod != null) {
      map['is_not_apply_for_this_period'] =
          Variable<bool>(isNotApplyForThisPeriod);
    }
    return map;
  }

  OrderProductTaxTypeV2Companion toCompanion(bool nullToAbsent) {
    return OrderProductTaxTypeV2Companion(
      productRef: productRef == null && nullToAbsent
          ? const Value.absent()
          : Value(productRef),
      modifierId: modifierId == null && nullToAbsent
          ? const Value.absent()
          : Value(modifierId),
      optionId: optionId == null && nullToAbsent
          ? const Value.absent()
          : Value(optionId),
      taxAccount: taxAccount == null && nullToAbsent
          ? const Value.absent()
          : Value(taxAccount),
      taxCode: taxCode == null && nullToAbsent
          ? const Value.absent()
          : Value(taxCode),
      orderRef: orderRef == null && nullToAbsent
          ? const Value.absent()
          : Value(orderRef),
      taxTypeId: taxTypeId == null && nullToAbsent
          ? const Value.absent()
          : Value(taxTypeId),
      taxTypeName: taxTypeName == null && nullToAbsent
          ? const Value.absent()
          : Value(taxTypeName),
      taxAmount: taxAmount == null && nullToAbsent
          ? const Value.absent()
          : Value(taxAmount),
      taxPercentage: taxPercentage == null && nullToAbsent
          ? const Value.absent()
          : Value(taxPercentage),
      taxableAmount: Value(taxableAmount),
      taxGroupId: taxGroupId == null && nullToAbsent
          ? const Value.absent()
          : Value(taxGroupId),
      isTaxExempt: isTaxExempt == null && nullToAbsent
          ? const Value.absent()
          : Value(isTaxExempt),
      isZeroTax: isZeroTax == null && nullToAbsent
          ? const Value.absent()
          : Value(isZeroTax),
      isNotApplyForThisCustomer:
          isNotApplyForThisCustomer == null && nullToAbsent
              ? const Value.absent()
              : Value(isNotApplyForThisCustomer),
      isNotApplyForThisOrderType:
          isNotApplyForThisOrderType == null && nullToAbsent
              ? const Value.absent()
              : Value(isNotApplyForThisOrderType),
      isNotApplyForThisPeriod: isNotApplyForThisPeriod == null && nullToAbsent
          ? const Value.absent()
          : Value(isNotApplyForThisPeriod),
    );
  }

  factory OrderProductTaxTypeV2Data.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return OrderProductTaxTypeV2Data(
      productRef: serializer.fromJson<String?>(json['productRef']),
      modifierId: serializer.fromJson<String?>(json['modifierId']),
      optionId: serializer.fromJson<String?>(json['optionId']),
      taxAccount: serializer.fromJson<String?>(json['taxAccount']),
      taxCode: serializer.fromJson<String?>(json['taxCode']),
      orderRef: serializer.fromJson<String?>(json['orderRef']),
      taxTypeId: serializer.fromJson<String?>(json['taxTypeId']),
      taxTypeName: serializer.fromJson<String?>(json['taxTypeName']),
      taxAmount: serializer.fromJson<double?>(json['taxAmount']),
      taxPercentage: serializer.fromJson<double?>(json['taxPercentage']),
      taxableAmount: serializer.fromJson<double>(json['taxableAmount']),
      taxGroupId: serializer.fromJson<String?>(json['taxGroupId']),
      isTaxExempt: serializer.fromJson<bool?>(json['isTaxExempt']),
      isZeroTax: serializer.fromJson<bool?>(json['isZeroTax']),
      isNotApplyForThisCustomer:
          serializer.fromJson<bool?>(json['isNotApplyForThisCustomer']),
      isNotApplyForThisOrderType:
          serializer.fromJson<bool?>(json['isNotApplyForThisOrderType']),
      isNotApplyForThisPeriod:
          serializer.fromJson<bool?>(json['isNotApplyForThisPeriod']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'productRef': serializer.toJson<String?>(productRef),
      'modifierId': serializer.toJson<String?>(modifierId),
      'optionId': serializer.toJson<String?>(optionId),
      'taxAccount': serializer.toJson<String?>(taxAccount),
      'taxCode': serializer.toJson<String?>(taxCode),
      'orderRef': serializer.toJson<String?>(orderRef),
      'taxTypeId': serializer.toJson<String?>(taxTypeId),
      'taxTypeName': serializer.toJson<String?>(taxTypeName),
      'taxAmount': serializer.toJson<double?>(taxAmount),
      'taxPercentage': serializer.toJson<double?>(taxPercentage),
      'taxableAmount': serializer.toJson<double>(taxableAmount),
      'taxGroupId': serializer.toJson<String?>(taxGroupId),
      'isTaxExempt': serializer.toJson<bool?>(isTaxExempt),
      'isZeroTax': serializer.toJson<bool?>(isZeroTax),
      'isNotApplyForThisCustomer':
          serializer.toJson<bool?>(isNotApplyForThisCustomer),
      'isNotApplyForThisOrderType':
          serializer.toJson<bool?>(isNotApplyForThisOrderType),
      'isNotApplyForThisPeriod':
          serializer.toJson<bool?>(isNotApplyForThisPeriod),
    };
  }

  OrderProductTaxTypeV2Data copyWith(
          {Value<String?> productRef = const Value.absent(),
          Value<String?> modifierId = const Value.absent(),
          Value<String?> optionId = const Value.absent(),
          Value<String?> taxAccount = const Value.absent(),
          Value<String?> taxCode = const Value.absent(),
          Value<String?> orderRef = const Value.absent(),
          Value<String?> taxTypeId = const Value.absent(),
          Value<String?> taxTypeName = const Value.absent(),
          Value<double?> taxAmount = const Value.absent(),
          Value<double?> taxPercentage = const Value.absent(),
          double? taxableAmount,
          Value<String?> taxGroupId = const Value.absent(),
          Value<bool?> isTaxExempt = const Value.absent(),
          Value<bool?> isZeroTax = const Value.absent(),
          Value<bool?> isNotApplyForThisCustomer = const Value.absent(),
          Value<bool?> isNotApplyForThisOrderType = const Value.absent(),
          Value<bool?> isNotApplyForThisPeriod = const Value.absent()}) =>
      OrderProductTaxTypeV2Data(
        productRef: productRef.present ? productRef.value : this.productRef,
        modifierId: modifierId.present ? modifierId.value : this.modifierId,
        optionId: optionId.present ? optionId.value : this.optionId,
        taxAccount: taxAccount.present ? taxAccount.value : this.taxAccount,
        taxCode: taxCode.present ? taxCode.value : this.taxCode,
        orderRef: orderRef.present ? orderRef.value : this.orderRef,
        taxTypeId: taxTypeId.present ? taxTypeId.value : this.taxTypeId,
        taxTypeName: taxTypeName.present ? taxTypeName.value : this.taxTypeName,
        taxAmount: taxAmount.present ? taxAmount.value : this.taxAmount,
        taxPercentage:
            taxPercentage.present ? taxPercentage.value : this.taxPercentage,
        taxableAmount: taxableAmount ?? this.taxableAmount,
        taxGroupId: taxGroupId.present ? taxGroupId.value : this.taxGroupId,
        isTaxExempt: isTaxExempt.present ? isTaxExempt.value : this.isTaxExempt,
        isZeroTax: isZeroTax.present ? isZeroTax.value : this.isZeroTax,
        isNotApplyForThisCustomer: isNotApplyForThisCustomer.present
            ? isNotApplyForThisCustomer.value
            : this.isNotApplyForThisCustomer,
        isNotApplyForThisOrderType: isNotApplyForThisOrderType.present
            ? isNotApplyForThisOrderType.value
            : this.isNotApplyForThisOrderType,
        isNotApplyForThisPeriod: isNotApplyForThisPeriod.present
            ? isNotApplyForThisPeriod.value
            : this.isNotApplyForThisPeriod,
      );
  @override
  String toString() {
    return (StringBuffer('OrderProductTaxTypeV2Data(')
          ..write('productRef: $productRef, ')
          ..write('modifierId: $modifierId, ')
          ..write('optionId: $optionId, ')
          ..write('taxAccount: $taxAccount, ')
          ..write('taxCode: $taxCode, ')
          ..write('orderRef: $orderRef, ')
          ..write('taxTypeId: $taxTypeId, ')
          ..write('taxTypeName: $taxTypeName, ')
          ..write('taxAmount: $taxAmount, ')
          ..write('taxPercentage: $taxPercentage, ')
          ..write('taxableAmount: $taxableAmount, ')
          ..write('taxGroupId: $taxGroupId, ')
          ..write('isTaxExempt: $isTaxExempt, ')
          ..write('isZeroTax: $isZeroTax, ')
          ..write('isNotApplyForThisCustomer: $isNotApplyForThisCustomer, ')
          ..write('isNotApplyForThisOrderType: $isNotApplyForThisOrderType, ')
          ..write('isNotApplyForThisPeriod: $isNotApplyForThisPeriod')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      productRef,
      modifierId,
      optionId,
      taxAccount,
      taxCode,
      orderRef,
      taxTypeId,
      taxTypeName,
      taxAmount,
      taxPercentage,
      taxableAmount,
      taxGroupId,
      isTaxExempt,
      isZeroTax,
      isNotApplyForThisCustomer,
      isNotApplyForThisOrderType,
      isNotApplyForThisPeriod);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is OrderProductTaxTypeV2Data &&
          other.productRef == this.productRef &&
          other.modifierId == this.modifierId &&
          other.optionId == this.optionId &&
          other.taxAccount == this.taxAccount &&
          other.taxCode == this.taxCode &&
          other.orderRef == this.orderRef &&
          other.taxTypeId == this.taxTypeId &&
          other.taxTypeName == this.taxTypeName &&
          other.taxAmount == this.taxAmount &&
          other.taxPercentage == this.taxPercentage &&
          other.taxableAmount == this.taxableAmount &&
          other.taxGroupId == this.taxGroupId &&
          other.isTaxExempt == this.isTaxExempt &&
          other.isZeroTax == this.isZeroTax &&
          other.isNotApplyForThisCustomer == this.isNotApplyForThisCustomer &&
          other.isNotApplyForThisOrderType == this.isNotApplyForThisOrderType &&
          other.isNotApplyForThisPeriod == this.isNotApplyForThisPeriod);
}

class OrderProductTaxTypeV2Companion
    extends UpdateCompanion<OrderProductTaxTypeV2Data> {
  final Value<String?> productRef;
  final Value<String?> modifierId;
  final Value<String?> optionId;
  final Value<String?> taxAccount;
  final Value<String?> taxCode;
  final Value<String?> orderRef;
  final Value<String?> taxTypeId;
  final Value<String?> taxTypeName;
  final Value<double?> taxAmount;
  final Value<double?> taxPercentage;
  final Value<double> taxableAmount;
  final Value<String?> taxGroupId;
  final Value<bool?> isTaxExempt;
  final Value<bool?> isZeroTax;
  final Value<bool?> isNotApplyForThisCustomer;
  final Value<bool?> isNotApplyForThisOrderType;
  final Value<bool?> isNotApplyForThisPeriod;
  final Value<int> rowid;
  const OrderProductTaxTypeV2Companion({
    this.productRef = const Value.absent(),
    this.modifierId = const Value.absent(),
    this.optionId = const Value.absent(),
    this.taxAccount = const Value.absent(),
    this.taxCode = const Value.absent(),
    this.orderRef = const Value.absent(),
    this.taxTypeId = const Value.absent(),
    this.taxTypeName = const Value.absent(),
    this.taxAmount = const Value.absent(),
    this.taxPercentage = const Value.absent(),
    this.taxableAmount = const Value.absent(),
    this.taxGroupId = const Value.absent(),
    this.isTaxExempt = const Value.absent(),
    this.isZeroTax = const Value.absent(),
    this.isNotApplyForThisCustomer = const Value.absent(),
    this.isNotApplyForThisOrderType = const Value.absent(),
    this.isNotApplyForThisPeriod = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  OrderProductTaxTypeV2Companion.insert({
    this.productRef = const Value.absent(),
    this.modifierId = const Value.absent(),
    this.optionId = const Value.absent(),
    this.taxAccount = const Value.absent(),
    this.taxCode = const Value.absent(),
    this.orderRef = const Value.absent(),
    this.taxTypeId = const Value.absent(),
    this.taxTypeName = const Value.absent(),
    this.taxAmount = const Value.absent(),
    this.taxPercentage = const Value.absent(),
    required double taxableAmount,
    this.taxGroupId = const Value.absent(),
    this.isTaxExempt = const Value.absent(),
    this.isZeroTax = const Value.absent(),
    this.isNotApplyForThisCustomer = const Value.absent(),
    this.isNotApplyForThisOrderType = const Value.absent(),
    this.isNotApplyForThisPeriod = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : taxableAmount = Value(taxableAmount);
  static Insertable<OrderProductTaxTypeV2Data> custom({
    Expression<String>? productRef,
    Expression<String>? modifierId,
    Expression<String>? optionId,
    Expression<String>? taxAccount,
    Expression<String>? taxCode,
    Expression<String>? orderRef,
    Expression<String>? taxTypeId,
    Expression<String>? taxTypeName,
    Expression<double>? taxAmount,
    Expression<double>? taxPercentage,
    Expression<double>? taxableAmount,
    Expression<String>? taxGroupId,
    Expression<bool>? isTaxExempt,
    Expression<bool>? isZeroTax,
    Expression<bool>? isNotApplyForThisCustomer,
    Expression<bool>? isNotApplyForThisOrderType,
    Expression<bool>? isNotApplyForThisPeriod,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (productRef != null) 'product_ref': productRef,
      if (modifierId != null) 'modifier_id': modifierId,
      if (optionId != null) 'option_id': optionId,
      if (taxAccount != null) 'tax_account': taxAccount,
      if (taxCode != null) 'tax_code': taxCode,
      if (orderRef != null) 'order_ref': orderRef,
      if (taxTypeId != null) 'tax_type_id': taxTypeId,
      if (taxTypeName != null) 'tax_type_name': taxTypeName,
      if (taxAmount != null) 'tax_amount': taxAmount,
      if (taxPercentage != null) 'tax_percentage': taxPercentage,
      if (taxableAmount != null) 'taxable_amount': taxableAmount,
      if (taxGroupId != null) 'tax_group_id': taxGroupId,
      if (isTaxExempt != null) 'is_tax_exempt': isTaxExempt,
      if (isZeroTax != null) 'is_zero_tax': isZeroTax,
      if (isNotApplyForThisCustomer != null)
        'is_not_apply_for_this_customer': isNotApplyForThisCustomer,
      if (isNotApplyForThisOrderType != null)
        'is_not_apply_for_this_order_type': isNotApplyForThisOrderType,
      if (isNotApplyForThisPeriod != null)
        'is_not_apply_for_this_period': isNotApplyForThisPeriod,
      if (rowid != null) 'rowid': rowid,
    });
  }

  OrderProductTaxTypeV2Companion copyWith(
      {Value<String?>? productRef,
      Value<String?>? modifierId,
      Value<String?>? optionId,
      Value<String?>? taxAccount,
      Value<String?>? taxCode,
      Value<String?>? orderRef,
      Value<String?>? taxTypeId,
      Value<String?>? taxTypeName,
      Value<double?>? taxAmount,
      Value<double?>? taxPercentage,
      Value<double>? taxableAmount,
      Value<String?>? taxGroupId,
      Value<bool?>? isTaxExempt,
      Value<bool?>? isZeroTax,
      Value<bool?>? isNotApplyForThisCustomer,
      Value<bool?>? isNotApplyForThisOrderType,
      Value<bool?>? isNotApplyForThisPeriod,
      Value<int>? rowid}) {
    return OrderProductTaxTypeV2Companion(
      productRef: productRef ?? this.productRef,
      modifierId: modifierId ?? this.modifierId,
      optionId: optionId ?? this.optionId,
      taxAccount: taxAccount ?? this.taxAccount,
      taxCode: taxCode ?? this.taxCode,
      orderRef: orderRef ?? this.orderRef,
      taxTypeId: taxTypeId ?? this.taxTypeId,
      taxTypeName: taxTypeName ?? this.taxTypeName,
      taxAmount: taxAmount ?? this.taxAmount,
      taxPercentage: taxPercentage ?? this.taxPercentage,
      taxableAmount: taxableAmount ?? this.taxableAmount,
      taxGroupId: taxGroupId ?? this.taxGroupId,
      isTaxExempt: isTaxExempt ?? this.isTaxExempt,
      isZeroTax: isZeroTax ?? this.isZeroTax,
      isNotApplyForThisCustomer:
          isNotApplyForThisCustomer ?? this.isNotApplyForThisCustomer,
      isNotApplyForThisOrderType:
          isNotApplyForThisOrderType ?? this.isNotApplyForThisOrderType,
      isNotApplyForThisPeriod:
          isNotApplyForThisPeriod ?? this.isNotApplyForThisPeriod,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (productRef.present) {
      map['product_ref'] = Variable<String>(productRef.value);
    }
    if (modifierId.present) {
      map['modifier_id'] = Variable<String>(modifierId.value);
    }
    if (optionId.present) {
      map['option_id'] = Variable<String>(optionId.value);
    }
    if (taxAccount.present) {
      map['tax_account'] = Variable<String>(taxAccount.value);
    }
    if (taxCode.present) {
      map['tax_code'] = Variable<String>(taxCode.value);
    }
    if (orderRef.present) {
      map['order_ref'] = Variable<String>(orderRef.value);
    }
    if (taxTypeId.present) {
      map['tax_type_id'] = Variable<String>(taxTypeId.value);
    }
    if (taxTypeName.present) {
      map['tax_type_name'] = Variable<String>(taxTypeName.value);
    }
    if (taxAmount.present) {
      map['tax_amount'] = Variable<double>(taxAmount.value);
    }
    if (taxPercentage.present) {
      map['tax_percentage'] = Variable<double>(taxPercentage.value);
    }
    if (taxableAmount.present) {
      map['taxable_amount'] = Variable<double>(taxableAmount.value);
    }
    if (taxGroupId.present) {
      map['tax_group_id'] = Variable<String>(taxGroupId.value);
    }
    if (isTaxExempt.present) {
      map['is_tax_exempt'] = Variable<bool>(isTaxExempt.value);
    }
    if (isZeroTax.present) {
      map['is_zero_tax'] = Variable<bool>(isZeroTax.value);
    }
    if (isNotApplyForThisCustomer.present) {
      map['is_not_apply_for_this_customer'] =
          Variable<bool>(isNotApplyForThisCustomer.value);
    }
    if (isNotApplyForThisOrderType.present) {
      map['is_not_apply_for_this_order_type'] =
          Variable<bool>(isNotApplyForThisOrderType.value);
    }
    if (isNotApplyForThisPeriod.present) {
      map['is_not_apply_for_this_period'] =
          Variable<bool>(isNotApplyForThisPeriod.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('OrderProductTaxTypeV2Companion(')
          ..write('productRef: $productRef, ')
          ..write('modifierId: $modifierId, ')
          ..write('optionId: $optionId, ')
          ..write('taxAccount: $taxAccount, ')
          ..write('taxCode: $taxCode, ')
          ..write('orderRef: $orderRef, ')
          ..write('taxTypeId: $taxTypeId, ')
          ..write('taxTypeName: $taxTypeName, ')
          ..write('taxAmount: $taxAmount, ')
          ..write('taxPercentage: $taxPercentage, ')
          ..write('taxableAmount: $taxableAmount, ')
          ..write('taxGroupId: $taxGroupId, ')
          ..write('isTaxExempt: $isTaxExempt, ')
          ..write('isZeroTax: $isZeroTax, ')
          ..write('isNotApplyForThisCustomer: $isNotApplyForThisCustomer, ')
          ..write('isNotApplyForThisOrderType: $isNotApplyForThisOrderType, ')
          ..write('isNotApplyForThisPeriod: $isNotApplyForThisPeriod, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $OrderDiscountV2Table extends OrderDiscountV2
    with TableInfo<$OrderDiscountV2Table, OrderDiscountV2Data> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $OrderDiscountV2Table(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _orderRefMeta =
      const VerificationMeta('orderRef');
  @override
  late final GeneratedColumn<String> orderRef = GeneratedColumn<String>(
      'order_ref', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES order_entity_v2 (order_ref) ON DELETE CASCADE'));
  static const VerificationMeta _discountIdMeta =
      const VerificationMeta('discountId');
  @override
  late final GeneratedColumn<String> discountId = GeneratedColumn<String>(
      'discount_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _totalPriceMeta =
      const VerificationMeta('totalPrice');
  @override
  late final GeneratedColumn<double> totalPrice = GeneratedColumn<double>(
      'total_price', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _discountAmountMeta =
      const VerificationMeta('discountAmount');
  @override
  late final GeneratedColumn<double> discountAmount = GeneratedColumn<double>(
      'discount_amount', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _discountPercentageMeta =
      const VerificationMeta('discountPercentage');
  @override
  late final GeneratedColumn<double> discountPercentage =
      GeneratedColumn<double>('discount_percentage', aliasedName, true,
          type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _discountAmountPerUnitMeta =
      const VerificationMeta('discountAmountPerUnit');
  @override
  late final GeneratedColumn<double> discountAmountPerUnit =
      GeneratedColumn<double>('discount_amount_per_unit', aliasedName, true,
          type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _discountTypeMeta =
      const VerificationMeta('discountType');
  @override
  late final GeneratedColumn<String> discountType = GeneratedColumn<String>(
      'discount_type', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _taxableMeta =
      const VerificationMeta('taxable');
  @override
  late final GeneratedColumn<bool> taxable = GeneratedColumn<bool>(
      'taxable', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("taxable" IN (0, 1))'));
  static const VerificationMeta _notesMeta = const VerificationMeta('notes');
  @override
  late final GeneratedColumn<String> notes = GeneratedColumn<String>(
      'notes', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        orderRef,
        discountId,
        name,
        totalPrice,
        discountAmount,
        discountPercentage,
        discountAmountPerUnit,
        discountType,
        taxable,
        notes
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'order_discount_v2';
  @override
  VerificationContext validateIntegrity(
      Insertable<OrderDiscountV2Data> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('order_ref')) {
      context.handle(_orderRefMeta,
          orderRef.isAcceptableOrUnknown(data['order_ref']!, _orderRefMeta));
    }
    if (data.containsKey('discount_id')) {
      context.handle(
          _discountIdMeta,
          discountId.isAcceptableOrUnknown(
              data['discount_id']!, _discountIdMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    }
    if (data.containsKey('total_price')) {
      context.handle(
          _totalPriceMeta,
          totalPrice.isAcceptableOrUnknown(
              data['total_price']!, _totalPriceMeta));
    }
    if (data.containsKey('discount_amount')) {
      context.handle(
          _discountAmountMeta,
          discountAmount.isAcceptableOrUnknown(
              data['discount_amount']!, _discountAmountMeta));
    }
    if (data.containsKey('discount_percentage')) {
      context.handle(
          _discountPercentageMeta,
          discountPercentage.isAcceptableOrUnknown(
              data['discount_percentage']!, _discountPercentageMeta));
    }
    if (data.containsKey('discount_amount_per_unit')) {
      context.handle(
          _discountAmountPerUnitMeta,
          discountAmountPerUnit.isAcceptableOrUnknown(
              data['discount_amount_per_unit']!, _discountAmountPerUnitMeta));
    }
    if (data.containsKey('discount_type')) {
      context.handle(
          _discountTypeMeta,
          discountType.isAcceptableOrUnknown(
              data['discount_type']!, _discountTypeMeta));
    }
    if (data.containsKey('taxable')) {
      context.handle(_taxableMeta,
          taxable.isAcceptableOrUnknown(data['taxable']!, _taxableMeta));
    }
    if (data.containsKey('notes')) {
      context.handle(
          _notesMeta, notes.isAcceptableOrUnknown(data['notes']!, _notesMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {orderRef, discountId};
  @override
  OrderDiscountV2Data map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return OrderDiscountV2Data(
      orderRef: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}order_ref']),
      discountId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}discount_id']),
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name']),
      totalPrice: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}total_price']),
      discountAmount: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}discount_amount']),
      discountPercentage: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}discount_percentage']),
      discountAmountPerUnit: attachedDatabase.typeMapping.read(
          DriftSqlType.double,
          data['${effectivePrefix}discount_amount_per_unit']),
      discountType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}discount_type']),
      taxable: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}taxable']),
      notes: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}notes']),
    );
  }

  @override
  $OrderDiscountV2Table createAlias(String alias) {
    return $OrderDiscountV2Table(attachedDatabase, alias);
  }
}

class OrderDiscountV2Data extends DataClass
    implements Insertable<OrderDiscountV2Data> {
  final String? orderRef;
  final String? discountId;
  final String? name;
  final double? totalPrice;
  final double? discountAmount;
  final double? discountPercentage;
  final double? discountAmountPerUnit;
  final String? discountType;
  final bool? taxable;
  final String? notes;
  const OrderDiscountV2Data(
      {this.orderRef,
      this.discountId,
      this.name,
      this.totalPrice,
      this.discountAmount,
      this.discountPercentage,
      this.discountAmountPerUnit,
      this.discountType,
      this.taxable,
      this.notes});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || orderRef != null) {
      map['order_ref'] = Variable<String>(orderRef);
    }
    if (!nullToAbsent || discountId != null) {
      map['discount_id'] = Variable<String>(discountId);
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || totalPrice != null) {
      map['total_price'] = Variable<double>(totalPrice);
    }
    if (!nullToAbsent || discountAmount != null) {
      map['discount_amount'] = Variable<double>(discountAmount);
    }
    if (!nullToAbsent || discountPercentage != null) {
      map['discount_percentage'] = Variable<double>(discountPercentage);
    }
    if (!nullToAbsent || discountAmountPerUnit != null) {
      map['discount_amount_per_unit'] = Variable<double>(discountAmountPerUnit);
    }
    if (!nullToAbsent || discountType != null) {
      map['discount_type'] = Variable<String>(discountType);
    }
    if (!nullToAbsent || taxable != null) {
      map['taxable'] = Variable<bool>(taxable);
    }
    if (!nullToAbsent || notes != null) {
      map['notes'] = Variable<String>(notes);
    }
    return map;
  }

  OrderDiscountV2Companion toCompanion(bool nullToAbsent) {
    return OrderDiscountV2Companion(
      orderRef: orderRef == null && nullToAbsent
          ? const Value.absent()
          : Value(orderRef),
      discountId: discountId == null && nullToAbsent
          ? const Value.absent()
          : Value(discountId),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      totalPrice: totalPrice == null && nullToAbsent
          ? const Value.absent()
          : Value(totalPrice),
      discountAmount: discountAmount == null && nullToAbsent
          ? const Value.absent()
          : Value(discountAmount),
      discountPercentage: discountPercentage == null && nullToAbsent
          ? const Value.absent()
          : Value(discountPercentage),
      discountAmountPerUnit: discountAmountPerUnit == null && nullToAbsent
          ? const Value.absent()
          : Value(discountAmountPerUnit),
      discountType: discountType == null && nullToAbsent
          ? const Value.absent()
          : Value(discountType),
      taxable: taxable == null && nullToAbsent
          ? const Value.absent()
          : Value(taxable),
      notes:
          notes == null && nullToAbsent ? const Value.absent() : Value(notes),
    );
  }

  factory OrderDiscountV2Data.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return OrderDiscountV2Data(
      orderRef: serializer.fromJson<String?>(json['orderRef']),
      discountId: serializer.fromJson<String?>(json['discountId']),
      name: serializer.fromJson<String?>(json['name']),
      totalPrice: serializer.fromJson<double?>(json['totalPrice']),
      discountAmount: serializer.fromJson<double?>(json['discountAmount']),
      discountPercentage:
          serializer.fromJson<double?>(json['discountPercentage']),
      discountAmountPerUnit:
          serializer.fromJson<double?>(json['discountAmountPerUnit']),
      discountType: serializer.fromJson<String?>(json['discountType']),
      taxable: serializer.fromJson<bool?>(json['taxable']),
      notes: serializer.fromJson<String?>(json['notes']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'orderRef': serializer.toJson<String?>(orderRef),
      'discountId': serializer.toJson<String?>(discountId),
      'name': serializer.toJson<String?>(name),
      'totalPrice': serializer.toJson<double?>(totalPrice),
      'discountAmount': serializer.toJson<double?>(discountAmount),
      'discountPercentage': serializer.toJson<double?>(discountPercentage),
      'discountAmountPerUnit':
          serializer.toJson<double?>(discountAmountPerUnit),
      'discountType': serializer.toJson<String?>(discountType),
      'taxable': serializer.toJson<bool?>(taxable),
      'notes': serializer.toJson<String?>(notes),
    };
  }

  OrderDiscountV2Data copyWith(
          {Value<String?> orderRef = const Value.absent(),
          Value<String?> discountId = const Value.absent(),
          Value<String?> name = const Value.absent(),
          Value<double?> totalPrice = const Value.absent(),
          Value<double?> discountAmount = const Value.absent(),
          Value<double?> discountPercentage = const Value.absent(),
          Value<double?> discountAmountPerUnit = const Value.absent(),
          Value<String?> discountType = const Value.absent(),
          Value<bool?> taxable = const Value.absent(),
          Value<String?> notes = const Value.absent()}) =>
      OrderDiscountV2Data(
        orderRef: orderRef.present ? orderRef.value : this.orderRef,
        discountId: discountId.present ? discountId.value : this.discountId,
        name: name.present ? name.value : this.name,
        totalPrice: totalPrice.present ? totalPrice.value : this.totalPrice,
        discountAmount:
            discountAmount.present ? discountAmount.value : this.discountAmount,
        discountPercentage: discountPercentage.present
            ? discountPercentage.value
            : this.discountPercentage,
        discountAmountPerUnit: discountAmountPerUnit.present
            ? discountAmountPerUnit.value
            : this.discountAmountPerUnit,
        discountType:
            discountType.present ? discountType.value : this.discountType,
        taxable: taxable.present ? taxable.value : this.taxable,
        notes: notes.present ? notes.value : this.notes,
      );
  @override
  String toString() {
    return (StringBuffer('OrderDiscountV2Data(')
          ..write('orderRef: $orderRef, ')
          ..write('discountId: $discountId, ')
          ..write('name: $name, ')
          ..write('totalPrice: $totalPrice, ')
          ..write('discountAmount: $discountAmount, ')
          ..write('discountPercentage: $discountPercentage, ')
          ..write('discountAmountPerUnit: $discountAmountPerUnit, ')
          ..write('discountType: $discountType, ')
          ..write('taxable: $taxable, ')
          ..write('notes: $notes')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      orderRef,
      discountId,
      name,
      totalPrice,
      discountAmount,
      discountPercentage,
      discountAmountPerUnit,
      discountType,
      taxable,
      notes);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is OrderDiscountV2Data &&
          other.orderRef == this.orderRef &&
          other.discountId == this.discountId &&
          other.name == this.name &&
          other.totalPrice == this.totalPrice &&
          other.discountAmount == this.discountAmount &&
          other.discountPercentage == this.discountPercentage &&
          other.discountAmountPerUnit == this.discountAmountPerUnit &&
          other.discountType == this.discountType &&
          other.taxable == this.taxable &&
          other.notes == this.notes);
}

class OrderDiscountV2Companion extends UpdateCompanion<OrderDiscountV2Data> {
  final Value<String?> orderRef;
  final Value<String?> discountId;
  final Value<String?> name;
  final Value<double?> totalPrice;
  final Value<double?> discountAmount;
  final Value<double?> discountPercentage;
  final Value<double?> discountAmountPerUnit;
  final Value<String?> discountType;
  final Value<bool?> taxable;
  final Value<String?> notes;
  final Value<int> rowid;
  const OrderDiscountV2Companion({
    this.orderRef = const Value.absent(),
    this.discountId = const Value.absent(),
    this.name = const Value.absent(),
    this.totalPrice = const Value.absent(),
    this.discountAmount = const Value.absent(),
    this.discountPercentage = const Value.absent(),
    this.discountAmountPerUnit = const Value.absent(),
    this.discountType = const Value.absent(),
    this.taxable = const Value.absent(),
    this.notes = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  OrderDiscountV2Companion.insert({
    this.orderRef = const Value.absent(),
    this.discountId = const Value.absent(),
    this.name = const Value.absent(),
    this.totalPrice = const Value.absent(),
    this.discountAmount = const Value.absent(),
    this.discountPercentage = const Value.absent(),
    this.discountAmountPerUnit = const Value.absent(),
    this.discountType = const Value.absent(),
    this.taxable = const Value.absent(),
    this.notes = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  static Insertable<OrderDiscountV2Data> custom({
    Expression<String>? orderRef,
    Expression<String>? discountId,
    Expression<String>? name,
    Expression<double>? totalPrice,
    Expression<double>? discountAmount,
    Expression<double>? discountPercentage,
    Expression<double>? discountAmountPerUnit,
    Expression<String>? discountType,
    Expression<bool>? taxable,
    Expression<String>? notes,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (orderRef != null) 'order_ref': orderRef,
      if (discountId != null) 'discount_id': discountId,
      if (name != null) 'name': name,
      if (totalPrice != null) 'total_price': totalPrice,
      if (discountAmount != null) 'discount_amount': discountAmount,
      if (discountPercentage != null) 'discount_percentage': discountPercentage,
      if (discountAmountPerUnit != null)
        'discount_amount_per_unit': discountAmountPerUnit,
      if (discountType != null) 'discount_type': discountType,
      if (taxable != null) 'taxable': taxable,
      if (notes != null) 'notes': notes,
      if (rowid != null) 'rowid': rowid,
    });
  }

  OrderDiscountV2Companion copyWith(
      {Value<String?>? orderRef,
      Value<String?>? discountId,
      Value<String?>? name,
      Value<double?>? totalPrice,
      Value<double?>? discountAmount,
      Value<double?>? discountPercentage,
      Value<double?>? discountAmountPerUnit,
      Value<String?>? discountType,
      Value<bool?>? taxable,
      Value<String?>? notes,
      Value<int>? rowid}) {
    return OrderDiscountV2Companion(
      orderRef: orderRef ?? this.orderRef,
      discountId: discountId ?? this.discountId,
      name: name ?? this.name,
      totalPrice: totalPrice ?? this.totalPrice,
      discountAmount: discountAmount ?? this.discountAmount,
      discountPercentage: discountPercentage ?? this.discountPercentage,
      discountAmountPerUnit:
          discountAmountPerUnit ?? this.discountAmountPerUnit,
      discountType: discountType ?? this.discountType,
      taxable: taxable ?? this.taxable,
      notes: notes ?? this.notes,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (orderRef.present) {
      map['order_ref'] = Variable<String>(orderRef.value);
    }
    if (discountId.present) {
      map['discount_id'] = Variable<String>(discountId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (totalPrice.present) {
      map['total_price'] = Variable<double>(totalPrice.value);
    }
    if (discountAmount.present) {
      map['discount_amount'] = Variable<double>(discountAmount.value);
    }
    if (discountPercentage.present) {
      map['discount_percentage'] = Variable<double>(discountPercentage.value);
    }
    if (discountAmountPerUnit.present) {
      map['discount_amount_per_unit'] =
          Variable<double>(discountAmountPerUnit.value);
    }
    if (discountType.present) {
      map['discount_type'] = Variable<String>(discountType.value);
    }
    if (taxable.present) {
      map['taxable'] = Variable<bool>(taxable.value);
    }
    if (notes.present) {
      map['notes'] = Variable<String>(notes.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('OrderDiscountV2Companion(')
          ..write('orderRef: $orderRef, ')
          ..write('discountId: $discountId, ')
          ..write('name: $name, ')
          ..write('totalPrice: $totalPrice, ')
          ..write('discountAmount: $discountAmount, ')
          ..write('discountPercentage: $discountPercentage, ')
          ..write('discountAmountPerUnit: $discountAmountPerUnit, ')
          ..write('discountType: $discountType, ')
          ..write('taxable: $taxable, ')
          ..write('notes: $notes, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $OrderPromotionAppliesV2Table extends OrderPromotionAppliesV2
    with TableInfo<$OrderPromotionAppliesV2Table, OrderPromotionAppliesV2Data> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $OrderPromotionAppliesV2Table(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _orderRefMeta =
      const VerificationMeta('orderRef');
  @override
  late final GeneratedColumn<String> orderRef = GeneratedColumn<String>(
      'order_ref', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES order_entity_v2 (order_ref) ON DELETE CASCADE'));
  static const VerificationMeta _promotionIdMeta =
      const VerificationMeta('promotionId');
  @override
  late final GeneratedColumn<String> promotionId = GeneratedColumn<String>(
      'promotion_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _totalPriceMeta =
      const VerificationMeta('totalPrice');
  @override
  late final GeneratedColumn<double> totalPrice = GeneratedColumn<double>(
      'total_price', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _discountAmountMeta =
      const VerificationMeta('discountAmount');
  @override
  late final GeneratedColumn<double> discountAmount = GeneratedColumn<double>(
      'discount_amount', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _discountPercentageMeta =
      const VerificationMeta('discountPercentage');
  @override
  late final GeneratedColumn<double> discountPercentage =
      GeneratedColumn<double>('discount_percentage', aliasedName, true,
          type: DriftSqlType.double, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        orderRef,
        promotionId,
        name,
        totalPrice,
        discountAmount,
        discountPercentage
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'order_promotion_applies_v2';
  @override
  VerificationContext validateIntegrity(
      Insertable<OrderPromotionAppliesV2Data> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('order_ref')) {
      context.handle(_orderRefMeta,
          orderRef.isAcceptableOrUnknown(data['order_ref']!, _orderRefMeta));
    }
    if (data.containsKey('promotion_id')) {
      context.handle(
          _promotionIdMeta,
          promotionId.isAcceptableOrUnknown(
              data['promotion_id']!, _promotionIdMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    }
    if (data.containsKey('total_price')) {
      context.handle(
          _totalPriceMeta,
          totalPrice.isAcceptableOrUnknown(
              data['total_price']!, _totalPriceMeta));
    }
    if (data.containsKey('discount_amount')) {
      context.handle(
          _discountAmountMeta,
          discountAmount.isAcceptableOrUnknown(
              data['discount_amount']!, _discountAmountMeta));
    }
    if (data.containsKey('discount_percentage')) {
      context.handle(
          _discountPercentageMeta,
          discountPercentage.isAcceptableOrUnknown(
              data['discount_percentage']!, _discountPercentageMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {orderRef, promotionId};
  @override
  OrderPromotionAppliesV2Data map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return OrderPromotionAppliesV2Data(
      orderRef: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}order_ref']),
      promotionId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}promotion_id']),
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name']),
      totalPrice: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}total_price']),
      discountAmount: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}discount_amount']),
      discountPercentage: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}discount_percentage']),
    );
  }

  @override
  $OrderPromotionAppliesV2Table createAlias(String alias) {
    return $OrderPromotionAppliesV2Table(attachedDatabase, alias);
  }
}

class OrderPromotionAppliesV2Data extends DataClass
    implements Insertable<OrderPromotionAppliesV2Data> {
  final String? orderRef;
  final String? promotionId;
  final String? name;
  final double? totalPrice;
  final double? discountAmount;
  final double? discountPercentage;
  const OrderPromotionAppliesV2Data(
      {this.orderRef,
      this.promotionId,
      this.name,
      this.totalPrice,
      this.discountAmount,
      this.discountPercentage});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || orderRef != null) {
      map['order_ref'] = Variable<String>(orderRef);
    }
    if (!nullToAbsent || promotionId != null) {
      map['promotion_id'] = Variable<String>(promotionId);
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || totalPrice != null) {
      map['total_price'] = Variable<double>(totalPrice);
    }
    if (!nullToAbsent || discountAmount != null) {
      map['discount_amount'] = Variable<double>(discountAmount);
    }
    if (!nullToAbsent || discountPercentage != null) {
      map['discount_percentage'] = Variable<double>(discountPercentage);
    }
    return map;
  }

  OrderPromotionAppliesV2Companion toCompanion(bool nullToAbsent) {
    return OrderPromotionAppliesV2Companion(
      orderRef: orderRef == null && nullToAbsent
          ? const Value.absent()
          : Value(orderRef),
      promotionId: promotionId == null && nullToAbsent
          ? const Value.absent()
          : Value(promotionId),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      totalPrice: totalPrice == null && nullToAbsent
          ? const Value.absent()
          : Value(totalPrice),
      discountAmount: discountAmount == null && nullToAbsent
          ? const Value.absent()
          : Value(discountAmount),
      discountPercentage: discountPercentage == null && nullToAbsent
          ? const Value.absent()
          : Value(discountPercentage),
    );
  }

  factory OrderPromotionAppliesV2Data.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return OrderPromotionAppliesV2Data(
      orderRef: serializer.fromJson<String?>(json['orderRef']),
      promotionId: serializer.fromJson<String?>(json['promotionId']),
      name: serializer.fromJson<String?>(json['name']),
      totalPrice: serializer.fromJson<double?>(json['totalPrice']),
      discountAmount: serializer.fromJson<double?>(json['discountAmount']),
      discountPercentage:
          serializer.fromJson<double?>(json['discountPercentage']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'orderRef': serializer.toJson<String?>(orderRef),
      'promotionId': serializer.toJson<String?>(promotionId),
      'name': serializer.toJson<String?>(name),
      'totalPrice': serializer.toJson<double?>(totalPrice),
      'discountAmount': serializer.toJson<double?>(discountAmount),
      'discountPercentage': serializer.toJson<double?>(discountPercentage),
    };
  }

  OrderPromotionAppliesV2Data copyWith(
          {Value<String?> orderRef = const Value.absent(),
          Value<String?> promotionId = const Value.absent(),
          Value<String?> name = const Value.absent(),
          Value<double?> totalPrice = const Value.absent(),
          Value<double?> discountAmount = const Value.absent(),
          Value<double?> discountPercentage = const Value.absent()}) =>
      OrderPromotionAppliesV2Data(
        orderRef: orderRef.present ? orderRef.value : this.orderRef,
        promotionId: promotionId.present ? promotionId.value : this.promotionId,
        name: name.present ? name.value : this.name,
        totalPrice: totalPrice.present ? totalPrice.value : this.totalPrice,
        discountAmount:
            discountAmount.present ? discountAmount.value : this.discountAmount,
        discountPercentage: discountPercentage.present
            ? discountPercentage.value
            : this.discountPercentage,
      );
  @override
  String toString() {
    return (StringBuffer('OrderPromotionAppliesV2Data(')
          ..write('orderRef: $orderRef, ')
          ..write('promotionId: $promotionId, ')
          ..write('name: $name, ')
          ..write('totalPrice: $totalPrice, ')
          ..write('discountAmount: $discountAmount, ')
          ..write('discountPercentage: $discountPercentage')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(orderRef, promotionId, name, totalPrice,
      discountAmount, discountPercentage);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is OrderPromotionAppliesV2Data &&
          other.orderRef == this.orderRef &&
          other.promotionId == this.promotionId &&
          other.name == this.name &&
          other.totalPrice == this.totalPrice &&
          other.discountAmount == this.discountAmount &&
          other.discountPercentage == this.discountPercentage);
}

class OrderPromotionAppliesV2Companion
    extends UpdateCompanion<OrderPromotionAppliesV2Data> {
  final Value<String?> orderRef;
  final Value<String?> promotionId;
  final Value<String?> name;
  final Value<double?> totalPrice;
  final Value<double?> discountAmount;
  final Value<double?> discountPercentage;
  final Value<int> rowid;
  const OrderPromotionAppliesV2Companion({
    this.orderRef = const Value.absent(),
    this.promotionId = const Value.absent(),
    this.name = const Value.absent(),
    this.totalPrice = const Value.absent(),
    this.discountAmount = const Value.absent(),
    this.discountPercentage = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  OrderPromotionAppliesV2Companion.insert({
    this.orderRef = const Value.absent(),
    this.promotionId = const Value.absent(),
    this.name = const Value.absent(),
    this.totalPrice = const Value.absent(),
    this.discountAmount = const Value.absent(),
    this.discountPercentage = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  static Insertable<OrderPromotionAppliesV2Data> custom({
    Expression<String>? orderRef,
    Expression<String>? promotionId,
    Expression<String>? name,
    Expression<double>? totalPrice,
    Expression<double>? discountAmount,
    Expression<double>? discountPercentage,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (orderRef != null) 'order_ref': orderRef,
      if (promotionId != null) 'promotion_id': promotionId,
      if (name != null) 'name': name,
      if (totalPrice != null) 'total_price': totalPrice,
      if (discountAmount != null) 'discount_amount': discountAmount,
      if (discountPercentage != null) 'discount_percentage': discountPercentage,
      if (rowid != null) 'rowid': rowid,
    });
  }

  OrderPromotionAppliesV2Companion copyWith(
      {Value<String?>? orderRef,
      Value<String?>? promotionId,
      Value<String?>? name,
      Value<double?>? totalPrice,
      Value<double?>? discountAmount,
      Value<double?>? discountPercentage,
      Value<int>? rowid}) {
    return OrderPromotionAppliesV2Companion(
      orderRef: orderRef ?? this.orderRef,
      promotionId: promotionId ?? this.promotionId,
      name: name ?? this.name,
      totalPrice: totalPrice ?? this.totalPrice,
      discountAmount: discountAmount ?? this.discountAmount,
      discountPercentage: discountPercentage ?? this.discountPercentage,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (orderRef.present) {
      map['order_ref'] = Variable<String>(orderRef.value);
    }
    if (promotionId.present) {
      map['promotion_id'] = Variable<String>(promotionId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (totalPrice.present) {
      map['total_price'] = Variable<double>(totalPrice.value);
    }
    if (discountAmount.present) {
      map['discount_amount'] = Variable<double>(discountAmount.value);
    }
    if (discountPercentage.present) {
      map['discount_percentage'] = Variable<double>(discountPercentage.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('OrderPromotionAppliesV2Companion(')
          ..write('orderRef: $orderRef, ')
          ..write('promotionId: $promotionId, ')
          ..write('name: $name, ')
          ..write('totalPrice: $totalPrice, ')
          ..write('discountAmount: $discountAmount, ')
          ..write('discountPercentage: $discountPercentage, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $OrderPromotionGiftCardV2Table extends OrderPromotionGiftCardV2
    with
        TableInfo<$OrderPromotionGiftCardV2Table,
            OrderPromotionGiftCardV2Data> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $OrderPromotionGiftCardV2Table(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _orderRefMeta =
      const VerificationMeta('orderRef');
  @override
  late final GeneratedColumn<String> orderRef = GeneratedColumn<String>(
      'order_ref', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES order_entity_v2 (order_ref) ON DELETE CASCADE'));
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
  static const VerificationMeta _barcodeMeta =
      const VerificationMeta('barcode');
  @override
  late final GeneratedColumn<String> barcode = GeneratedColumn<String>(
      'barcode', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _referenceMeta =
      const VerificationMeta('reference');
  @override
  late final GeneratedColumn<String> reference = GeneratedColumn<String>(
      'reference', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _priceMeta = const VerificationMeta('price');
  @override
  late final GeneratedColumn<double> price = GeneratedColumn<double>(
      'price', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [orderRef, name, fName, barcode, reference, price];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'order_promotion_gift_card_v2';
  @override
  VerificationContext validateIntegrity(
      Insertable<OrderPromotionGiftCardV2Data> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('order_ref')) {
      context.handle(_orderRefMeta,
          orderRef.isAcceptableOrUnknown(data['order_ref']!, _orderRefMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    }
    if (data.containsKey('f_name')) {
      context.handle(
          _fNameMeta, fName.isAcceptableOrUnknown(data['f_name']!, _fNameMeta));
    }
    if (data.containsKey('barcode')) {
      context.handle(_barcodeMeta,
          barcode.isAcceptableOrUnknown(data['barcode']!, _barcodeMeta));
    }
    if (data.containsKey('reference')) {
      context.handle(_referenceMeta,
          reference.isAcceptableOrUnknown(data['reference']!, _referenceMeta));
    }
    if (data.containsKey('price')) {
      context.handle(
          _priceMeta, price.isAcceptableOrUnknown(data['price']!, _priceMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {orderRef, reference};
  @override
  OrderPromotionGiftCardV2Data map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return OrderPromotionGiftCardV2Data(
      orderRef: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}order_ref']),
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name']),
      fName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}f_name']),
      barcode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}barcode']),
      reference: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}reference']),
      price: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}price']),
    );
  }

  @override
  $OrderPromotionGiftCardV2Table createAlias(String alias) {
    return $OrderPromotionGiftCardV2Table(attachedDatabase, alias);
  }
}

class OrderPromotionGiftCardV2Data extends DataClass
    implements Insertable<OrderPromotionGiftCardV2Data> {
  final String? orderRef;
  final String? name;
  final String? fName;
  final String? barcode;
  final String? reference;
  final double? price;
  const OrderPromotionGiftCardV2Data(
      {this.orderRef,
      this.name,
      this.fName,
      this.barcode,
      this.reference,
      this.price});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || orderRef != null) {
      map['order_ref'] = Variable<String>(orderRef);
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || fName != null) {
      map['f_name'] = Variable<String>(fName);
    }
    if (!nullToAbsent || barcode != null) {
      map['barcode'] = Variable<String>(barcode);
    }
    if (!nullToAbsent || reference != null) {
      map['reference'] = Variable<String>(reference);
    }
    if (!nullToAbsent || price != null) {
      map['price'] = Variable<double>(price);
    }
    return map;
  }

  OrderPromotionGiftCardV2Companion toCompanion(bool nullToAbsent) {
    return OrderPromotionGiftCardV2Companion(
      orderRef: orderRef == null && nullToAbsent
          ? const Value.absent()
          : Value(orderRef),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      fName:
          fName == null && nullToAbsent ? const Value.absent() : Value(fName),
      barcode: barcode == null && nullToAbsent
          ? const Value.absent()
          : Value(barcode),
      reference: reference == null && nullToAbsent
          ? const Value.absent()
          : Value(reference),
      price:
          price == null && nullToAbsent ? const Value.absent() : Value(price),
    );
  }

  factory OrderPromotionGiftCardV2Data.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return OrderPromotionGiftCardV2Data(
      orderRef: serializer.fromJson<String?>(json['orderRef']),
      name: serializer.fromJson<String?>(json['name']),
      fName: serializer.fromJson<String?>(json['fName']),
      barcode: serializer.fromJson<String?>(json['barcode']),
      reference: serializer.fromJson<String?>(json['reference']),
      price: serializer.fromJson<double?>(json['price']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'orderRef': serializer.toJson<String?>(orderRef),
      'name': serializer.toJson<String?>(name),
      'fName': serializer.toJson<String?>(fName),
      'barcode': serializer.toJson<String?>(barcode),
      'reference': serializer.toJson<String?>(reference),
      'price': serializer.toJson<double?>(price),
    };
  }

  OrderPromotionGiftCardV2Data copyWith(
          {Value<String?> orderRef = const Value.absent(),
          Value<String?> name = const Value.absent(),
          Value<String?> fName = const Value.absent(),
          Value<String?> barcode = const Value.absent(),
          Value<String?> reference = const Value.absent(),
          Value<double?> price = const Value.absent()}) =>
      OrderPromotionGiftCardV2Data(
        orderRef: orderRef.present ? orderRef.value : this.orderRef,
        name: name.present ? name.value : this.name,
        fName: fName.present ? fName.value : this.fName,
        barcode: barcode.present ? barcode.value : this.barcode,
        reference: reference.present ? reference.value : this.reference,
        price: price.present ? price.value : this.price,
      );
  @override
  String toString() {
    return (StringBuffer('OrderPromotionGiftCardV2Data(')
          ..write('orderRef: $orderRef, ')
          ..write('name: $name, ')
          ..write('fName: $fName, ')
          ..write('barcode: $barcode, ')
          ..write('reference: $reference, ')
          ..write('price: $price')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(orderRef, name, fName, barcode, reference, price);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is OrderPromotionGiftCardV2Data &&
          other.orderRef == this.orderRef &&
          other.name == this.name &&
          other.fName == this.fName &&
          other.barcode == this.barcode &&
          other.reference == this.reference &&
          other.price == this.price);
}

class OrderPromotionGiftCardV2Companion
    extends UpdateCompanion<OrderPromotionGiftCardV2Data> {
  final Value<String?> orderRef;
  final Value<String?> name;
  final Value<String?> fName;
  final Value<String?> barcode;
  final Value<String?> reference;
  final Value<double?> price;
  final Value<int> rowid;
  const OrderPromotionGiftCardV2Companion({
    this.orderRef = const Value.absent(),
    this.name = const Value.absent(),
    this.fName = const Value.absent(),
    this.barcode = const Value.absent(),
    this.reference = const Value.absent(),
    this.price = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  OrderPromotionGiftCardV2Companion.insert({
    this.orderRef = const Value.absent(),
    this.name = const Value.absent(),
    this.fName = const Value.absent(),
    this.barcode = const Value.absent(),
    this.reference = const Value.absent(),
    this.price = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  static Insertable<OrderPromotionGiftCardV2Data> custom({
    Expression<String>? orderRef,
    Expression<String>? name,
    Expression<String>? fName,
    Expression<String>? barcode,
    Expression<String>? reference,
    Expression<double>? price,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (orderRef != null) 'order_ref': orderRef,
      if (name != null) 'name': name,
      if (fName != null) 'f_name': fName,
      if (barcode != null) 'barcode': barcode,
      if (reference != null) 'reference': reference,
      if (price != null) 'price': price,
      if (rowid != null) 'rowid': rowid,
    });
  }

  OrderPromotionGiftCardV2Companion copyWith(
      {Value<String?>? orderRef,
      Value<String?>? name,
      Value<String?>? fName,
      Value<String?>? barcode,
      Value<String?>? reference,
      Value<double?>? price,
      Value<int>? rowid}) {
    return OrderPromotionGiftCardV2Companion(
      orderRef: orderRef ?? this.orderRef,
      name: name ?? this.name,
      fName: fName ?? this.fName,
      barcode: barcode ?? this.barcode,
      reference: reference ?? this.reference,
      price: price ?? this.price,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (orderRef.present) {
      map['order_ref'] = Variable<String>(orderRef.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (fName.present) {
      map['f_name'] = Variable<String>(fName.value);
    }
    if (barcode.present) {
      map['barcode'] = Variable<String>(barcode.value);
    }
    if (reference.present) {
      map['reference'] = Variable<String>(reference.value);
    }
    if (price.present) {
      map['price'] = Variable<double>(price.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('OrderPromotionGiftCardV2Companion(')
          ..write('orderRef: $orderRef, ')
          ..write('name: $name, ')
          ..write('fName: $fName, ')
          ..write('barcode: $barcode, ')
          ..write('reference: $reference, ')
          ..write('price: $price, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $OrderChargeV2Table extends OrderChargeV2
    with TableInfo<$OrderChargeV2Table, OrderChargeV2Data> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $OrderChargeV2Table(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _orderRefMeta =
      const VerificationMeta('orderRef');
  @override
  late final GeneratedColumn<String> orderRef = GeneratedColumn<String>(
      'order_ref', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES order_entity_v2 (order_ref) ON DELETE CASCADE'));
  static const VerificationMeta _chargeIdMeta =
      const VerificationMeta('chargeId');
  @override
  late final GeneratedColumn<String> chargeId = GeneratedColumn<String>(
      'charge_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
      'type', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _chargableAmountMeta =
      const VerificationMeta('chargableAmount');
  @override
  late final GeneratedColumn<double> chargableAmount = GeneratedColumn<double>(
      'chargable_amount', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _valueMeta = const VerificationMeta('value');
  @override
  late final GeneratedColumn<double> value = GeneratedColumn<double>(
      'value', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _percentageMeta =
      const VerificationMeta('percentage');
  @override
  late final GeneratedColumn<double> percentage = GeneratedColumn<double>(
      'percentage', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _chargeAmountMeta =
      const VerificationMeta('chargeAmount');
  @override
  late final GeneratedColumn<double> chargeAmount = GeneratedColumn<double>(
      'charge_amount', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        orderRef,
        chargeId,
        name,
        type,
        chargableAmount,
        value,
        percentage,
        chargeAmount,
        description
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'order_charge_v2';
  @override
  VerificationContext validateIntegrity(Insertable<OrderChargeV2Data> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('order_ref')) {
      context.handle(_orderRefMeta,
          orderRef.isAcceptableOrUnknown(data['order_ref']!, _orderRefMeta));
    }
    if (data.containsKey('charge_id')) {
      context.handle(_chargeIdMeta,
          chargeId.isAcceptableOrUnknown(data['charge_id']!, _chargeIdMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    }
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type']!, _typeMeta));
    }
    if (data.containsKey('chargable_amount')) {
      context.handle(
          _chargableAmountMeta,
          chargableAmount.isAcceptableOrUnknown(
              data['chargable_amount']!, _chargableAmountMeta));
    }
    if (data.containsKey('value')) {
      context.handle(
          _valueMeta, value.isAcceptableOrUnknown(data['value']!, _valueMeta));
    }
    if (data.containsKey('percentage')) {
      context.handle(
          _percentageMeta,
          percentage.isAcceptableOrUnknown(
              data['percentage']!, _percentageMeta));
    }
    if (data.containsKey('charge_amount')) {
      context.handle(
          _chargeAmountMeta,
          chargeAmount.isAcceptableOrUnknown(
              data['charge_amount']!, _chargeAmountMeta));
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {orderRef, chargeId};
  @override
  OrderChargeV2Data map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return OrderChargeV2Data(
      orderRef: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}order_ref']),
      chargeId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}charge_id']),
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name']),
      type: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}type']),
      chargableAmount: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}chargable_amount']),
      value: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}value']),
      percentage: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}percentage']),
      chargeAmount: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}charge_amount']),
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description']),
    );
  }

  @override
  $OrderChargeV2Table createAlias(String alias) {
    return $OrderChargeV2Table(attachedDatabase, alias);
  }
}

class OrderChargeV2Data extends DataClass
    implements Insertable<OrderChargeV2Data> {
  final String? orderRef;
  final String? chargeId;
  final String? name;
  final String? type;
  final double? chargableAmount;
  final double? value;
  final double? percentage;
  final double? chargeAmount;
  final String? description;
  const OrderChargeV2Data(
      {this.orderRef,
      this.chargeId,
      this.name,
      this.type,
      this.chargableAmount,
      this.value,
      this.percentage,
      this.chargeAmount,
      this.description});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || orderRef != null) {
      map['order_ref'] = Variable<String>(orderRef);
    }
    if (!nullToAbsent || chargeId != null) {
      map['charge_id'] = Variable<String>(chargeId);
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || type != null) {
      map['type'] = Variable<String>(type);
    }
    if (!nullToAbsent || chargableAmount != null) {
      map['chargable_amount'] = Variable<double>(chargableAmount);
    }
    if (!nullToAbsent || value != null) {
      map['value'] = Variable<double>(value);
    }
    if (!nullToAbsent || percentage != null) {
      map['percentage'] = Variable<double>(percentage);
    }
    if (!nullToAbsent || chargeAmount != null) {
      map['charge_amount'] = Variable<double>(chargeAmount);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    return map;
  }

  OrderChargeV2Companion toCompanion(bool nullToAbsent) {
    return OrderChargeV2Companion(
      orderRef: orderRef == null && nullToAbsent
          ? const Value.absent()
          : Value(orderRef),
      chargeId: chargeId == null && nullToAbsent
          ? const Value.absent()
          : Value(chargeId),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      type: type == null && nullToAbsent ? const Value.absent() : Value(type),
      chargableAmount: chargableAmount == null && nullToAbsent
          ? const Value.absent()
          : Value(chargableAmount),
      value:
          value == null && nullToAbsent ? const Value.absent() : Value(value),
      percentage: percentage == null && nullToAbsent
          ? const Value.absent()
          : Value(percentage),
      chargeAmount: chargeAmount == null && nullToAbsent
          ? const Value.absent()
          : Value(chargeAmount),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
    );
  }

  factory OrderChargeV2Data.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return OrderChargeV2Data(
      orderRef: serializer.fromJson<String?>(json['orderRef']),
      chargeId: serializer.fromJson<String?>(json['chargeId']),
      name: serializer.fromJson<String?>(json['name']),
      type: serializer.fromJson<String?>(json['type']),
      chargableAmount: serializer.fromJson<double?>(json['chargableAmount']),
      value: serializer.fromJson<double?>(json['value']),
      percentage: serializer.fromJson<double?>(json['percentage']),
      chargeAmount: serializer.fromJson<double?>(json['chargeAmount']),
      description: serializer.fromJson<String?>(json['description']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'orderRef': serializer.toJson<String?>(orderRef),
      'chargeId': serializer.toJson<String?>(chargeId),
      'name': serializer.toJson<String?>(name),
      'type': serializer.toJson<String?>(type),
      'chargableAmount': serializer.toJson<double?>(chargableAmount),
      'value': serializer.toJson<double?>(value),
      'percentage': serializer.toJson<double?>(percentage),
      'chargeAmount': serializer.toJson<double?>(chargeAmount),
      'description': serializer.toJson<String?>(description),
    };
  }

  OrderChargeV2Data copyWith(
          {Value<String?> orderRef = const Value.absent(),
          Value<String?> chargeId = const Value.absent(),
          Value<String?> name = const Value.absent(),
          Value<String?> type = const Value.absent(),
          Value<double?> chargableAmount = const Value.absent(),
          Value<double?> value = const Value.absent(),
          Value<double?> percentage = const Value.absent(),
          Value<double?> chargeAmount = const Value.absent(),
          Value<String?> description = const Value.absent()}) =>
      OrderChargeV2Data(
        orderRef: orderRef.present ? orderRef.value : this.orderRef,
        chargeId: chargeId.present ? chargeId.value : this.chargeId,
        name: name.present ? name.value : this.name,
        type: type.present ? type.value : this.type,
        chargableAmount: chargableAmount.present
            ? chargableAmount.value
            : this.chargableAmount,
        value: value.present ? value.value : this.value,
        percentage: percentage.present ? percentage.value : this.percentage,
        chargeAmount:
            chargeAmount.present ? chargeAmount.value : this.chargeAmount,
        description: description.present ? description.value : this.description,
      );
  @override
  String toString() {
    return (StringBuffer('OrderChargeV2Data(')
          ..write('orderRef: $orderRef, ')
          ..write('chargeId: $chargeId, ')
          ..write('name: $name, ')
          ..write('type: $type, ')
          ..write('chargableAmount: $chargableAmount, ')
          ..write('value: $value, ')
          ..write('percentage: $percentage, ')
          ..write('chargeAmount: $chargeAmount, ')
          ..write('description: $description')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(orderRef, chargeId, name, type,
      chargableAmount, value, percentage, chargeAmount, description);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is OrderChargeV2Data &&
          other.orderRef == this.orderRef &&
          other.chargeId == this.chargeId &&
          other.name == this.name &&
          other.type == this.type &&
          other.chargableAmount == this.chargableAmount &&
          other.value == this.value &&
          other.percentage == this.percentage &&
          other.chargeAmount == this.chargeAmount &&
          other.description == this.description);
}

class OrderChargeV2Companion extends UpdateCompanion<OrderChargeV2Data> {
  final Value<String?> orderRef;
  final Value<String?> chargeId;
  final Value<String?> name;
  final Value<String?> type;
  final Value<double?> chargableAmount;
  final Value<double?> value;
  final Value<double?> percentage;
  final Value<double?> chargeAmount;
  final Value<String?> description;
  final Value<int> rowid;
  const OrderChargeV2Companion({
    this.orderRef = const Value.absent(),
    this.chargeId = const Value.absent(),
    this.name = const Value.absent(),
    this.type = const Value.absent(),
    this.chargableAmount = const Value.absent(),
    this.value = const Value.absent(),
    this.percentage = const Value.absent(),
    this.chargeAmount = const Value.absent(),
    this.description = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  OrderChargeV2Companion.insert({
    this.orderRef = const Value.absent(),
    this.chargeId = const Value.absent(),
    this.name = const Value.absent(),
    this.type = const Value.absent(),
    this.chargableAmount = const Value.absent(),
    this.value = const Value.absent(),
    this.percentage = const Value.absent(),
    this.chargeAmount = const Value.absent(),
    this.description = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  static Insertable<OrderChargeV2Data> custom({
    Expression<String>? orderRef,
    Expression<String>? chargeId,
    Expression<String>? name,
    Expression<String>? type,
    Expression<double>? chargableAmount,
    Expression<double>? value,
    Expression<double>? percentage,
    Expression<double>? chargeAmount,
    Expression<String>? description,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (orderRef != null) 'order_ref': orderRef,
      if (chargeId != null) 'charge_id': chargeId,
      if (name != null) 'name': name,
      if (type != null) 'type': type,
      if (chargableAmount != null) 'chargable_amount': chargableAmount,
      if (value != null) 'value': value,
      if (percentage != null) 'percentage': percentage,
      if (chargeAmount != null) 'charge_amount': chargeAmount,
      if (description != null) 'description': description,
      if (rowid != null) 'rowid': rowid,
    });
  }

  OrderChargeV2Companion copyWith(
      {Value<String?>? orderRef,
      Value<String?>? chargeId,
      Value<String?>? name,
      Value<String?>? type,
      Value<double?>? chargableAmount,
      Value<double?>? value,
      Value<double?>? percentage,
      Value<double?>? chargeAmount,
      Value<String?>? description,
      Value<int>? rowid}) {
    return OrderChargeV2Companion(
      orderRef: orderRef ?? this.orderRef,
      chargeId: chargeId ?? this.chargeId,
      name: name ?? this.name,
      type: type ?? this.type,
      chargableAmount: chargableAmount ?? this.chargableAmount,
      value: value ?? this.value,
      percentage: percentage ?? this.percentage,
      chargeAmount: chargeAmount ?? this.chargeAmount,
      description: description ?? this.description,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (orderRef.present) {
      map['order_ref'] = Variable<String>(orderRef.value);
    }
    if (chargeId.present) {
      map['charge_id'] = Variable<String>(chargeId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (chargableAmount.present) {
      map['chargable_amount'] = Variable<double>(chargableAmount.value);
    }
    if (value.present) {
      map['value'] = Variable<double>(value.value);
    }
    if (percentage.present) {
      map['percentage'] = Variable<double>(percentage.value);
    }
    if (chargeAmount.present) {
      map['charge_amount'] = Variable<double>(chargeAmount.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('OrderChargeV2Companion(')
          ..write('orderRef: $orderRef, ')
          ..write('chargeId: $chargeId, ')
          ..write('name: $name, ')
          ..write('type: $type, ')
          ..write('chargableAmount: $chargableAmount, ')
          ..write('value: $value, ')
          ..write('percentage: $percentage, ')
          ..write('chargeAmount: $chargeAmount, ')
          ..write('description: $description, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $OrderChargeForTotalV2Table extends OrderChargeForTotalV2
    with TableInfo<$OrderChargeForTotalV2Table, OrderChargeForTotalV2Data> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $OrderChargeForTotalV2Table(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _orderRefMeta =
      const VerificationMeta('orderRef');
  @override
  late final GeneratedColumn<String> orderRef = GeneratedColumn<String>(
      'order_ref', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES order_entity_v2 (order_ref) ON DELETE CASCADE'));
  static const VerificationMeta _chargeIdMeta =
      const VerificationMeta('chargeId');
  @override
  late final GeneratedColumn<String> chargeId = GeneratedColumn<String>(
      'charge_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _amountMeta = const VerificationMeta('amount');
  @override
  late final GeneratedColumn<double> amount = GeneratedColumn<double>(
      'amount', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _taxAmountMeta =
      const VerificationMeta('taxAmount');
  @override
  late final GeneratedColumn<double> taxAmount = GeneratedColumn<double>(
      'tax_amount', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [orderRef, chargeId, name, amount, taxAmount];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'order_charge_for_total_v2';
  @override
  VerificationContext validateIntegrity(
      Insertable<OrderChargeForTotalV2Data> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('order_ref')) {
      context.handle(_orderRefMeta,
          orderRef.isAcceptableOrUnknown(data['order_ref']!, _orderRefMeta));
    }
    if (data.containsKey('charge_id')) {
      context.handle(_chargeIdMeta,
          chargeId.isAcceptableOrUnknown(data['charge_id']!, _chargeIdMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    }
    if (data.containsKey('amount')) {
      context.handle(_amountMeta,
          amount.isAcceptableOrUnknown(data['amount']!, _amountMeta));
    }
    if (data.containsKey('tax_amount')) {
      context.handle(_taxAmountMeta,
          taxAmount.isAcceptableOrUnknown(data['tax_amount']!, _taxAmountMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {orderRef, chargeId};
  @override
  OrderChargeForTotalV2Data map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return OrderChargeForTotalV2Data(
      orderRef: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}order_ref']),
      chargeId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}charge_id']),
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name']),
      amount: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}amount']),
      taxAmount: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}tax_amount']),
    );
  }

  @override
  $OrderChargeForTotalV2Table createAlias(String alias) {
    return $OrderChargeForTotalV2Table(attachedDatabase, alias);
  }
}

class OrderChargeForTotalV2Data extends DataClass
    implements Insertable<OrderChargeForTotalV2Data> {
  final String? orderRef;
  final String? chargeId;
  final String? name;
  final double? amount;
  final double? taxAmount;
  const OrderChargeForTotalV2Data(
      {this.orderRef, this.chargeId, this.name, this.amount, this.taxAmount});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || orderRef != null) {
      map['order_ref'] = Variable<String>(orderRef);
    }
    if (!nullToAbsent || chargeId != null) {
      map['charge_id'] = Variable<String>(chargeId);
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || amount != null) {
      map['amount'] = Variable<double>(amount);
    }
    if (!nullToAbsent || taxAmount != null) {
      map['tax_amount'] = Variable<double>(taxAmount);
    }
    return map;
  }

  OrderChargeForTotalV2Companion toCompanion(bool nullToAbsent) {
    return OrderChargeForTotalV2Companion(
      orderRef: orderRef == null && nullToAbsent
          ? const Value.absent()
          : Value(orderRef),
      chargeId: chargeId == null && nullToAbsent
          ? const Value.absent()
          : Value(chargeId),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      amount:
          amount == null && nullToAbsent ? const Value.absent() : Value(amount),
      taxAmount: taxAmount == null && nullToAbsent
          ? const Value.absent()
          : Value(taxAmount),
    );
  }

  factory OrderChargeForTotalV2Data.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return OrderChargeForTotalV2Data(
      orderRef: serializer.fromJson<String?>(json['orderRef']),
      chargeId: serializer.fromJson<String?>(json['chargeId']),
      name: serializer.fromJson<String?>(json['name']),
      amount: serializer.fromJson<double?>(json['amount']),
      taxAmount: serializer.fromJson<double?>(json['taxAmount']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'orderRef': serializer.toJson<String?>(orderRef),
      'chargeId': serializer.toJson<String?>(chargeId),
      'name': serializer.toJson<String?>(name),
      'amount': serializer.toJson<double?>(amount),
      'taxAmount': serializer.toJson<double?>(taxAmount),
    };
  }

  OrderChargeForTotalV2Data copyWith(
          {Value<String?> orderRef = const Value.absent(),
          Value<String?> chargeId = const Value.absent(),
          Value<String?> name = const Value.absent(),
          Value<double?> amount = const Value.absent(),
          Value<double?> taxAmount = const Value.absent()}) =>
      OrderChargeForTotalV2Data(
        orderRef: orderRef.present ? orderRef.value : this.orderRef,
        chargeId: chargeId.present ? chargeId.value : this.chargeId,
        name: name.present ? name.value : this.name,
        amount: amount.present ? amount.value : this.amount,
        taxAmount: taxAmount.present ? taxAmount.value : this.taxAmount,
      );
  @override
  String toString() {
    return (StringBuffer('OrderChargeForTotalV2Data(')
          ..write('orderRef: $orderRef, ')
          ..write('chargeId: $chargeId, ')
          ..write('name: $name, ')
          ..write('amount: $amount, ')
          ..write('taxAmount: $taxAmount')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(orderRef, chargeId, name, amount, taxAmount);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is OrderChargeForTotalV2Data &&
          other.orderRef == this.orderRef &&
          other.chargeId == this.chargeId &&
          other.name == this.name &&
          other.amount == this.amount &&
          other.taxAmount == this.taxAmount);
}

class OrderChargeForTotalV2Companion
    extends UpdateCompanion<OrderChargeForTotalV2Data> {
  final Value<String?> orderRef;
  final Value<String?> chargeId;
  final Value<String?> name;
  final Value<double?> amount;
  final Value<double?> taxAmount;
  final Value<int> rowid;
  const OrderChargeForTotalV2Companion({
    this.orderRef = const Value.absent(),
    this.chargeId = const Value.absent(),
    this.name = const Value.absent(),
    this.amount = const Value.absent(),
    this.taxAmount = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  OrderChargeForTotalV2Companion.insert({
    this.orderRef = const Value.absent(),
    this.chargeId = const Value.absent(),
    this.name = const Value.absent(),
    this.amount = const Value.absent(),
    this.taxAmount = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  static Insertable<OrderChargeForTotalV2Data> custom({
    Expression<String>? orderRef,
    Expression<String>? chargeId,
    Expression<String>? name,
    Expression<double>? amount,
    Expression<double>? taxAmount,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (orderRef != null) 'order_ref': orderRef,
      if (chargeId != null) 'charge_id': chargeId,
      if (name != null) 'name': name,
      if (amount != null) 'amount': amount,
      if (taxAmount != null) 'tax_amount': taxAmount,
      if (rowid != null) 'rowid': rowid,
    });
  }

  OrderChargeForTotalV2Companion copyWith(
      {Value<String?>? orderRef,
      Value<String?>? chargeId,
      Value<String?>? name,
      Value<double?>? amount,
      Value<double?>? taxAmount,
      Value<int>? rowid}) {
    return OrderChargeForTotalV2Companion(
      orderRef: orderRef ?? this.orderRef,
      chargeId: chargeId ?? this.chargeId,
      name: name ?? this.name,
      amount: amount ?? this.amount,
      taxAmount: taxAmount ?? this.taxAmount,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (orderRef.present) {
      map['order_ref'] = Variable<String>(orderRef.value);
    }
    if (chargeId.present) {
      map['charge_id'] = Variable<String>(chargeId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (amount.present) {
      map['amount'] = Variable<double>(amount.value);
    }
    if (taxAmount.present) {
      map['tax_amount'] = Variable<double>(taxAmount.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('OrderChargeForTotalV2Companion(')
          ..write('orderRef: $orderRef, ')
          ..write('chargeId: $chargeId, ')
          ..write('name: $name, ')
          ..write('amount: $amount, ')
          ..write('taxAmount: $taxAmount, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $OrderTaxTypeV2Table extends OrderTaxTypeV2
    with TableInfo<$OrderTaxTypeV2Table, OrderTaxTypeV2Data> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $OrderTaxTypeV2Table(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _orderRefMeta =
      const VerificationMeta('orderRef');
  @override
  late final GeneratedColumn<String> orderRef = GeneratedColumn<String>(
      'order_ref', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES order_entity_v2 (order_ref) ON DELETE CASCADE'));
  static const VerificationMeta _taxTypeIdMeta =
      const VerificationMeta('taxTypeId');
  @override
  late final GeneratedColumn<String> taxTypeId = GeneratedColumn<String>(
      'tax_type_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _taxTypeNameMeta =
      const VerificationMeta('taxTypeName');
  @override
  late final GeneratedColumn<String> taxTypeName = GeneratedColumn<String>(
      'tax_type_name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _taxableAmountMeta =
      const VerificationMeta('taxableAmount');
  @override
  late final GeneratedColumn<double> taxableAmount = GeneratedColumn<double>(
      'taxable_amount', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _percentMeta =
      const VerificationMeta('percent');
  @override
  late final GeneratedColumn<double> percent = GeneratedColumn<double>(
      'percent', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _amountMeta = const VerificationMeta('amount');
  @override
  late final GeneratedColumn<double> amount = GeneratedColumn<double>(
      'amount', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _taxCodeMeta =
      const VerificationMeta('taxCode');
  @override
  late final GeneratedColumn<String> taxCode = GeneratedColumn<String>(
      'tax_code', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _taxAccountMeta =
      const VerificationMeta('taxAccount');
  @override
  late final GeneratedColumn<String> taxAccount = GeneratedColumn<String>(
      'tax_account', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _zeroTaxMeta =
      const VerificationMeta('zeroTax');
  @override
  late final GeneratedColumn<bool> zeroTax = GeneratedColumn<bool>(
      'zero_tax', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("zero_tax" IN (0, 1))'));
  @override
  List<GeneratedColumn> get $columns => [
        orderRef,
        taxTypeId,
        taxTypeName,
        taxableAmount,
        percent,
        amount,
        taxCode,
        taxAccount,
        zeroTax
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'order_tax_type_v2';
  @override
  VerificationContext validateIntegrity(Insertable<OrderTaxTypeV2Data> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('order_ref')) {
      context.handle(_orderRefMeta,
          orderRef.isAcceptableOrUnknown(data['order_ref']!, _orderRefMeta));
    } else if (isInserting) {
      context.missing(_orderRefMeta);
    }
    if (data.containsKey('tax_type_id')) {
      context.handle(
          _taxTypeIdMeta,
          taxTypeId.isAcceptableOrUnknown(
              data['tax_type_id']!, _taxTypeIdMeta));
    }
    if (data.containsKey('tax_type_name')) {
      context.handle(
          _taxTypeNameMeta,
          taxTypeName.isAcceptableOrUnknown(
              data['tax_type_name']!, _taxTypeNameMeta));
    }
    if (data.containsKey('taxable_amount')) {
      context.handle(
          _taxableAmountMeta,
          taxableAmount.isAcceptableOrUnknown(
              data['taxable_amount']!, _taxableAmountMeta));
    }
    if (data.containsKey('percent')) {
      context.handle(_percentMeta,
          percent.isAcceptableOrUnknown(data['percent']!, _percentMeta));
    }
    if (data.containsKey('amount')) {
      context.handle(_amountMeta,
          amount.isAcceptableOrUnknown(data['amount']!, _amountMeta));
    }
    if (data.containsKey('tax_code')) {
      context.handle(_taxCodeMeta,
          taxCode.isAcceptableOrUnknown(data['tax_code']!, _taxCodeMeta));
    }
    if (data.containsKey('tax_account')) {
      context.handle(
          _taxAccountMeta,
          taxAccount.isAcceptableOrUnknown(
              data['tax_account']!, _taxAccountMeta));
    }
    if (data.containsKey('zero_tax')) {
      context.handle(_zeroTaxMeta,
          zeroTax.isAcceptableOrUnknown(data['zero_tax']!, _zeroTaxMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {orderRef, taxTypeId};
  @override
  OrderTaxTypeV2Data map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return OrderTaxTypeV2Data(
      orderRef: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}order_ref'])!,
      taxTypeId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}tax_type_id']),
      taxTypeName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}tax_type_name']),
      taxableAmount: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}taxable_amount']),
      percent: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}percent']),
      amount: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}amount']),
      taxCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}tax_code']),
      taxAccount: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}tax_account']),
      zeroTax: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}zero_tax']),
    );
  }

  @override
  $OrderTaxTypeV2Table createAlias(String alias) {
    return $OrderTaxTypeV2Table(attachedDatabase, alias);
  }
}

class OrderTaxTypeV2Data extends DataClass
    implements Insertable<OrderTaxTypeV2Data> {
  final String orderRef;
  final String? taxTypeId;
  final String? taxTypeName;
  final double? taxableAmount;
  final double? percent;
  final double? amount;
  final String? taxCode;
  final String? taxAccount;
  final bool? zeroTax;
  const OrderTaxTypeV2Data(
      {required this.orderRef,
      this.taxTypeId,
      this.taxTypeName,
      this.taxableAmount,
      this.percent,
      this.amount,
      this.taxCode,
      this.taxAccount,
      this.zeroTax});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['order_ref'] = Variable<String>(orderRef);
    if (!nullToAbsent || taxTypeId != null) {
      map['tax_type_id'] = Variable<String>(taxTypeId);
    }
    if (!nullToAbsent || taxTypeName != null) {
      map['tax_type_name'] = Variable<String>(taxTypeName);
    }
    if (!nullToAbsent || taxableAmount != null) {
      map['taxable_amount'] = Variable<double>(taxableAmount);
    }
    if (!nullToAbsent || percent != null) {
      map['percent'] = Variable<double>(percent);
    }
    if (!nullToAbsent || amount != null) {
      map['amount'] = Variable<double>(amount);
    }
    if (!nullToAbsent || taxCode != null) {
      map['tax_code'] = Variable<String>(taxCode);
    }
    if (!nullToAbsent || taxAccount != null) {
      map['tax_account'] = Variable<String>(taxAccount);
    }
    if (!nullToAbsent || zeroTax != null) {
      map['zero_tax'] = Variable<bool>(zeroTax);
    }
    return map;
  }

  OrderTaxTypeV2Companion toCompanion(bool nullToAbsent) {
    return OrderTaxTypeV2Companion(
      orderRef: Value(orderRef),
      taxTypeId: taxTypeId == null && nullToAbsent
          ? const Value.absent()
          : Value(taxTypeId),
      taxTypeName: taxTypeName == null && nullToAbsent
          ? const Value.absent()
          : Value(taxTypeName),
      taxableAmount: taxableAmount == null && nullToAbsent
          ? const Value.absent()
          : Value(taxableAmount),
      percent: percent == null && nullToAbsent
          ? const Value.absent()
          : Value(percent),
      amount:
          amount == null && nullToAbsent ? const Value.absent() : Value(amount),
      taxCode: taxCode == null && nullToAbsent
          ? const Value.absent()
          : Value(taxCode),
      taxAccount: taxAccount == null && nullToAbsent
          ? const Value.absent()
          : Value(taxAccount),
      zeroTax: zeroTax == null && nullToAbsent
          ? const Value.absent()
          : Value(zeroTax),
    );
  }

  factory OrderTaxTypeV2Data.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return OrderTaxTypeV2Data(
      orderRef: serializer.fromJson<String>(json['orderRef']),
      taxTypeId: serializer.fromJson<String?>(json['taxTypeId']),
      taxTypeName: serializer.fromJson<String?>(json['taxTypeName']),
      taxableAmount: serializer.fromJson<double?>(json['taxableAmount']),
      percent: serializer.fromJson<double?>(json['percent']),
      amount: serializer.fromJson<double?>(json['amount']),
      taxCode: serializer.fromJson<String?>(json['taxCode']),
      taxAccount: serializer.fromJson<String?>(json['taxAccount']),
      zeroTax: serializer.fromJson<bool?>(json['zeroTax']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'orderRef': serializer.toJson<String>(orderRef),
      'taxTypeId': serializer.toJson<String?>(taxTypeId),
      'taxTypeName': serializer.toJson<String?>(taxTypeName),
      'taxableAmount': serializer.toJson<double?>(taxableAmount),
      'percent': serializer.toJson<double?>(percent),
      'amount': serializer.toJson<double?>(amount),
      'taxCode': serializer.toJson<String?>(taxCode),
      'taxAccount': serializer.toJson<String?>(taxAccount),
      'zeroTax': serializer.toJson<bool?>(zeroTax),
    };
  }

  OrderTaxTypeV2Data copyWith(
          {String? orderRef,
          Value<String?> taxTypeId = const Value.absent(),
          Value<String?> taxTypeName = const Value.absent(),
          Value<double?> taxableAmount = const Value.absent(),
          Value<double?> percent = const Value.absent(),
          Value<double?> amount = const Value.absent(),
          Value<String?> taxCode = const Value.absent(),
          Value<String?> taxAccount = const Value.absent(),
          Value<bool?> zeroTax = const Value.absent()}) =>
      OrderTaxTypeV2Data(
        orderRef: orderRef ?? this.orderRef,
        taxTypeId: taxTypeId.present ? taxTypeId.value : this.taxTypeId,
        taxTypeName: taxTypeName.present ? taxTypeName.value : this.taxTypeName,
        taxableAmount:
            taxableAmount.present ? taxableAmount.value : this.taxableAmount,
        percent: percent.present ? percent.value : this.percent,
        amount: amount.present ? amount.value : this.amount,
        taxCode: taxCode.present ? taxCode.value : this.taxCode,
        taxAccount: taxAccount.present ? taxAccount.value : this.taxAccount,
        zeroTax: zeroTax.present ? zeroTax.value : this.zeroTax,
      );
  @override
  String toString() {
    return (StringBuffer('OrderTaxTypeV2Data(')
          ..write('orderRef: $orderRef, ')
          ..write('taxTypeId: $taxTypeId, ')
          ..write('taxTypeName: $taxTypeName, ')
          ..write('taxableAmount: $taxableAmount, ')
          ..write('percent: $percent, ')
          ..write('amount: $amount, ')
          ..write('taxCode: $taxCode, ')
          ..write('taxAccount: $taxAccount, ')
          ..write('zeroTax: $zeroTax')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(orderRef, taxTypeId, taxTypeName,
      taxableAmount, percent, amount, taxCode, taxAccount, zeroTax);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is OrderTaxTypeV2Data &&
          other.orderRef == this.orderRef &&
          other.taxTypeId == this.taxTypeId &&
          other.taxTypeName == this.taxTypeName &&
          other.taxableAmount == this.taxableAmount &&
          other.percent == this.percent &&
          other.amount == this.amount &&
          other.taxCode == this.taxCode &&
          other.taxAccount == this.taxAccount &&
          other.zeroTax == this.zeroTax);
}

class OrderTaxTypeV2Companion extends UpdateCompanion<OrderTaxTypeV2Data> {
  final Value<String> orderRef;
  final Value<String?> taxTypeId;
  final Value<String?> taxTypeName;
  final Value<double?> taxableAmount;
  final Value<double?> percent;
  final Value<double?> amount;
  final Value<String?> taxCode;
  final Value<String?> taxAccount;
  final Value<bool?> zeroTax;
  final Value<int> rowid;
  const OrderTaxTypeV2Companion({
    this.orderRef = const Value.absent(),
    this.taxTypeId = const Value.absent(),
    this.taxTypeName = const Value.absent(),
    this.taxableAmount = const Value.absent(),
    this.percent = const Value.absent(),
    this.amount = const Value.absent(),
    this.taxCode = const Value.absent(),
    this.taxAccount = const Value.absent(),
    this.zeroTax = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  OrderTaxTypeV2Companion.insert({
    required String orderRef,
    this.taxTypeId = const Value.absent(),
    this.taxTypeName = const Value.absent(),
    this.taxableAmount = const Value.absent(),
    this.percent = const Value.absent(),
    this.amount = const Value.absent(),
    this.taxCode = const Value.absent(),
    this.taxAccount = const Value.absent(),
    this.zeroTax = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : orderRef = Value(orderRef);
  static Insertable<OrderTaxTypeV2Data> custom({
    Expression<String>? orderRef,
    Expression<String>? taxTypeId,
    Expression<String>? taxTypeName,
    Expression<double>? taxableAmount,
    Expression<double>? percent,
    Expression<double>? amount,
    Expression<String>? taxCode,
    Expression<String>? taxAccount,
    Expression<bool>? zeroTax,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (orderRef != null) 'order_ref': orderRef,
      if (taxTypeId != null) 'tax_type_id': taxTypeId,
      if (taxTypeName != null) 'tax_type_name': taxTypeName,
      if (taxableAmount != null) 'taxable_amount': taxableAmount,
      if (percent != null) 'percent': percent,
      if (amount != null) 'amount': amount,
      if (taxCode != null) 'tax_code': taxCode,
      if (taxAccount != null) 'tax_account': taxAccount,
      if (zeroTax != null) 'zero_tax': zeroTax,
      if (rowid != null) 'rowid': rowid,
    });
  }

  OrderTaxTypeV2Companion copyWith(
      {Value<String>? orderRef,
      Value<String?>? taxTypeId,
      Value<String?>? taxTypeName,
      Value<double?>? taxableAmount,
      Value<double?>? percent,
      Value<double?>? amount,
      Value<String?>? taxCode,
      Value<String?>? taxAccount,
      Value<bool?>? zeroTax,
      Value<int>? rowid}) {
    return OrderTaxTypeV2Companion(
      orderRef: orderRef ?? this.orderRef,
      taxTypeId: taxTypeId ?? this.taxTypeId,
      taxTypeName: taxTypeName ?? this.taxTypeName,
      taxableAmount: taxableAmount ?? this.taxableAmount,
      percent: percent ?? this.percent,
      amount: amount ?? this.amount,
      taxCode: taxCode ?? this.taxCode,
      taxAccount: taxAccount ?? this.taxAccount,
      zeroTax: zeroTax ?? this.zeroTax,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (orderRef.present) {
      map['order_ref'] = Variable<String>(orderRef.value);
    }
    if (taxTypeId.present) {
      map['tax_type_id'] = Variable<String>(taxTypeId.value);
    }
    if (taxTypeName.present) {
      map['tax_type_name'] = Variable<String>(taxTypeName.value);
    }
    if (taxableAmount.present) {
      map['taxable_amount'] = Variable<double>(taxableAmount.value);
    }
    if (percent.present) {
      map['percent'] = Variable<double>(percent.value);
    }
    if (amount.present) {
      map['amount'] = Variable<double>(amount.value);
    }
    if (taxCode.present) {
      map['tax_code'] = Variable<String>(taxCode.value);
    }
    if (taxAccount.present) {
      map['tax_account'] = Variable<String>(taxAccount.value);
    }
    if (zeroTax.present) {
      map['zero_tax'] = Variable<bool>(zeroTax.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('OrderTaxTypeV2Companion(')
          ..write('orderRef: $orderRef, ')
          ..write('taxTypeId: $taxTypeId, ')
          ..write('taxTypeName: $taxTypeName, ')
          ..write('taxableAmount: $taxableAmount, ')
          ..write('percent: $percent, ')
          ..write('amount: $amount, ')
          ..write('taxCode: $taxCode, ')
          ..write('taxAccount: $taxAccount, ')
          ..write('zeroTax: $zeroTax, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $OrderProductModifierV2Table extends OrderProductModifierV2
    with TableInfo<$OrderProductModifierV2Table, OrderProductModifierV2Data> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $OrderProductModifierV2Table(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _orderRefMeta =
      const VerificationMeta('orderRef');
  @override
  late final GeneratedColumn<String> orderRef = GeneratedColumn<String>(
      'order_ref', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES order_entity_v2 (order_ref) ON DELETE CASCADE'));
  static const VerificationMeta _productRefMeta =
      const VerificationMeta('productRef');
  @override
  late final GeneratedColumn<String> productRef = GeneratedColumn<String>(
      'product_ref', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _modifierIdMeta =
      const VerificationMeta('modifierId');
  @override
  late final GeneratedColumn<String> modifierId = GeneratedColumn<String>(
      'modifier_id', aliasedName, true,
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
  static const VerificationMeta _notesMeta = const VerificationMeta('notes');
  @override
  late final GeneratedColumn<String> notes = GeneratedColumn<String>(
      'notes', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _discountAmountMeta =
      const VerificationMeta('discountAmount');
  @override
  late final GeneratedColumn<double> discountAmount = GeneratedColumn<double>(
      'discount_amount', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _discountPercentageMeta =
      const VerificationMeta('discountPercentage');
  @override
  late final GeneratedColumn<double> discountPercentage =
      GeneratedColumn<double>('discount_percentage', aliasedName, true,
          type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _netUnitPriceMeta =
      const VerificationMeta('netUnitPrice');
  @override
  late final GeneratedColumn<double> netUnitPrice = GeneratedColumn<double>(
      'net_unit_price', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _netTotalPriceMeta =
      const VerificationMeta('netTotalPrice');
  @override
  late final GeneratedColumn<double> netTotalPrice = GeneratedColumn<double>(
      'net_total_price', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _netUnitPriceExcludeTaxMeta =
      const VerificationMeta('netUnitPriceExcludeTax');
  @override
  late final GeneratedColumn<double> netUnitPriceExcludeTax =
      GeneratedColumn<double>('net_unit_price_exclude_tax', aliasedName, true,
          type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _netTotalPriceExcludeTaxMeta =
      const VerificationMeta('netTotalPriceExcludeTax');
  @override
  late final GeneratedColumn<double> netTotalPriceExcludeTax =
      GeneratedColumn<double>('net_total_price_exclude_tax', aliasedName, true,
          type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _orderDiscountAmountMeta =
      const VerificationMeta('orderDiscountAmount');
  @override
  late final GeneratedColumn<double> orderDiscountAmount =
      GeneratedColumn<double>('order_discount_amount', aliasedName, true,
          type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _taxableAmountMeta =
      const VerificationMeta('taxableAmount');
  @override
  late final GeneratedColumn<double> taxableAmount = GeneratedColumn<double>(
      'taxable_amount', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _taxAmountMeta =
      const VerificationMeta('taxAmount');
  @override
  late final GeneratedColumn<double> taxAmount = GeneratedColumn<double>(
      'tax_amount', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _finalAmountMeta =
      const VerificationMeta('finalAmount');
  @override
  late final GeneratedColumn<double> finalAmount = GeneratedColumn<double>(
      'final_amount', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        orderRef,
        productRef,
        modifierId,
        name,
        fName,
        notes,
        discountAmount,
        discountPercentage,
        netUnitPrice,
        netTotalPrice,
        netUnitPriceExcludeTax,
        netTotalPriceExcludeTax,
        orderDiscountAmount,
        taxableAmount,
        taxAmount,
        finalAmount
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'order_product_modifier_v2';
  @override
  VerificationContext validateIntegrity(
      Insertable<OrderProductModifierV2Data> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('order_ref')) {
      context.handle(_orderRefMeta,
          orderRef.isAcceptableOrUnknown(data['order_ref']!, _orderRefMeta));
    }
    if (data.containsKey('product_ref')) {
      context.handle(
          _productRefMeta,
          productRef.isAcceptableOrUnknown(
              data['product_ref']!, _productRefMeta));
    }
    if (data.containsKey('modifier_id')) {
      context.handle(
          _modifierIdMeta,
          modifierId.isAcceptableOrUnknown(
              data['modifier_id']!, _modifierIdMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    }
    if (data.containsKey('f_name')) {
      context.handle(
          _fNameMeta, fName.isAcceptableOrUnknown(data['f_name']!, _fNameMeta));
    }
    if (data.containsKey('notes')) {
      context.handle(
          _notesMeta, notes.isAcceptableOrUnknown(data['notes']!, _notesMeta));
    }
    if (data.containsKey('discount_amount')) {
      context.handle(
          _discountAmountMeta,
          discountAmount.isAcceptableOrUnknown(
              data['discount_amount']!, _discountAmountMeta));
    }
    if (data.containsKey('discount_percentage')) {
      context.handle(
          _discountPercentageMeta,
          discountPercentage.isAcceptableOrUnknown(
              data['discount_percentage']!, _discountPercentageMeta));
    }
    if (data.containsKey('net_unit_price')) {
      context.handle(
          _netUnitPriceMeta,
          netUnitPrice.isAcceptableOrUnknown(
              data['net_unit_price']!, _netUnitPriceMeta));
    }
    if (data.containsKey('net_total_price')) {
      context.handle(
          _netTotalPriceMeta,
          netTotalPrice.isAcceptableOrUnknown(
              data['net_total_price']!, _netTotalPriceMeta));
    }
    if (data.containsKey('net_unit_price_exclude_tax')) {
      context.handle(
          _netUnitPriceExcludeTaxMeta,
          netUnitPriceExcludeTax.isAcceptableOrUnknown(
              data['net_unit_price_exclude_tax']!,
              _netUnitPriceExcludeTaxMeta));
    }
    if (data.containsKey('net_total_price_exclude_tax')) {
      context.handle(
          _netTotalPriceExcludeTaxMeta,
          netTotalPriceExcludeTax.isAcceptableOrUnknown(
              data['net_total_price_exclude_tax']!,
              _netTotalPriceExcludeTaxMeta));
    }
    if (data.containsKey('order_discount_amount')) {
      context.handle(
          _orderDiscountAmountMeta,
          orderDiscountAmount.isAcceptableOrUnknown(
              data['order_discount_amount']!, _orderDiscountAmountMeta));
    }
    if (data.containsKey('taxable_amount')) {
      context.handle(
          _taxableAmountMeta,
          taxableAmount.isAcceptableOrUnknown(
              data['taxable_amount']!, _taxableAmountMeta));
    }
    if (data.containsKey('tax_amount')) {
      context.handle(_taxAmountMeta,
          taxAmount.isAcceptableOrUnknown(data['tax_amount']!, _taxAmountMeta));
    }
    if (data.containsKey('final_amount')) {
      context.handle(
          _finalAmountMeta,
          finalAmount.isAcceptableOrUnknown(
              data['final_amount']!, _finalAmountMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {orderRef, productRef, modifierId};
  @override
  OrderProductModifierV2Data map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return OrderProductModifierV2Data(
      orderRef: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}order_ref']),
      productRef: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}product_ref']),
      modifierId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}modifier_id']),
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name']),
      fName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}f_name']),
      notes: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}notes']),
      discountAmount: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}discount_amount']),
      discountPercentage: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}discount_percentage']),
      netUnitPrice: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}net_unit_price']),
      netTotalPrice: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}net_total_price']),
      netUnitPriceExcludeTax: attachedDatabase.typeMapping.read(
          DriftSqlType.double,
          data['${effectivePrefix}net_unit_price_exclude_tax']),
      netTotalPriceExcludeTax: attachedDatabase.typeMapping.read(
          DriftSqlType.double,
          data['${effectivePrefix}net_total_price_exclude_tax']),
      orderDiscountAmount: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}order_discount_amount']),
      taxableAmount: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}taxable_amount']),
      taxAmount: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}tax_amount']),
      finalAmount: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}final_amount']),
    );
  }

  @override
  $OrderProductModifierV2Table createAlias(String alias) {
    return $OrderProductModifierV2Table(attachedDatabase, alias);
  }
}

class OrderProductModifierV2Data extends DataClass
    implements Insertable<OrderProductModifierV2Data> {
  final String? orderRef;
  final String? productRef;
  final String? modifierId;
  final String? name;
  final String? fName;
  final String? notes;
  final double? discountAmount;
  final double? discountPercentage;
  final double? netUnitPrice;
  final double? netTotalPrice;
  final double? netUnitPriceExcludeTax;
  final double? netTotalPriceExcludeTax;
  final double? orderDiscountAmount;
  final double? taxableAmount;
  final double? taxAmount;
  final double? finalAmount;
  const OrderProductModifierV2Data(
      {this.orderRef,
      this.productRef,
      this.modifierId,
      this.name,
      this.fName,
      this.notes,
      this.discountAmount,
      this.discountPercentage,
      this.netUnitPrice,
      this.netTotalPrice,
      this.netUnitPriceExcludeTax,
      this.netTotalPriceExcludeTax,
      this.orderDiscountAmount,
      this.taxableAmount,
      this.taxAmount,
      this.finalAmount});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || orderRef != null) {
      map['order_ref'] = Variable<String>(orderRef);
    }
    if (!nullToAbsent || productRef != null) {
      map['product_ref'] = Variable<String>(productRef);
    }
    if (!nullToAbsent || modifierId != null) {
      map['modifier_id'] = Variable<String>(modifierId);
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || fName != null) {
      map['f_name'] = Variable<String>(fName);
    }
    if (!nullToAbsent || notes != null) {
      map['notes'] = Variable<String>(notes);
    }
    if (!nullToAbsent || discountAmount != null) {
      map['discount_amount'] = Variable<double>(discountAmount);
    }
    if (!nullToAbsent || discountPercentage != null) {
      map['discount_percentage'] = Variable<double>(discountPercentage);
    }
    if (!nullToAbsent || netUnitPrice != null) {
      map['net_unit_price'] = Variable<double>(netUnitPrice);
    }
    if (!nullToAbsent || netTotalPrice != null) {
      map['net_total_price'] = Variable<double>(netTotalPrice);
    }
    if (!nullToAbsent || netUnitPriceExcludeTax != null) {
      map['net_unit_price_exclude_tax'] =
          Variable<double>(netUnitPriceExcludeTax);
    }
    if (!nullToAbsent || netTotalPriceExcludeTax != null) {
      map['net_total_price_exclude_tax'] =
          Variable<double>(netTotalPriceExcludeTax);
    }
    if (!nullToAbsent || orderDiscountAmount != null) {
      map['order_discount_amount'] = Variable<double>(orderDiscountAmount);
    }
    if (!nullToAbsent || taxableAmount != null) {
      map['taxable_amount'] = Variable<double>(taxableAmount);
    }
    if (!nullToAbsent || taxAmount != null) {
      map['tax_amount'] = Variable<double>(taxAmount);
    }
    if (!nullToAbsent || finalAmount != null) {
      map['final_amount'] = Variable<double>(finalAmount);
    }
    return map;
  }

  OrderProductModifierV2Companion toCompanion(bool nullToAbsent) {
    return OrderProductModifierV2Companion(
      orderRef: orderRef == null && nullToAbsent
          ? const Value.absent()
          : Value(orderRef),
      productRef: productRef == null && nullToAbsent
          ? const Value.absent()
          : Value(productRef),
      modifierId: modifierId == null && nullToAbsent
          ? const Value.absent()
          : Value(modifierId),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      fName:
          fName == null && nullToAbsent ? const Value.absent() : Value(fName),
      notes:
          notes == null && nullToAbsent ? const Value.absent() : Value(notes),
      discountAmount: discountAmount == null && nullToAbsent
          ? const Value.absent()
          : Value(discountAmount),
      discountPercentage: discountPercentage == null && nullToAbsent
          ? const Value.absent()
          : Value(discountPercentage),
      netUnitPrice: netUnitPrice == null && nullToAbsent
          ? const Value.absent()
          : Value(netUnitPrice),
      netTotalPrice: netTotalPrice == null && nullToAbsent
          ? const Value.absent()
          : Value(netTotalPrice),
      netUnitPriceExcludeTax: netUnitPriceExcludeTax == null && nullToAbsent
          ? const Value.absent()
          : Value(netUnitPriceExcludeTax),
      netTotalPriceExcludeTax: netTotalPriceExcludeTax == null && nullToAbsent
          ? const Value.absent()
          : Value(netTotalPriceExcludeTax),
      orderDiscountAmount: orderDiscountAmount == null && nullToAbsent
          ? const Value.absent()
          : Value(orderDiscountAmount),
      taxableAmount: taxableAmount == null && nullToAbsent
          ? const Value.absent()
          : Value(taxableAmount),
      taxAmount: taxAmount == null && nullToAbsent
          ? const Value.absent()
          : Value(taxAmount),
      finalAmount: finalAmount == null && nullToAbsent
          ? const Value.absent()
          : Value(finalAmount),
    );
  }

  factory OrderProductModifierV2Data.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return OrderProductModifierV2Data(
      orderRef: serializer.fromJson<String?>(json['orderRef']),
      productRef: serializer.fromJson<String?>(json['productRef']),
      modifierId: serializer.fromJson<String?>(json['modifierId']),
      name: serializer.fromJson<String?>(json['name']),
      fName: serializer.fromJson<String?>(json['fName']),
      notes: serializer.fromJson<String?>(json['notes']),
      discountAmount: serializer.fromJson<double?>(json['discountAmount']),
      discountPercentage:
          serializer.fromJson<double?>(json['discountPercentage']),
      netUnitPrice: serializer.fromJson<double?>(json['netUnitPrice']),
      netTotalPrice: serializer.fromJson<double?>(json['netTotalPrice']),
      netUnitPriceExcludeTax:
          serializer.fromJson<double?>(json['netUnitPriceExcludeTax']),
      netTotalPriceExcludeTax:
          serializer.fromJson<double?>(json['netTotalPriceExcludeTax']),
      orderDiscountAmount:
          serializer.fromJson<double?>(json['orderDiscountAmount']),
      taxableAmount: serializer.fromJson<double?>(json['taxableAmount']),
      taxAmount: serializer.fromJson<double?>(json['taxAmount']),
      finalAmount: serializer.fromJson<double?>(json['finalAmount']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'orderRef': serializer.toJson<String?>(orderRef),
      'productRef': serializer.toJson<String?>(productRef),
      'modifierId': serializer.toJson<String?>(modifierId),
      'name': serializer.toJson<String?>(name),
      'fName': serializer.toJson<String?>(fName),
      'notes': serializer.toJson<String?>(notes),
      'discountAmount': serializer.toJson<double?>(discountAmount),
      'discountPercentage': serializer.toJson<double?>(discountPercentage),
      'netUnitPrice': serializer.toJson<double?>(netUnitPrice),
      'netTotalPrice': serializer.toJson<double?>(netTotalPrice),
      'netUnitPriceExcludeTax':
          serializer.toJson<double?>(netUnitPriceExcludeTax),
      'netTotalPriceExcludeTax':
          serializer.toJson<double?>(netTotalPriceExcludeTax),
      'orderDiscountAmount': serializer.toJson<double?>(orderDiscountAmount),
      'taxableAmount': serializer.toJson<double?>(taxableAmount),
      'taxAmount': serializer.toJson<double?>(taxAmount),
      'finalAmount': serializer.toJson<double?>(finalAmount),
    };
  }

  OrderProductModifierV2Data copyWith(
          {Value<String?> orderRef = const Value.absent(),
          Value<String?> productRef = const Value.absent(),
          Value<String?> modifierId = const Value.absent(),
          Value<String?> name = const Value.absent(),
          Value<String?> fName = const Value.absent(),
          Value<String?> notes = const Value.absent(),
          Value<double?> discountAmount = const Value.absent(),
          Value<double?> discountPercentage = const Value.absent(),
          Value<double?> netUnitPrice = const Value.absent(),
          Value<double?> netTotalPrice = const Value.absent(),
          Value<double?> netUnitPriceExcludeTax = const Value.absent(),
          Value<double?> netTotalPriceExcludeTax = const Value.absent(),
          Value<double?> orderDiscountAmount = const Value.absent(),
          Value<double?> taxableAmount = const Value.absent(),
          Value<double?> taxAmount = const Value.absent(),
          Value<double?> finalAmount = const Value.absent()}) =>
      OrderProductModifierV2Data(
        orderRef: orderRef.present ? orderRef.value : this.orderRef,
        productRef: productRef.present ? productRef.value : this.productRef,
        modifierId: modifierId.present ? modifierId.value : this.modifierId,
        name: name.present ? name.value : this.name,
        fName: fName.present ? fName.value : this.fName,
        notes: notes.present ? notes.value : this.notes,
        discountAmount:
            discountAmount.present ? discountAmount.value : this.discountAmount,
        discountPercentage: discountPercentage.present
            ? discountPercentage.value
            : this.discountPercentage,
        netUnitPrice:
            netUnitPrice.present ? netUnitPrice.value : this.netUnitPrice,
        netTotalPrice:
            netTotalPrice.present ? netTotalPrice.value : this.netTotalPrice,
        netUnitPriceExcludeTax: netUnitPriceExcludeTax.present
            ? netUnitPriceExcludeTax.value
            : this.netUnitPriceExcludeTax,
        netTotalPriceExcludeTax: netTotalPriceExcludeTax.present
            ? netTotalPriceExcludeTax.value
            : this.netTotalPriceExcludeTax,
        orderDiscountAmount: orderDiscountAmount.present
            ? orderDiscountAmount.value
            : this.orderDiscountAmount,
        taxableAmount:
            taxableAmount.present ? taxableAmount.value : this.taxableAmount,
        taxAmount: taxAmount.present ? taxAmount.value : this.taxAmount,
        finalAmount: finalAmount.present ? finalAmount.value : this.finalAmount,
      );
  @override
  String toString() {
    return (StringBuffer('OrderProductModifierV2Data(')
          ..write('orderRef: $orderRef, ')
          ..write('productRef: $productRef, ')
          ..write('modifierId: $modifierId, ')
          ..write('name: $name, ')
          ..write('fName: $fName, ')
          ..write('notes: $notes, ')
          ..write('discountAmount: $discountAmount, ')
          ..write('discountPercentage: $discountPercentage, ')
          ..write('netUnitPrice: $netUnitPrice, ')
          ..write('netTotalPrice: $netTotalPrice, ')
          ..write('netUnitPriceExcludeTax: $netUnitPriceExcludeTax, ')
          ..write('netTotalPriceExcludeTax: $netTotalPriceExcludeTax, ')
          ..write('orderDiscountAmount: $orderDiscountAmount, ')
          ..write('taxableAmount: $taxableAmount, ')
          ..write('taxAmount: $taxAmount, ')
          ..write('finalAmount: $finalAmount')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      orderRef,
      productRef,
      modifierId,
      name,
      fName,
      notes,
      discountAmount,
      discountPercentage,
      netUnitPrice,
      netTotalPrice,
      netUnitPriceExcludeTax,
      netTotalPriceExcludeTax,
      orderDiscountAmount,
      taxableAmount,
      taxAmount,
      finalAmount);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is OrderProductModifierV2Data &&
          other.orderRef == this.orderRef &&
          other.productRef == this.productRef &&
          other.modifierId == this.modifierId &&
          other.name == this.name &&
          other.fName == this.fName &&
          other.notes == this.notes &&
          other.discountAmount == this.discountAmount &&
          other.discountPercentage == this.discountPercentage &&
          other.netUnitPrice == this.netUnitPrice &&
          other.netTotalPrice == this.netTotalPrice &&
          other.netUnitPriceExcludeTax == this.netUnitPriceExcludeTax &&
          other.netTotalPriceExcludeTax == this.netTotalPriceExcludeTax &&
          other.orderDiscountAmount == this.orderDiscountAmount &&
          other.taxableAmount == this.taxableAmount &&
          other.taxAmount == this.taxAmount &&
          other.finalAmount == this.finalAmount);
}

class OrderProductModifierV2Companion
    extends UpdateCompanion<OrderProductModifierV2Data> {
  final Value<String?> orderRef;
  final Value<String?> productRef;
  final Value<String?> modifierId;
  final Value<String?> name;
  final Value<String?> fName;
  final Value<String?> notes;
  final Value<double?> discountAmount;
  final Value<double?> discountPercentage;
  final Value<double?> netUnitPrice;
  final Value<double?> netTotalPrice;
  final Value<double?> netUnitPriceExcludeTax;
  final Value<double?> netTotalPriceExcludeTax;
  final Value<double?> orderDiscountAmount;
  final Value<double?> taxableAmount;
  final Value<double?> taxAmount;
  final Value<double?> finalAmount;
  final Value<int> rowid;
  const OrderProductModifierV2Companion({
    this.orderRef = const Value.absent(),
    this.productRef = const Value.absent(),
    this.modifierId = const Value.absent(),
    this.name = const Value.absent(),
    this.fName = const Value.absent(),
    this.notes = const Value.absent(),
    this.discountAmount = const Value.absent(),
    this.discountPercentage = const Value.absent(),
    this.netUnitPrice = const Value.absent(),
    this.netTotalPrice = const Value.absent(),
    this.netUnitPriceExcludeTax = const Value.absent(),
    this.netTotalPriceExcludeTax = const Value.absent(),
    this.orderDiscountAmount = const Value.absent(),
    this.taxableAmount = const Value.absent(),
    this.taxAmount = const Value.absent(),
    this.finalAmount = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  OrderProductModifierV2Companion.insert({
    this.orderRef = const Value.absent(),
    this.productRef = const Value.absent(),
    this.modifierId = const Value.absent(),
    this.name = const Value.absent(),
    this.fName = const Value.absent(),
    this.notes = const Value.absent(),
    this.discountAmount = const Value.absent(),
    this.discountPercentage = const Value.absent(),
    this.netUnitPrice = const Value.absent(),
    this.netTotalPrice = const Value.absent(),
    this.netUnitPriceExcludeTax = const Value.absent(),
    this.netTotalPriceExcludeTax = const Value.absent(),
    this.orderDiscountAmount = const Value.absent(),
    this.taxableAmount = const Value.absent(),
    this.taxAmount = const Value.absent(),
    this.finalAmount = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  static Insertable<OrderProductModifierV2Data> custom({
    Expression<String>? orderRef,
    Expression<String>? productRef,
    Expression<String>? modifierId,
    Expression<String>? name,
    Expression<String>? fName,
    Expression<String>? notes,
    Expression<double>? discountAmount,
    Expression<double>? discountPercentage,
    Expression<double>? netUnitPrice,
    Expression<double>? netTotalPrice,
    Expression<double>? netUnitPriceExcludeTax,
    Expression<double>? netTotalPriceExcludeTax,
    Expression<double>? orderDiscountAmount,
    Expression<double>? taxableAmount,
    Expression<double>? taxAmount,
    Expression<double>? finalAmount,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (orderRef != null) 'order_ref': orderRef,
      if (productRef != null) 'product_ref': productRef,
      if (modifierId != null) 'modifier_id': modifierId,
      if (name != null) 'name': name,
      if (fName != null) 'f_name': fName,
      if (notes != null) 'notes': notes,
      if (discountAmount != null) 'discount_amount': discountAmount,
      if (discountPercentage != null) 'discount_percentage': discountPercentage,
      if (netUnitPrice != null) 'net_unit_price': netUnitPrice,
      if (netTotalPrice != null) 'net_total_price': netTotalPrice,
      if (netUnitPriceExcludeTax != null)
        'net_unit_price_exclude_tax': netUnitPriceExcludeTax,
      if (netTotalPriceExcludeTax != null)
        'net_total_price_exclude_tax': netTotalPriceExcludeTax,
      if (orderDiscountAmount != null)
        'order_discount_amount': orderDiscountAmount,
      if (taxableAmount != null) 'taxable_amount': taxableAmount,
      if (taxAmount != null) 'tax_amount': taxAmount,
      if (finalAmount != null) 'final_amount': finalAmount,
      if (rowid != null) 'rowid': rowid,
    });
  }

  OrderProductModifierV2Companion copyWith(
      {Value<String?>? orderRef,
      Value<String?>? productRef,
      Value<String?>? modifierId,
      Value<String?>? name,
      Value<String?>? fName,
      Value<String?>? notes,
      Value<double?>? discountAmount,
      Value<double?>? discountPercentage,
      Value<double?>? netUnitPrice,
      Value<double?>? netTotalPrice,
      Value<double?>? netUnitPriceExcludeTax,
      Value<double?>? netTotalPriceExcludeTax,
      Value<double?>? orderDiscountAmount,
      Value<double?>? taxableAmount,
      Value<double?>? taxAmount,
      Value<double?>? finalAmount,
      Value<int>? rowid}) {
    return OrderProductModifierV2Companion(
      orderRef: orderRef ?? this.orderRef,
      productRef: productRef ?? this.productRef,
      modifierId: modifierId ?? this.modifierId,
      name: name ?? this.name,
      fName: fName ?? this.fName,
      notes: notes ?? this.notes,
      discountAmount: discountAmount ?? this.discountAmount,
      discountPercentage: discountPercentage ?? this.discountPercentage,
      netUnitPrice: netUnitPrice ?? this.netUnitPrice,
      netTotalPrice: netTotalPrice ?? this.netTotalPrice,
      netUnitPriceExcludeTax:
          netUnitPriceExcludeTax ?? this.netUnitPriceExcludeTax,
      netTotalPriceExcludeTax:
          netTotalPriceExcludeTax ?? this.netTotalPriceExcludeTax,
      orderDiscountAmount: orderDiscountAmount ?? this.orderDiscountAmount,
      taxableAmount: taxableAmount ?? this.taxableAmount,
      taxAmount: taxAmount ?? this.taxAmount,
      finalAmount: finalAmount ?? this.finalAmount,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (orderRef.present) {
      map['order_ref'] = Variable<String>(orderRef.value);
    }
    if (productRef.present) {
      map['product_ref'] = Variable<String>(productRef.value);
    }
    if (modifierId.present) {
      map['modifier_id'] = Variable<String>(modifierId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (fName.present) {
      map['f_name'] = Variable<String>(fName.value);
    }
    if (notes.present) {
      map['notes'] = Variable<String>(notes.value);
    }
    if (discountAmount.present) {
      map['discount_amount'] = Variable<double>(discountAmount.value);
    }
    if (discountPercentage.present) {
      map['discount_percentage'] = Variable<double>(discountPercentage.value);
    }
    if (netUnitPrice.present) {
      map['net_unit_price'] = Variable<double>(netUnitPrice.value);
    }
    if (netTotalPrice.present) {
      map['net_total_price'] = Variable<double>(netTotalPrice.value);
    }
    if (netUnitPriceExcludeTax.present) {
      map['net_unit_price_exclude_tax'] =
          Variable<double>(netUnitPriceExcludeTax.value);
    }
    if (netTotalPriceExcludeTax.present) {
      map['net_total_price_exclude_tax'] =
          Variable<double>(netTotalPriceExcludeTax.value);
    }
    if (orderDiscountAmount.present) {
      map['order_discount_amount'] =
          Variable<double>(orderDiscountAmount.value);
    }
    if (taxableAmount.present) {
      map['taxable_amount'] = Variable<double>(taxableAmount.value);
    }
    if (taxAmount.present) {
      map['tax_amount'] = Variable<double>(taxAmount.value);
    }
    if (finalAmount.present) {
      map['final_amount'] = Variable<double>(finalAmount.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('OrderProductModifierV2Companion(')
          ..write('orderRef: $orderRef, ')
          ..write('productRef: $productRef, ')
          ..write('modifierId: $modifierId, ')
          ..write('name: $name, ')
          ..write('fName: $fName, ')
          ..write('notes: $notes, ')
          ..write('discountAmount: $discountAmount, ')
          ..write('discountPercentage: $discountPercentage, ')
          ..write('netUnitPrice: $netUnitPrice, ')
          ..write('netTotalPrice: $netTotalPrice, ')
          ..write('netUnitPriceExcludeTax: $netUnitPriceExcludeTax, ')
          ..write('netTotalPriceExcludeTax: $netTotalPriceExcludeTax, ')
          ..write('orderDiscountAmount: $orderDiscountAmount, ')
          ..write('taxableAmount: $taxableAmount, ')
          ..write('taxAmount: $taxAmount, ')
          ..write('finalAmount: $finalAmount, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $OrderProductModifierOptionV2Table extends OrderProductModifierOptionV2
    with
        TableInfo<$OrderProductModifierOptionV2Table,
            OrderProductModifierOptionV2Data> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $OrderProductModifierOptionV2Table(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _orderRefMeta =
      const VerificationMeta('orderRef');
  @override
  late final GeneratedColumn<String> orderRef = GeneratedColumn<String>(
      'order_ref', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES order_entity_v2 (order_ref) ON DELETE CASCADE'));
  static const VerificationMeta _productRefMeta =
      const VerificationMeta('productRef');
  @override
  late final GeneratedColumn<String> productRef = GeneratedColumn<String>(
      'product_ref', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _modifierIdMeta =
      const VerificationMeta('modifierId');
  @override
  late final GeneratedColumn<String> modifierId = GeneratedColumn<String>(
      'modifier_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _optionIdMeta =
      const VerificationMeta('optionId');
  @override
  late final GeneratedColumn<String> optionId = GeneratedColumn<String>(
      'option_id', aliasedName, true,
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
  static const VerificationMeta _quantityMeta =
      const VerificationMeta('quantity');
  @override
  late final GeneratedColumn<double> quantity = GeneratedColumn<double>(
      'quantity', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _freeQuantityMeta =
      const VerificationMeta('freeQuantity');
  @override
  late final GeneratedColumn<double> freeQuantity = GeneratedColumn<double>(
      'free_quantity', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _unitPriceMeta =
      const VerificationMeta('unitPrice');
  @override
  late final GeneratedColumn<double> unitPrice = GeneratedColumn<double>(
      'unit_price', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _totalPriceMeta =
      const VerificationMeta('totalPrice');
  @override
  late final GeneratedColumn<double> totalPrice = GeneratedColumn<double>(
      'total_price', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _discountAmountMeta =
      const VerificationMeta('discountAmount');
  @override
  late final GeneratedColumn<double> discountAmount = GeneratedColumn<double>(
      'discount_amount', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _discountPercentageMeta =
      const VerificationMeta('discountPercentage');
  @override
  late final GeneratedColumn<double> discountPercentage =
      GeneratedColumn<double>('discount_percentage', aliasedName, true,
          type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _netUnitPriceMeta =
      const VerificationMeta('netUnitPrice');
  @override
  late final GeneratedColumn<double> netUnitPrice = GeneratedColumn<double>(
      'net_unit_price', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _netTotalPriceMeta =
      const VerificationMeta('netTotalPrice');
  @override
  late final GeneratedColumn<double> netTotalPrice = GeneratedColumn<double>(
      'net_total_price', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _netUnitPriceExcludeTaxMeta =
      const VerificationMeta('netUnitPriceExcludeTax');
  @override
  late final GeneratedColumn<double> netUnitPriceExcludeTax =
      GeneratedColumn<double>('net_unit_price_exclude_tax', aliasedName, true,
          type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _netTotalPriceExcludeTaxMeta =
      const VerificationMeta('netTotalPriceExcludeTax');
  @override
  late final GeneratedColumn<double> netTotalPriceExcludeTax =
      GeneratedColumn<double>('net_total_price_exclude_tax', aliasedName, true,
          type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _orderDiscountAmountMeta =
      const VerificationMeta('orderDiscountAmount');
  @override
  late final GeneratedColumn<double> orderDiscountAmount =
      GeneratedColumn<double>('order_discount_amount', aliasedName, true,
          type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _orderDiscountPercentageMeta =
      const VerificationMeta('orderDiscountPercentage');
  @override
  late final GeneratedColumn<double> orderDiscountPercentage =
      GeneratedColumn<double>('order_discount_percentage', aliasedName, true,
          type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _taxableAmountMeta =
      const VerificationMeta('taxableAmount');
  @override
  late final GeneratedColumn<double> taxableAmount = GeneratedColumn<double>(
      'taxable_amount', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _taxAmountMeta =
      const VerificationMeta('taxAmount');
  @override
  late final GeneratedColumn<double> taxAmount = GeneratedColumn<double>(
      'tax_amount', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _finalAmountMeta =
      const VerificationMeta('finalAmount');
  @override
  late final GeneratedColumn<double> finalAmount = GeneratedColumn<double>(
      'final_amount', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _taxGroupIdMeta =
      const VerificationMeta('taxGroupId');
  @override
  late final GeneratedColumn<String> taxGroupId = GeneratedColumn<String>(
      'tax_group_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _notesMeta = const VerificationMeta('notes');
  @override
  late final GeneratedColumn<String> notes = GeneratedColumn<String>(
      'notes', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        orderRef,
        productRef,
        modifierId,
        optionId,
        name,
        fName,
        quantity,
        freeQuantity,
        unitPrice,
        totalPrice,
        discountAmount,
        discountPercentage,
        netUnitPrice,
        netTotalPrice,
        netUnitPriceExcludeTax,
        netTotalPriceExcludeTax,
        orderDiscountAmount,
        orderDiscountPercentage,
        taxableAmount,
        taxAmount,
        finalAmount,
        taxGroupId,
        notes
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'order_product_modifier_option_v2';
  @override
  VerificationContext validateIntegrity(
      Insertable<OrderProductModifierOptionV2Data> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('order_ref')) {
      context.handle(_orderRefMeta,
          orderRef.isAcceptableOrUnknown(data['order_ref']!, _orderRefMeta));
    }
    if (data.containsKey('product_ref')) {
      context.handle(
          _productRefMeta,
          productRef.isAcceptableOrUnknown(
              data['product_ref']!, _productRefMeta));
    }
    if (data.containsKey('modifier_id')) {
      context.handle(
          _modifierIdMeta,
          modifierId.isAcceptableOrUnknown(
              data['modifier_id']!, _modifierIdMeta));
    }
    if (data.containsKey('option_id')) {
      context.handle(_optionIdMeta,
          optionId.isAcceptableOrUnknown(data['option_id']!, _optionIdMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    }
    if (data.containsKey('f_name')) {
      context.handle(
          _fNameMeta, fName.isAcceptableOrUnknown(data['f_name']!, _fNameMeta));
    }
    if (data.containsKey('quantity')) {
      context.handle(_quantityMeta,
          quantity.isAcceptableOrUnknown(data['quantity']!, _quantityMeta));
    } else if (isInserting) {
      context.missing(_quantityMeta);
    }
    if (data.containsKey('free_quantity')) {
      context.handle(
          _freeQuantityMeta,
          freeQuantity.isAcceptableOrUnknown(
              data['free_quantity']!, _freeQuantityMeta));
    }
    if (data.containsKey('unit_price')) {
      context.handle(_unitPriceMeta,
          unitPrice.isAcceptableOrUnknown(data['unit_price']!, _unitPriceMeta));
    } else if (isInserting) {
      context.missing(_unitPriceMeta);
    }
    if (data.containsKey('total_price')) {
      context.handle(
          _totalPriceMeta,
          totalPrice.isAcceptableOrUnknown(
              data['total_price']!, _totalPriceMeta));
    } else if (isInserting) {
      context.missing(_totalPriceMeta);
    }
    if (data.containsKey('discount_amount')) {
      context.handle(
          _discountAmountMeta,
          discountAmount.isAcceptableOrUnknown(
              data['discount_amount']!, _discountAmountMeta));
    }
    if (data.containsKey('discount_percentage')) {
      context.handle(
          _discountPercentageMeta,
          discountPercentage.isAcceptableOrUnknown(
              data['discount_percentage']!, _discountPercentageMeta));
    }
    if (data.containsKey('net_unit_price')) {
      context.handle(
          _netUnitPriceMeta,
          netUnitPrice.isAcceptableOrUnknown(
              data['net_unit_price']!, _netUnitPriceMeta));
    } else if (isInserting) {
      context.missing(_netUnitPriceMeta);
    }
    if (data.containsKey('net_total_price')) {
      context.handle(
          _netTotalPriceMeta,
          netTotalPrice.isAcceptableOrUnknown(
              data['net_total_price']!, _netTotalPriceMeta));
    } else if (isInserting) {
      context.missing(_netTotalPriceMeta);
    }
    if (data.containsKey('net_unit_price_exclude_tax')) {
      context.handle(
          _netUnitPriceExcludeTaxMeta,
          netUnitPriceExcludeTax.isAcceptableOrUnknown(
              data['net_unit_price_exclude_tax']!,
              _netUnitPriceExcludeTaxMeta));
    }
    if (data.containsKey('net_total_price_exclude_tax')) {
      context.handle(
          _netTotalPriceExcludeTaxMeta,
          netTotalPriceExcludeTax.isAcceptableOrUnknown(
              data['net_total_price_exclude_tax']!,
              _netTotalPriceExcludeTaxMeta));
    }
    if (data.containsKey('order_discount_amount')) {
      context.handle(
          _orderDiscountAmountMeta,
          orderDiscountAmount.isAcceptableOrUnknown(
              data['order_discount_amount']!, _orderDiscountAmountMeta));
    }
    if (data.containsKey('order_discount_percentage')) {
      context.handle(
          _orderDiscountPercentageMeta,
          orderDiscountPercentage.isAcceptableOrUnknown(
              data['order_discount_percentage']!,
              _orderDiscountPercentageMeta));
    }
    if (data.containsKey('taxable_amount')) {
      context.handle(
          _taxableAmountMeta,
          taxableAmount.isAcceptableOrUnknown(
              data['taxable_amount']!, _taxableAmountMeta));
    }
    if (data.containsKey('tax_amount')) {
      context.handle(_taxAmountMeta,
          taxAmount.isAcceptableOrUnknown(data['tax_amount']!, _taxAmountMeta));
    }
    if (data.containsKey('final_amount')) {
      context.handle(
          _finalAmountMeta,
          finalAmount.isAcceptableOrUnknown(
              data['final_amount']!, _finalAmountMeta));
    } else if (isInserting) {
      context.missing(_finalAmountMeta);
    }
    if (data.containsKey('tax_group_id')) {
      context.handle(
          _taxGroupIdMeta,
          taxGroupId.isAcceptableOrUnknown(
              data['tax_group_id']!, _taxGroupIdMeta));
    }
    if (data.containsKey('notes')) {
      context.handle(
          _notesMeta, notes.isAcceptableOrUnknown(data['notes']!, _notesMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey =>
      {orderRef, productRef, modifierId, optionId};
  @override
  OrderProductModifierOptionV2Data map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return OrderProductModifierOptionV2Data(
      orderRef: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}order_ref']),
      productRef: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}product_ref']),
      modifierId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}modifier_id']),
      optionId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}option_id']),
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name']),
      fName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}f_name']),
      quantity: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}quantity'])!,
      freeQuantity: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}free_quantity']),
      unitPrice: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}unit_price'])!,
      totalPrice: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}total_price'])!,
      discountAmount: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}discount_amount']),
      discountPercentage: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}discount_percentage']),
      netUnitPrice: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}net_unit_price'])!,
      netTotalPrice: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}net_total_price'])!,
      netUnitPriceExcludeTax: attachedDatabase.typeMapping.read(
          DriftSqlType.double,
          data['${effectivePrefix}net_unit_price_exclude_tax']),
      netTotalPriceExcludeTax: attachedDatabase.typeMapping.read(
          DriftSqlType.double,
          data['${effectivePrefix}net_total_price_exclude_tax']),
      orderDiscountAmount: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}order_discount_amount']),
      orderDiscountPercentage: attachedDatabase.typeMapping.read(
          DriftSqlType.double,
          data['${effectivePrefix}order_discount_percentage']),
      taxableAmount: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}taxable_amount']),
      taxAmount: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}tax_amount']),
      finalAmount: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}final_amount'])!,
      taxGroupId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}tax_group_id']),
      notes: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}notes']),
    );
  }

  @override
  $OrderProductModifierOptionV2Table createAlias(String alias) {
    return $OrderProductModifierOptionV2Table(attachedDatabase, alias);
  }
}

class OrderProductModifierOptionV2Data extends DataClass
    implements Insertable<OrderProductModifierOptionV2Data> {
  final String? orderRef;
  final String? productRef;
  final String? modifierId;
  final String? optionId;
  final String? name;
  final String? fName;
  final double quantity;
  final double? freeQuantity;
  final double unitPrice;
  final double totalPrice;
  final double? discountAmount;
  final double? discountPercentage;
  final double netUnitPrice;
  final double netTotalPrice;
  final double? netUnitPriceExcludeTax;
  final double? netTotalPriceExcludeTax;
  final double? orderDiscountAmount;
  final double? orderDiscountPercentage;
  final double? taxableAmount;
  final double? taxAmount;
  final double finalAmount;
  final String? taxGroupId;
  final String? notes;
  const OrderProductModifierOptionV2Data(
      {this.orderRef,
      this.productRef,
      this.modifierId,
      this.optionId,
      this.name,
      this.fName,
      required this.quantity,
      this.freeQuantity,
      required this.unitPrice,
      required this.totalPrice,
      this.discountAmount,
      this.discountPercentage,
      required this.netUnitPrice,
      required this.netTotalPrice,
      this.netUnitPriceExcludeTax,
      this.netTotalPriceExcludeTax,
      this.orderDiscountAmount,
      this.orderDiscountPercentage,
      this.taxableAmount,
      this.taxAmount,
      required this.finalAmount,
      this.taxGroupId,
      this.notes});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || orderRef != null) {
      map['order_ref'] = Variable<String>(orderRef);
    }
    if (!nullToAbsent || productRef != null) {
      map['product_ref'] = Variable<String>(productRef);
    }
    if (!nullToAbsent || modifierId != null) {
      map['modifier_id'] = Variable<String>(modifierId);
    }
    if (!nullToAbsent || optionId != null) {
      map['option_id'] = Variable<String>(optionId);
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || fName != null) {
      map['f_name'] = Variable<String>(fName);
    }
    map['quantity'] = Variable<double>(quantity);
    if (!nullToAbsent || freeQuantity != null) {
      map['free_quantity'] = Variable<double>(freeQuantity);
    }
    map['unit_price'] = Variable<double>(unitPrice);
    map['total_price'] = Variable<double>(totalPrice);
    if (!nullToAbsent || discountAmount != null) {
      map['discount_amount'] = Variable<double>(discountAmount);
    }
    if (!nullToAbsent || discountPercentage != null) {
      map['discount_percentage'] = Variable<double>(discountPercentage);
    }
    map['net_unit_price'] = Variable<double>(netUnitPrice);
    map['net_total_price'] = Variable<double>(netTotalPrice);
    if (!nullToAbsent || netUnitPriceExcludeTax != null) {
      map['net_unit_price_exclude_tax'] =
          Variable<double>(netUnitPriceExcludeTax);
    }
    if (!nullToAbsent || netTotalPriceExcludeTax != null) {
      map['net_total_price_exclude_tax'] =
          Variable<double>(netTotalPriceExcludeTax);
    }
    if (!nullToAbsent || orderDiscountAmount != null) {
      map['order_discount_amount'] = Variable<double>(orderDiscountAmount);
    }
    if (!nullToAbsent || orderDiscountPercentage != null) {
      map['order_discount_percentage'] =
          Variable<double>(orderDiscountPercentage);
    }
    if (!nullToAbsent || taxableAmount != null) {
      map['taxable_amount'] = Variable<double>(taxableAmount);
    }
    if (!nullToAbsent || taxAmount != null) {
      map['tax_amount'] = Variable<double>(taxAmount);
    }
    map['final_amount'] = Variable<double>(finalAmount);
    if (!nullToAbsent || taxGroupId != null) {
      map['tax_group_id'] = Variable<String>(taxGroupId);
    }
    if (!nullToAbsent || notes != null) {
      map['notes'] = Variable<String>(notes);
    }
    return map;
  }

  OrderProductModifierOptionV2Companion toCompanion(bool nullToAbsent) {
    return OrderProductModifierOptionV2Companion(
      orderRef: orderRef == null && nullToAbsent
          ? const Value.absent()
          : Value(orderRef),
      productRef: productRef == null && nullToAbsent
          ? const Value.absent()
          : Value(productRef),
      modifierId: modifierId == null && nullToAbsent
          ? const Value.absent()
          : Value(modifierId),
      optionId: optionId == null && nullToAbsent
          ? const Value.absent()
          : Value(optionId),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      fName:
          fName == null && nullToAbsent ? const Value.absent() : Value(fName),
      quantity: Value(quantity),
      freeQuantity: freeQuantity == null && nullToAbsent
          ? const Value.absent()
          : Value(freeQuantity),
      unitPrice: Value(unitPrice),
      totalPrice: Value(totalPrice),
      discountAmount: discountAmount == null && nullToAbsent
          ? const Value.absent()
          : Value(discountAmount),
      discountPercentage: discountPercentage == null && nullToAbsent
          ? const Value.absent()
          : Value(discountPercentage),
      netUnitPrice: Value(netUnitPrice),
      netTotalPrice: Value(netTotalPrice),
      netUnitPriceExcludeTax: netUnitPriceExcludeTax == null && nullToAbsent
          ? const Value.absent()
          : Value(netUnitPriceExcludeTax),
      netTotalPriceExcludeTax: netTotalPriceExcludeTax == null && nullToAbsent
          ? const Value.absent()
          : Value(netTotalPriceExcludeTax),
      orderDiscountAmount: orderDiscountAmount == null && nullToAbsent
          ? const Value.absent()
          : Value(orderDiscountAmount),
      orderDiscountPercentage: orderDiscountPercentage == null && nullToAbsent
          ? const Value.absent()
          : Value(orderDiscountPercentage),
      taxableAmount: taxableAmount == null && nullToAbsent
          ? const Value.absent()
          : Value(taxableAmount),
      taxAmount: taxAmount == null && nullToAbsent
          ? const Value.absent()
          : Value(taxAmount),
      finalAmount: Value(finalAmount),
      taxGroupId: taxGroupId == null && nullToAbsent
          ? const Value.absent()
          : Value(taxGroupId),
      notes:
          notes == null && nullToAbsent ? const Value.absent() : Value(notes),
    );
  }

  factory OrderProductModifierOptionV2Data.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return OrderProductModifierOptionV2Data(
      orderRef: serializer.fromJson<String?>(json['orderRef']),
      productRef: serializer.fromJson<String?>(json['productRef']),
      modifierId: serializer.fromJson<String?>(json['modifierId']),
      optionId: serializer.fromJson<String?>(json['optionId']),
      name: serializer.fromJson<String?>(json['name']),
      fName: serializer.fromJson<String?>(json['fName']),
      quantity: serializer.fromJson<double>(json['quantity']),
      freeQuantity: serializer.fromJson<double?>(json['freeQuantity']),
      unitPrice: serializer.fromJson<double>(json['unitPrice']),
      totalPrice: serializer.fromJson<double>(json['totalPrice']),
      discountAmount: serializer.fromJson<double?>(json['discountAmount']),
      discountPercentage:
          serializer.fromJson<double?>(json['discountPercentage']),
      netUnitPrice: serializer.fromJson<double>(json['netUnitPrice']),
      netTotalPrice: serializer.fromJson<double>(json['netTotalPrice']),
      netUnitPriceExcludeTax:
          serializer.fromJson<double?>(json['netUnitPriceExcludeTax']),
      netTotalPriceExcludeTax:
          serializer.fromJson<double?>(json['netTotalPriceExcludeTax']),
      orderDiscountAmount:
          serializer.fromJson<double?>(json['orderDiscountAmount']),
      orderDiscountPercentage:
          serializer.fromJson<double?>(json['orderDiscountPercentage']),
      taxableAmount: serializer.fromJson<double?>(json['taxableAmount']),
      taxAmount: serializer.fromJson<double?>(json['taxAmount']),
      finalAmount: serializer.fromJson<double>(json['finalAmount']),
      taxGroupId: serializer.fromJson<String?>(json['taxGroupId']),
      notes: serializer.fromJson<String?>(json['notes']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'orderRef': serializer.toJson<String?>(orderRef),
      'productRef': serializer.toJson<String?>(productRef),
      'modifierId': serializer.toJson<String?>(modifierId),
      'optionId': serializer.toJson<String?>(optionId),
      'name': serializer.toJson<String?>(name),
      'fName': serializer.toJson<String?>(fName),
      'quantity': serializer.toJson<double>(quantity),
      'freeQuantity': serializer.toJson<double?>(freeQuantity),
      'unitPrice': serializer.toJson<double>(unitPrice),
      'totalPrice': serializer.toJson<double>(totalPrice),
      'discountAmount': serializer.toJson<double?>(discountAmount),
      'discountPercentage': serializer.toJson<double?>(discountPercentage),
      'netUnitPrice': serializer.toJson<double>(netUnitPrice),
      'netTotalPrice': serializer.toJson<double>(netTotalPrice),
      'netUnitPriceExcludeTax':
          serializer.toJson<double?>(netUnitPriceExcludeTax),
      'netTotalPriceExcludeTax':
          serializer.toJson<double?>(netTotalPriceExcludeTax),
      'orderDiscountAmount': serializer.toJson<double?>(orderDiscountAmount),
      'orderDiscountPercentage':
          serializer.toJson<double?>(orderDiscountPercentage),
      'taxableAmount': serializer.toJson<double?>(taxableAmount),
      'taxAmount': serializer.toJson<double?>(taxAmount),
      'finalAmount': serializer.toJson<double>(finalAmount),
      'taxGroupId': serializer.toJson<String?>(taxGroupId),
      'notes': serializer.toJson<String?>(notes),
    };
  }

  OrderProductModifierOptionV2Data copyWith(
          {Value<String?> orderRef = const Value.absent(),
          Value<String?> productRef = const Value.absent(),
          Value<String?> modifierId = const Value.absent(),
          Value<String?> optionId = const Value.absent(),
          Value<String?> name = const Value.absent(),
          Value<String?> fName = const Value.absent(),
          double? quantity,
          Value<double?> freeQuantity = const Value.absent(),
          double? unitPrice,
          double? totalPrice,
          Value<double?> discountAmount = const Value.absent(),
          Value<double?> discountPercentage = const Value.absent(),
          double? netUnitPrice,
          double? netTotalPrice,
          Value<double?> netUnitPriceExcludeTax = const Value.absent(),
          Value<double?> netTotalPriceExcludeTax = const Value.absent(),
          Value<double?> orderDiscountAmount = const Value.absent(),
          Value<double?> orderDiscountPercentage = const Value.absent(),
          Value<double?> taxableAmount = const Value.absent(),
          Value<double?> taxAmount = const Value.absent(),
          double? finalAmount,
          Value<String?> taxGroupId = const Value.absent(),
          Value<String?> notes = const Value.absent()}) =>
      OrderProductModifierOptionV2Data(
        orderRef: orderRef.present ? orderRef.value : this.orderRef,
        productRef: productRef.present ? productRef.value : this.productRef,
        modifierId: modifierId.present ? modifierId.value : this.modifierId,
        optionId: optionId.present ? optionId.value : this.optionId,
        name: name.present ? name.value : this.name,
        fName: fName.present ? fName.value : this.fName,
        quantity: quantity ?? this.quantity,
        freeQuantity:
            freeQuantity.present ? freeQuantity.value : this.freeQuantity,
        unitPrice: unitPrice ?? this.unitPrice,
        totalPrice: totalPrice ?? this.totalPrice,
        discountAmount:
            discountAmount.present ? discountAmount.value : this.discountAmount,
        discountPercentage: discountPercentage.present
            ? discountPercentage.value
            : this.discountPercentage,
        netUnitPrice: netUnitPrice ?? this.netUnitPrice,
        netTotalPrice: netTotalPrice ?? this.netTotalPrice,
        netUnitPriceExcludeTax: netUnitPriceExcludeTax.present
            ? netUnitPriceExcludeTax.value
            : this.netUnitPriceExcludeTax,
        netTotalPriceExcludeTax: netTotalPriceExcludeTax.present
            ? netTotalPriceExcludeTax.value
            : this.netTotalPriceExcludeTax,
        orderDiscountAmount: orderDiscountAmount.present
            ? orderDiscountAmount.value
            : this.orderDiscountAmount,
        orderDiscountPercentage: orderDiscountPercentage.present
            ? orderDiscountPercentage.value
            : this.orderDiscountPercentage,
        taxableAmount:
            taxableAmount.present ? taxableAmount.value : this.taxableAmount,
        taxAmount: taxAmount.present ? taxAmount.value : this.taxAmount,
        finalAmount: finalAmount ?? this.finalAmount,
        taxGroupId: taxGroupId.present ? taxGroupId.value : this.taxGroupId,
        notes: notes.present ? notes.value : this.notes,
      );
  @override
  String toString() {
    return (StringBuffer('OrderProductModifierOptionV2Data(')
          ..write('orderRef: $orderRef, ')
          ..write('productRef: $productRef, ')
          ..write('modifierId: $modifierId, ')
          ..write('optionId: $optionId, ')
          ..write('name: $name, ')
          ..write('fName: $fName, ')
          ..write('quantity: $quantity, ')
          ..write('freeQuantity: $freeQuantity, ')
          ..write('unitPrice: $unitPrice, ')
          ..write('totalPrice: $totalPrice, ')
          ..write('discountAmount: $discountAmount, ')
          ..write('discountPercentage: $discountPercentage, ')
          ..write('netUnitPrice: $netUnitPrice, ')
          ..write('netTotalPrice: $netTotalPrice, ')
          ..write('netUnitPriceExcludeTax: $netUnitPriceExcludeTax, ')
          ..write('netTotalPriceExcludeTax: $netTotalPriceExcludeTax, ')
          ..write('orderDiscountAmount: $orderDiscountAmount, ')
          ..write('orderDiscountPercentage: $orderDiscountPercentage, ')
          ..write('taxableAmount: $taxableAmount, ')
          ..write('taxAmount: $taxAmount, ')
          ..write('finalAmount: $finalAmount, ')
          ..write('taxGroupId: $taxGroupId, ')
          ..write('notes: $notes')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
        orderRef,
        productRef,
        modifierId,
        optionId,
        name,
        fName,
        quantity,
        freeQuantity,
        unitPrice,
        totalPrice,
        discountAmount,
        discountPercentage,
        netUnitPrice,
        netTotalPrice,
        netUnitPriceExcludeTax,
        netTotalPriceExcludeTax,
        orderDiscountAmount,
        orderDiscountPercentage,
        taxableAmount,
        taxAmount,
        finalAmount,
        taxGroupId,
        notes
      ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is OrderProductModifierOptionV2Data &&
          other.orderRef == this.orderRef &&
          other.productRef == this.productRef &&
          other.modifierId == this.modifierId &&
          other.optionId == this.optionId &&
          other.name == this.name &&
          other.fName == this.fName &&
          other.quantity == this.quantity &&
          other.freeQuantity == this.freeQuantity &&
          other.unitPrice == this.unitPrice &&
          other.totalPrice == this.totalPrice &&
          other.discountAmount == this.discountAmount &&
          other.discountPercentage == this.discountPercentage &&
          other.netUnitPrice == this.netUnitPrice &&
          other.netTotalPrice == this.netTotalPrice &&
          other.netUnitPriceExcludeTax == this.netUnitPriceExcludeTax &&
          other.netTotalPriceExcludeTax == this.netTotalPriceExcludeTax &&
          other.orderDiscountAmount == this.orderDiscountAmount &&
          other.orderDiscountPercentage == this.orderDiscountPercentage &&
          other.taxableAmount == this.taxableAmount &&
          other.taxAmount == this.taxAmount &&
          other.finalAmount == this.finalAmount &&
          other.taxGroupId == this.taxGroupId &&
          other.notes == this.notes);
}

class OrderProductModifierOptionV2Companion
    extends UpdateCompanion<OrderProductModifierOptionV2Data> {
  final Value<String?> orderRef;
  final Value<String?> productRef;
  final Value<String?> modifierId;
  final Value<String?> optionId;
  final Value<String?> name;
  final Value<String?> fName;
  final Value<double> quantity;
  final Value<double?> freeQuantity;
  final Value<double> unitPrice;
  final Value<double> totalPrice;
  final Value<double?> discountAmount;
  final Value<double?> discountPercentage;
  final Value<double> netUnitPrice;
  final Value<double> netTotalPrice;
  final Value<double?> netUnitPriceExcludeTax;
  final Value<double?> netTotalPriceExcludeTax;
  final Value<double?> orderDiscountAmount;
  final Value<double?> orderDiscountPercentage;
  final Value<double?> taxableAmount;
  final Value<double?> taxAmount;
  final Value<double> finalAmount;
  final Value<String?> taxGroupId;
  final Value<String?> notes;
  final Value<int> rowid;
  const OrderProductModifierOptionV2Companion({
    this.orderRef = const Value.absent(),
    this.productRef = const Value.absent(),
    this.modifierId = const Value.absent(),
    this.optionId = const Value.absent(),
    this.name = const Value.absent(),
    this.fName = const Value.absent(),
    this.quantity = const Value.absent(),
    this.freeQuantity = const Value.absent(),
    this.unitPrice = const Value.absent(),
    this.totalPrice = const Value.absent(),
    this.discountAmount = const Value.absent(),
    this.discountPercentage = const Value.absent(),
    this.netUnitPrice = const Value.absent(),
    this.netTotalPrice = const Value.absent(),
    this.netUnitPriceExcludeTax = const Value.absent(),
    this.netTotalPriceExcludeTax = const Value.absent(),
    this.orderDiscountAmount = const Value.absent(),
    this.orderDiscountPercentage = const Value.absent(),
    this.taxableAmount = const Value.absent(),
    this.taxAmount = const Value.absent(),
    this.finalAmount = const Value.absent(),
    this.taxGroupId = const Value.absent(),
    this.notes = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  OrderProductModifierOptionV2Companion.insert({
    this.orderRef = const Value.absent(),
    this.productRef = const Value.absent(),
    this.modifierId = const Value.absent(),
    this.optionId = const Value.absent(),
    this.name = const Value.absent(),
    this.fName = const Value.absent(),
    required double quantity,
    this.freeQuantity = const Value.absent(),
    required double unitPrice,
    required double totalPrice,
    this.discountAmount = const Value.absent(),
    this.discountPercentage = const Value.absent(),
    required double netUnitPrice,
    required double netTotalPrice,
    this.netUnitPriceExcludeTax = const Value.absent(),
    this.netTotalPriceExcludeTax = const Value.absent(),
    this.orderDiscountAmount = const Value.absent(),
    this.orderDiscountPercentage = const Value.absent(),
    this.taxableAmount = const Value.absent(),
    this.taxAmount = const Value.absent(),
    required double finalAmount,
    this.taxGroupId = const Value.absent(),
    this.notes = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : quantity = Value(quantity),
        unitPrice = Value(unitPrice),
        totalPrice = Value(totalPrice),
        netUnitPrice = Value(netUnitPrice),
        netTotalPrice = Value(netTotalPrice),
        finalAmount = Value(finalAmount);
  static Insertable<OrderProductModifierOptionV2Data> custom({
    Expression<String>? orderRef,
    Expression<String>? productRef,
    Expression<String>? modifierId,
    Expression<String>? optionId,
    Expression<String>? name,
    Expression<String>? fName,
    Expression<double>? quantity,
    Expression<double>? freeQuantity,
    Expression<double>? unitPrice,
    Expression<double>? totalPrice,
    Expression<double>? discountAmount,
    Expression<double>? discountPercentage,
    Expression<double>? netUnitPrice,
    Expression<double>? netTotalPrice,
    Expression<double>? netUnitPriceExcludeTax,
    Expression<double>? netTotalPriceExcludeTax,
    Expression<double>? orderDiscountAmount,
    Expression<double>? orderDiscountPercentage,
    Expression<double>? taxableAmount,
    Expression<double>? taxAmount,
    Expression<double>? finalAmount,
    Expression<String>? taxGroupId,
    Expression<String>? notes,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (orderRef != null) 'order_ref': orderRef,
      if (productRef != null) 'product_ref': productRef,
      if (modifierId != null) 'modifier_id': modifierId,
      if (optionId != null) 'option_id': optionId,
      if (name != null) 'name': name,
      if (fName != null) 'f_name': fName,
      if (quantity != null) 'quantity': quantity,
      if (freeQuantity != null) 'free_quantity': freeQuantity,
      if (unitPrice != null) 'unit_price': unitPrice,
      if (totalPrice != null) 'total_price': totalPrice,
      if (discountAmount != null) 'discount_amount': discountAmount,
      if (discountPercentage != null) 'discount_percentage': discountPercentage,
      if (netUnitPrice != null) 'net_unit_price': netUnitPrice,
      if (netTotalPrice != null) 'net_total_price': netTotalPrice,
      if (netUnitPriceExcludeTax != null)
        'net_unit_price_exclude_tax': netUnitPriceExcludeTax,
      if (netTotalPriceExcludeTax != null)
        'net_total_price_exclude_tax': netTotalPriceExcludeTax,
      if (orderDiscountAmount != null)
        'order_discount_amount': orderDiscountAmount,
      if (orderDiscountPercentage != null)
        'order_discount_percentage': orderDiscountPercentage,
      if (taxableAmount != null) 'taxable_amount': taxableAmount,
      if (taxAmount != null) 'tax_amount': taxAmount,
      if (finalAmount != null) 'final_amount': finalAmount,
      if (taxGroupId != null) 'tax_group_id': taxGroupId,
      if (notes != null) 'notes': notes,
      if (rowid != null) 'rowid': rowid,
    });
  }

  OrderProductModifierOptionV2Companion copyWith(
      {Value<String?>? orderRef,
      Value<String?>? productRef,
      Value<String?>? modifierId,
      Value<String?>? optionId,
      Value<String?>? name,
      Value<String?>? fName,
      Value<double>? quantity,
      Value<double?>? freeQuantity,
      Value<double>? unitPrice,
      Value<double>? totalPrice,
      Value<double?>? discountAmount,
      Value<double?>? discountPercentage,
      Value<double>? netUnitPrice,
      Value<double>? netTotalPrice,
      Value<double?>? netUnitPriceExcludeTax,
      Value<double?>? netTotalPriceExcludeTax,
      Value<double?>? orderDiscountAmount,
      Value<double?>? orderDiscountPercentage,
      Value<double?>? taxableAmount,
      Value<double?>? taxAmount,
      Value<double>? finalAmount,
      Value<String?>? taxGroupId,
      Value<String?>? notes,
      Value<int>? rowid}) {
    return OrderProductModifierOptionV2Companion(
      orderRef: orderRef ?? this.orderRef,
      productRef: productRef ?? this.productRef,
      modifierId: modifierId ?? this.modifierId,
      optionId: optionId ?? this.optionId,
      name: name ?? this.name,
      fName: fName ?? this.fName,
      quantity: quantity ?? this.quantity,
      freeQuantity: freeQuantity ?? this.freeQuantity,
      unitPrice: unitPrice ?? this.unitPrice,
      totalPrice: totalPrice ?? this.totalPrice,
      discountAmount: discountAmount ?? this.discountAmount,
      discountPercentage: discountPercentage ?? this.discountPercentage,
      netUnitPrice: netUnitPrice ?? this.netUnitPrice,
      netTotalPrice: netTotalPrice ?? this.netTotalPrice,
      netUnitPriceExcludeTax:
          netUnitPriceExcludeTax ?? this.netUnitPriceExcludeTax,
      netTotalPriceExcludeTax:
          netTotalPriceExcludeTax ?? this.netTotalPriceExcludeTax,
      orderDiscountAmount: orderDiscountAmount ?? this.orderDiscountAmount,
      orderDiscountPercentage:
          orderDiscountPercentage ?? this.orderDiscountPercentage,
      taxableAmount: taxableAmount ?? this.taxableAmount,
      taxAmount: taxAmount ?? this.taxAmount,
      finalAmount: finalAmount ?? this.finalAmount,
      taxGroupId: taxGroupId ?? this.taxGroupId,
      notes: notes ?? this.notes,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (orderRef.present) {
      map['order_ref'] = Variable<String>(orderRef.value);
    }
    if (productRef.present) {
      map['product_ref'] = Variable<String>(productRef.value);
    }
    if (modifierId.present) {
      map['modifier_id'] = Variable<String>(modifierId.value);
    }
    if (optionId.present) {
      map['option_id'] = Variable<String>(optionId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (fName.present) {
      map['f_name'] = Variable<String>(fName.value);
    }
    if (quantity.present) {
      map['quantity'] = Variable<double>(quantity.value);
    }
    if (freeQuantity.present) {
      map['free_quantity'] = Variable<double>(freeQuantity.value);
    }
    if (unitPrice.present) {
      map['unit_price'] = Variable<double>(unitPrice.value);
    }
    if (totalPrice.present) {
      map['total_price'] = Variable<double>(totalPrice.value);
    }
    if (discountAmount.present) {
      map['discount_amount'] = Variable<double>(discountAmount.value);
    }
    if (discountPercentage.present) {
      map['discount_percentage'] = Variable<double>(discountPercentage.value);
    }
    if (netUnitPrice.present) {
      map['net_unit_price'] = Variable<double>(netUnitPrice.value);
    }
    if (netTotalPrice.present) {
      map['net_total_price'] = Variable<double>(netTotalPrice.value);
    }
    if (netUnitPriceExcludeTax.present) {
      map['net_unit_price_exclude_tax'] =
          Variable<double>(netUnitPriceExcludeTax.value);
    }
    if (netTotalPriceExcludeTax.present) {
      map['net_total_price_exclude_tax'] =
          Variable<double>(netTotalPriceExcludeTax.value);
    }
    if (orderDiscountAmount.present) {
      map['order_discount_amount'] =
          Variable<double>(orderDiscountAmount.value);
    }
    if (orderDiscountPercentage.present) {
      map['order_discount_percentage'] =
          Variable<double>(orderDiscountPercentage.value);
    }
    if (taxableAmount.present) {
      map['taxable_amount'] = Variable<double>(taxableAmount.value);
    }
    if (taxAmount.present) {
      map['tax_amount'] = Variable<double>(taxAmount.value);
    }
    if (finalAmount.present) {
      map['final_amount'] = Variable<double>(finalAmount.value);
    }
    if (taxGroupId.present) {
      map['tax_group_id'] = Variable<String>(taxGroupId.value);
    }
    if (notes.present) {
      map['notes'] = Variable<String>(notes.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('OrderProductModifierOptionV2Companion(')
          ..write('orderRef: $orderRef, ')
          ..write('productRef: $productRef, ')
          ..write('modifierId: $modifierId, ')
          ..write('optionId: $optionId, ')
          ..write('name: $name, ')
          ..write('fName: $fName, ')
          ..write('quantity: $quantity, ')
          ..write('freeQuantity: $freeQuantity, ')
          ..write('unitPrice: $unitPrice, ')
          ..write('totalPrice: $totalPrice, ')
          ..write('discountAmount: $discountAmount, ')
          ..write('discountPercentage: $discountPercentage, ')
          ..write('netUnitPrice: $netUnitPrice, ')
          ..write('netTotalPrice: $netTotalPrice, ')
          ..write('netUnitPriceExcludeTax: $netUnitPriceExcludeTax, ')
          ..write('netTotalPriceExcludeTax: $netTotalPriceExcludeTax, ')
          ..write('orderDiscountAmount: $orderDiscountAmount, ')
          ..write('orderDiscountPercentage: $orderDiscountPercentage, ')
          ..write('taxableAmount: $taxableAmount, ')
          ..write('taxAmount: $taxAmount, ')
          ..write('finalAmount: $finalAmount, ')
          ..write('taxGroupId: $taxGroupId, ')
          ..write('notes: $notes, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $OrderPaymentV2Table extends OrderPaymentV2
    with TableInfo<$OrderPaymentV2Table, OrderPaymentV2Data> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $OrderPaymentV2Table(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _orderRefMeta =
      const VerificationMeta('orderRef');
  @override
  late final GeneratedColumn<String> orderRef = GeneratedColumn<String>(
      'order_ref', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES order_entity_v2 (order_ref) ON DELETE CASCADE'));
  static const VerificationMeta _paymentIdMeta =
      const VerificationMeta('paymentId');
  @override
  late final GeneratedColumn<String> paymentId = GeneratedColumn<String>(
      'payment_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _paymentMethodIdMeta =
      const VerificationMeta('paymentMethodId');
  @override
  late final GeneratedColumn<String> paymentMethodId = GeneratedColumn<String>(
      'payment_method_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _paymentMethodTypeMeta =
      const VerificationMeta('paymentMethodType');
  @override
  late final GeneratedColumn<int> paymentMethodType = GeneratedColumn<int>(
      'payment_method_type', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
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
  static const VerificationMeta _currencyAmountMeta =
      const VerificationMeta('currencyAmount');
  @override
  late final GeneratedColumn<double> currencyAmount = GeneratedColumn<double>(
      'currency_amount', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _currencyCodeMeta =
      const VerificationMeta('currencyCode');
  @override
  late final GeneratedColumn<String> currencyCode = GeneratedColumn<String>(
      'currency_code', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _exchangeRateToBaseMeta =
      const VerificationMeta('exchangeRateToBase');
  @override
  late final GeneratedColumn<double> exchangeRateToBase =
      GeneratedColumn<double>('exchange_rate_to_base', aliasedName, true,
          type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _baseAmountMeta =
      const VerificationMeta('baseAmount');
  @override
  late final GeneratedColumn<double> baseAmount = GeneratedColumn<double>(
      'base_amount', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _receivedAmountMeta =
      const VerificationMeta('receivedAmount');
  @override
  late final GeneratedColumn<double> receivedAmount = GeneratedColumn<double>(
      'received_amount', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _changeAmountMeta =
      const VerificationMeta('changeAmount');
  @override
  late final GeneratedColumn<double> changeAmount = GeneratedColumn<double>(
      'change_amount', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _tipAmountMeta =
      const VerificationMeta('tipAmount');
  @override
  late final GeneratedColumn<double> tipAmount = GeneratedColumn<double>(
      'tip_amount', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _feeAmountMeta =
      const VerificationMeta('feeAmount');
  @override
  late final GeneratedColumn<double> feeAmount = GeneratedColumn<double>(
      'fee_amount', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _cashierIdMeta =
      const VerificationMeta('cashierId');
  @override
  late final GeneratedColumn<String> cashierId = GeneratedColumn<String>(
      'cashier_id', aliasedName, true,
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
  static const VerificationMeta _deviceIdMeta =
      const VerificationMeta('deviceId');
  @override
  late final GeneratedColumn<String> deviceId = GeneratedColumn<String>(
      'device_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _externalTransactionIdMeta =
      const VerificationMeta('externalTransactionId');
  @override
  late final GeneratedColumn<String> externalTransactionId =
      GeneratedColumn<String>('external_transaction_id', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _referenceMeta =
      const VerificationMeta('reference');
  @override
  late final GeneratedColumn<String> reference = GeneratedColumn<String>(
      'reference', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _isVoidedMeta =
      const VerificationMeta('isVoided');
  @override
  late final GeneratedColumn<bool> isVoided = GeneratedColumn<bool>(
      'is_voided', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_voided" IN (0, 1))'));
  static const VerificationMeta _voidReasonMeta =
      const VerificationMeta('voidReason');
  @override
  late final GeneratedColumn<String> voidReason = GeneratedColumn<String>(
      'void_reason', aliasedName, true,
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
  static const VerificationMeta _notesMeta = const VerificationMeta('notes');
  @override
  late final GeneratedColumn<String> notes = GeneratedColumn<String>(
      'notes', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        orderRef,
        paymentId,
        paymentMethodId,
        paymentMethodType,
        name,
        fName,
        currencyAmount,
        currencyCode,
        exchangeRateToBase,
        baseAmount,
        receivedAmount,
        changeAmount,
        tipAmount,
        feeAmount,
        cashierId,
        shiftId,
        tillId,
        deviceId,
        externalTransactionId,
        reference,
        isVoided,
        voidReason,
        createdOn,
        createdBy,
        notes
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'order_payment_v2';
  @override
  VerificationContext validateIntegrity(Insertable<OrderPaymentV2Data> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('order_ref')) {
      context.handle(_orderRefMeta,
          orderRef.isAcceptableOrUnknown(data['order_ref']!, _orderRefMeta));
    }
    if (data.containsKey('payment_id')) {
      context.handle(_paymentIdMeta,
          paymentId.isAcceptableOrUnknown(data['payment_id']!, _paymentIdMeta));
    }
    if (data.containsKey('payment_method_id')) {
      context.handle(
          _paymentMethodIdMeta,
          paymentMethodId.isAcceptableOrUnknown(
              data['payment_method_id']!, _paymentMethodIdMeta));
    }
    if (data.containsKey('payment_method_type')) {
      context.handle(
          _paymentMethodTypeMeta,
          paymentMethodType.isAcceptableOrUnknown(
              data['payment_method_type']!, _paymentMethodTypeMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    }
    if (data.containsKey('f_name')) {
      context.handle(
          _fNameMeta, fName.isAcceptableOrUnknown(data['f_name']!, _fNameMeta));
    }
    if (data.containsKey('currency_amount')) {
      context.handle(
          _currencyAmountMeta,
          currencyAmount.isAcceptableOrUnknown(
              data['currency_amount']!, _currencyAmountMeta));
    }
    if (data.containsKey('currency_code')) {
      context.handle(
          _currencyCodeMeta,
          currencyCode.isAcceptableOrUnknown(
              data['currency_code']!, _currencyCodeMeta));
    }
    if (data.containsKey('exchange_rate_to_base')) {
      context.handle(
          _exchangeRateToBaseMeta,
          exchangeRateToBase.isAcceptableOrUnknown(
              data['exchange_rate_to_base']!, _exchangeRateToBaseMeta));
    }
    if (data.containsKey('base_amount')) {
      context.handle(
          _baseAmountMeta,
          baseAmount.isAcceptableOrUnknown(
              data['base_amount']!, _baseAmountMeta));
    }
    if (data.containsKey('received_amount')) {
      context.handle(
          _receivedAmountMeta,
          receivedAmount.isAcceptableOrUnknown(
              data['received_amount']!, _receivedAmountMeta));
    }
    if (data.containsKey('change_amount')) {
      context.handle(
          _changeAmountMeta,
          changeAmount.isAcceptableOrUnknown(
              data['change_amount']!, _changeAmountMeta));
    }
    if (data.containsKey('tip_amount')) {
      context.handle(_tipAmountMeta,
          tipAmount.isAcceptableOrUnknown(data['tip_amount']!, _tipAmountMeta));
    }
    if (data.containsKey('fee_amount')) {
      context.handle(_feeAmountMeta,
          feeAmount.isAcceptableOrUnknown(data['fee_amount']!, _feeAmountMeta));
    }
    if (data.containsKey('cashier_id')) {
      context.handle(_cashierIdMeta,
          cashierId.isAcceptableOrUnknown(data['cashier_id']!, _cashierIdMeta));
    }
    if (data.containsKey('shift_id')) {
      context.handle(_shiftIdMeta,
          shiftId.isAcceptableOrUnknown(data['shift_id']!, _shiftIdMeta));
    }
    if (data.containsKey('till_id')) {
      context.handle(_tillIdMeta,
          tillId.isAcceptableOrUnknown(data['till_id']!, _tillIdMeta));
    }
    if (data.containsKey('device_id')) {
      context.handle(_deviceIdMeta,
          deviceId.isAcceptableOrUnknown(data['device_id']!, _deviceIdMeta));
    }
    if (data.containsKey('external_transaction_id')) {
      context.handle(
          _externalTransactionIdMeta,
          externalTransactionId.isAcceptableOrUnknown(
              data['external_transaction_id']!, _externalTransactionIdMeta));
    }
    if (data.containsKey('reference')) {
      context.handle(_referenceMeta,
          reference.isAcceptableOrUnknown(data['reference']!, _referenceMeta));
    }
    if (data.containsKey('is_voided')) {
      context.handle(_isVoidedMeta,
          isVoided.isAcceptableOrUnknown(data['is_voided']!, _isVoidedMeta));
    }
    if (data.containsKey('void_reason')) {
      context.handle(
          _voidReasonMeta,
          voidReason.isAcceptableOrUnknown(
              data['void_reason']!, _voidReasonMeta));
    }
    if (data.containsKey('created_on')) {
      context.handle(_createdOnMeta,
          createdOn.isAcceptableOrUnknown(data['created_on']!, _createdOnMeta));
    }
    if (data.containsKey('created_by')) {
      context.handle(_createdByMeta,
          createdBy.isAcceptableOrUnknown(data['created_by']!, _createdByMeta));
    }
    if (data.containsKey('notes')) {
      context.handle(
          _notesMeta, notes.isAcceptableOrUnknown(data['notes']!, _notesMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {orderRef, paymentId};
  @override
  OrderPaymentV2Data map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return OrderPaymentV2Data(
      orderRef: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}order_ref']),
      paymentId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}payment_id']),
      paymentMethodId: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}payment_method_id']),
      paymentMethodType: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}payment_method_type']),
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name']),
      fName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}f_name']),
      currencyAmount: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}currency_amount']),
      currencyCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}currency_code']),
      exchangeRateToBase: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}exchange_rate_to_base']),
      baseAmount: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}base_amount']),
      receivedAmount: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}received_amount']),
      changeAmount: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}change_amount']),
      tipAmount: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}tip_amount']),
      feeAmount: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}fee_amount']),
      cashierId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}cashier_id']),
      shiftId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}shift_id']),
      tillId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}till_id']),
      deviceId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}device_id']),
      externalTransactionId: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}external_transaction_id']),
      reference: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}reference']),
      isVoided: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_voided']),
      voidReason: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}void_reason']),
      createdOn: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}created_on']),
      createdBy: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}created_by']),
      notes: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}notes']),
    );
  }

  @override
  $OrderPaymentV2Table createAlias(String alias) {
    return $OrderPaymentV2Table(attachedDatabase, alias);
  }
}

class OrderPaymentV2Data extends DataClass
    implements Insertable<OrderPaymentV2Data> {
  final String? orderRef;
  final String? paymentId;
  final String? paymentMethodId;
  final int? paymentMethodType;
  final String? name;
  final String? fName;
  final double? currencyAmount;
  final String? currencyCode;
  final double? exchangeRateToBase;
  final double? baseAmount;
  final double? receivedAmount;
  final double? changeAmount;
  final double? tipAmount;
  final double? feeAmount;
  final String? cashierId;
  final String? shiftId;
  final String? tillId;
  final String? deviceId;
  final String? externalTransactionId;
  final String? reference;
  final bool? isVoided;
  final String? voidReason;
  final String? createdOn;
  final String? createdBy;
  final String? notes;
  const OrderPaymentV2Data(
      {this.orderRef,
      this.paymentId,
      this.paymentMethodId,
      this.paymentMethodType,
      this.name,
      this.fName,
      this.currencyAmount,
      this.currencyCode,
      this.exchangeRateToBase,
      this.baseAmount,
      this.receivedAmount,
      this.changeAmount,
      this.tipAmount,
      this.feeAmount,
      this.cashierId,
      this.shiftId,
      this.tillId,
      this.deviceId,
      this.externalTransactionId,
      this.reference,
      this.isVoided,
      this.voidReason,
      this.createdOn,
      this.createdBy,
      this.notes});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || orderRef != null) {
      map['order_ref'] = Variable<String>(orderRef);
    }
    if (!nullToAbsent || paymentId != null) {
      map['payment_id'] = Variable<String>(paymentId);
    }
    if (!nullToAbsent || paymentMethodId != null) {
      map['payment_method_id'] = Variable<String>(paymentMethodId);
    }
    if (!nullToAbsent || paymentMethodType != null) {
      map['payment_method_type'] = Variable<int>(paymentMethodType);
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || fName != null) {
      map['f_name'] = Variable<String>(fName);
    }
    if (!nullToAbsent || currencyAmount != null) {
      map['currency_amount'] = Variable<double>(currencyAmount);
    }
    if (!nullToAbsent || currencyCode != null) {
      map['currency_code'] = Variable<String>(currencyCode);
    }
    if (!nullToAbsent || exchangeRateToBase != null) {
      map['exchange_rate_to_base'] = Variable<double>(exchangeRateToBase);
    }
    if (!nullToAbsent || baseAmount != null) {
      map['base_amount'] = Variable<double>(baseAmount);
    }
    if (!nullToAbsent || receivedAmount != null) {
      map['received_amount'] = Variable<double>(receivedAmount);
    }
    if (!nullToAbsent || changeAmount != null) {
      map['change_amount'] = Variable<double>(changeAmount);
    }
    if (!nullToAbsent || tipAmount != null) {
      map['tip_amount'] = Variable<double>(tipAmount);
    }
    if (!nullToAbsent || feeAmount != null) {
      map['fee_amount'] = Variable<double>(feeAmount);
    }
    if (!nullToAbsent || cashierId != null) {
      map['cashier_id'] = Variable<String>(cashierId);
    }
    if (!nullToAbsent || shiftId != null) {
      map['shift_id'] = Variable<String>(shiftId);
    }
    if (!nullToAbsent || tillId != null) {
      map['till_id'] = Variable<String>(tillId);
    }
    if (!nullToAbsent || deviceId != null) {
      map['device_id'] = Variable<String>(deviceId);
    }
    if (!nullToAbsent || externalTransactionId != null) {
      map['external_transaction_id'] = Variable<String>(externalTransactionId);
    }
    if (!nullToAbsent || reference != null) {
      map['reference'] = Variable<String>(reference);
    }
    if (!nullToAbsent || isVoided != null) {
      map['is_voided'] = Variable<bool>(isVoided);
    }
    if (!nullToAbsent || voidReason != null) {
      map['void_reason'] = Variable<String>(voidReason);
    }
    if (!nullToAbsent || createdOn != null) {
      map['created_on'] = Variable<String>(createdOn);
    }
    if (!nullToAbsent || createdBy != null) {
      map['created_by'] = Variable<String>(createdBy);
    }
    if (!nullToAbsent || notes != null) {
      map['notes'] = Variable<String>(notes);
    }
    return map;
  }

  OrderPaymentV2Companion toCompanion(bool nullToAbsent) {
    return OrderPaymentV2Companion(
      orderRef: orderRef == null && nullToAbsent
          ? const Value.absent()
          : Value(orderRef),
      paymentId: paymentId == null && nullToAbsent
          ? const Value.absent()
          : Value(paymentId),
      paymentMethodId: paymentMethodId == null && nullToAbsent
          ? const Value.absent()
          : Value(paymentMethodId),
      paymentMethodType: paymentMethodType == null && nullToAbsent
          ? const Value.absent()
          : Value(paymentMethodType),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      fName:
          fName == null && nullToAbsent ? const Value.absent() : Value(fName),
      currencyAmount: currencyAmount == null && nullToAbsent
          ? const Value.absent()
          : Value(currencyAmount),
      currencyCode: currencyCode == null && nullToAbsent
          ? const Value.absent()
          : Value(currencyCode),
      exchangeRateToBase: exchangeRateToBase == null && nullToAbsent
          ? const Value.absent()
          : Value(exchangeRateToBase),
      baseAmount: baseAmount == null && nullToAbsent
          ? const Value.absent()
          : Value(baseAmount),
      receivedAmount: receivedAmount == null && nullToAbsent
          ? const Value.absent()
          : Value(receivedAmount),
      changeAmount: changeAmount == null && nullToAbsent
          ? const Value.absent()
          : Value(changeAmount),
      tipAmount: tipAmount == null && nullToAbsent
          ? const Value.absent()
          : Value(tipAmount),
      feeAmount: feeAmount == null && nullToAbsent
          ? const Value.absent()
          : Value(feeAmount),
      cashierId: cashierId == null && nullToAbsent
          ? const Value.absent()
          : Value(cashierId),
      shiftId: shiftId == null && nullToAbsent
          ? const Value.absent()
          : Value(shiftId),
      tillId:
          tillId == null && nullToAbsent ? const Value.absent() : Value(tillId),
      deviceId: deviceId == null && nullToAbsent
          ? const Value.absent()
          : Value(deviceId),
      externalTransactionId: externalTransactionId == null && nullToAbsent
          ? const Value.absent()
          : Value(externalTransactionId),
      reference: reference == null && nullToAbsent
          ? const Value.absent()
          : Value(reference),
      isVoided: isVoided == null && nullToAbsent
          ? const Value.absent()
          : Value(isVoided),
      voidReason: voidReason == null && nullToAbsent
          ? const Value.absent()
          : Value(voidReason),
      createdOn: createdOn == null && nullToAbsent
          ? const Value.absent()
          : Value(createdOn),
      createdBy: createdBy == null && nullToAbsent
          ? const Value.absent()
          : Value(createdBy),
      notes:
          notes == null && nullToAbsent ? const Value.absent() : Value(notes),
    );
  }

  factory OrderPaymentV2Data.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return OrderPaymentV2Data(
      orderRef: serializer.fromJson<String?>(json['orderRef']),
      paymentId: serializer.fromJson<String?>(json['paymentId']),
      paymentMethodId: serializer.fromJson<String?>(json['paymentMethodId']),
      paymentMethodType: serializer.fromJson<int?>(json['paymentMethodType']),
      name: serializer.fromJson<String?>(json['name']),
      fName: serializer.fromJson<String?>(json['fName']),
      currencyAmount: serializer.fromJson<double?>(json['currencyAmount']),
      currencyCode: serializer.fromJson<String?>(json['currencyCode']),
      exchangeRateToBase:
          serializer.fromJson<double?>(json['exchangeRateToBase']),
      baseAmount: serializer.fromJson<double?>(json['baseAmount']),
      receivedAmount: serializer.fromJson<double?>(json['receivedAmount']),
      changeAmount: serializer.fromJson<double?>(json['changeAmount']),
      tipAmount: serializer.fromJson<double?>(json['tipAmount']),
      feeAmount: serializer.fromJson<double?>(json['feeAmount']),
      cashierId: serializer.fromJson<String?>(json['cashierId']),
      shiftId: serializer.fromJson<String?>(json['shiftId']),
      tillId: serializer.fromJson<String?>(json['tillId']),
      deviceId: serializer.fromJson<String?>(json['deviceId']),
      externalTransactionId:
          serializer.fromJson<String?>(json['externalTransactionId']),
      reference: serializer.fromJson<String?>(json['reference']),
      isVoided: serializer.fromJson<bool?>(json['isVoided']),
      voidReason: serializer.fromJson<String?>(json['voidReason']),
      createdOn: serializer.fromJson<String?>(json['createdOn']),
      createdBy: serializer.fromJson<String?>(json['createdBy']),
      notes: serializer.fromJson<String?>(json['notes']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'orderRef': serializer.toJson<String?>(orderRef),
      'paymentId': serializer.toJson<String?>(paymentId),
      'paymentMethodId': serializer.toJson<String?>(paymentMethodId),
      'paymentMethodType': serializer.toJson<int?>(paymentMethodType),
      'name': serializer.toJson<String?>(name),
      'fName': serializer.toJson<String?>(fName),
      'currencyAmount': serializer.toJson<double?>(currencyAmount),
      'currencyCode': serializer.toJson<String?>(currencyCode),
      'exchangeRateToBase': serializer.toJson<double?>(exchangeRateToBase),
      'baseAmount': serializer.toJson<double?>(baseAmount),
      'receivedAmount': serializer.toJson<double?>(receivedAmount),
      'changeAmount': serializer.toJson<double?>(changeAmount),
      'tipAmount': serializer.toJson<double?>(tipAmount),
      'feeAmount': serializer.toJson<double?>(feeAmount),
      'cashierId': serializer.toJson<String?>(cashierId),
      'shiftId': serializer.toJson<String?>(shiftId),
      'tillId': serializer.toJson<String?>(tillId),
      'deviceId': serializer.toJson<String?>(deviceId),
      'externalTransactionId':
          serializer.toJson<String?>(externalTransactionId),
      'reference': serializer.toJson<String?>(reference),
      'isVoided': serializer.toJson<bool?>(isVoided),
      'voidReason': serializer.toJson<String?>(voidReason),
      'createdOn': serializer.toJson<String?>(createdOn),
      'createdBy': serializer.toJson<String?>(createdBy),
      'notes': serializer.toJson<String?>(notes),
    };
  }

  OrderPaymentV2Data copyWith(
          {Value<String?> orderRef = const Value.absent(),
          Value<String?> paymentId = const Value.absent(),
          Value<String?> paymentMethodId = const Value.absent(),
          Value<int?> paymentMethodType = const Value.absent(),
          Value<String?> name = const Value.absent(),
          Value<String?> fName = const Value.absent(),
          Value<double?> currencyAmount = const Value.absent(),
          Value<String?> currencyCode = const Value.absent(),
          Value<double?> exchangeRateToBase = const Value.absent(),
          Value<double?> baseAmount = const Value.absent(),
          Value<double?> receivedAmount = const Value.absent(),
          Value<double?> changeAmount = const Value.absent(),
          Value<double?> tipAmount = const Value.absent(),
          Value<double?> feeAmount = const Value.absent(),
          Value<String?> cashierId = const Value.absent(),
          Value<String?> shiftId = const Value.absent(),
          Value<String?> tillId = const Value.absent(),
          Value<String?> deviceId = const Value.absent(),
          Value<String?> externalTransactionId = const Value.absent(),
          Value<String?> reference = const Value.absent(),
          Value<bool?> isVoided = const Value.absent(),
          Value<String?> voidReason = const Value.absent(),
          Value<String?> createdOn = const Value.absent(),
          Value<String?> createdBy = const Value.absent(),
          Value<String?> notes = const Value.absent()}) =>
      OrderPaymentV2Data(
        orderRef: orderRef.present ? orderRef.value : this.orderRef,
        paymentId: paymentId.present ? paymentId.value : this.paymentId,
        paymentMethodId: paymentMethodId.present
            ? paymentMethodId.value
            : this.paymentMethodId,
        paymentMethodType: paymentMethodType.present
            ? paymentMethodType.value
            : this.paymentMethodType,
        name: name.present ? name.value : this.name,
        fName: fName.present ? fName.value : this.fName,
        currencyAmount:
            currencyAmount.present ? currencyAmount.value : this.currencyAmount,
        currencyCode:
            currencyCode.present ? currencyCode.value : this.currencyCode,
        exchangeRateToBase: exchangeRateToBase.present
            ? exchangeRateToBase.value
            : this.exchangeRateToBase,
        baseAmount: baseAmount.present ? baseAmount.value : this.baseAmount,
        receivedAmount:
            receivedAmount.present ? receivedAmount.value : this.receivedAmount,
        changeAmount:
            changeAmount.present ? changeAmount.value : this.changeAmount,
        tipAmount: tipAmount.present ? tipAmount.value : this.tipAmount,
        feeAmount: feeAmount.present ? feeAmount.value : this.feeAmount,
        cashierId: cashierId.present ? cashierId.value : this.cashierId,
        shiftId: shiftId.present ? shiftId.value : this.shiftId,
        tillId: tillId.present ? tillId.value : this.tillId,
        deviceId: deviceId.present ? deviceId.value : this.deviceId,
        externalTransactionId: externalTransactionId.present
            ? externalTransactionId.value
            : this.externalTransactionId,
        reference: reference.present ? reference.value : this.reference,
        isVoided: isVoided.present ? isVoided.value : this.isVoided,
        voidReason: voidReason.present ? voidReason.value : this.voidReason,
        createdOn: createdOn.present ? createdOn.value : this.createdOn,
        createdBy: createdBy.present ? createdBy.value : this.createdBy,
        notes: notes.present ? notes.value : this.notes,
      );
  @override
  String toString() {
    return (StringBuffer('OrderPaymentV2Data(')
          ..write('orderRef: $orderRef, ')
          ..write('paymentId: $paymentId, ')
          ..write('paymentMethodId: $paymentMethodId, ')
          ..write('paymentMethodType: $paymentMethodType, ')
          ..write('name: $name, ')
          ..write('fName: $fName, ')
          ..write('currencyAmount: $currencyAmount, ')
          ..write('currencyCode: $currencyCode, ')
          ..write('exchangeRateToBase: $exchangeRateToBase, ')
          ..write('baseAmount: $baseAmount, ')
          ..write('receivedAmount: $receivedAmount, ')
          ..write('changeAmount: $changeAmount, ')
          ..write('tipAmount: $tipAmount, ')
          ..write('feeAmount: $feeAmount, ')
          ..write('cashierId: $cashierId, ')
          ..write('shiftId: $shiftId, ')
          ..write('tillId: $tillId, ')
          ..write('deviceId: $deviceId, ')
          ..write('externalTransactionId: $externalTransactionId, ')
          ..write('reference: $reference, ')
          ..write('isVoided: $isVoided, ')
          ..write('voidReason: $voidReason, ')
          ..write('createdOn: $createdOn, ')
          ..write('createdBy: $createdBy, ')
          ..write('notes: $notes')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
        orderRef,
        paymentId,
        paymentMethodId,
        paymentMethodType,
        name,
        fName,
        currencyAmount,
        currencyCode,
        exchangeRateToBase,
        baseAmount,
        receivedAmount,
        changeAmount,
        tipAmount,
        feeAmount,
        cashierId,
        shiftId,
        tillId,
        deviceId,
        externalTransactionId,
        reference,
        isVoided,
        voidReason,
        createdOn,
        createdBy,
        notes
      ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is OrderPaymentV2Data &&
          other.orderRef == this.orderRef &&
          other.paymentId == this.paymentId &&
          other.paymentMethodId == this.paymentMethodId &&
          other.paymentMethodType == this.paymentMethodType &&
          other.name == this.name &&
          other.fName == this.fName &&
          other.currencyAmount == this.currencyAmount &&
          other.currencyCode == this.currencyCode &&
          other.exchangeRateToBase == this.exchangeRateToBase &&
          other.baseAmount == this.baseAmount &&
          other.receivedAmount == this.receivedAmount &&
          other.changeAmount == this.changeAmount &&
          other.tipAmount == this.tipAmount &&
          other.feeAmount == this.feeAmount &&
          other.cashierId == this.cashierId &&
          other.shiftId == this.shiftId &&
          other.tillId == this.tillId &&
          other.deviceId == this.deviceId &&
          other.externalTransactionId == this.externalTransactionId &&
          other.reference == this.reference &&
          other.isVoided == this.isVoided &&
          other.voidReason == this.voidReason &&
          other.createdOn == this.createdOn &&
          other.createdBy == this.createdBy &&
          other.notes == this.notes);
}

class OrderPaymentV2Companion extends UpdateCompanion<OrderPaymentV2Data> {
  final Value<String?> orderRef;
  final Value<String?> paymentId;
  final Value<String?> paymentMethodId;
  final Value<int?> paymentMethodType;
  final Value<String?> name;
  final Value<String?> fName;
  final Value<double?> currencyAmount;
  final Value<String?> currencyCode;
  final Value<double?> exchangeRateToBase;
  final Value<double?> baseAmount;
  final Value<double?> receivedAmount;
  final Value<double?> changeAmount;
  final Value<double?> tipAmount;
  final Value<double?> feeAmount;
  final Value<String?> cashierId;
  final Value<String?> shiftId;
  final Value<String?> tillId;
  final Value<String?> deviceId;
  final Value<String?> externalTransactionId;
  final Value<String?> reference;
  final Value<bool?> isVoided;
  final Value<String?> voidReason;
  final Value<String?> createdOn;
  final Value<String?> createdBy;
  final Value<String?> notes;
  final Value<int> rowid;
  const OrderPaymentV2Companion({
    this.orderRef = const Value.absent(),
    this.paymentId = const Value.absent(),
    this.paymentMethodId = const Value.absent(),
    this.paymentMethodType = const Value.absent(),
    this.name = const Value.absent(),
    this.fName = const Value.absent(),
    this.currencyAmount = const Value.absent(),
    this.currencyCode = const Value.absent(),
    this.exchangeRateToBase = const Value.absent(),
    this.baseAmount = const Value.absent(),
    this.receivedAmount = const Value.absent(),
    this.changeAmount = const Value.absent(),
    this.tipAmount = const Value.absent(),
    this.feeAmount = const Value.absent(),
    this.cashierId = const Value.absent(),
    this.shiftId = const Value.absent(),
    this.tillId = const Value.absent(),
    this.deviceId = const Value.absent(),
    this.externalTransactionId = const Value.absent(),
    this.reference = const Value.absent(),
    this.isVoided = const Value.absent(),
    this.voidReason = const Value.absent(),
    this.createdOn = const Value.absent(),
    this.createdBy = const Value.absent(),
    this.notes = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  OrderPaymentV2Companion.insert({
    this.orderRef = const Value.absent(),
    this.paymentId = const Value.absent(),
    this.paymentMethodId = const Value.absent(),
    this.paymentMethodType = const Value.absent(),
    this.name = const Value.absent(),
    this.fName = const Value.absent(),
    this.currencyAmount = const Value.absent(),
    this.currencyCode = const Value.absent(),
    this.exchangeRateToBase = const Value.absent(),
    this.baseAmount = const Value.absent(),
    this.receivedAmount = const Value.absent(),
    this.changeAmount = const Value.absent(),
    this.tipAmount = const Value.absent(),
    this.feeAmount = const Value.absent(),
    this.cashierId = const Value.absent(),
    this.shiftId = const Value.absent(),
    this.tillId = const Value.absent(),
    this.deviceId = const Value.absent(),
    this.externalTransactionId = const Value.absent(),
    this.reference = const Value.absent(),
    this.isVoided = const Value.absent(),
    this.voidReason = const Value.absent(),
    this.createdOn = const Value.absent(),
    this.createdBy = const Value.absent(),
    this.notes = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  static Insertable<OrderPaymentV2Data> custom({
    Expression<String>? orderRef,
    Expression<String>? paymentId,
    Expression<String>? paymentMethodId,
    Expression<int>? paymentMethodType,
    Expression<String>? name,
    Expression<String>? fName,
    Expression<double>? currencyAmount,
    Expression<String>? currencyCode,
    Expression<double>? exchangeRateToBase,
    Expression<double>? baseAmount,
    Expression<double>? receivedAmount,
    Expression<double>? changeAmount,
    Expression<double>? tipAmount,
    Expression<double>? feeAmount,
    Expression<String>? cashierId,
    Expression<String>? shiftId,
    Expression<String>? tillId,
    Expression<String>? deviceId,
    Expression<String>? externalTransactionId,
    Expression<String>? reference,
    Expression<bool>? isVoided,
    Expression<String>? voidReason,
    Expression<String>? createdOn,
    Expression<String>? createdBy,
    Expression<String>? notes,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (orderRef != null) 'order_ref': orderRef,
      if (paymentId != null) 'payment_id': paymentId,
      if (paymentMethodId != null) 'payment_method_id': paymentMethodId,
      if (paymentMethodType != null) 'payment_method_type': paymentMethodType,
      if (name != null) 'name': name,
      if (fName != null) 'f_name': fName,
      if (currencyAmount != null) 'currency_amount': currencyAmount,
      if (currencyCode != null) 'currency_code': currencyCode,
      if (exchangeRateToBase != null)
        'exchange_rate_to_base': exchangeRateToBase,
      if (baseAmount != null) 'base_amount': baseAmount,
      if (receivedAmount != null) 'received_amount': receivedAmount,
      if (changeAmount != null) 'change_amount': changeAmount,
      if (tipAmount != null) 'tip_amount': tipAmount,
      if (feeAmount != null) 'fee_amount': feeAmount,
      if (cashierId != null) 'cashier_id': cashierId,
      if (shiftId != null) 'shift_id': shiftId,
      if (tillId != null) 'till_id': tillId,
      if (deviceId != null) 'device_id': deviceId,
      if (externalTransactionId != null)
        'external_transaction_id': externalTransactionId,
      if (reference != null) 'reference': reference,
      if (isVoided != null) 'is_voided': isVoided,
      if (voidReason != null) 'void_reason': voidReason,
      if (createdOn != null) 'created_on': createdOn,
      if (createdBy != null) 'created_by': createdBy,
      if (notes != null) 'notes': notes,
      if (rowid != null) 'rowid': rowid,
    });
  }

  OrderPaymentV2Companion copyWith(
      {Value<String?>? orderRef,
      Value<String?>? paymentId,
      Value<String?>? paymentMethodId,
      Value<int?>? paymentMethodType,
      Value<String?>? name,
      Value<String?>? fName,
      Value<double?>? currencyAmount,
      Value<String?>? currencyCode,
      Value<double?>? exchangeRateToBase,
      Value<double?>? baseAmount,
      Value<double?>? receivedAmount,
      Value<double?>? changeAmount,
      Value<double?>? tipAmount,
      Value<double?>? feeAmount,
      Value<String?>? cashierId,
      Value<String?>? shiftId,
      Value<String?>? tillId,
      Value<String?>? deviceId,
      Value<String?>? externalTransactionId,
      Value<String?>? reference,
      Value<bool?>? isVoided,
      Value<String?>? voidReason,
      Value<String?>? createdOn,
      Value<String?>? createdBy,
      Value<String?>? notes,
      Value<int>? rowid}) {
    return OrderPaymentV2Companion(
      orderRef: orderRef ?? this.orderRef,
      paymentId: paymentId ?? this.paymentId,
      paymentMethodId: paymentMethodId ?? this.paymentMethodId,
      paymentMethodType: paymentMethodType ?? this.paymentMethodType,
      name: name ?? this.name,
      fName: fName ?? this.fName,
      currencyAmount: currencyAmount ?? this.currencyAmount,
      currencyCode: currencyCode ?? this.currencyCode,
      exchangeRateToBase: exchangeRateToBase ?? this.exchangeRateToBase,
      baseAmount: baseAmount ?? this.baseAmount,
      receivedAmount: receivedAmount ?? this.receivedAmount,
      changeAmount: changeAmount ?? this.changeAmount,
      tipAmount: tipAmount ?? this.tipAmount,
      feeAmount: feeAmount ?? this.feeAmount,
      cashierId: cashierId ?? this.cashierId,
      shiftId: shiftId ?? this.shiftId,
      tillId: tillId ?? this.tillId,
      deviceId: deviceId ?? this.deviceId,
      externalTransactionId:
          externalTransactionId ?? this.externalTransactionId,
      reference: reference ?? this.reference,
      isVoided: isVoided ?? this.isVoided,
      voidReason: voidReason ?? this.voidReason,
      createdOn: createdOn ?? this.createdOn,
      createdBy: createdBy ?? this.createdBy,
      notes: notes ?? this.notes,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (orderRef.present) {
      map['order_ref'] = Variable<String>(orderRef.value);
    }
    if (paymentId.present) {
      map['payment_id'] = Variable<String>(paymentId.value);
    }
    if (paymentMethodId.present) {
      map['payment_method_id'] = Variable<String>(paymentMethodId.value);
    }
    if (paymentMethodType.present) {
      map['payment_method_type'] = Variable<int>(paymentMethodType.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (fName.present) {
      map['f_name'] = Variable<String>(fName.value);
    }
    if (currencyAmount.present) {
      map['currency_amount'] = Variable<double>(currencyAmount.value);
    }
    if (currencyCode.present) {
      map['currency_code'] = Variable<String>(currencyCode.value);
    }
    if (exchangeRateToBase.present) {
      map['exchange_rate_to_base'] = Variable<double>(exchangeRateToBase.value);
    }
    if (baseAmount.present) {
      map['base_amount'] = Variable<double>(baseAmount.value);
    }
    if (receivedAmount.present) {
      map['received_amount'] = Variable<double>(receivedAmount.value);
    }
    if (changeAmount.present) {
      map['change_amount'] = Variable<double>(changeAmount.value);
    }
    if (tipAmount.present) {
      map['tip_amount'] = Variable<double>(tipAmount.value);
    }
    if (feeAmount.present) {
      map['fee_amount'] = Variable<double>(feeAmount.value);
    }
    if (cashierId.present) {
      map['cashier_id'] = Variable<String>(cashierId.value);
    }
    if (shiftId.present) {
      map['shift_id'] = Variable<String>(shiftId.value);
    }
    if (tillId.present) {
      map['till_id'] = Variable<String>(tillId.value);
    }
    if (deviceId.present) {
      map['device_id'] = Variable<String>(deviceId.value);
    }
    if (externalTransactionId.present) {
      map['external_transaction_id'] =
          Variable<String>(externalTransactionId.value);
    }
    if (reference.present) {
      map['reference'] = Variable<String>(reference.value);
    }
    if (isVoided.present) {
      map['is_voided'] = Variable<bool>(isVoided.value);
    }
    if (voidReason.present) {
      map['void_reason'] = Variable<String>(voidReason.value);
    }
    if (createdOn.present) {
      map['created_on'] = Variable<String>(createdOn.value);
    }
    if (createdBy.present) {
      map['created_by'] = Variable<String>(createdBy.value);
    }
    if (notes.present) {
      map['notes'] = Variable<String>(notes.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('OrderPaymentV2Companion(')
          ..write('orderRef: $orderRef, ')
          ..write('paymentId: $paymentId, ')
          ..write('paymentMethodId: $paymentMethodId, ')
          ..write('paymentMethodType: $paymentMethodType, ')
          ..write('name: $name, ')
          ..write('fName: $fName, ')
          ..write('currencyAmount: $currencyAmount, ')
          ..write('currencyCode: $currencyCode, ')
          ..write('exchangeRateToBase: $exchangeRateToBase, ')
          ..write('baseAmount: $baseAmount, ')
          ..write('receivedAmount: $receivedAmount, ')
          ..write('changeAmount: $changeAmount, ')
          ..write('tipAmount: $tipAmount, ')
          ..write('feeAmount: $feeAmount, ')
          ..write('cashierId: $cashierId, ')
          ..write('shiftId: $shiftId, ')
          ..write('tillId: $tillId, ')
          ..write('deviceId: $deviceId, ')
          ..write('externalTransactionId: $externalTransactionId, ')
          ..write('reference: $reference, ')
          ..write('isVoided: $isVoided, ')
          ..write('voidReason: $voidReason, ')
          ..write('createdOn: $createdOn, ')
          ..write('createdBy: $createdBy, ')
          ..write('notes: $notes, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $OrderPaymentDetailV2Table extends OrderPaymentDetailV2
    with TableInfo<$OrderPaymentDetailV2Table, OrderPaymentDetailV2Data> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $OrderPaymentDetailV2Table(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _orderRefMeta =
      const VerificationMeta('orderRef');
  @override
  late final GeneratedColumn<String> orderRef = GeneratedColumn<String>(
      'order_ref', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES order_entity_v2 (order_ref) ON DELETE CASCADE'));
  static const VerificationMeta _paymentIdMeta =
      const VerificationMeta('paymentId');
  @override
  late final GeneratedColumn<String> paymentId = GeneratedColumn<String>(
      'payment_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _keyMeta = const VerificationMeta('key');
  @override
  late final GeneratedColumn<String> key = GeneratedColumn<String>(
      'key', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _valueMeta = const VerificationMeta('value');
  @override
  late final GeneratedColumn<String> value = GeneratedColumn<String>(
      'value', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [orderRef, paymentId, key, value];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'order_payment_detail_v2';
  @override
  VerificationContext validateIntegrity(
      Insertable<OrderPaymentDetailV2Data> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('order_ref')) {
      context.handle(_orderRefMeta,
          orderRef.isAcceptableOrUnknown(data['order_ref']!, _orderRefMeta));
    }
    if (data.containsKey('payment_id')) {
      context.handle(_paymentIdMeta,
          paymentId.isAcceptableOrUnknown(data['payment_id']!, _paymentIdMeta));
    }
    if (data.containsKey('key')) {
      context.handle(
          _keyMeta, key.isAcceptableOrUnknown(data['key']!, _keyMeta));
    }
    if (data.containsKey('value')) {
      context.handle(
          _valueMeta, value.isAcceptableOrUnknown(data['value']!, _valueMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {orderRef, paymentId, key};
  @override
  OrderPaymentDetailV2Data map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return OrderPaymentDetailV2Data(
      orderRef: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}order_ref']),
      paymentId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}payment_id']),
      key: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}key']),
      value: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}value']),
    );
  }

  @override
  $OrderPaymentDetailV2Table createAlias(String alias) {
    return $OrderPaymentDetailV2Table(attachedDatabase, alias);
  }
}

class OrderPaymentDetailV2Data extends DataClass
    implements Insertable<OrderPaymentDetailV2Data> {
  final String? orderRef;
  final String? paymentId;
  final String? key;
  final String? value;
  const OrderPaymentDetailV2Data(
      {this.orderRef, this.paymentId, this.key, this.value});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || orderRef != null) {
      map['order_ref'] = Variable<String>(orderRef);
    }
    if (!nullToAbsent || paymentId != null) {
      map['payment_id'] = Variable<String>(paymentId);
    }
    if (!nullToAbsent || key != null) {
      map['key'] = Variable<String>(key);
    }
    if (!nullToAbsent || value != null) {
      map['value'] = Variable<String>(value);
    }
    return map;
  }

  OrderPaymentDetailV2Companion toCompanion(bool nullToAbsent) {
    return OrderPaymentDetailV2Companion(
      orderRef: orderRef == null && nullToAbsent
          ? const Value.absent()
          : Value(orderRef),
      paymentId: paymentId == null && nullToAbsent
          ? const Value.absent()
          : Value(paymentId),
      key: key == null && nullToAbsent ? const Value.absent() : Value(key),
      value:
          value == null && nullToAbsent ? const Value.absent() : Value(value),
    );
  }

  factory OrderPaymentDetailV2Data.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return OrderPaymentDetailV2Data(
      orderRef: serializer.fromJson<String?>(json['orderRef']),
      paymentId: serializer.fromJson<String?>(json['paymentId']),
      key: serializer.fromJson<String?>(json['key']),
      value: serializer.fromJson<String?>(json['value']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'orderRef': serializer.toJson<String?>(orderRef),
      'paymentId': serializer.toJson<String?>(paymentId),
      'key': serializer.toJson<String?>(key),
      'value': serializer.toJson<String?>(value),
    };
  }

  OrderPaymentDetailV2Data copyWith(
          {Value<String?> orderRef = const Value.absent(),
          Value<String?> paymentId = const Value.absent(),
          Value<String?> key = const Value.absent(),
          Value<String?> value = const Value.absent()}) =>
      OrderPaymentDetailV2Data(
        orderRef: orderRef.present ? orderRef.value : this.orderRef,
        paymentId: paymentId.present ? paymentId.value : this.paymentId,
        key: key.present ? key.value : this.key,
        value: value.present ? value.value : this.value,
      );
  @override
  String toString() {
    return (StringBuffer('OrderPaymentDetailV2Data(')
          ..write('orderRef: $orderRef, ')
          ..write('paymentId: $paymentId, ')
          ..write('key: $key, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(orderRef, paymentId, key, value);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is OrderPaymentDetailV2Data &&
          other.orderRef == this.orderRef &&
          other.paymentId == this.paymentId &&
          other.key == this.key &&
          other.value == this.value);
}

class OrderPaymentDetailV2Companion
    extends UpdateCompanion<OrderPaymentDetailV2Data> {
  final Value<String?> orderRef;
  final Value<String?> paymentId;
  final Value<String?> key;
  final Value<String?> value;
  final Value<int> rowid;
  const OrderPaymentDetailV2Companion({
    this.orderRef = const Value.absent(),
    this.paymentId = const Value.absent(),
    this.key = const Value.absent(),
    this.value = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  OrderPaymentDetailV2Companion.insert({
    this.orderRef = const Value.absent(),
    this.paymentId = const Value.absent(),
    this.key = const Value.absent(),
    this.value = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  static Insertable<OrderPaymentDetailV2Data> custom({
    Expression<String>? orderRef,
    Expression<String>? paymentId,
    Expression<String>? key,
    Expression<String>? value,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (orderRef != null) 'order_ref': orderRef,
      if (paymentId != null) 'payment_id': paymentId,
      if (key != null) 'key': key,
      if (value != null) 'value': value,
      if (rowid != null) 'rowid': rowid,
    });
  }

  OrderPaymentDetailV2Companion copyWith(
      {Value<String?>? orderRef,
      Value<String?>? paymentId,
      Value<String?>? key,
      Value<String?>? value,
      Value<int>? rowid}) {
    return OrderPaymentDetailV2Companion(
      orderRef: orderRef ?? this.orderRef,
      paymentId: paymentId ?? this.paymentId,
      key: key ?? this.key,
      value: value ?? this.value,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (orderRef.present) {
      map['order_ref'] = Variable<String>(orderRef.value);
    }
    if (paymentId.present) {
      map['payment_id'] = Variable<String>(paymentId.value);
    }
    if (key.present) {
      map['key'] = Variable<String>(key.value);
    }
    if (value.present) {
      map['value'] = Variable<String>(value.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('OrderPaymentDetailV2Companion(')
          ..write('orderRef: $orderRef, ')
          ..write('paymentId: $paymentId, ')
          ..write('key: $key, ')
          ..write('value: $value, ')
          ..write('rowid: $rowid')
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
  late final $SyncQueueEntityTable syncQueueEntity =
      $SyncQueueEntityTable(this);
  late final $OrderEntityV2Table orderEntityV2 = $OrderEntityV2Table(this);
  late final $OrderProductEntityV2Table orderProductEntityV2 =
      $OrderProductEntityV2Table(this);
  late final $OrderProductUnitPriceV2Table orderProductUnitPriceV2 =
      $OrderProductUnitPriceV2Table(this);
  late final $OrderProductTieredPricingV2Table orderProductTieredPricingV2 =
      $OrderProductTieredPricingV2Table(this);
  late final $OrderProductTimeEventV2Table orderProductTimeEventV2 =
      $OrderProductTimeEventV2Table(this);
  late final $OrderProductDiscountV2Table orderProductDiscountV2 =
      $OrderProductDiscountV2Table(this);
  late final $OrderProductPromotionInfoV2Table orderProductPromotionInfoV2 =
      $OrderProductPromotionInfoV2Table(this);
  late final $OrderProductChargeV2Table orderProductChargeV2 =
      $OrderProductChargeV2Table(this);
  late final $OrderProductTaxInfoV2Table orderProductTaxInfoV2 =
      $OrderProductTaxInfoV2Table(this);
  late final $OrderProductChargeTaxV2Table orderProductChargeTaxV2 =
      $OrderProductChargeTaxV2Table(this);
  late final $OrderProductTaxTypeV2Table orderProductTaxTypeV2 =
      $OrderProductTaxTypeV2Table(this);
  late final $OrderDiscountV2Table orderDiscountV2 =
      $OrderDiscountV2Table(this);
  late final $OrderPromotionAppliesV2Table orderPromotionAppliesV2 =
      $OrderPromotionAppliesV2Table(this);
  late final $OrderPromotionGiftCardV2Table orderPromotionGiftCardV2 =
      $OrderPromotionGiftCardV2Table(this);
  late final $OrderChargeV2Table orderChargeV2 = $OrderChargeV2Table(this);
  late final $OrderChargeForTotalV2Table orderChargeForTotalV2 =
      $OrderChargeForTotalV2Table(this);
  late final $OrderTaxTypeV2Table orderTaxTypeV2 = $OrderTaxTypeV2Table(this);
  late final $OrderProductModifierV2Table orderProductModifierV2 =
      $OrderProductModifierV2Table(this);
  late final $OrderProductModifierOptionV2Table orderProductModifierOptionV2 =
      $OrderProductModifierOptionV2Table(this);
  late final $OrderPaymentV2Table orderPaymentV2 = $OrderPaymentV2Table(this);
  late final $OrderPaymentDetailV2Table orderPaymentDetailV2 =
      $OrderPaymentDetailV2Table(this);
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
        productQtyEntity,
        syncQueueEntity,
        orderEntityV2,
        orderProductEntityV2,
        orderProductUnitPriceV2,
        orderProductTieredPricingV2,
        orderProductTimeEventV2,
        orderProductDiscountV2,
        orderProductPromotionInfoV2,
        orderProductChargeV2,
        orderProductTaxInfoV2,
        orderProductChargeTaxV2,
        orderProductTaxTypeV2,
        orderDiscountV2,
        orderPromotionAppliesV2,
        orderPromotionGiftCardV2,
        orderChargeV2,
        orderChargeForTotalV2,
        orderTaxTypeV2,
        orderProductModifierV2,
        orderProductModifierOptionV2,
        orderPaymentV2,
        orderPaymentDetailV2
      ];
  @override
  StreamQueryUpdateRules get streamUpdateRules => const StreamQueryUpdateRules(
        [
          WritePropagation(
            on: TableUpdateQuery.onTableName('order_entity_v2',
                limitUpdateKind: UpdateKind.delete),
            result: [
              TableUpdate('order_product_entity_v2', kind: UpdateKind.delete),
            ],
          ),
          WritePropagation(
            on: TableUpdateQuery.onTableName('order_entity_v2',
                limitUpdateKind: UpdateKind.delete),
            result: [
              TableUpdate('order_product_unit_price_v2',
                  kind: UpdateKind.delete),
            ],
          ),
          WritePropagation(
            on: TableUpdateQuery.onTableName('order_entity_v2',
                limitUpdateKind: UpdateKind.delete),
            result: [
              TableUpdate('order_product_tiered_pricing_v2',
                  kind: UpdateKind.delete),
            ],
          ),
          WritePropagation(
            on: TableUpdateQuery.onTableName('order_entity_v2',
                limitUpdateKind: UpdateKind.delete),
            result: [
              TableUpdate('order_product_time_event_v2',
                  kind: UpdateKind.delete),
            ],
          ),
          WritePropagation(
            on: TableUpdateQuery.onTableName('order_entity_v2',
                limitUpdateKind: UpdateKind.delete),
            result: [
              TableUpdate('order_product_discount_v2', kind: UpdateKind.delete),
            ],
          ),
          WritePropagation(
            on: TableUpdateQuery.onTableName('order_entity_v2',
                limitUpdateKind: UpdateKind.delete),
            result: [
              TableUpdate('order_product_promotion_info_v2',
                  kind: UpdateKind.delete),
            ],
          ),
          WritePropagation(
            on: TableUpdateQuery.onTableName('order_entity_v2',
                limitUpdateKind: UpdateKind.delete),
            result: [
              TableUpdate('order_product_charge_v2', kind: UpdateKind.delete),
            ],
          ),
          WritePropagation(
            on: TableUpdateQuery.onTableName('order_entity_v2',
                limitUpdateKind: UpdateKind.delete),
            result: [
              TableUpdate('order_product_tax_info_v2', kind: UpdateKind.delete),
            ],
          ),
          WritePropagation(
            on: TableUpdateQuery.onTableName('order_entity_v2',
                limitUpdateKind: UpdateKind.delete),
            result: [
              TableUpdate('order_product_charge_tax_v2',
                  kind: UpdateKind.delete),
            ],
          ),
          WritePropagation(
            on: TableUpdateQuery.onTableName('order_entity_v2',
                limitUpdateKind: UpdateKind.delete),
            result: [
              TableUpdate('order_product_tax_type_v2', kind: UpdateKind.delete),
            ],
          ),
          WritePropagation(
            on: TableUpdateQuery.onTableName('order_entity_v2',
                limitUpdateKind: UpdateKind.delete),
            result: [
              TableUpdate('order_discount_v2', kind: UpdateKind.delete),
            ],
          ),
          WritePropagation(
            on: TableUpdateQuery.onTableName('order_entity_v2',
                limitUpdateKind: UpdateKind.delete),
            result: [
              TableUpdate('order_promotion_applies_v2',
                  kind: UpdateKind.delete),
            ],
          ),
          WritePropagation(
            on: TableUpdateQuery.onTableName('order_entity_v2',
                limitUpdateKind: UpdateKind.delete),
            result: [
              TableUpdate('order_promotion_gift_card_v2',
                  kind: UpdateKind.delete),
            ],
          ),
          WritePropagation(
            on: TableUpdateQuery.onTableName('order_entity_v2',
                limitUpdateKind: UpdateKind.delete),
            result: [
              TableUpdate('order_charge_v2', kind: UpdateKind.delete),
            ],
          ),
          WritePropagation(
            on: TableUpdateQuery.onTableName('order_entity_v2',
                limitUpdateKind: UpdateKind.delete),
            result: [
              TableUpdate('order_charge_for_total_v2', kind: UpdateKind.delete),
            ],
          ),
          WritePropagation(
            on: TableUpdateQuery.onTableName('order_entity_v2',
                limitUpdateKind: UpdateKind.delete),
            result: [
              TableUpdate('order_tax_type_v2', kind: UpdateKind.delete),
            ],
          ),
          WritePropagation(
            on: TableUpdateQuery.onTableName('order_entity_v2',
                limitUpdateKind: UpdateKind.delete),
            result: [
              TableUpdate('order_product_modifier_v2', kind: UpdateKind.delete),
            ],
          ),
          WritePropagation(
            on: TableUpdateQuery.onTableName('order_entity_v2',
                limitUpdateKind: UpdateKind.delete),
            result: [
              TableUpdate('order_product_modifier_option_v2',
                  kind: UpdateKind.delete),
            ],
          ),
          WritePropagation(
            on: TableUpdateQuery.onTableName('order_entity_v2',
                limitUpdateKind: UpdateKind.delete),
            result: [
              TableUpdate('order_payment_v2', kind: UpdateKind.delete),
            ],
          ),
          WritePropagation(
            on: TableUpdateQuery.onTableName('order_entity_v2',
                limitUpdateKind: UpdateKind.delete),
            result: [
              TableUpdate('order_payment_detail_v2', kind: UpdateKind.delete),
            ],
          ),
        ],
      );
}
