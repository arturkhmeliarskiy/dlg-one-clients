import 'package:storage/storage.dart';

class KeyValueStoreMigratorImpl extends KeyValueStoreMigrator {
  KeyValueStoreMigratorImpl({
    required super.keyValueStore,
    required MigrationObserverLogger super.observer,
  }) : super(
          migrations: {},
          schemaVersion: 1,
          schemaVersionKey: StoreKeys.prefsVersionKey,
        );
}
