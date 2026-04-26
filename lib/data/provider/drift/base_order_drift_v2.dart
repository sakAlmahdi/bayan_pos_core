import 'dart:convert';
import 'dart:developer' as developer;

import 'package:bayan_pos_core/data/enum/order_satate.dart';
import 'package:bayan_pos_core/data/model/new/order/invoice_result_v2.dart';
import 'package:bayan_pos_core/data/model/new/order/order_response_dto.dart';
import 'package:bayan_pos_core/data/model/new/order/print_history_dto.dart';
import 'package:bayan_pos_core/data/model/new/order/payment/order_payment_dto.dart';
import 'package:bayan_pos_core/data/model/new/order/payment/order_payment_detail_dto.dart';
import 'package:bayan_pos_core/data/model/new/promotion/order_product_promotion_applies_dto.dart';
import 'package:bayan_pos_core/data/model/shift.dart';
import 'package:bayan_pos_core/data/model/till/till.dart';
import 'package:bayan_pos_core/data/model/new/promotion/order_product_response_dto.dart';
import 'package:bayan_pos_core/data/model/new/product/order_product_request_dto.dart';
import 'package:bayan_pos_core/data/model/new/tax/order_product_tax_info_dto.dart';
import 'package:bayan_pos_core/data/model/new/order/order_product_unit_price.dart';
import 'package:bayan_pos_core/data/model/new/tiered_pricings/order_product_tiered_pricing_applies_dto.dart';
import 'package:bayan_pos_core/data/model/new/time_event/order_product_time_event_applies_dto.dart';
import 'package:bayan_pos_core/data/model/new/discount/order_product_discount_dto.dart';
import 'package:bayan_pos_core/data/model/new/promotion/order_product_promotion_info_dto.dart';
import 'package:bayan_pos_core/data/model/new/charge/order_product_charge_dto.dart';
import 'package:bayan_pos_core/data/model/new/tax/order_product_tax_type_dto.dart';
import 'package:bayan_pos_core/data/model/new/promotion/order_promotion_applies_dto.dart';
import 'package:bayan_pos_core/data/model/new/order/promotion_gift_card_dto.dart';
import 'package:bayan_pos_core/data/model/new/charge/order_charge_for_total_dto.dart';
import 'package:bayan_pos_core/data/model/new/tax/order_tax_type_view_dto.dart';
import 'package:bayan_pos_core/data/model/order_dashbord/order_statistics.dart';
import 'package:bayan_pos_core/data/model/order/order.dart';
import 'package:collection/collection.dart';
import 'package:drift/drift.dart';
import 'package:flutter_guid/flutter_guid.dart';
import 'package:synchronized/synchronized.dart';
import 'package:uuid/uuid.dart';

import '../../entity/drift_db.dart';
import '../../repository/base_order_repo_v2.dart';
import '../../utils/zatca_helper.dart';

class BaseOrderDriftV2 implements BaseOrderRepoV2 {
  final MyDatabase db;
  final _lock = Lock();

  BaseOrderDriftV2(this.db);

  @override
  Future<InvoiceResultV2> finalizeInvoice(OrderResponseDto orderDto) async {
    final String orderRef = orderDto.orderRef ?? '';
    if (orderRef.isEmpty) throw 'orderRef is required';

    return await _lock.synchronized(() async {
      try {
        var order = await (db.select(db.orderEntityV2)
              ..where((t) => t.orderRef.equals(orderRef)))
            .getSingleOrNull();

        if (order == null) {
          await saveOrder(orderResponseDto: orderDto);
          order = await (db.select(db.orderEntityV2)
                ..where((t) => t.orderRef.equals(orderRef)))
              .getSingleOrNull();
        }

        if (order == null) {
          return InvoiceResultV2(
            success: false,
            message: 'Order not found and could not be created: $orderRef',
            orderRef: orderRef,
          );
        }

        if (order.invoiceNumber != null) {
          return InvoiceResultV2(
            success: true,
            orderRef: orderRef,
            invoiceNumber: order.invoiceNumber,
            invoiceUUID: order.invoiceUUID,
            invoiceCounterValue: order.invoiceCounterValue,
            invoiceHash: order.invoiceHash,
            previousInvoiceHash: order.previousInvoiceHash,
          );
        }

        return await db.transaction(() async {
          // Get last sequence for a generic branch or specific one if available
          final branchId =
              'MIGRATED'; // You might want to get this from somewhere
          final lastSequence = await (db.select(db.invoiceSequenceV2)
                ..where((t) => t.branchId.equals(branchId)))
              .getSingleOrNull();

          int nextCounter = 1;
          String previousHash = 'NWZlY2ViOTZmOTk1YTM1ZDRmYjY5YmQ5YmNlYmZiYzQ=';

          if (lastSequence != null) {
            nextCounter = lastSequence.lastICV + 1;
            previousHash = lastSequence.lastHash;
          }

          final invoiceUuid = const Uuid().v4();
          final String invoiceNumber = nextCounter.toString().padLeft(6, '0');

          // جلب المنتجات لحساب الهاش الفعلي بناءً على الـ XML
          final products = await (db.select(db.orderProductEntityV2)
                ..where((t) => t.orderRef.equals(orderRef)))
              .get();

          final String currentHash = ZatcaHelper.generateInvoiceHash(
            orderRef: orderRef,
            order: order!,
            products: products,
            icv: nextCounter,
            prevHash: previousHash,
          );

          await db.into(db.invoiceSequenceV2).insertOnConflictUpdate(
                InvoiceSequenceV2Companion.insert(
                  branchId: branchId,
                  lastICV: Value(nextCounter),
                  lastHash: Value(currentHash),
                  lastInvoiceNumber: Value(nextCounter),
                  lastUpdatedAt: Value(DateTime.now()),
                ),
              );

          await (db.update(db.orderEntityV2)
                ..where((t) => t.orderRef.equals(orderRef)))
              .write(OrderEntityV2Companion(
            invoiceNumber: Value(invoiceNumber),
            invoiceUUID: Value(invoiceUuid),
            invoiceCounterValue: Value(nextCounter),
            invoiceHash: Value(currentHash),
            previousInvoiceHash: Value(previousHash),
            status: Value(OrderStatusC.done.toKey()),
          ));

          return InvoiceResultV2(
            success: true,
            orderRef: orderRef,
            invoiceNumber: invoiceNumber,
            invoiceUUID: invoiceUuid,
            invoiceCounterValue: nextCounter,
            invoiceHash: currentHash,
            previousInvoiceHash: previousHash,
          );
        });
      } catch (e) {
        developer.log('Error finalizing invoice: $e', name: 'BaseOrderDriftV2');
        return InvoiceResultV2(
          success: false,
          message: e.toString(),
          orderRef: orderRef,
        );
      }
    });
  }

  @override
  Future<List<OrderPaymentDto>> getOrderPayments(
      {required String orderRef}) async {
    try {
      final payments = await (db.select(db.orderPaymentV2)
            ..where((t) => t.orderRef.equals(orderRef)))
          .get();

      final details = await (db.select(db.orderPaymentDetailV2)
            ..where((t) => t.orderRef.equals(orderRef)))
          .get();

      return payments.map((p) {
        return OrderPaymentDto(
          orderRef: p.orderRef,
          paymentId: p.paymentId,
          paymentMethodId: p.paymentMethodId,
          paymentMethodType: p.paymentMethodType,
          name: p.name,
          fName: p.fName,
          currencyAmount: p.currencyAmount,
          currencyCode: p.currencyCode,
          exchangeRateToBase: p.exchangeRateToBase,
          baseAmount: p.baseAmount,
          receivedAmount: p.receivedAmount,
          changeAmount: p.changeAmount,
          tipAmount: p.tipAmount,
          feeAmount: p.feeAmount,
          cashierId: p.cashierId,
          shiftId: p.shiftId,
          tillId: p.tillId,
          deviceId: p.deviceId,
          externalTransactionId: p.externalTransactionId,
          reference: p.reference,
          isVoided: p.isVoided,
          voidReason: p.voidReason,
          createdOn: p.createdOn,
          createdBy: p.createdBy,
          notes: p.notes,
          details: details
              .where((d) => d.paymentId == p.paymentId)
              .map((d) => OrderPaymentDetailDto(key: d.key, value: d.value))
              .toList(),
        );
      }).toList();
    } catch (e) {
      developer.log('Error getting order payments: $e',
          name: 'BaseOrderDriftV2');
      return [];
    }
  }

