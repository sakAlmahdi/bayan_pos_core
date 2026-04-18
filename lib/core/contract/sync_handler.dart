import 'package:bayan_pos_core/data/entity/drift_db.dart';

abstract class SyncHandler {
  /// The entity name this handler processes (e.g., 'order_v2_entity')
  String get entityName;

  /// Prepare item for batch push if needed (default returns data as is)
  Future<Map<String, dynamic>> prepare(SyncQueueEntityData item) async {
    return item.data;
  }

  /// Pushes a single item (Fallback for non-unified sync)
  Future<bool> push(SyncQueueEntityData item) async {
    return false;
  }

  /// Delta Sync (Pulling data from the source)
  Future<void> pull() async {}
}
