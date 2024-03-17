import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rest_api/rest_api.dart';

///
/// Saved by Nightwelf 10.01.2023 12:45
/// Telegram: @nightwelf
///
part 'settings_notifications_bloc.freezed.dart';

@freezed
class SettingsNotificationsEvent with _$SettingsNotificationsEvent {
  const SettingsNotificationsEvent._();

  const factory SettingsNotificationsEvent.save() = _SaveSettingsNotificationsEvent;

  const factory SettingsNotificationsEvent.read() = _ReadSettingsNotificationsEvent;

  const factory SettingsNotificationsEvent.enableNotifications(bool enable) = _EnableNotificationsSettingsNotificationsEvent;

  const factory SettingsNotificationsEvent.enableSchedule(bool enable) = _EnableScheduleSettingsNotificationsEvent;

  const factory SettingsNotificationsEvent.changeSchedule(NotifSchedule notifSchedule) = _ChangeScheduleSettingsNotificationsEvent;

  const factory SettingsNotificationsEvent.addMuteInterval() = _AddMuteIntervalSettingsNotificationsEvent;

  const factory SettingsNotificationsEvent.updateMuteInterval({required String id, TimeOfDay? startInterval, TimeOfDay? endInterval}) =
      _UpdateMuteIntervalSettingsNotificationsEvent;

  const factory SettingsNotificationsEvent.removeMuteInterval(String id) = _RemoveMuteIntervalSettingsNotificationsEvent;
}

@freezed
class SettingsNotificationsState with _$SettingsNotificationsState {
  const SettingsNotificationsState._();

  const factory SettingsNotificationsState.payload({required Settings settings, required bool changed}) = _PayloadSettingsNotificationsState;

  const factory SettingsNotificationsState.loading({required Settings settings, required bool changed}) = _LoadingSettingsNotificationsState;

  const factory SettingsNotificationsState.failure({required Settings settings, required bool changed, required String message}) = _FailureSettingsNotificationsState;

  bool get canSave => !changed;

  NotificationsSettings get notificationsSettings =>
      settings.notificationsSettings ?? NotificationsSettings(enabled: true, scheduleEnabled: false, schedule: NotifSchedule.defaultData(), intervals: []);

  bool get notificationsEnabled => notificationsSettings.enabled ?? true;

  bool get scheduleEnabled => notificationsSettings.scheduleEnabled ?? false;

  NotifSchedule get schedule => notificationsSettings.schedule ?? NotifSchedule.defaultData();

  List<NotifInterval> get intervals => notificationsSettings.intervals ?? [];
}

class SettingsNotificationsBloc extends Bloc<SettingsNotificationsEvent, SettingsNotificationsState> {
  final DlsRestApi _restApi;

  SettingsNotificationsBloc({required DlsRestApi restApi})
      : _restApi = restApi,
        super(_LoadingSettingsNotificationsState(changed: false, settings: Settings.defaultData())) {
    on<SettingsNotificationsEvent>(
      (event, emitter) => event.map<Future<void>>(
        save: (event) => _save(event, emitter),
        read: (event) => _read(event, emitter),
        enableNotifications: (event) => _enableNotifications(event, emitter),
        enableSchedule: (event) => _enableSchedule(event, emitter),
        changeSchedule: (event) => _changeSchedule(event, emitter),
        addMuteInterval: (event) => _addMuteInterval(event, emitter),
        updateMuteInterval: (event) => _updateMuteInterval(event, emitter),
        removeMuteInterval: (event) => _removeMuteInterval(event, emitter),
      ),
      transformer: sequential(),
    );
    add(const SettingsNotificationsEvent.read());
  }

  Future<void> _enableNotifications(_EnableNotificationsSettingsNotificationsEvent event, Emitter<SettingsNotificationsState> emitter) async {
    emitter(
      SettingsNotificationsState.payload(
        settings: state.settings.copyWith(
          notificationsSettings: state.notificationsSettings.copyWith(
            enabled: event.enable,
          ),
        ),
        changed: true,
      ),
    );
  }

  Future<void> _enableSchedule(_EnableScheduleSettingsNotificationsEvent event, Emitter<SettingsNotificationsState> emitter) async {
    emitter(
      SettingsNotificationsState.payload(
        settings: state.settings.copyWith(
          notificationsSettings: state.notificationsSettings.copyWith(
            scheduleEnabled: event.enable,
            schedule: NotifSchedule.defaultData(),
          ),
        ),
        changed: true,
      ),
    );
  }

