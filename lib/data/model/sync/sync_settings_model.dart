import 'package:bayan_pos_core/data/enum/sync_enums.dart';

class SyncSettings {
  final SyncDestination destination;
  bool isEnabled;
  SyncTrigger trigger;
  int intervalSeconds; // For periodic sync
  bool wifiOnly;
  int maxRetries;
  String? authToken; // Special token for local server

  SyncSettings({
    required this.destination,
    this.isEnabled = true,
    this.trigger = SyncTrigger.immediate,
    this.intervalSeconds = 300, // 5 minutes
    this.wifiOnly = false,
    this.maxRetries = 3,
    this.authToken,
  });

  Map<String, dynamic> toJson() => {
        'destination': destination.index,
        'isEnabled': isEnabled,
        'trigger': trigger.index,
        'intervalSeconds': intervalSeconds,
        'wifiOnly': wifiOnly,
        'maxRetries': maxRetries,
        'authToken': authToken,
      };

  factory SyncSettings.fromJson(Map<String, dynamic> json) => SyncSettings(
        destination: SyncDestination.values[json['destination']],
        isEnabled: json['isEnabled'] ?? true,
        trigger: SyncTrigger.values[json['trigger'] ?? 0],
        intervalSeconds: json['intervalSeconds'] ?? 300,
        wifiOnly: json['wifiOnly'] ?? false,
        maxRetries: json['maxRetries'] ?? 3,
        authToken: json['authToken'],
      );
}

class GlobalSyncConfig {
  final DeviceRole deviceRole;
  final SyncSettings cloudSettings;
  final SyncSettings localServerSettings;

  GlobalSyncConfig({
    required this.deviceRole,
    required this.cloudSettings,
    required this.localServerSettings,
  });

  factory GlobalSyncConfig.defaultConfig(DeviceRole role) {
    return GlobalSyncConfig(
      deviceRole: role,
      cloudSettings: SyncSettings(destination: SyncDestination.cloud),
      localServerSettings: SyncSettings(destination: SyncDestination.localServer),
    );
  }
}
