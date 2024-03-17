// ignore_for_file: cascade_invocations

import 'package:common/common.dart';
import 'package:dls_matrix_client/dls_matrix_client.dart';
import 'package:dls_one/app/app_environment.dart';
import 'package:dls_one/core/core.dart';
import 'package:flutter/foundation.dart' show kDebugMode;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:rest_api/rest_api.dart';
import 'package:sip_repository/sip_repository.dart';
import 'package:storage/storage.dart';
import 'package:web_socket_client/web_socket_client.dart' as ws;

class AppDI {
  AppDI._();

  static final _repositories = <Object>[];

  static Future<void> init(AppEnvironment appEnvironment) async {
    await _buildRepositories(appEnvironment);
    final logger = findRepository<DlsLogger>();
    logger.infoPrinter('[AppDI] repositories count=${_repositories.length}');
  }

  static T findRepository<T>() {
    return _repositories.firstWhere((e) => e is T) as T;
  }

  static List<RepositoryProvider<dynamic>> buildRepositoryProviders() {
    return [
      RepositoryProvider<DlsLogger>.value(
        value: findRepository<DlsLogger>(),
      ),
      RepositoryProvider<DlsMatrixClient>.value(
        value: findRepository<DlsMatrixClient>(),
      ),
      RepositoryProvider<KeyValueStore>.value(
        value: findRepository<SharedPrefsStore>(),
      ),
      RepositoryProvider<SecureTokenStorage>.value(
        value: findRepository<SecureTokenStorage>(),
      ),
      RepositoryProvider<DlsRestApi>.value(
        value: findRepository<DlsRestApi>(),
      ),
      RepositoryProvider<FileManager>.value(
        value: findRepository<FileManager>(),
      ),
      RepositoryProvider<ws.WebSocket>.value(
        value: findRepository<ws.WebSocket>(),
      ),
      RepositoryProvider<SipRepository>.value(
        value: findRepository<SipRepository>(),
      ),
    ];
  }

  static Future<void> _buildRepositories(AppEnvironment appEnvironment) async {
    final appDocsDir = DlsPlatform.dlsPlatform != DlsPlatformType.web
        ? (await getApplicationDocumentsDirectory()).path
        : '';
    final logger = DlsLogger(isDebugMode: kDebugMode);
    final dlsMatrix = DlsMatrixClient(
      matrixServer: appEnvironment.matrixServerUrl,
      signalUrl: appEnvironment.matrixSignalUrl,
      databasePath: '$appDocsDir/DLS_One/${appEnvironment.matrixDatabaseName}',
      appId: appEnvironment.matrixAppId,
      matrixClientName: appEnvironment.matrixClientName,
      pusherName: appEnvironment.matrixPusherName,
    );
    dlsMatrix.init(
      isWeb: DlsPlatform.dlsPlatform == DlsPlatformType.web,
      isDebugMode: kDebugMode,
    );
    final sharedPrefsStore = SharedPrefsStore(
      isWeb: DlsPlatform.dlsPlatform == DlsPlatformType.web,
    );
    await sharedPrefsStore.init();
    final secureTokenStorage = SecureTokenStorage(
      store: sharedPrefsStore,
    );
    final restApi = DlsRestApi(
      restApiUrl: appEnvironment.restApiUrl,
      tokenStorage: secureTokenStorage,
      storage: sharedPrefsStore,
    );
    final uri = Uri.parse(appEnvironment.socketApiUrl);
    const backoff = ws.ConstantBackoff(Duration(seconds: 1));
    final socketApi = ws.WebSocket(uri, backoff: backoff);
    final sipRepository = SipRepository(sipHost: appEnvironment.sipServerUrl);
    _repositories.addAll([
      logger,
      appEnvironment,
      dlsMatrix,
      sharedPrefsStore,
      secureTokenStorage,
      restApi,
      FileManager(
        storagePath: appDocsDir,
        remoteBytesFetcher: restApi.getBytes,
        errorLogger: logger.errorPrinter,
      ),
      socketApi,
      sipRepository,
    ]);
  }
}
