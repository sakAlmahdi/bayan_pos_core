import 'package:bayan_pos_core/data/model/order/order.dart';
import 'package:bayan_pos_core/data/model/order_dashbord/order_statistics.dart';

abstract class OrderRepo {
  Future<OrdersStatistics> getOrdersStatistics();
  Future<String?> createOrderInvoiceNumber({required OrderC order});
  Future<OrderC?> lockOrderOnMaster({String? orderRef});
  Future<OrderC?> getOrdersByTillId({String? tillId});
  Future<bool?> lockOrderOnLocal({required OrderC order});
}