  @override
  Future<bool> saveOrderPayments({required OrderPaymentDto payment}) async {
    try {
      return await db.transaction(() async {
        await (db.delete(db.orderPaymentV2)
              ..where((t) =>
                  t.orderRef.equals(payment.orderRef ?? '') &
                  t.paymentId.equals(payment.paymentId ?? '')))
            .go();
        await (db.delete(db.orderPaymentDetailV2)
              ..where((t) =>
                  t.orderRef.equals(payment.orderRef ?? '') &
                  t.paymentId.equals(payment.paymentId ?? '')))
            .go();

        await db.into(db.orderPaymentV2).insert(OrderPaymentV2Companion.insert(
              orderRef: Value(payment.orderRef),
              paymentId: Value(payment.paymentId ?? const Uuid().v4()),
              paymentMethodId: Value(payment.paymentMethodId),
              paymentMethodType: Value(payment.paymentMethodType),
              name: Value(payment.name),
              fName: Value(payment.fName),
              currencyAmount: Value(payment.currencyAmount),
              currencyCode: Value(payment.currencyCode),
              exchangeRateToBase: Value(payment.exchangeRateToBase),
              baseAmount: Value(payment.baseAmount),
              receivedAmount: Value(payment.receivedAmount),
              changeAmount: Value(payment.changeAmount),
              tipAmount: Value(payment.tipAmount),
              feeAmount: Value(payment.feeAmount),
              cashierId: Value(payment.cashierId),
              shiftId: Value(payment.shiftId),
              tillId: Value(payment.tillId),
              deviceId: Value(payment.deviceId),
              externalTransactionId: Value(payment.externalTransactionId),
              reference: Value(payment.reference),
              isVoided: Value(payment.isVoided),
              voidReason: Value(payment.voidReason),
              createdOn: Value(payment.createdOn),
              createdBy: Value(payment.createdBy),
              notes: Value(payment.notes),
            ));

        if (payment.details != null) {
          for (var detail in payment.details!) {
            await db
                .into(db.orderPaymentDetailV2)
                .insert(OrderPaymentDetailV2Companion.insert(
                  orderRef: Value(payment.orderRef),
                  paymentId: Value(payment.paymentId),
                  key: Value(detail.key),
                  value: Value(detail.value),
                ));
          }
        }
        return true;
      });
    } catch (e) {
      developer.log('Error saving order payment: $e', name: 'BaseOrderDriftV2');
      return false;
    }
  }

  @override
  Future<bool> deleteOrderPayment(
      {required String orderRef, required String paymentId}) async {
    try {
      return await db.transaction(() async {
        await (db.delete(db.orderPaymentV2)
              ..where((t) =>
                  t.orderRef.equals(orderRef) & t.paymentId.equals(paymentId)))
            .go();
        await (db.delete(db.orderPaymentDetailV2)
              ..where((t) =>
                  t.orderRef.equals(orderRef) & t.paymentId.equals(paymentId)))
            .go();
        return true;
      });
    } catch (e) {
      developer.log('Error deleting order payment: $e',
          name: 'BaseOrderDriftV2');
      return false;
    }
  }

  @override
  Future<bool> saveMultipleOrderPayments(
      {required List<OrderPaymentDto> payments}) async {
    try {
      return await db.transaction(() async {
        for (var payment in payments) {
          await saveOrderPayments(payment: payment);
        }
        return true;
      });
    } catch (e) {
      developer.log('Error saving multiple order payments: $e',
          name: 'BaseOrderDriftV2');
      return false;
    }
  }

  @override
  Future<List<OrderResponseDto>> getAllOrders({
    int page = 0,
    int pageSize = 20,
    List<int>? status,
    List<int>? source,
    DateTime? from,
    DateTime? to,
    DateTime? day,
    List<String>? cahiserIds,
    List<String>? shiftIds,
    List<String>? tillIds,
    List<String>? deliveryMansIds,
    String? searchQuery,
    List<String>? customerIds,
    List<int>? orderTypes,
    List<String>? tableIds,
    List<String>? deliveryCompanyIds,
    String? externalOrderRef,
  }) async {
    try {
      final query = db.select(db.orderEntityV2);

      if (status != null && status.isNotEmpty) {
        query.where((tbl) => tbl.status.isIn(status));
      }
      if (source != null && source.isNotEmpty) {
        query.where((tbl) => tbl.orderSource.isIn(source));
      }
      if (from != null) {
        query.where((tbl) => tbl.startDate.isBiggerOrEqualValue(from));
      }
      if (to != null) {
        query.where((tbl) => tbl.startDate.isSmallerOrEqualValue(to));
      }
      if (day != null) {
        final nextDay = day.add(const Duration(days: 1));
        query.where((tbl) =>
            tbl.startDate.isBiggerOrEqualValue(day) &
            tbl.startDate.isSmallerThanValue(nextDay));
      }
      if (cahiserIds != null && cahiserIds.isNotEmpty) {
        query.where((tbl) => tbl.createdBy.isIn(cahiserIds));
      }
      if (shiftIds != null && shiftIds.isNotEmpty) {
        query.where((tbl) => tbl.shiftId.isIn(shiftIds));
      }
      if (tillIds != null && tillIds.isNotEmpty) {
        query.where((tbl) => tbl.tillId.isIn(tillIds));
      }
      if (searchQuery != null && searchQuery.isNotEmpty) {
        query.where((tbl) =>
            tbl.orderRef.like('%$searchQuery%') |
            tbl.tableCaption.like('%$searchQuery%') |
            tbl.callNumber.like('%$searchQuery%'));
      }
      if (customerIds != null && customerIds.isNotEmpty) {
        query.where((tbl) => tbl.customerId.isIn(customerIds));
      }
      if (orderTypes != null && orderTypes.isNotEmpty) {
        query.where((tbl) => tbl.orderType.isIn(orderTypes));
      }
      if (tableIds != null && tableIds.isNotEmpty) {
        query.where((tbl) => tbl.tableId.isIn(tableIds));
      }
      if (externalOrderRef != null && externalOrderRef.isNotEmpty) {
        query.where((tbl) => tbl.orderRef.equals(externalOrderRef));
      }

      query.orderBy([
        (t) => OrderingTerm(expression: t.startDate, mode: OrderingMode.desc)
      ]);
      query.limit(pageSize, offset: page * pageSize);

      final results = await query.get();
      final List<OrderResponseDto> mappedOrders = [];

      for (var order in results) {
        final orderDto = await getOrderByRef(orderRef: order.orderRef);
        if (orderDto != null) {
          mappedOrders.add(orderDto);
        }
      }

      return mappedOrders;
    } catch (e) {
      developer.log('Error getting all orders: $e', name: 'BaseOrderDriftV2');
      return [];
    }
  }

  @override
  Future<bool> updateOrderTable({
    required String orderRef,
    required String? tableId,
    required String? tableCaption,
  }) async {
    try {
      final rowsAffected = await (db.update(db.orderEntityV2)
            ..where((t) => t.orderRef.equals(orderRef)))
          .write(OrderEntityV2Companion(
        tableId: Value(tableId),
        tableCaption: Value(tableCaption),
      ));
      return rowsAffected > 0;
    } catch (e) {
      developer.log('Error updating order table: $e', name: 'BaseOrderDriftV2');
      return false;
    }
  }

