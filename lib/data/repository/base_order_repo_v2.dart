import '../model/new/order/invoice_result_v2.dart';
import '../model/new/order/print_history_dto.dart';
import '../model/new/order/order_response_dto.dart';
import '../model/new/order/payment/order_payment_dto.dart';
import '../model/shift.dart';
import '../model/till/till.dart';
import '../model/order_dashbord/order_statistics.dart';

abstract class BaseOrderRepoV2 {
  Future<InvoiceResultV2> finalizeInvoice(OrderResponseDto order);

  Future<List<OrderPaymentDto>> getOrderPayments({required String orderRef});

  Future<bool> saveOrderPayments({required OrderPaymentDto payment});

  Future<bool> deleteOrderPayment({
    required String orderRef,
    required String paymentId,
  });

  Future<bool> saveMultipleOrderPayments({
    required List<OrderPaymentDto> payments,
  });

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
  });

  Future<bool> updateOrderTable({
    required String orderRef,
    required String? tableId,
    required String? tableCaption,
  });

  Future<OrderResponseDto?> getOrderByRef({required String orderRef});

  Future<List<OrderResponseDto>> getAllOrderForTable();

  Future<List<Shift>> getShifts({List<String>? userIds});

  Future<List<Till>> getTills({List<String>? shiftIds});

  // Print State Management
  Future<bool> updateOrderPrintState({
    required String orderRef,
    required int printState,
    int? printCount,
    DateTime? printedAt,
    String? printedBy,
  });

  Future<bool> unprintOrder({
    required String orderRef,
    required String reason,
    required String unprintedBy,
  });

  Future<List<OrderPrintHistoryDto>> getOrderPrintHistory({
    required String orderRef,
  });

  Future<bool> savePrintHistory({
    required OrderPrintHistoryDto history,
  });

  /// Refactored order saving method using the unified OrderResponseDto
  Future<bool> saveOrder({required OrderResponseDto orderResponseDto});

  Future<OrdersStatistics> getOrdersStatistics();

  Future<List<OrderResponseDto>?> getNotSyncOrders({int? bualkNumber});

  Future<void> saveOrderSync({required List<String> ordersRefs});
  Future<int> countNotSyncOrders();
  Future<void> deleteDoneOrdersAndDoneSync();
}
