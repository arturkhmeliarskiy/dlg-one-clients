import 'package:logger/logger.dart';
import 'package:meta/meta.dart';
import 'package:storage/storage.dart';

/// Реализация обозревателя миграций, логирующего информацию о миграциях
class MigrationObserverLogger implements MigrationObserver {
  MigrationObserverLogger(this.logger);

  @protected
  final Logger logger;

  @override
  Future<void> onCreate(int createdVersion) async {
    logger.d('SharedPrefs onCreate $createdVersion');
  }

  @override
  Future<void> onMissedMigration(int version) async {
    logger.e('SharedPrefs onMissedMigration  $version');
  }

  @override
  Future<void> onUpgrade(int fromVersion, int toVersion) async {
    logger.e('SharedPrefs onUpgrade $fromVersion -> $toVersion');
  }
}