  @override
  Future<OrderResponseDto?> getOrderByRef({required String orderRef}) async {
    try {
      final order = await (db.select(db.orderEntityV2)
            ..where((t) => t.orderRef.equals(orderRef)))
          .getSingleOrNull();

      if (order == null) return null;

      final products = await (db.select(db.orderProductEntityV2)
            ..where((t) => t.orderRef.equals(orderRef)))
          .get();
      final unitPrices = await (db.select(db.orderProductUnitPriceV2)
            ..where((t) => t.orderRef.equals(orderRef)))
          .get();
      final tieredPricing = await (db.select(db.orderProductTieredPricingV2)
            ..where((t) => t.orderRef.equals(orderRef)))
          .get();
      final timeEvents = await (db.select(db.orderProductTimeEventV2)
            ..where((t) => t.orderRef.equals(orderRef)))
          .get();
      final productDiscounts = await (db.select(db.orderProductDiscountV2)
            ..where((t) => t.orderRef.equals(orderRef)))
          .get();
      final productPromotions = await (db.select(db.orderProductPromotionInfoV2)
            ..where((t) => t.orderRef.equals(orderRef)))
          .get();
      final productCharges = await (db.select(db.orderProductChargeV2)
            ..where((t) => t.orderRef.equals(orderRef)))
          .get();
      final productTaxes = await (db.select(db.orderProductTaxInfoV2)
            ..where((t) => t.orderRef.equals(orderRef)))
          .get();
      final productTaxTypes = await (db.select(db.orderProductTaxTypeV2)
            ..where((t) => t.orderRef.equals(orderRef)))
          .get();
      final orderDiscounts = await (db.select(db.orderDiscountV2)
            ..where((t) => t.orderRef.equals(orderRef)))
          .get();
      final orderPromotions = await (db.select(db.orderPromotionAppliesV2)
            ..where((t) => t.orderRef.equals(orderRef)))
          .get();
      final orderGiftCards = await (db.select(db.orderPromotionGiftCardV2)
            ..where((t) => t.orderRef.equals(orderRef)))
          .get();
      final orderChargesResult = await (db.select(db.orderChargeV2)
            ..where((t) => t.orderRef.equals(orderRef)))
          .get();
      final orderChargesForTotalResult =
          await (db.select(db.orderChargeForTotalV2)
                ..where((t) => t.orderRef.equals(orderRef)))
              .get();
      final orderTaxTypesResult = await (db.select(db.orderTaxTypeV2)
            ..where((t) => t.orderRef.equals(orderRef)))
          .get();
      final appliedModifiers = await (db.select(db.orderProductModifierV2)
            ..where((t) => t.orderRef.equals(orderRef)))
          .get();
      final appliedModifiersOptions =
          await (db.select(db.orderProductModifierOptionV2)
                ..where((t) => t.orderRef.equals(orderRef)))
              .get();
      final orderPaymentsResult = await getOrderPayments(orderRef: orderRef);

      final mappedProducts = products.map((prod) {
        final prodRef = prod.productRef;
        final unitPrice =
            unitPrices.firstWhereOrNull((u) => u.productRef == prodRef);
        final tiered =
            tieredPricing.firstWhereOrNull((t) => t.productRef == prodRef);
        final timeEvent =
            timeEvents.firstWhereOrNull((t) => t.productRef == prodRef);
        final discount =
            productDiscounts.firstWhereOrNull((d) => d.productRef == prodRef);
        final promoInfo =
            productPromotions.firstWhereOrNull((p) => p.productRef == prodRef);
        final charges =
            productCharges.where((c) => c.productRef == prodRef).toList();
        final taxInfo =
            productTaxes.firstWhereOrNull((t) => t.productRef == prodRef);
        final modifiersList =
            appliedModifiers.where((m) => m.productRef == prodRef).toList();

        return OrderProductResponseDto(
          productRef: prod.productRef ?? '',
          tableRowIndex: prod.tableRowIndex,
          name: prod.name,
          productId: prod.productId,
          unitId: prod.unitId,
          quantity: prod.quantity,
          freeQuantity: prod.freeQuantity,
          unitPrice: prod.unitPrice,
          totalPrice: prod.totalPrice,
          discountAmount: prod.discountAmount,
          discountPercentage: prod.discountPercentage,
          netUnitPrice: prod.netUnitPrice,
          netTotalPrice: prod.netTotalPrice,
          netUnitPriceExcludeTax: prod.netUnitPriceExcludeTax,
          netTotalPriceExcludeTax: prod.netTotalPriceExcludeTax,
          orderDiscountAmount: prod.orderDiscountAmount,
          taxableAmount: prod.taxableAmount,
          taxAmount: prod.taxAmount,
          finalAmount: prod.finalAmount,
          roundingDecimalAmount: prod.roundingDecimalAmount,
          productUnitPrice: unitPrice != null
              ? OrderProductUnitPriceDto(
                  unitPrice: unitPrice.unitPrice,
                  description: unitPrice.description,
                  unitId: unitPrice.unitId,
                  productUnitId: unitPrice.productUnitId,
                  productUnitPriceListId: unitPrice.productUnitPriceListId,
                  productUnitPriceListSlapId:
                      unitPrice.productUnitPriceListSlapId,
                )
              : null,
          tieredPricing: tiered != null
              ? OrderProductTieredPricingAppliesDto(
                  id: tiered.tieredPricingId,
                  name: tiered.name,
                  unitPrice: tiered.unitPrice,
                  netUnitPrice: tiered.netUnitPrice,
                )
              : null,
          timeEvent: timeEvent != null
              ? OrderProductTimeEventAppliesDto(
                  id: timeEvent.timeEventId,
                  name: timeEvent.name,
                  unitPrice: timeEvent.unitPrice,
                  netUnitPrice: timeEvent.netUnitPrice,
                )
              : null,
          discount: discount != null
              ? OrderProductDiscountDto(
                  id: discount.discountId,
                  name: discount.name,
                  fName: discount.fName,
                  discountAmount: discount.discountAmount ?? 0,
                  discountPercentage: discount.discountPercentage ?? 0,
                )
              : null,
          promotionInfo: promoInfo != null
              ? OrderProductPromotionInfoDto(
                  notAppliesQuantity: promoInfo.notAppliesQuantity ?? 0,
                  appliesAsPurchaseQuantity:
                      promoInfo.appliesAsPurchaseQuantity ?? 0,
                  appliesAsDiscountQuantity:
                      promoInfo.appliesAsDiscountQuantity ?? 0,
                  promotionDiscountAmount:
                      promoInfo.promotionDiscountAmount ?? 0,
                  promotionDiscountPercentage:
                      promoInfo.promotionDiscountPercentage ?? 0,
                  promotions: (promoInfo.promotionsJson as List?)
                          ?.map((e) => OrderProductPromotionAppliesDto.fromJson(
                              e as Map<String, dynamic>))
                          .toList() ??
                      [],
                )
              : null,
          charges: charges
              .map((c) => OrderProductChargeDto(
                    chargeId: c.chargeId != null ? Guid(c.chargeId!) : null,
                    name: c.name,
                    chargeAmount: c.amount ?? 0,
                    percentage: c.percentage ?? 0,
                  ))
              .toList(),
          taxInfo: taxInfo != null
              ? OrderProductTaxInfoDto(
                  taxableAmount: taxInfo.taxableAmount ?? 0,
                  taxAmount: taxInfo.taxAmount ?? 0,
                  taxPercentage: taxInfo.taxPercentage ?? 0,
                  taxGroupId: taxInfo.taxGroupId,
                  appliesTaxTypes: productTaxTypes
                      .where((t) => t.productRef == prodRef)
                      .map((t) => OrderProductTaxTypeDto(
                            taxableAmount: t.taxableAmount,
                            taxAccount: t.taxAccount,
                            taxCode: t.taxCode,
                            id: Guid(t.taxTypeId ?? ''),
                            name: t.taxTypeName,
                            amount: t.taxAmount ?? 0,
                            percent: t.taxPercentage ?? 0,
                            zeroTax: t.isZeroTax ?? false,
                          ))
                      .toList(),
                )
              : null,
          notes: prod.notes,
          departmentId: prod.departmentId,
          categoryId: prod.categoryId,
          appliedModifiers: modifiersList.map((modifer) {
            final modTaxInfo = productTaxes.firstWhereOrNull((t) =>
                t.productRef == prodRef && t.modifierId == modifer.modifierId);
            final modTaxTypes = productTaxTypes
                .where((t) =>
                    t.productRef == prodRef &&
                    t.modifierId == modifer.modifierId)
                .toList();
            return OrderProductAppliedModifierDto(
              modifierId: modifer.modifierId,
              name: modifer.name,
              fName: modifer.fName,
              discountAmount: modifer.discountAmount,
              discountPercentage: modifer.discountPercentage,
              netUnitPrice: modifer.netUnitPrice,
              netTotalPrice: modifer.netTotalPrice,
              netUnitPriceExcludeTax: modifer.netUnitPriceExcludeTax,
              netTotalPriceExcludeTax: modifer.netTotalPriceExcludeTax,
              orderDiscountAmount: modifer.orderDiscountAmount,
              taxableAmount: modifer.taxableAmount,
              taxAmount: modifer.taxAmount,
              finalAmount: modifer.finalAmount,
              options: appliedModifiersOptions
                  .where((o) =>
                      o.productRef == prodRef &&
                      o.modifierId == modifer.modifierId)
                  .map((option) => OrderProductAppliedOptionDto(
                        optionId: option.optionId,
                        name: option.name,
                        fName: option.fName,
                        quantity: option.quantity,
                        freeQuantity: option.freeQuantity,
                        unitPrice: option.unitPrice,
                        totalPrice: option.totalPrice,
                        netUnitPrice: option.netUnitPrice,
                        netTotalPrice: option.netTotalPrice,
                        finalAmount: option.finalAmount,
                        discountAmount: option.discountAmount,
                        discountPercentage: option.discountPercentage,
                        netUnitPriceExcludeTax: option.netUnitPriceExcludeTax,
                        netTotalPriceExcludeTax: option.netTotalPriceExcludeTax,
                        taxGroupId: option.taxGroupId,
                        taxAmount: option.taxAmount,
                        taxableAmount: option.taxableAmount,
                        orderDiscountAmount: option.orderDiscountAmount,
                        orderDiscountPercentage: option.orderDiscountPercentage,
                        taxInfo: modTaxInfo != null
                            ? OrderProductTaxInfoDto(
                                taxableAmount: modTaxInfo.taxableAmount ?? 0,
                                taxAmount: modTaxInfo.taxAmount ?? 0,
                                taxPercentage: modTaxInfo.taxPercentage ?? 0,
                                taxGroupId: modTaxInfo.taxGroupId,
                                appliesTaxTypes: modTaxTypes
                                    .map((e) => OrderProductTaxTypeDto(
                                          id: Guid(e.taxTypeId ?? ''),
                                          name: e.taxTypeName,
                                          amount: e.taxAmount ?? 0,
                                          taxableAmount: e.taxableAmount,
                                          percent: e.taxPercentage ?? 0,
                                          zeroTax: e.isZeroTax ?? false,
                                        ))
                                    .toList(),
                              )
                            : null,
                      ))
                  .toList(),
            );
          }).toList(),
        );
      }).toList();

      final discount =
          orderDiscounts.firstWhereOrNull((d) => d.orderRef == orderRef);
      final promotion =
          orderPromotions.firstWhereOrNull((p) => p.orderRef == orderRef);
      final giftCard =
          orderGiftCards.firstWhereOrNull((g) => g.orderRef == orderRef);

      return OrderResponseDto(
        orderRef: order.orderRef,
        tableId: order.tableId,
        tableCaption: order.tableCaption,
        totalPrice: order.totalPrice,
        discountAmount: order.discountAmount,
        netTotalPrice: order.netTotalPrice,
        chargeAmount: order.chargeAmount,
        taxableAmount: order.taxableAmount,
        taxAmount: order.taxAmount,
        finalAmount: order.finalAmount,
        shippingAmount: order.shippingAmount,
        shippingDiscountAmount: order.shippingDiscountAmount,
        shippingDiscountPercentage: order.shippingDiscountPercentage,
        productDiscountAmount: order.productDiscountAmount,
        discountPercentage: order.discountPercentage,
        totalDiscountAmount: order.totalDiscountAmount,
        promotionDiscountAmount: order.promotionDiscountAmount,
        timeEventDiscountAmount: order.timeEventDiscountAmount,
        timeEventChargeAmount: order.timeEventChargeAmount,
        roundingDecimalAmount: order.roundingDecimalAmount,
        note: order.note,
        status: order.status,
        orderType: order.orderType,
        orderSource: order.orderSource,
        deliveryStatus: order.deliveryStatus,
        paymentStatus: order.paymentStatus,
        refundStatus: order.refundStatus,
        numberVisitor: order.numberVisitor,
        minimumReservationPrice: order.minimumReservationPrice,
        splitIndex: order.splitIndex,
        totalCalories: order.totalCalories,
        callName: order.callName,
        callNumber: order.callNumber,
        addressId: order.addressId,
        addressJson: order.addressJson,
        cancelReasonId: order.cancelReasonId,
        casherNote: order.casherNote,
        changeAmount: order.changeAmount,
        checksum: order.checksum,
        createdBy: order.createdBy,
        createdOn: order.createdOn,
        customerId: order.customerId,
        customerJson: order.customerJson,
        printState: order.printState,
        prePaymentPrintCount: order.prePaymentPrintCount,
        postPaymentPrintCount: order.postPaymentPrintCount,
        firstPrintedAt: order.firstPrintedAt,
        lastPrintedAt: order.lastPrintedAt,
        lastPrintedBy: order.lastPrintedBy,
        isLocked: order.isLocked,
        lockedAt: order.lockedAt,
        unprintedAt: order.unprintedAt,
        unprintedBy: order.unprintedBy,
        deliveryCompanyInfo: order.deliveryCompanyJson != null
            ? DeliveryCompanyInfo.fromJson(order.deliveryCompanyJson!)
            : null,
        deviceId: order.deviceId,
        dueAmount: order.dueAmount,
        endTime: order.endTime,
        giftCardJson: order.giftCardJson,
        kitchenNote: order.kitchenNote,
        lastModifiedBy: order.lastModifiedBy,
        lastModifiedOn: order.lastModifiedOn,
        masterChecksum: order.masterChecksum,
        msgCancel: order.msgCancel,
        paidAmount: order.paidAmount,
        parentOrderId: order.parentOrderId,
        payments: orderPaymentsResult,
        priceIncludeTax: order.priceIncludeTax,
        promotionId: order.promotionId,
        promotionJson: order.promotionJson,
        serverChecksum: order.serverChecksum,
        shiftId: order.shiftId,
        startDate: order.startDate,
        supervisorId: order.supervisorId,
        tillId: order.tillId,
        timeOfReceipt: order.timeOfReceipt,
        invoiceNumber: order.invoiceNumber,
        invoiceUUID: order.invoiceUUID,
        invoiceCounterValue: order.invoiceCounterValue,
        invoiceHash: order.invoiceHash,
        previousInvoiceHash: order.previousInvoiceHash,
        discount: discount != null
            ? OrderProductDiscountDto(
                id: discount.discountId,
                name: discount.name,
                fName: discount.fName,
                discountAmount: discount.discountAmount ?? 0,
                discountPercentage: discount.discountPercentage ?? 0,
              )
            : null,
        products: mappedProducts,
        promotion: promotion != null
            ? OrderPromotionAppliesDto(
                id: promotion.promotionId,
                name: promotion.name,
                discountAmount: promotion.discountAmount,
                discountPercentage: promotion.discountPercentage,
              )
            : (order.promotionJson != null
                ? OrderPromotionAppliesDto.fromJson(order.promotionJson!)
                : null),
        giftCard: giftCard != null
            ? PromotionGiftCardDto(
                name: giftCard.name,
                fName: giftCard.fName,
                barcode: giftCard.barcode,
                reference: giftCard.reference,
                price: giftCard.price,
              )
            : null,
        charges: orderChargesResult
            .map((c) => OrderProductChargeDto(
                  chargeId: c.chargeId != null ? Guid(c.chargeId!) : null,
                  name: c.name,
                  chargeAmount: c.chargeAmount ?? 0,
                  percentage: c.percentage ?? 0,
                ))
            .toList(),
        chargesForTotals: orderChargesForTotalResult
            .map((c) => OrderChargeForTotalDto(
                  id: c.chargeId,
                  name: c.name,
                  amount: c.amount ?? 0,
                  taxAmount: c.taxAmount ?? 0,
                ))
            .toList(),
        taxInfo: orderTaxTypesResult
            .map((t) => OrderTaxTypeViewDto(
                  type: t.taxTypeId,
                  name: t.taxTypeName,
                  amount: t.amount ?? 0,
                ))
            .toList(),
      );
    } catch (e) {
      developer.log('Error getting order by ref: $e', name: 'BaseOrderDriftV2');
      return null;
    }
  }

