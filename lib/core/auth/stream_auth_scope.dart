import 'package:common/common.dart';
import 'package:dls_matrix_client/dls_matrix_client.dart';
import 'package:dls_one/core/auth/auth.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/auth/presentation/bloc/locker_bloc.dart';
import 'package:dls_one/web/notifications/notifications.dart';
import 'package:flutter/material.dart';
import 'package:rest_api/rest_api.dart';
import 'package:sip_repository/sip_repository.dart';
import 'package:storage/storage.dart';
import 'package:web_socket_client/web_socket_client.dart' as ws;

/// поток управления авторизацией в системах
/// наш апи дает сюда пользователя со всеми учетками
/// и этот поток выполняет авторизацию в системах
/// и если все ок, то пускает в прилку
class StreamAuthScope extends InheritedNotifier<StreamAuthNotifier> {
  /// Constructor
  StreamAuthScope({
    required super.child,
    required DlsLogger logger,
    required UsersBloc users,
    required LockerBloc lockerBloc,
    required DlsMatrixClient matrixClient,
    required DlsRestApi restApi,
    required KeyValueStore secureStore,
    required SipRepository sipRepository,
    required ws.WebSocket socketApi,
    required NotificationsPushBloc notificationsPushBloc,
    super.key,
  }) : super(
          notifier: StreamAuthNotifier(
            logger: logger,
            lockerBloc: lockerBloc,
            restApi: restApi,
            secureStore: secureStore,
            users: users,
            matrixClient: matrixClient,
            sipRepository: sipRepository,
            socketApi: socketApi,
            notificationsPushBloc: notificationsPushBloc,
          ),
        );

  static StreamAuth of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<StreamAuthScope>()!
        .notifier!
        .streamAuth;
  }
}
