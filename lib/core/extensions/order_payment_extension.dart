import 'package:bayan_pos_core/bayan_pos_core.dart';
import 'package:bayan_pos_core/data/model/new/order/payment/order_payment_detail_dto.dart';
import 'package:bayan_pos_core/data/model/new/order/payment/order_payment_dto.dart';

extension OrderPaymentExtension on OrderPaymentDto {
  OrderPaymentV2Data get toOrderPaymentEntityData => OrderPaymentV2Data(
        orderRef: orderRef,
        paymentId: paymentId,
        paymentMethodId: paymentMethodId,
        paymentMethodType: paymentMethodType,
        name: name,
        fName: fName,
        currencyAmount: currencyAmount,
        currencyCode: currencyCode,
        exchangeRateToBase: exchangeRateToBase,
        baseAmount: baseAmount,
        receivedAmount: receivedAmount,
        changeAmount: changeAmount,
        tipAmount: tipAmount,
        feeAmount: feeAmount,
        cashierId: cashierId,
        shiftId: shiftId,
        tillId: tillId,
        deviceId: deviceId,
        externalTransactionId: externalTransactionId,
        reference: reference,
        isVoided: isVoided,
        voidReason: voidReason,
        createdOn: createdOn,
        createdBy: createdBy,
        notes: notes,
      );
}

extension OrderPaymentDetailExtension on OrderPaymentDetailDto {
  OrderPaymentDetailV2Data toOrderPaymentDetailEntityData(
          String orderRef, String paymentId) =>
      OrderPaymentDetailV2Data(
        orderRef: orderRef,
        paymentId: paymentId,
        key: key,
        value: value,
      );
}