  @override
  Future<List<OrderResponseDto>> getAllOrderForTable() async {
    try {
      final query = db.select(db.orderEntityV2)
        ..where((tbl) =>
            tbl.tableId.isNotNull() &
            tbl.status.isIn([
              OrderStatusC.active.toKey(),
              OrderStatusC.draft.toKey(),
            ]))
        ..orderBy([
          (t) => OrderingTerm(expression: t.startDate, mode: OrderingMode.desc)
        ]);

      final orders = await query.get();
      if (orders.isEmpty) return [];

      final List<OrderResponseDto> result = [];
      for (var order in orders) {
        final dto = await getOrderByRef(orderRef: order.orderRef);
        if (dto != null) result.add(dto);
      }
      return result;
    } catch (e) {
      developer.log('Error getting orders for table: $e',
          name: 'BaseOrderDriftV2');
      return [];
    }
  }

  @override
  Future<List<Shift>> getShifts({List<String>? userIds}) async {
    try {
      final query = db.select(db.shiftEntity);
      if (userIds != null && userIds.isNotEmpty) {
        query.where((tbl) => tbl.userId.isIn(userIds));
      }
      query.orderBy([
        (t) => OrderingTerm(
            expression: t.clockedInDateAt, mode: OrderingMode.desc),
        (t) => OrderingTerm(
            expression: t.clockedInTimeAt, mode: OrderingMode.desc),
      ]);
      final results = await query.get();
      return results
          .map((s) => Shift(
                shiftId: s.shiftId,
                reference: s.reference,
                userId: s.userId,
                userName: s.userName,
                branchName: s.branchName,
                clockedInDateAt: s.clockedInDateAt,
                clockedInTimeAt: s.clockedInTimeAt,
                clockedOutDateAt: s.clockedOutDateAt,
                clockedOutTimeAt: s.clockedOutTimeAt,
                isClockedOut: s.isClockedOut,
              ))
          .toList();
    } catch (e) {
      developer.log('Error getting shifts: $e', name: 'BaseOrderDriftV2');
      return [];
    }
  }

