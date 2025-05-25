import 'package:bayan_pos_core/data/entity/drift_db.dart';
import 'package:drift/drift.dart';

class SyncQueueDriftProvider {
  final MyDatabase db;
  SyncQueueDriftProvider({required this.db});
  bool isSubCasher = true;

  Future<List<SyncQueueEntityData>> getUnsyncedItems() async {
    final rows = db.select(db.syncQueueEntity)
      ..where((t) => t.synced.equals(false));
    final result = await rows.get();
    return result;
  }

  Future<void> markAsSynced(
      {required String id,
      required String checksum,
      required String entityName}) async {
    await (db.update(db.syncQueueEntity)..where((t) => t.entityId.equals(id)))
        .write(
      SyncQueueEntityCompanion(
        checksumLocal: Value(checksum),
        synced: const Value(true),
      ),
    );
    await (db.update(db.syncQueueEntity)
          ..where((t) => t.entityId.equals(id) & t.entity.equals(entityName)))
        .write(const SyncQueueEntityCompanion(synced: Value(true)));
  }

  Future<int> addToQueue({
    required String entityId,
    required String entityName,
  }) async {
    int id = await db.into(db.syncQueueEntity).insert(
          SyncQueueEntityCompanion(
            entity: Value(entityName),
            synced: const Value(false),
            entityId: Value(entityId),
            process: Value(''),
            createdAt: Value(DateTime.now().toUtc()),
          ),
          mode: InsertMode.insertOrReplace,
        );

    return id;
  }
}
