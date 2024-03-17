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
      matrixDatabaseName: 'dls_one_matrix_dev.db',
      matrixAppId: 'tech.shvetsov.dls_one_dev',
      matrixClientName: 'MatrixDLSOneDev',
      matrixPusherName: 'DLS One Dev',

      ///
      restApiUrl: 'https://dls.shvetsov.tech',
      matrixServerUrl: 'https://matrix.shvetsov.tech',
      matrixSignalUrl: 'https://dls.shvetsov.tech/_matrix/push/v1/notify',
      sipServerUrl: 'dls.shvetsov.tech',
      socketApiUrl: 'wss://dls.shvetsov.tech:6002/ws',
    ),
  );
}