  @override
  Future<List<Till>> getTills({List<String>? shiftIds}) async {
    try {
      final query = db.select(db.tillEntity);
      if (shiftIds != null && shiftIds.isNotEmpty) {
        query.where((tbl) => tbl.shiftId.isIn(shiftIds));
      }
      query.orderBy([
        (t) => OrderingTerm(expression: t.openDateOn, mode: OrderingMode.desc),
        (t) => OrderingTerm(expression: t.openTimeOn, mode: OrderingMode.desc),
      ]);
      final results = await query.get();
      return results
          .map((t) => Till(
                id: (t as dynamic).id,
                reference: t.reference,
                shiftId: t.shiftId,
                userId: t.userId,
                userName: t.userName,
                amount: t.amount,
                isClosed: t.isClosed,
                note: t.note,
                openDateOn: t.openDateOn,
                openTimeOn: t.openTimeOn,
                closeDateOn: t.closeDateOn,
                closeTimeOn: t.closeTimeOn,
              ))
          .toList();
    } catch (e) {
      developer.log('Error getting tills: $e', name: 'BaseOrderDriftV2');
      return [];
    }
  }

  @override
  Future<bool> updateOrderPrintState({
    required String orderRef,
    required int printState,
    int? printCount,
    DateTime? printedAt,
    String? printedBy,
  }) async {
    try {
      final now = DateTime.now();
      final companion = OrderEntityV2Companion(
        printState: Value(printState),
        prePaymentPrintCount: (printState != 2 && printCount != null)
            ? Value(printCount)
            : const Value.absent(),
        postPaymentPrintCount: (printState == 2 && printCount != null)
            ? Value(printCount)
            : const Value.absent(),
        lastPrintedAt:
            printedAt != null ? Value(printedAt) : const Value.absent(),
        lastPrintedBy:
            printedBy != null ? Value(printedBy) : const Value.absent(),
        lockedAt: printState == 1 ? Value(now) : const Value.absent(),
      );

      if (printCount == 1 && printedAt != null) {
        final order = await (db.select(db.orderEntityV2)
              ..where((t) => t.orderRef.equals(orderRef)))
            .getSingleOrNull();
        if (order != null && order.firstPrintedAt == null) {
          await (db.update(db.orderEntityV2)
                ..where((t) => t.orderRef.equals(orderRef)))
              .write(OrderEntityV2Companion(firstPrintedAt: Value(printedAt)));
        }
      }

      final rowsAffected = await (db.update(db.orderEntityV2)
            ..where((t) => t.orderRef.equals(orderRef)))
          .write(companion);
      return rowsAffected > 0;
    } catch (e) {
      developer.log('Error updating order print state: $e',
          name: 'BaseOrderDriftV2');
      return false;
    }
  }

  @override
  Future<bool> unprintOrder(
      {required String orderRef,
      required String reason,
      required String unprintedBy}) async {
    try {
      final rowsAffected = await (db.update(db.orderEntityV2)
            ..where((t) => t.orderRef.equals(orderRef)))
          .write(OrderEntityV2Companion(
        printState: const Value(0),
        isLocked: const Value(false),
        unprintReason: Value(reason),
        unprintedAt: Value(DateTime.now()),
        unprintedBy: Value(unprintedBy),
      ));
      return rowsAffected > 0;
    } catch (e) {
      developer.log('Error unprinting order: $e', name: 'BaseOrderDriftV2');
      return false;
    }
  }

  @override
  Future<List<OrderPrintHistoryDto>> getOrderPrintHistory(
      {required String orderRef}) async {
    try {
      final rows = await (db.select(db.orderPrintHistoryV2)
            ..where((tbl) => tbl.orderRef.equals(orderRef))
            ..orderBy([
              (t) =>
                  OrderingTerm(expression: t.printedAt, mode: OrderingMode.desc)
            ]))
          .get();
      return rows
          .map((row) => OrderPrintHistoryDto(
                id: row.id,
                orderRef: row.orderRef ?? '',
                printedAt: row.printedAt,
                printedBy: row.printedBy,
                printedByName: row.printedByName,
                copyNumber: row.copyNumber,
                isPrePayment: row.isPrePayment,
                printerName: row.printerName,
                printType: row.printType,
                success: row.success,
                failureReason: row.failureReason,
              ))
          .toList();
    } catch (e) {
      developer.log('Error getting order print history: $e',
          name: 'BaseOrderDriftV2');
      return [];
    }
  }

