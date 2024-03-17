part of 'notifications_push_bloc.dart';

@freezed
class NotificationsPushEvent with _$NotificationsPushEvent {
  const factory NotificationsPushEvent.init() = _InitEvent;

  const factory NotificationsPushEvent.showPush(
    DLSNotification notification,
  ) = _ShowPushEvent;

  const factory NotificationsPushEvent.hidePush(DLSNotification notification) =
      _HidePushEvent;

  const factory NotificationsPushEvent.clearPushes() = _ClearPushesEvent;
}
