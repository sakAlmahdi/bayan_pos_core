import 'package:bayan_pos_core/bayan_pos_core.dart';
import 'package:drift/drift.dart';
import 'package:bayan_pos_core/core/extensions/drift_database_ex.dart';

class BaseDrawerDriftProvider extends BaseDrawerRepo {
  final MyDatabase db;
  BaseDrawerDriftProvider({required this.db});

  @override
  Future<List<DrawerOperation>?> getAllDrawerOperations() async {
    final query = db.select(db.drawerOperationEntity)
      ..orderBy([
        (t) => OrderingTerm(
              expression: t.dateWork,
              mode: OrderingMode.desc,
            )
      ]);
    final list = await query.get();
    return list.map((e) => DrawerOperation.fromJson(e.toJson())).toList();
  }

  @override
  Future<List<ReasonsDrawerOpen>?> getAllDrawerResponse() async {
    // These could be fetched from a static list or another table if needed
    return [];
  }

  @override
  Future<bool?> addOperation(DrawerOperation operation) async {
    try {
      // Use insertWithSyncQueue for the client side (mob-pos) 
      // or standard insert for the server side (serverLite).
      // However, to keep it unified, we can use insertWithSyncQueue 
      // if we are on client, or check if syncQueue exists.
      // For now, let's use the most robust version from mob-pos.
      
      await db.into(db.drawerOperationEntity).insertWithSyncQueue(
            operation.toDrawerOperationData,
            mode: InsertMode.insertOrReplace,
            data: operation.toJson(),
            db: db,
            entityId: operation.referance,
            table: db.drawerOperationEntity,
          );
      return true;
    } catch (e) {
      print("Error in BaseDrawerDriftProvider.addOperation: $e");
      return false;
    }
  }

  @override
  Future<String> getDrawerOperationsCount() async {
    try {
      final count = await db.drawerOperationEntity.count().getSingle();
      return count.toString();
    } catch (e) {
      print("Error in getDrawerOperationsCount: $e");
      return "0";
    }
  }
}