  @override
  Future<bool> savePrintHistory({required OrderPrintHistoryDto history}) async {
    try {
      await db
          .into(db.orderPrintHistoryV2)
          .insert(OrderPrintHistoryV2Companion.insert(
            id: history.id ?? const Uuid().v4(),
            orderRef: Value(history.orderRef),
            printedAt: Value(history.printedAt),
            printedBy: Value(history.printedBy),
            printedByName: Value(history.printedByName),
            copyNumber: Value(history.copyNumber),
            isPrePayment: Value(history.isPrePayment),
            printType: Value(history.printType),
            printerName: Value(history.printerName),
            success: Value(history.success),
            failureReason: Value(history.failureReason),
          ));
      return true;
    } catch (e) {
      developer.log('Error saving print history: $e', name: 'BaseOrderDriftV2');
      return false;
    }
  }

  @override
  Future<bool> saveOrder({required OrderResponseDto orderResponseDto}) async {
    try {
      await db.transaction(() async {
        await _deleteOrderRelatedData(orderResponseDto.orderRef!);

        await db
            .into(db.orderEntityV2)
            .insertOnConflictUpdate(OrderEntityV2Companion.insert(
              orderRef: orderResponseDto.orderRef!,
              deviceId: Value(orderResponseDto.deviceId),
              startDate: Value(orderResponseDto.startDate),
              endTime: Value(orderResponseDto.endTime),
              timeOfReceipt: Value(orderResponseDto.timeOfReceipt),
              orderType: Value(orderResponseDto.orderType),
              orderSource: Value(orderResponseDto.orderSource),
              status: Value(orderResponseDto.status),
              shiftId: Value(orderResponseDto.shiftId),
              tillId: Value(orderResponseDto.tillId),
              tableId: Value(orderResponseDto.tableId),
              tableCaption: Value(orderResponseDto.tableCaption),
              callName: Value(orderResponseDto.callName),
              callNumber: Value(orderResponseDto.callNumber),
              msgCancel: Value(orderResponseDto.msgCancel),
              kitchenNote: Value(orderResponseDto.kitchenNote),
              parentOrderId: Value(orderResponseDto.parentOrderId),
              checksum: Value(orderResponseDto.checksum),
              masterChecksum: Value(orderResponseDto.masterChecksum),
              serverChecksum: Value(orderResponseDto.serverChecksum),
              priceIncludeTax: Value(orderResponseDto.priceIncludeTax),
              customerId: Value(orderResponseDto.customerId),
              addressId: Value(orderResponseDto.addressId),
              promotionId: Value(orderResponseDto.promotionId),
              createdOn: Value(orderResponseDto.createdOn),
              createdBy: Value(orderResponseDto.createdBy),
              lastModifiedOn: Value(orderResponseDto.lastModifiedOn),
              lastModifiedBy: Value(orderResponseDto.lastModifiedBy),
              openedOn: Value(orderResponseDto.openedOn),
              openedBy: Value(orderResponseDto.openedBy),
              totalPrice: orderResponseDto.totalPrice,
              discountAmount: Value(orderResponseDto.discountAmount),
              netTotalPrice: orderResponseDto.netTotalPrice,
              chargeAmount: Value(orderResponseDto.chargeAmount),
              taxableAmount: Value(orderResponseDto.taxableAmount),
              taxAmount: Value(orderResponseDto.taxAmount),
              finalAmount: orderResponseDto.finalAmount,
              paidAmount: Value(orderResponseDto.paidAmount),
              dueAmount: Value(orderResponseDto.dueAmount),
              changeAmount: Value(orderResponseDto.changeAmount),
              prePaymentPrintCount:
                  Value(orderResponseDto.prePaymentPrintCount),
              postPaymentPrintCount:
                  Value(orderResponseDto.postPaymentPrintCount),
              printState: Value(orderResponseDto.printState),
              firstPrintedAt: Value(orderResponseDto.firstPrintedAt),
              lastPrintedAt: Value(orderResponseDto.lastPrintedAt),
              lastPrintedBy: Value(orderResponseDto.lastPrintedBy),
              isLocked: Value(orderResponseDto.isLocked),
              lockedAt: Value(orderResponseDto.lockedAt),
              unprintedAt: Value(orderResponseDto.unprintedAt),
              unprintedBy: Value(orderResponseDto.unprintedBy),
              invoiceNumber: Value(orderResponseDto.invoiceNumber),
              invoiceUUID: Value(orderResponseDto.invoiceUUID),
              invoiceCounterValue: Value(orderResponseDto.invoiceCounterValue),
              invoiceHash: Value(orderResponseDto.invoiceHash),
              previousInvoiceHash: Value(orderResponseDto.previousInvoiceHash),
              promotionDiscountAmount:
                  Value(orderResponseDto.promotionDiscountAmount),
              promotionJson: Value(orderResponseDto.promotion),
            ));

        if (orderResponseDto.products != null) {
          for (var product in orderResponseDto.products!) {
            await db
                .into(db.orderProductEntityV2)
                .insert(OrderProductEntityV2Companion.insert(
                  orderRef: Value(orderResponseDto.orderRef),
                  productRef: Value(product.productRef),
                  tableRowIndex: product.tableRowIndex,
                  name: product.name,
                  productId: product.productId,
                  unitId: product.unitId,
                  quantity: product.quantity,
                  freeQuantity: Value(product.freeQuantity),
                  unitPrice: product.unitPrice,
                  totalPrice: product.totalPrice,
                  discountAmount: Value(product.discountAmount),
                  discountPercentage: Value(product.discountPercentage),
                  netUnitPrice: product.netUnitPrice,
                  netTotalPrice: product.netTotalPrice,
                  netUnitPriceExcludeTax: Value(product.netUnitPriceExcludeTax),
                  netTotalPriceExcludeTax:
                      Value(product.netTotalPriceExcludeTax),
                  orderDiscountAmount: Value(product.orderDiscountAmount),
                  taxableAmount: Value(product.taxableAmount),
                  taxAmount: Value(product.taxAmount),
                  finalAmount: product.finalAmount,
                  roundingDecimalAmount: Value(product.roundingDecimalAmount),
                  notes: Value(product.notes),
                  departmentId: Value(product.departmentId),
                  categoryId: Value(product.categoryId),
                ));

            if (product.productUnitPrice != null) {
              await db
                  .into(db.orderProductUnitPriceV2)
                  .insert(OrderProductUnitPriceV2Companion.insert(
                    orderRef: Value(orderResponseDto.orderRef),
                    productRef: Value(product.productRef),
                    unitPrice: Value(product.productUnitPrice!.unitPrice),
                    description: Value(product.productUnitPrice!.description),
                    unitId: Value(product.productUnitPrice!.unitId),
                    productUnitId:
                        Value(product.productUnitPrice!.productUnitId),
                    productUnitPriceListId:
                        Value(product.productUnitPrice!.productUnitPriceListId),
                    productUnitPriceListSlapId: Value(
                        product.productUnitPrice!.productUnitPriceListSlapId),
                  ));
            }

            if (product.tieredPricing != null) {
              await db
                  .into(db.orderProductTieredPricingV2)
                  .insert(OrderProductTieredPricingV2Companion.insert(
                    orderRef: Value(orderResponseDto.orderRef),
                    productRef: Value(product.productRef),
                    tieredPricingId: Value(product.tieredPricing!.id),
                    name: Value(product.tieredPricing!.name),
                    unitPrice: Value(product.tieredPricing!.unitPrice),
                    netUnitPrice: Value(product.tieredPricing!.netUnitPrice),
                  ));
            }

            if (product.timeEvent != null) {
              await db
                  .into(db.orderProductTimeEventV2)
                  .insert(OrderProductTimeEventV2Companion(
                    orderRef: Value(orderResponseDto.orderRef),
                    productRef: Value(product.productRef),
                    timeEventId: Value(product.timeEvent!.id ?? ''),
                    name: Value(product.timeEvent!.name),
                    unitPrice: Value(product.timeEvent!.unitPrice),
                    netUnitPrice: Value(product.timeEvent!.netUnitPrice),
                  ));
            }

            if (product.discount != null) {
              await db
                  .into(db.orderProductDiscountV2)
                  .insert(OrderProductDiscountV2Companion.insert(
                    orderRef: Value(orderResponseDto.orderRef),
                    productRef: Value(product.productRef),
                    discountId: Value(product.discount!.id),
                    name: Value(product.discount!.name),
                    fName: Value(product.discount!.fName),
                    discountAmount: Value(product.discount!.discountAmount),
                    discountPercentage:
                        Value(product.discount!.discountPercentage),
                  ));
            }

            if (product.promotionInfo != null) {
              await db
                  .into(db.orderProductPromotionInfoV2)
                  .insert(OrderProductPromotionInfoV2Companion.insert(
                    orderRef: Value(orderResponseDto.orderRef),
                    productRef: Value(product.productRef),
                    notAppliesQuantity:
                        Value(product.promotionInfo!.notAppliesQuantity),
                    appliesAsPurchaseQuantity:
                        Value(product.promotionInfo!.appliesAsPurchaseQuantity),
                    appliesAsDiscountQuantity:
                        Value(product.promotionInfo!.appliesAsDiscountQuantity),
                    promotionDiscountAmount:
                        Value(product.promotionInfo!.promotionDiscountAmount),
                    promotionDiscountPercentage: Value(
                        product.promotionInfo!.promotionDiscountPercentage),
                    promotionsJson: Value(product.promotionInfo!.promotions),
                  ));
            }

            if (product.charges != null && product.charges!.isNotEmpty) {
              for (var charge in product.charges!) {
                await db
                    .into(db.orderProductChargeV2)
                    .insert(OrderProductChargeV2Companion.insert(
                      orderRef: Value(orderResponseDto.orderRef),
                      productRef: Value(product.productRef),
                      chargeId: Value(charge.chargeId?.value),
                      name: Value(charge.name),
                      amount: Value(charge.chargeAmount),
                      percentage: Value(charge.percentage),
                    ));
              }
            }

            if (product.taxInfo != null) {
              await db
                  .into(db.orderProductTaxInfoV2)
                  .insert(OrderProductTaxInfoV2Companion.insert(
                    orderRef: Value(orderResponseDto.orderRef),
                    productRef: Value(product.productRef),
                    taxGroupId: Value(product.taxInfo!.taxGroupId),
                    taxAmount: Value(product.taxInfo!.taxAmount),
                    taxableAmount: Value(product.taxInfo!.taxableAmount),
                    taxPercentage: Value(product.taxInfo!.taxPercentage),
                  ));

              if (product.taxInfo!.appliesTaxTypes != null) {
                for (var taxType in product.taxInfo!.appliesTaxTypes!) {
                  await db
                      .into(db.orderProductTaxTypeV2)
                      .insert(OrderProductTaxTypeV2Companion.insert(
                        orderRef: Value(orderResponseDto.orderRef),
                        productRef: Value(product.productRef),
                        taxTypeId: Value(taxType.id.value),
                        taxTypeName: Value(taxType.name),
                        taxAmount: Value(taxType.amount),
                        taxPercentage: Value(taxType.percent),
                        taxableAmount: taxType.taxableAmount,
                        taxAccount: Value(taxType.taxAccount),
                        taxCode: Value(taxType.taxCode),
                        isZeroTax: Value(taxType.zeroTax),
                      ));
                }
              }
            }

            if (product.appliedModifiers != null &&
                product.appliedModifiers!.isNotEmpty) {
              for (var modifier in product.appliedModifiers!) {
                await db
                    .into(db.orderProductModifierV2)
                    .insert(OrderProductModifierV2Companion.insert(
                      orderRef: Value(orderResponseDto.orderRef),
                      productRef: Value(product.productRef),
                      modifierId: Value(modifier.modifierId),
                      name: Value(modifier.name),
                      fName: Value(modifier.fName),
                      discountAmount: Value(modifier.discountAmount),
                      discountPercentage: Value(modifier.discountPercentage),
                      netUnitPrice: Value(modifier.netUnitPrice),
                      netTotalPrice: Value(modifier.netTotalPrice),
                      netUnitPriceExcludeTax:
                          Value(modifier.netUnitPriceExcludeTax),
                      netTotalPriceExcludeTax:
                          Value(modifier.netTotalPriceExcludeTax),
                      orderDiscountAmount: Value(modifier.orderDiscountAmount),
                      taxableAmount: Value(modifier.taxableAmount),
                      taxAmount: Value(modifier.taxAmount),
                      finalAmount: Value(modifier.finalAmount),
                    ));

                if (modifier.options.isNotEmpty) {
                  for (var option in modifier.options) {
                    await db
                        .into(db.orderProductModifierOptionV2)
                        .insert(OrderProductModifierOptionV2Companion(
                          orderRef: Value(orderResponseDto.orderRef),
                          productRef: Value(product.productRef),
                          modifierId: Value(modifier.modifierId),
                          optionId: Value(option.optionId),
                          name: Value(option.name),
                          fName: Value(option.fName),
                          quantity: Value(option.quantity),
                          freeQuantity: Value(option.freeQuantity),
                          unitPrice: Value(option.unitPrice),
                          totalPrice: Value(option.totalPrice),
                          netUnitPrice: Value(option.netUnitPrice),
                          netTotalPrice: Value(option.netTotalPrice),
                          finalAmount: Value(option.finalAmount),
                          discountAmount: Value(option.discountAmount),
                          discountPercentage: Value(option.discountPercentage),
                          netUnitPriceExcludeTax:
                              Value(option.netUnitPriceExcludeTax),
                          netTotalPriceExcludeTax:
                              Value(option.netTotalPriceExcludeTax),
                          orderDiscountAmount:
                              Value(option.orderDiscountAmount),
                          orderDiscountPercentage:
                              Value(option.orderDiscountPercentage),
                          notes: Value(option.notes),
                        ));
                  }
                }
              }
            }
          }
        }

        if (orderResponseDto.discount != null) {
          await db
              .into(db.orderDiscountV2)
              .insert(OrderDiscountV2Companion.insert(
                orderRef: Value(orderResponseDto.orderRef),
                discountId: Value(orderResponseDto.discount!.id),
                name: Value(orderResponseDto.discount!.name),
                fName: Value(orderResponseDto.discount!.fName),
                discountAmount:
                    Value(orderResponseDto.discount!.discountAmount),
                discountPercentage:
                    Value(orderResponseDto.discount!.discountPercentage),
              ));
        }

        if (orderResponseDto.promotion != null) {
          await db
              .into(db.orderPromotionAppliesV2)
              .insert(OrderPromotionAppliesV2Companion.insert(
                orderRef: Value(orderResponseDto.orderRef),
                promotionId: Value(orderResponseDto.promotion!.id),
                name: Value(orderResponseDto.promotion!.name),
                discountAmount:
                    Value(orderResponseDto.promotion!.discountAmount),
                discountPercentage:
                    Value(orderResponseDto.promotion!.discountPercentage),
              ));
        }

        if (orderResponseDto.giftCard != null) {
          await db
              .into(db.orderPromotionGiftCardV2)
              .insert(OrderPromotionGiftCardV2Companion.insert(
                orderRef: Value(orderResponseDto.orderRef),
                name: Value(orderResponseDto.giftCard!.name),
                fName: Value(orderResponseDto.giftCard!.fName),
                barcode: Value(orderResponseDto.giftCard!.barcode),
                reference: Value(orderResponseDto.giftCard!.reference),
                price: Value(orderResponseDto.giftCard!.price),
              ));
        }

        if (orderResponseDto.charges != null) {
          for (var charge in orderResponseDto.charges!) {
            await db
                .into(db.orderChargeV2)
                .insert(OrderChargeV2Companion.insert(
                  orderRef: Value(orderResponseDto.orderRef),
                  chargeId: Value(charge.chargeId?.value),
                  name: Value(charge.name),
                  chargeAmount: Value(charge.chargeAmount),
                  percentage: Value(charge.percentage),
                ));
          }
        }

        if (orderResponseDto.chargesForTotals != null) {
          for (var chargeTotal in orderResponseDto.chargesForTotals!) {
            await db
                .into(db.orderChargeForTotalV2)
                .insert(OrderChargeForTotalV2Companion.insert(
                  orderRef: Value(orderResponseDto.orderRef),
                  chargeId: Value(chargeTotal.id),
                  name: Value(chargeTotal.name),
                  amount: Value(chargeTotal.amount),
                  taxAmount: Value(chargeTotal.taxAmount),
                ));
          }
        }

        if (orderResponseDto.taxInfo != null) {
          for (var tax in orderResponseDto.taxInfo!) {
            await db
                .into(db.orderTaxTypeV2)
                .insert(OrderTaxTypeV2Companion.insert(
                  orderRef: orderResponseDto.orderRef!,
                  taxTypeId: Value(tax.type),
                  taxTypeName: Value(tax.name),
                  amount: Value(tax.amount),
                ));
          }
        }

        if (orderResponseDto.payments != null) {
          for (var payment in orderResponseDto.payments!) {
            await saveOrderPayments(payment: payment);
          }
        }

        // Add to Sync Queue
        await db.into(db.syncQueueEntity).insert(
              SyncQueueEntityCompanion.insert(
                entity: 'order_v2_entity',
                entityId: orderResponseDto.orderRef!,
                process: 'CreateOrUpdate',
                data: orderResponseDto.toJson(),
                synced: const Value(false),
                createdAt: DateTime.now(),
              ),
              mode: InsertMode.insertOrReplace,
            );
      });
      return true;
    } catch (e) {
      developer.log('Error saving order: $e', name: 'BaseOrderDriftV2');
      return false;
    }
  }

