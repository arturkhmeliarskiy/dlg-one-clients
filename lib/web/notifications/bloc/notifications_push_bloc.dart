import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:common/common.dart';
import 'package:dls_one/utils/utils.dart';
import 'package:dls_one/web/notifications/notifications.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:notifications_models/notifications_models.dart';
import 'package:rest_api/rest_api.dart';
import 'package:socket_api_models/socket_api_models.dart';
import 'package:web_socket_client/web_socket_client.dart' as ws;

part 'notifications_push_bloc.freezed.dart';

part 'notifications_push_event.dart';

part 'notifications_push_state.dart';

class NotificationsPushBloc
    extends Bloc<NotificationsPushEvent, NotificationsPushState>
    with SubscriptionMixin {
  NotificationsPushBloc({
    required DlsRestApi rest,
    required DlsLogger logger,
    required ws.WebSocket socketApi,
  })  : _rest = rest,
        _logger = logger,
        _socketApi = socketApi,
        super(const _Started(notifications: [])) {
    on<NotificationsPushEvent>(
      (event, emitter) => event.map<Future<void>>(
        init: (event) => _init(event, emitter),
        showPush: (event) => _showPush(event, emitter),
        hidePush: (event) => _hidePush(event, emitter),
        clearPushes: (event) => _clearPushes(event, emitter),
      ),
      transformer: sequential(),
    );
  }

  final DlsRestApi _rest;
  final DlsLogger _logger;
  final ws.WebSocket _socketApi;

  @override
  Future<void> close() {
    cancelAllSubscriptions();
    return super.close();
  }

  Future<void> _clearPushes(
    _ClearPushesEvent event,
    Emitter<NotificationsPushState> emitter,
  ) async {
    emitter(state.copyWith(notifications: []));
  }

  Future<void> _hidePush(
    _HidePushEvent event,
    Emitter<NotificationsPushState> emitter,
  ) async {
    emitter(
      state.copyWith(
        notifications:
            state.notifications.where((e) => e != event.notification).toList(),
      ),
    );
  }

  Future<void> _showPush(
    _ShowPushEvent event,
    Emitter<NotificationsPushState> emitter,
  ) async {
    final show = await DLSNotificationShower.allowedShowNotification();
    if (!show) {
      return;
    }
    emitter(
      state.copyWith(
        notifications: List.from(state.notifications)..add(event.notification),
      ),
    );
  }

  Future<void> _init(
    _InitEvent event,
    Emitter<NotificationsPushState> emitter,
  ) async {
    await state.mapOrNull(
      started: (value) async {
        /// для платформ с уведомлениями внутри использовать сокет
        if ([
          DlsPlatformType.desktop,
          DlsPlatformType.web,
        ].contains(DlsPlatform.dlsPlatform)) {
          /// отправить токены web/macOS
          /// это чтобы отображалось в шторке
          final platform = DlsPlatformHelper.getRunningNotificationPlatform();
          if ([
            DlsPlatformNotificationType.web,
            DlsPlatformNotificationType.macOS,
          ].contains(platform)) {
            final messaging = FirebaseMessaging.instance;
            final settings = await messaging.requestPermission();
            if (settings.authorizationStatus ==
                AuthorizationStatus.authorized) {
              final fcmToken = await messaging.getToken();
              if (fcmToken != null) {
                _logger.i('User fcmToken: $fcmToken');
                await _rest.notificationsApi.pushToken(
                  PushToken(
                    token: fcmToken,
                    active: true,
                    platformType: platform,
                  ),
                );
              }
            }
          }
          addSubscription(
            _socketApi.messages.listen(
              (message) {
                if (message is String) {
                  onSocketMessage(
                    SocketResponseMessage.fromStringJson(message),
                  );
                }
              },
            ),
          );
        } else {
          /// для других платформ этот блок не должен работать
          emitter(
            NotificationsPushState.failure(
              notifications: state.notifications,
              message: 'Platform not supported',
            ),
          );
          throw Exception('Platform not supported');
        }
      },
      ok: (value) async => _logger.i('Already initialized'),
    );
  }

  /// работа с сокетами
  void onSocketMessage(SocketResponseMessage message) {
    message.whenOrNull(
      notification: (notification) =>
          add(NotificationsPushEvent.showPush(notification)),
    );
  }
}
