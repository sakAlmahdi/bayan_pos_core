import '../model/new/order/invoice_result_v2.dart';

abstract class BaseOrderRepoV2 {
  Future<InvoiceResultV2> finalizeInvoice(String orderRef);
}
