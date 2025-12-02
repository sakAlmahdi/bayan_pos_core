import 'package:bayan_pos_core/data/provider/drift/sync_queue_drfit_provider.dart';
import 'package:drift/drift.dart';
import '../../data/entity/drift_db.dart';

extension BaseDriftDatabaseEx<T extends Table, D> on InsertStatement {
  insertWithSyncQueue(
    Insertable<D> entity, {
    required TableInfo table,
    required String entityId,
    required MyDatabase db,
    required Map<String, dynamic> data,
    InsertMode? mode,
  }) async {
    SyncQueueDriftProvider repoSyncLog = SyncQueueDriftProvider(db: db);
    var i = await insert(
      entity,
      mode: mode,
    );

    var indexLog = await repoSyncLog.addToQueue(
      entityId: entityId,
      entityName: table.actualTableName,
      data: data,
    );
    print(
        "Inserted with index: $i, Log Index: $indexLog for entity: $entityId in table: ${table.actualTableName}");
    return i;
  }
}
