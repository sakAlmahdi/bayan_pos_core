import 'dart:async';
import 'package:bayan_pos_core/core/contract/sync_handler.dart';
import 'package:bayan_pos_core/data/entity/drift_db.dart';
import 'package:bayan_pos_core/data/enum/sync_enums.dart';
import 'package:bayan_pos_core/data/provider/drift/sync_queue_drfit_provider.dart';
import 'package:bayan_pos_core/data/provider/sync/sync_transport.dart';
import 'package:bayan_pos_core/data/provider/sync/handlers/generic_sync_handlers.dart'
    as handlers;
import 'package:get/get.dart';

class SyncManager extends GetxService {
  final SyncQueueDriftProvider _queueProvider;
  final Map<String, SyncHandler> _handlers = {};

  // Settings for routing
  late DeviceRole deviceRole;

  // Transports
  SyncTransport? localTransport;
  SyncTransport? cloudTransport;

  // To check connectivity to local server
  bool Function()? isLocalServerOnline;

  SyncManager(this._queueProvider);

  void setTransports({
    required DeviceRole role,
    SyncTransport? local,
    SyncTransport? cloud,
    bool Function()? isLocalOnline,
  }) {
    deviceRole = role;
    localTransport = local;
    cloudTransport = cloud;
    isLocalServerOnline = isLocalOnline;
  }

  void registerDefaultHandlers() {
    registerHandler(handlers.OrderSyncHandler());
    registerHandler(handlers.ShiftSyncHandler());
    registerHandler(handlers.TillSyncHandler());
    registerHandler(handlers.FundSyncHandler());
    registerHandler(handlers.StockSyncHandler());
  }

  void registerHandler(SyncHandler handler) {
    _handlers[handler.entityName] = handler;
  }

  /// The main entry point to process the queue with Batching support
  Future<void> processQueue() async {
    final entityNames = _handlers.keys.toList();
    if (entityNames.isEmpty) return;
    await processQueueForEntities(entityNames);
  }

  /// Specialized method to sync only specific entities
  Future<void> processQueueForEntities(List<String> entityNames) async {
    final unsyncedItems =
        await _queueProvider.getUnsyncedItems(includedEntities: entityNames);
    if (unsyncedItems.isEmpty) return;

    await syncItems(unsyncedItems);
  }

  /// Core logic to push a list of items to the appropriate transport
  Future<void> syncItems(List<SyncQueueEntityData> items) async {
    if (items.isEmpty) return;

    // 1. Determine destination and check connectivity
    final destination = _determineDestination();

    if (destination == SyncDestination.localServer) {
      final isOnline = isLocalServerOnline?.call() ?? false;
      if (!isOnline) return; // Skip silently if local server is known to be offline
    }

    final transport = (destination == SyncDestination.localServer)
        ? localTransport
        : cloudTransport;

    if (transport == null) {
      print(
          "No transport available for destination: ${destination?.name ?? 'Unknown'}");
      return;
    }

    try {
      print(
          "Syncing ${items.length} items to ${destination?.name ?? ''}...");

      // Push batch
      bool success = await transport.push(items);

      if (success) {
        for (var item in items) {
          await _queueProvider.markAsSynced(
            id: item.entityId,
            checksum: 'SYNCED_BATCH',
            entityName: item.entity,
          );
        }
      }
    } catch (e) {
      print("Error in syncItems: $e");
      rethrow;
    }
  }

  Future<Map<String, int>> getUnsyncedCounts({List<String>? includedEntities}) async {
    return await _queueProvider.getUnsyncedCountsByEntity(includedEntities: includedEntities);
  }

  Future<List<SyncQueueEntityData>> getUnsyncedItems(List<String> entities) async {
    return await _queueProvider.getUnsyncedItemsByEntities(entities);
  }

  SyncDestination? _determineDestination() {
    if (deviceRole == DeviceRole.client) {
      // In a "Strict Hierarchy", Clients ONLY sync to the Local Server.
      // If the Local Server is offline, we wait; syncing to the Cloud directly
      // would break the centralized tax invoicing chain.
      return SyncDestination.localServer;
    }

    // Master, Server, or Standalone syncs directly to the Cloud.
    return SyncDestination.cloud;
  }

  /// Specialized method for immediate/direct sync
  Future<void> handleDirectSyncSuccess(String entity, String entityId) async {
    await _queueProvider.markAsSynced(
      id: entityId,
      checksum: 'DIRECT_SYNC',
      entityName: entity,
    );
  }
}