  Future<void> _deleteOrderRelatedData(String orderRef) async {
    await (db.delete(db.orderProductEntityV2)
          ..where((t) => t.orderRef.equals(orderRef)))
        .go();
    await (db.delete(db.orderProductUnitPriceV2)
          ..where((t) => t.orderRef.equals(orderRef)))
        .go();
    await (db.delete(db.orderProductTieredPricingV2)
          ..where((t) => t.orderRef.equals(orderRef)))
        .go();
    await (db.delete(db.orderProductTimeEventV2)
          ..where((t) => t.orderRef.equals(orderRef)))
        .go();
    await (db.delete(db.orderProductDiscountV2)
          ..where((t) => t.orderRef.equals(orderRef)))
        .go();
    await (db.delete(db.orderProductPromotionInfoV2)
          ..where((t) => t.orderRef.equals(orderRef)))
        .go();
    await (db.delete(db.orderProductChargeV2)
          ..where((t) => t.orderRef.equals(orderRef)))
        .go();
    await (db.delete(db.orderProductTaxInfoV2)
          ..where((t) => t.orderRef.equals(orderRef)))
        .go();
    await (db.delete(db.orderProductTaxTypeV2)
          ..where((t) => t.orderRef.equals(orderRef)))
        .go();
    await (db.delete(db.orderDiscountV2)
          ..where((t) => t.orderRef.equals(orderRef)))
        .go();
    await (db.delete(db.orderPromotionAppliesV2)
          ..where((t) => t.orderRef.equals(orderRef)))
        .go();
    await (db.delete(db.orderPromotionGiftCardV2)
          ..where((t) => t.orderRef.equals(orderRef)))
        .go();
    await (db.delete(db.orderChargeV2)
          ..where((t) => t.orderRef.equals(orderRef)))
        .go();
    await (db.delete(db.orderChargeForTotalV2)
          ..where((t) => t.orderRef.equals(orderRef)))
        .go();
    await (db.delete(db.orderTaxTypeV2)
          ..where((t) => t.orderRef.equals(orderRef)))
        .go();
    await (db.delete(db.orderProductModifierV2)
          ..where((t) => t.orderRef.equals(orderRef)))
        .go();
    await (db.delete(db.orderProductModifierOptionV2)
          ..where((t) => t.orderRef.equals(orderRef)))
        .go();
    await (db.delete(db.orderPaymentV2)
          ..where((t) => t.orderRef.equals(orderRef)))
        .go();
    await (db.delete(db.orderPaymentDetailV2)
          ..where((t) => t.orderRef.equals(orderRef)))
        .go();
  }