  Future<void> _changeSchedule(_ChangeScheduleSettingsNotificationsEvent event, Emitter<SettingsNotificationsState> emitter) async {
    emitter(
      SettingsNotificationsState.payload(
        settings: state.settings.copyWith(
          notificationsSettings: state.notificationsSettings.copyWith(
            schedule: event.notifSchedule,
            scheduleEnabled: true,
          ),
        ),
        changed: true,
      ),
    );
  }

  Future<void> _addMuteInterval(_AddMuteIntervalSettingsNotificationsEvent event, Emitter<SettingsNotificationsState> emitter) async {
    List<NotifInterval> intervals = List.from(state.intervals)
      ..add(NotifInterval(id: getRandomString, start: const TimeOfDay(hour: 13, minute: 00).toDateTime(), end: const TimeOfDay(hour: 14, minute: 00).toDateTime()));
    emitter(
      SettingsNotificationsState.payload(
        settings: state.settings.copyWith(
          notificationsSettings: state.notificationsSettings.copyWith(
            intervals: intervals,
          ),
        ),
        changed: true,
      ),
    );
  }

  Future<void> _updateMuteInterval(_UpdateMuteIntervalSettingsNotificationsEvent event, Emitter<SettingsNotificationsState> emitter) async {
    List<NotifInterval> intervals = List.from(state.intervals);
    int i = intervals.indexWhere((element) => element.id == event.id);
    if (!i.isNegative) {
      intervals[i] = intervals[i].copyWith(start: event.startInterval?.toDateTime() ?? intervals[i].start, end: event.endInterval?.toDateTime() ?? intervals[i].end);
    }
    emitter(
      SettingsNotificationsState.payload(
        settings: state.settings.copyWith(
          notificationsSettings: state.notificationsSettings.copyWith(
            intervals: intervals,
          ),
        ),
        changed: true,
      ),
    );
  }

  Future<void> _removeMuteInterval(_RemoveMuteIntervalSettingsNotificationsEvent event, Emitter<SettingsNotificationsState> emitter) async {
    List<NotifInterval> intervals = List.from(state.intervals)..removeWhere((element) => element.id == event.id);
    emitter(
      SettingsNotificationsState.payload(
        settings: state.settings.copyWith(
          notificationsSettings: state.notificationsSettings.copyWith(
            intervals: intervals,
          ),
        ),
        changed: true,
      ),
    );
  }

  Future<void> _read(_ReadSettingsNotificationsEvent event, Emitter<SettingsNotificationsState> emitter) async {
    try {
      emitter(SettingsNotificationsState.loading(settings: state.settings, changed: false));
      Settings settings = await _restApi.getSettings();
      emitter(SettingsNotificationsState.payload(settings: settings, changed: false));
    } on TimeoutException {
      emitter(SettingsNotificationsState.failure(message: 'Время ожидания ответа сервера истекло', settings: state.settings, changed: true));
    } on ApiError catch (e) {
      emitter(
        SettingsNotificationsState.failure(message: 'Сетевая ошибка ${e.statusCode ?? ''}: ${e.message}', settings: state.settings, changed: true),
      );
    } catch (e) {
      emitter(SettingsNotificationsState.failure(message: 'Необработанная ошибка: $e', settings: state.settings, changed: true));
    }
  }

  Future<void> _save(_SaveSettingsNotificationsEvent event, Emitter<SettingsNotificationsState> emitter) async {
    try {
      emitter(SettingsNotificationsState.loading(settings: state.settings, changed: false));
      Settings settings = await _restApi.saveSettings(settings: state.settings);
      emitter(SettingsNotificationsState.payload(settings: settings, changed: false));
    } on TimeoutException {
      emitter(SettingsNotificationsState.failure(message: 'Время ожидания ответа сервера истекло', settings: state.settings, changed: true));
    } on ApiError catch (e) {
      emitter(
        SettingsNotificationsState.failure(message: 'Сетевая ошибка ${e.statusCode ?? ''}: ${e.message}', settings: state.settings, changed: true),
      );
    } catch (e) {
      emitter(SettingsNotificationsState.failure(message: 'Необработанная ошибка: $e', settings: state.settings, changed: true));
    }
  }
}
