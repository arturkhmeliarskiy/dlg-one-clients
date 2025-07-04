import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import 'package:storage/storage.dart';

/// Протокол выполнения логики миграции [KeyValueStore] при переходе на версию [schemeVersion]
abstract class KeyValueStoreMigrationLogic {
  int get schemeVersion;

  Future<void> migrate();
}

typedef CreateStoreFunc = Future<void> Function(int createdVersion);

/// Сущность для миграции хранилищ [KeyValueStore]
///
/// При необходимости новой миграции нужно увеличить версию [schemaVersion] (N)
/// Реализовать новую миграцию на версию N - PrefsMigrationN, и добавить ее в перечень [_migrations]
class KeyValueStoreMigrator {
  KeyValueStoreMigrator({
    required this.keyValueStore,
    required this.migrations,
    required this.schemaVersion,
    required this.schemaVersionKey,
    this.observer,
    this.onCreateFunc,
  });

  @protected
  final MigrationObserver? observer;

  @protected
  final KeyValueStore keyValueStore;

  /// Набор миграций
  @protected
  final Set<KeyValueStoreMigrationLogic> migrations;

  @protected
  final CreateStoreFunc? onCreateFunc;

  /// Текущая версия SharedPrefs
  @protected
  final int schemaVersion;

  /// Ключ для хранения версиии схемы хранилища
  @protected
  final TypeStoreKey<int> schemaVersionKey;

  Future<void> migrate() async {
    final currentVersion = await _readCurrentVersion();

    if (currentVersion == null) {
      // Если текущая версия SharedPrefs еще не проинициализированна, то БД необходимо создать с текущей версией
      await onCreate(schemaVersion);
      await _writeNewVersion(schemaVersion);

      return;
    }
    if (currentVersion != schemaVersion) {
      // Если версия SharedPrefs не совпадает с текущей версией, то выполняем миграцию
      await onUpgrade(currentVersion, schemaVersion);
      await _writeNewVersion(schemaVersion);
    }
  }

  /// Метод создания key-value store
  Future<void> onCreate(int createdVersion) async {
    await onCreateFunc?.call(createdVersion);
    await observer?.onCreate(createdVersion);
  }

  /// Метод миграции с версии [fromVersion] на [toVersion]
  /// Метод последовательно выполняет миграцию через набор [_migrations]
  Future<void> onUpgrade(int fromVersion, int toVersion) async {
    var prefsVersion = fromVersion;
    while (prefsVersion < toVersion) {
      prefsVersion++;
      final migrationLogic = migrations.firstWhereOrNull(
          (migrator) => migrator.schemeVersion == prefsVersion,);
      if (migrationLogic == null) {
        await observer?.onMissedMigration(prefsVersion);
        continue;
      } else {
        await migrationLogic.migrate();
      }
    }

    await observer?.onUpgrade(fromVersion, toVersion);
  }

  Future<int?> _readCurrentVersion() => keyValueStore.read(schemaVersionKey);

  Future<void> _writeNewVersion(int newVersion) =>
      keyValueStore.write(schemaVersionKey, newVersion);
}
