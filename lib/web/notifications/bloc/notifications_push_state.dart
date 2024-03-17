part of 'notifications_push_bloc.dart';

@freezed
class NotificationsPushState with _$NotificationsPushState {
  const NotificationsPushState._();

  const factory NotificationsPushState.started({
    @Default([]) List<DLSNotification> notifications,
  }) = _Started;

  const factory NotificationsPushState.initializing({
    @Default([]) List<DLSNotification> notifications,
  }) = _Initializing;

  const factory NotificationsPushState.ok({
    required List<DLSNotification> notifications,
  }) = _Ok;

  const factory NotificationsPushState.failure({
    @Default([]) List<DLSNotification> notifications,
    @Default('Ошибка') String message,
  }) = _Failure;

  /// --------------------------------------------------------------------------
  /// фильтры
  /// --------------------------------------------------------------------------

  /// все уведолмления
  List<DLSNotification> get allNotifications => notifications;

  /// уведомления чатов
  List<DLSNotification> get chatNotifications =>
      notifications.where((n) => n.nObject is DLSNotificationChat).toList();

  /// уведомления задач
  List<DLSNotification> get tasksNotifications =>
      notifications.where((n) => n.nObject is DLSNotificationTask).toList();

  /// уведомления событий
  List<DLSNotification> get eventsNotifications =>
      notifications.where((n) => n.nObject is DLSNotificationEvent).toList();
}
