import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

///
/// Created by Nightwelf 28.02.2023 17:13
/// Telegram: @nightwelf
///

part 'notifications_counter_bloc.freezed.dart';

@freezed
class NotificationsCounterEvent with _$NotificationsCounterEvent {
  const NotificationsCounterEvent._();

  /// прочитать данные
  const factory NotificationsCounterEvent.set({
    int? newValueUnreadedNotificationsCounter,
    int? newValueUnreadedChatNotificationsCounter,
    int? newValueUnreadedTasksNotificationsCounter,
    int? newValueUnreadedEventsNotificationsCounter,
  }) = _Set;

  /// обновить данные
  const factory NotificationsCounterEvent.clear() = _Clear;
}

@freezed
class NotificationsCounterState with _$NotificationsCounterState {
  const factory NotificationsCounterState({
    required int unreadedNotificationsCounter,
    required int unreadedChatNotificationsCounter,
    required int unreadedTasksNotificationsCounter,
    required int unreadedEventsNotificationsCounter,
    String? transaction,
  }) = _NotificationsCounterState;

  const NotificationsCounterState._();
}

class NotificationsCounterBloc
    extends Bloc<NotificationsCounterEvent, NotificationsCounterState> {
  NotificationsCounterBloc()
      : super(const _NotificationsCounterState(
          unreadedNotificationsCounter: 0,
          unreadedChatNotificationsCounter: 0,
          unreadedTasksNotificationsCounter: 0,
          unreadedEventsNotificationsCounter: 0,
        )) {
    on<NotificationsCounterEvent>(
      (event, emitter) => event.map<Future<void>>(
        set: (event) => _set(event, emitter),
        clear: (event) => _clear(event, emitter),
      ),
      transformer: sequential(),
    );
  }

  Future<void> _clear(
    _Clear event,
    Emitter<NotificationsCounterState> emitter,
  ) async {
    emitter(
      const NotificationsCounterState(
        unreadedNotificationsCounter: 0,
        unreadedChatNotificationsCounter: 0,
        unreadedTasksNotificationsCounter: 0,
        unreadedEventsNotificationsCounter: 0,
      ),
    );
  }

  Future<void> _set(
    _Set event,
    Emitter<NotificationsCounterState> emitter,
  ) async {
    emitter(
      NotificationsCounterState(
        unreadedNotificationsCounter:
            event.newValueUnreadedNotificationsCounter ??
                state.unreadedNotificationsCounter,
        unreadedChatNotificationsCounter:
            event.newValueUnreadedChatNotificationsCounter ??
                state.unreadedChatNotificationsCounter,
        unreadedTasksNotificationsCounter:
            event.newValueUnreadedTasksNotificationsCounter ??
                state.unreadedTasksNotificationsCounter,
        unreadedEventsNotificationsCounter:
            event.newValueUnreadedEventsNotificationsCounter ??
                state.unreadedEventsNotificationsCounter,
      ),
    );
  }
}
