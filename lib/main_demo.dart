import 'package:common/common.dart';
import 'package:dls_one/app/app_environment.dart';
import 'package:dls_one/app/runners/runner.dart';
import 'package:dls_one/utils/utils.dart';
import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

/// Точка запуска основного приложения
void main() {
  DlsPlatform.dlsPlatform = DlsPlatformHelper.getRunningPlatform();
  DlsPlatform.dlsSubPlatform = DlsPlatformHelper.getRunningSubPlatform();
  // Получаем параметры окружения переданные при сборке/запуске проекта
  // Здесь можно вводить необходимые конфигурируемые параметры для различных видов сборок приложения
  const logLevelEnv = String.fromEnvironment('logLevel');
  const debugInstrumentsEnv = bool.fromEnvironment('debugInstruments');

  const buildType = !kReleaseMode || debugInstrumentsEnv
      ? BuildType.debug
      : BuildType.release;
  final appLogLevel = AppLogLevels.getFromString(logLevelEnv);
  final enableLogs = appLogLevel != AppLogLevel.nothing;

  Logger.level = Level.info;

  Runner.run(
    AppEnvironment(
      buildType: buildType,
      debugOptions: DebugOptions(
        debugShowCheckedModeBanner: buildType == BuildType.debug,
      ),
      debugPaintOptions: const DebugPaintOptions(),
      logLevel: appLogLevel ?? AppLogLevel.verbose,
      enableBlocLogs: false,

      /// enableLogs,
      enableRoutingLogs: false,

      /// enableLogs
      enableDioLogs: false,

      /// enableLogs,
      enableEasyLocalizationLogs: false,

      /// настройки матрикса
      matrixDatabaseName: 'dls_one_matrix.db',
      matrixAppId: 'tech.shvetsov.dls_one',
      matrixClientName: 'MatrixDLSOne',
      matrixPusherName: 'DLS One',

      ///
      restApiUrl: 'https://demo-one.dls-one.com',
      matrixServerUrl: 'https://demo-one.dls-one.com',
      matrixSignalUrl: 'https://demo-one.dls-one.com/_matrix/push/v1/notify',
      sipServerUrl: 'demo-one.dls-one.com',
      socketApiUrl: 'wss://demo-one.dls-one.com:6002/ws',
    ),
  );
}
