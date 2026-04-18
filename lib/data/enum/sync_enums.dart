enum SyncStatus {
  idle,
  pending,
  syncing,
  success,
  failed,
  processingDirect, // For Tax Invoices handled immediately
}

enum SyncProcessType {
  create,
  update,
  delete,
}

enum DeviceRole {
  standalone,
  client,
  server,
}

enum SyncDestination {
  cloud,
  localServer,
}

enum SyncTrigger {
  immediate,
  periodic,
  scheduled,
  manual,
}
