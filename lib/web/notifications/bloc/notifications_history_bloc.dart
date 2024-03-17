import 'dart:async';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:dls_one/utils/utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:notifications_models/notifications_models.dart';

///
/// Created by Nightwelf 28.02.2023 17:11
/// Telegram: @nightwelf
///

part 'notifications_history_bloc.freezed.dart';

@freezed
class NotificationsHistoryEvent with _$NotificationsHistoryEvent {
  const NotificationsHistoryEvent._();

  /// прочитать данные
  const factory NotificationsHistoryEvent.read() =
      _ReadNotificationsHistoryEvent;

  /// обновить данные
  const factory NotificationsHistoryEvent.update() =
      _UpdateNotificationsHistoryEvent;

  /// удалить данные
  const factory NotificationsHistoryEvent.delete() =
      _DeleteNotificationsHistoryEvent;

  /// удалить данные
  const factory NotificationsHistoryEvent.addMockNotification(
    DLSNotification notification,
  ) = _AddMockNotificationEvent;
}

@freezed
class NotificationsHistoryState with _$NotificationsHistoryState {
  const NotificationsHistoryState._();

  /// инициализация
  const factory NotificationsHistoryState.initial() =
      _InitialNotificationsHistoryState;

  /// загрузка
  const factory NotificationsHistoryState.loading() =
      _LoadingNotificationsHistoryState;

  /// данные
  const factory NotificationsHistoryState.data({
    @Default([]) List<DLSNotification> notifications,
    String? transaction,
  }) = _DataNotificationsHistoryState;

  /// ошибка
  const factory NotificationsHistoryState.failure({
    required String message,
  }) = _FailureNotificationsHistoryState;

  /// --------------------------------------------------------------------------
  /// фильтры
  /// --------------------------------------------------------------------------

  /// все уведолмления
  List<DLSNotification> get allNotifications => maybeWhen(
        orElse: () => [],
        data: (notifications, transaction) => notifications,
      );

  /// уведомления чатов
  List<DLSNotification> get chatNotifications => maybeWhen(
        orElse: () => [],
        data: (notifications, transaction) => notifications
            .where((n) => n.nObject is DLSNotificationChat)
            .toList(),
      );

  /// уведомления задач
  List<DLSNotification> get tasksNotifications => maybeWhen(
        orElse: () => [],
        data: (notifications, transaction) => notifications
            .where((n) => n.nObject is DLSNotificationTask)
            .toList(),
      );

  /// уведомления событий
  List<DLSNotification> get eventsNotifications => maybeWhen(
        orElse: () => [],
        data: (notifications, transaction) => notifications
            .where((n) => n.nObject is DLSNotificationEvent)
            .toList(),
      );
}

/// история уведомлений
class NotificationsHistoryBloc
    extends Bloc<NotificationsHistoryEvent, NotificationsHistoryState> {
  NotificationsHistoryBloc()
      : super(const _InitialNotificationsHistoryState()) {
    on<NotificationsHistoryEvent>(
      (event, emitter) => event.map<Future<void>>(
        read: (event) => _read(event, emitter),
        update: (event) => _update(event, emitter),
        delete: (event) => _delete(event, emitter),
        addMockNotification: (event) => _addMockNotification(event, emitter),
      ),
      transformer: sequential(),
    );
  }

  Future<void> _read(
    _ReadNotificationsHistoryEvent event,
    Emitter<NotificationsHistoryState> emitter,
  ) async {
    emitter(
      NotificationsHistoryState.data(
        transaction: getUuid,
      ),
    );
  }

  Future<void> _update(
    _UpdateNotificationsHistoryEvent event,
    Emitter<NotificationsHistoryState> emitter,
  ) async {}

  Future<void> _delete(
    _DeleteNotificationsHistoryEvent event,
    Emitter<NotificationsHistoryState> emitter,
  ) async {}

  Future<void> _addMockNotification(
    _AddMockNotificationEvent event,
    Emitter<NotificationsHistoryState> emitter,
  ) async {
    emitter(
      NotificationsHistoryState.data(
        notifications: List.from(state.allNotifications)
          ..add(event.notification),
        transaction: getUuid,
      ),
    );
  }
}
