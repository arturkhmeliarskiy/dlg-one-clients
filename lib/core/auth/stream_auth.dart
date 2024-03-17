import 'dart:async';

import 'package:common/common.dart';
import 'package:dls_matrix_client/dls_matrix_client.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/auth/presentation/bloc/locker_bloc.dart';
import 'package:dls_one/utils/src/dls_platform_helper.dart';
import 'package:dls_one/web/notifications/notifications.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:rest_api/rest_api.dart';
import 'package:sip_repository/sip_repository.dart';
import 'package:socket_api_models/socket_api_models.dart';
import 'package:storage/storage.dart';
import 'package:web_socket_client/web_socket_client.dart' as ws;

class StreamAuth {
  /// Constructor
  StreamAuth({
    required DlsLogger logger,
    required UsersBloc users,
    required LockerBloc lockerBloc,
    required DlsMatrixClient matrixClient,
    required DlsRestApi restApi,
    required KeyValueStore secureStore,
    required SipRepository sipRepository,
    required ws.WebSocket socketApi,
    required NotificationsPushBloc notificationsPushBloc,
  })  : _sipRepository = sipRepository,
        _socketApi = socketApi,
        _logger = logger,
        _matrixClient = matrixClient,
        _lockerBloc = lockerBloc,
        _users = users,
        _restApi = restApi,
        _notificationsPushBloc = notificationsPushBloc,
        _secureStore = secureStore {
    _userStreamController.stream.listen((DLSUser? currentUser) {
      _currentUser = currentUser;
    });
  }

  final UsersBloc _users;
  final NotificationsPushBloc _notificationsPushBloc;
  final LockerBloc _lockerBloc;
  final DlsMatrixClient _matrixClient;
  final DlsRestApi _restApi;
  final KeyValueStore _secureStore;
  final SipRepository _sipRepository;
  final ws.WebSocket _socketApi;
  final DlsLogger _logger;
  StreamSubscription? _socketStreamSubscription;
  DLSUser? _currentUser;

  DLSUser? get currentUser => _currentUser;

  bool isSignedIn() {
    return _currentUser != null;
  }

  final _userStreamController = StreamController<DLSUser?>.broadcast();

  Stream<DLSUser?> get onCurrentUserChanged => _userStreamController.stream;

  Future<void> trySignIn() async {
    try {
      final user = await _restApi.getMe();

      await signIn(user);
    } catch (error, stackTrace) {
      _logger.e(error, stackTrace);
    }
  }

  Future<void> signIn(
    DLSUser me, {
    bool skipAsteriskRegister = false,
  }) async {
    /// логинимся в матрице
    var isOk = false;
    try {
      isOk = await _loginInMatrix(me);
    } catch (error, stack) {
      _logger.errorPrinter(error, stack);
    }
    if (isOk) {
      /// прочитаем профиль пользователя положив профиль из rest
      if (me.id != null) {
        _users.add(UsersEvent.read(usersIds: [me.id!]));
      }

      /// регистрация в звонилке
      if (!skipAsteriskRegister &&
          me.sip?.number != null &&
          me.sip?.password != null) {
        _sipRepository.connect(
          login: me.sip!.number!.split('@').first.replaceAll('sip:', ''),
          password: me.sip!.password!,
          displayName: me.DLSUserName,
        );
      }

      try {
        final token = await _secureStore.read(StoreKeys.dLSoAuth2Token);
        if (token == null) {
          throw Exception('[$runtimeType] error: dLSoAuth2Token is null');
        }

        await _socketApi.connection.firstWhere(
          (state) => state is ws.Connected || state is ws.Reconnected,
        );
        _socketStreamSubscription = _socketApi.connection.listen((state) {
          _logger.w(state);
          if (state is ws.Connected || state is ws.Reconnected) {
            _socketApi.send(
              SocketAuth(
                token: DLSoAuth2Token.fromStringJson(token).accessToken,
              ).stringify(),
            );
          }
        });
      } catch (error, stack) {
        _logger.errorPrinter(error, stack);
      }

      if (DlsPlatformType.mobile == DlsPlatform.dlsPlatform) {
        /// инициализация в HomePage
        _logger.w('[$runtimeType] Notifications init in HomePage');
      } else if (DlsPlatformType.web == DlsPlatform.dlsPlatform ||
          DlsPlatformType.desktop == DlsPlatform.dlsPlatform) {
        /// внутри десктоп/веб приложения работа с уведомлениями идет по сокетам
        /// так же этот init высылает токены web/macOS
        _notificationsPushBloc.add(const NotificationsPushEvent.init());
      } else {
        _logger
            .w('[$runtimeType] Notifications not supported for this platform');
      }

      /// пускаем пользователя в систему
      _currentUser = me;
      _userStreamController.add(me);
    } else {
      return signOut();
    }
  }

  Future<void> signOut() async {
    try {
      _sipRepository.hangUpAll();
      _logger.infoPrinter('✅ sip doHangupAll ok');
    } catch (e) {
      _logger.errorPrinter('💥 sip doHangupAll error');
    }
    try {
      await _restApi.clear();
      _logger.infoPrinter('✅ rest clear ok');
    } catch (e) {
      _logger.errorPrinter('💥 rest clear error');
    }
    try {
      await _socketStreamSubscription?.cancel();

      // TODO(nightwelf): здесь необходимо разлогинить пользователя и залогинить снова
      // _socketApi.close();
      _logger.infoPrinter('✅ socket disconnect ok');
    } catch (e) {
      _logger.errorPrinter('💥 socket disconnect error');
    }
    try {
      await _sipRepository.disconnect();
      _logger.infoPrinter('✅ sip disconnect ok');
    } catch (e) {
      _logger.errorPrinter('💥 sip disconnect error');
    }
    try {
      /// чистим хранилище
      await _secureStore.write(StoreKeys.bio, null);
      await _secureStore.write(StoreKeys.pin, null);
      await _secureStore.write(StoreKeys.dLSoAuth2Token, null);
      await _secureStore.write(StoreKeys.settings, null);
      _logger.infoPrinter('✅ secure store clear ok');
    } catch (e) {
      _logger.errorPrinter('💥 secure store  clear error');
    }
    try {
      _lockerBloc.add(const LockerEvent.clear());
      _logger.infoPrinter('✅ locker clear ok');
    } catch (e) {
      _logger.errorPrinter('💥 locker clear error');
    }
    try {
      await _matrixClient.logout();
      _logger.infoPrinter('✅ matrix logout ok');
    } catch (e) {
      _logger.errorPrinter('💥 matrix logout error');
    }
    try {
      _userStreamController.add(null);
      _logger.infoPrinter('✅ user null ok');
    } catch (e) {
      _logger.errorPrinter('💥 user null error');
    }
  }

  Future<bool> _loginInMatrix(DLSUser dlsUser) async {
    try {
      if (_matrixClient.isLoggedIn) {
        unawaited(_matrixClient.client.sync());
      } else {
        await _matrixClient.login(
          userId: dlsUser.id!,
          userName: dlsUser.name ?? '',
          matrixPassword: dlsUser.matrixPassword ?? '',
          matrixDeviceName: dlsUser.matrixDevice ?? '',
        );
        unawaited(_matrixClient.client.sync());
      }
      return true;
    } catch (e) {
      rethrow;
    }
  }
}
