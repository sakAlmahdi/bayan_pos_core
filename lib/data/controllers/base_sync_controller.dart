import 'dart:async';
import 'package:bayan_pos_core/data/entity/drift_db.dart';
import 'package:bayan_pos_core/data/enum/sync_enums.dart';
import 'package:bayan_pos_core/data/provider/sync/sync_manager.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class BaseSyncController extends GetxController {
  final SyncManager _syncManager = Get.find<SyncManager>();
  final _storage = GetStorage();

  // Observable UI States
  final syncStatus = SyncStatus.idle.obs;
  final progress = 0.0.obs;
  final lastSyncTime = Rxn<DateTime>();
  final pendingCount = 0.obs;
  final entityCounts = <String, int>{}.obs;
  final unsyncedDetails = <SyncQueueEntityData>[].obs;
  final searchQuery = "".obs;
  final isFetchingDetails = false.obs;
  final errorMessage = "".obs;

  // Configuration Settings (States with persistence)
  final autoSyncEnabled = true.obs;
  final syncIntervalSeconds = 60.obs; // Default 1 minute
  final serverUrl = "".obs;
  final retryOnFailure = true.obs;

  // Connectivity & Role Status
  final deviceRole = DeviceRole.standalone.obs;
  final isLocalServerOnline = false.obs;
  final isCloudOnline = true.obs;

  static const List<String> _supportedEntities = [
    'order_v2_entity',
    'shift_entity',
    'till_entity',
    'drawer_operation_entity',
    'product_qty_entity'
  ];

  List<SyncQueueEntityData> get filteredDetails {
    if (searchQuery.value.isEmpty) return unsyncedDetails;
    return unsyncedDetails.where((item) {
      final data = item.data;
      final match = (item.entityId.contains(searchQuery.value)) ||
          (data['invoiceNumber']?.toString().contains(searchQuery.value) ??
              false) ||
          (data['orderRef']?.toString().contains(searchQuery.value) ?? false);
      return match;
    }).toList();
  }

  late Timer _refreshTimer;
  Timer? _autoSyncTimer;

  @override
  void onInit() {
    super.onInit();
    _loadSettings();
    _initStatus();
    _refreshData();
    
    // Periodically refresh counters every 5 seconds
    _refreshTimer = Timer.periodic(const Duration(seconds: 5), (_) => _refreshData());
    
    // Set up auto-sync timer
    _setupAutoSync();
  }

  void _loadSettings() {
    autoSyncEnabled.value = _storage.read('sync_auto_enabled') ?? true;
    syncIntervalSeconds.value = _storage.read('sync_interval_sec') ?? 60;
    serverUrl.value = _storage.read('sync_server_url') ?? "";
    retryOnFailure.value = _storage.read('sync_retry_failure') ?? true;
  }

  void updateSettings({
    bool? autoEnabled,
    int? interval,
    String? url,
    bool? retry,
  }) {
    if (autoEnabled != null) {
      autoSyncEnabled.value = autoEnabled;
      _storage.write('sync_auto_enabled', autoEnabled);
    }
    if (interval != null) {
      syncIntervalSeconds.value = interval;
      _storage.write('sync_interval_sec', interval);
    }
    if (url != null) {
      serverUrl.value = url;
      _storage.write('sync_server_url', url);
    }
    if (retry != null) {
      retryOnFailure.value = retry;
      _storage.write('sync_retry_failure', retry);
    }
    
    _setupAutoSync(); // Re-setup timer with new settings
  }

  void _setupAutoSync() {
    _autoSyncTimer?.cancel();
    if (autoSyncEnabled.value && syncIntervalSeconds.value > 0) {
      _autoSyncTimer = Timer.periodic(
        Duration(seconds: syncIntervalSeconds.value),
        (_) => _triggerAutoSync(),
      );
    }
  }

  Future<void> _triggerAutoSync() async {
    // Only auto-sync if idle and has pending items
    if (syncStatus.value == SyncStatus.idle && pendingCount.value > 0) {
      await startFullSync();
    }
  }

  @override
  void onReady() {
    super.onReady();
    _refreshData();
  }

  void _refreshData() {
    _checkConnectivity();
    _updatePendingCount();
  }

  @override
  void onClose() {
    _refreshTimer.cancel();
    _autoSyncTimer?.cancel();
    super.onClose();
  }

  void _initStatus() {
    deviceRole.value = _syncManager.deviceRole;
    _checkConnectivity();
  }

  Future<void> _checkConnectivity() async {
    if (deviceRole.value == DeviceRole.client) {
      isLocalServerOnline.value = _syncManager.isLocalServerOnline?.call() ?? false;
      isCloudOnline.value = true;
    } else {
      isLocalServerOnline.value = false;
      isCloudOnline.value = true; 
    }
  }

  Future<void> _updatePendingCount() async {
    final counts = await _syncManager.getUnsyncedCounts(includedEntities: _supportedEntities);
    entityCounts.value = counts;

    int total = 0;
    counts.forEach((key, value) => total += value);
    pendingCount.value = total;
  }

  Future<void> startFullSync() async {
    if (syncStatus.value == SyncStatus.syncing) return;

    try {
      syncStatus.value = SyncStatus.syncing;
      progress.value = 0.1;

      await _syncManager.processQueue();

      syncStatus.value = SyncStatus.success;
      lastSyncTime.value = DateTime.now();
      progress.value = 1.0;
      await _updatePendingCount();
    } catch (e) {
      syncStatus.value = SyncStatus.failed;
      errorMessage.value = e.toString();
    } finally {
      Future.delayed(const Duration(seconds: 3), () {
        if (syncStatus.value == SyncStatus.success) {
          syncStatus.value = SyncStatus.idle;
          progress.value = 0.0;
        }
      });
    }
  }

  void retryFailed() {
    startFullSync();
  }

  Future<void> fetchDetails(List<String> entities) async {
    isFetchingDetails.value = true;
    try {
      final items = await _syncManager.getUnsyncedItems(entities);
      unsyncedDetails.value = items;
    } catch (e) {
      errorMessage.value = "خطأ في استرجاع التفاصيل: $e";
    } finally {
      isFetchingDetails.value = false;
    }
  }

  Future<void> syncCategory(List<String> entities) async {
    if (syncStatus.value == SyncStatus.syncing) return;

    try {
      syncStatus.value = SyncStatus.syncing;
      await _syncManager.processQueueForEntities(entities);
      syncStatus.value = SyncStatus.success;
      await _updatePendingCount();
      await fetchDetails(entities); 
    } catch (e) {
      syncStatus.value = SyncStatus.failed;
      errorMessage.value = e.toString();
    } finally {
      Future.delayed(const Duration(seconds: 3), () {
        if (syncStatus.value == SyncStatus.success) {
          syncStatus.value = SyncStatus.idle;
          progress.value = 0.0;
        }
      });
    }
  }

  Future<void> syncIndividualItem(
      SyncQueueEntityData item, List<String> entities) async {
    try {
      await _syncManager.syncItems([item]);
      await _updatePendingCount();
      await fetchDetails(entities);
    } catch (e) {
      errorMessage.value = "فشل مزامنة العنصر: $e";
    }
  }
}