  @override
  Future<OrdersStatistics> getOrdersStatistics() async {
    var data = await db.select(db.orderEntityV2).get();
    return OrdersStatistics(
      numberOrders: data.length,
      numberOrdersActive: data
          .where((element) => element.status == OrderStatusC.active.toKey())
          .length,
      numberOrdersDone: data
          .where((element) => element.status == OrderStatusC.done.toKey())
          .length,
      numberOrdersCansel: data
          .where((element) => element.status == OrderStatusC.declined.toKey())
          .length,
      numberOrdersRetruen: data
          .where((element) => element.status == OrderStatusC.returned.toKey())
          .length,
      numberOrdersDraft: data
          .where((element) => element.status == OrderStatusC.draft.toKey())
          .length,
    );
  }

  @override
  Future<List<OrderResponseDto>?> getNotSyncOrders({int? bualkNumber}) async {
    try {
      var data = await db.customSelect(
        "SELECT * From ${db.orderEntityV2.actualTableName} WHERE checksum <> master_checksum or master_checksum is NULL ${bualkNumber != null ? " LIMIT $bualkNumber" : ""} ",
        readsFrom: {db.orderEntityV2},
      ).get();

      final List<OrderResponseDto> notSyncOrders = [];
      for (var row in data) {
        final orderData = db.orderEntityV2.map(row.data);
        final orderDto = await getOrderByRef(orderRef: orderData.orderRef);
        if (orderDto != null) {
          notSyncOrders.add(orderDto);
        }
      }

      developer.log("orders not sync count : ${notSyncOrders.length}",
          name: 'BaseOrderDriftV2');
      return notSyncOrders;
    } catch (e) {
      throw e.toString();
    }
  }

  @override
  Future<void> saveOrderSync({required List<String> ordersRefs}) async {
    if (ordersRefs.isEmpty) return;
    String query =
        "SELECT * FROM ${db.orderEntityV2.actualTableName} WHERE order_ref IN (${ordersRefs.map((e) => "'$e'").join(',')})";
    var data = await db.customSelect(query).get();
    var d = data.map((e) => e.data).toList();
    List<OrderEntityV2Data> ordersEntityData =
        d.map((e) => db.orderEntityV2.map(e)).toList();

    for (OrderEntityV2Data order in ordersEntityData) {
      await db.customUpdate(
          "UPDATE ${db.orderEntityV2.actualTableName} SET master_checksum = '${order.checksum}' WHERE order_ref = '${order.orderRef}'");
    }
  }

  @override
  Future<int> countNotSyncOrders() async {
    try {
      var data = await db.customSelect(
        "SELECT count(*) as 'count' From ${db.orderEntityV2.actualTableName} WHERE checksum <> master_checksum or master_checksum is NULL ",
        readsFrom: {db.orderEntityV2},
      ).get();
      return data.firstOrNull?.data['count'] ?? 0;
    } catch (e) {
      throw e.toString();
    }
  }

  @override
  Future<void> deleteDoneOrdersAndDoneSync() async {
    var query =
        "delete From ${db.orderEntityV2.actualTableName} WHERE checksum = master_checksum AND status not in (${[
      OrderStatusC.draft.toKey(),
      OrderStatusC.active.toKey(),
    ].join(",")})";
    int rowCount = await db.customUpdate(query);
    developer.log("deleteDoneOrdersAndDoneSync rowCount: $rowCount",
        name: 'BaseOrderDriftV2');
  }
}
