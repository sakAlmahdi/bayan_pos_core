import 'package:bayan_pos_core/core/contract/sync_handler.dart';

class OrderSyncHandler extends SyncHandler {
  @override
  String get entityName => 'order_v2_entity';
}

class ShiftSyncHandler extends SyncHandler {
  @override
  String get entityName => 'shift_entity';
}

class TillSyncHandler extends SyncHandler {
  @override
  String get entityName => 'till_entity';
}

class FundSyncHandler extends SyncHandler {
  @override
  String get entityName => 'drawer_operation_entity';
}

class StockSyncHandler extends SyncHandler {
  @override
  String get entityName => 'product_qty_entity';
}
