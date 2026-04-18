import 'package:bayan_pos_core/data/entity/drift_db.dart';
import 'package:dio/dio.dart';

abstract class SyncTransport {
  Future<bool> push(List<SyncQueueEntityData> items);
}

class CloudSyncTransport extends SyncTransport {
  final Dio dio;
  final String url;
  final String token;

  CloudSyncTransport({
    required this.dio,
    required this.url,
    required this.token,
  });

  @override
  Future<bool> push(List<SyncQueueEntityData> items) async {
    try {
      final response = await dio.post(
        url,
        data: items.map((e) => {
          'entity': e.entity,
          'entityId': e.entityId,
          'process': e.process,
          'data': e.data,
          'createdAt': e.createdAt.toIso8601String(),
        }).toList(),
        options: Options(
          headers: {'Authorization': 'Bearer $token'},
        ),
      );
      return response.statusCode == 200;
    } catch (e) {
      print("Error in CloudSyncTransport: $e");
      return false;
    }
  }
}

abstract class LocalSyncTransport extends SyncTransport {
  // To be implemented by the host app (e.g. via Socket)
}
