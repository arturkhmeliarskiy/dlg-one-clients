import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rest_api/rest_api.dart';
import 'package:storage/storage.dart';

///
/// Created by Nightwelf 16.12.2022 14:27
/// Telegram: @nightwelf
///
part 'locker_bloc.freezed.dart';

@freezed
class LockerEvent with _$LockerEvent {
  const LockerEvent._();

  const factory LockerEvent.unlock({
    String? pin,
    bool? bio,
    required Function(bool, DLSUser?) callback,
  }) = _UnlockLockerEvent;

  const factory LockerEvent.clear() = _ClearLockerEvent;

  const factory LockerEvent.save() = _SaveLockerEvent;

  const factory LockerEvent.update({
    String? pin,
    String? repin,
    bool? enableBio,
    bool? isLocked,
    bool? loading,
    Function(bool)? callback,
  }) = _UpdateLockerEvent;
}

@freezed
class LockerState with _$LockerState {
  const factory LockerState({
    required bool loading,
    required bool pinsSame,
    required String pin,
    required String repin,
    required bool bioEnabled,
    required bool isLocked,
    required bool bioStore,
    required bool pinStore,
    required bool error401,
  }) = _LockerState;
}

class LockerBloc extends Bloc<LockerEvent, LockerState> {
  LockerBloc({required KeyValueStore store, required DlsRestApi restApi})
      : _store = store,
        _restApi = restApi,
        super(
          const _LockerState(
            loading: false,
            pinsSame: false,
            pin: '',
            repin: '',
            bioEnabled: false,
            isLocked: true,
            bioStore: false,
            pinStore: false,
            error401: false,
          ),
        ) {
    on<LockerEvent>(
      (event, emitter) => event.map<Future<void>>(
        unlock: (event) => _unlock(event, emitter),
        update: (event) => _update(event, emitter),
        clear: (event) => _clear(event, emitter),
        save: (event) => _save(event, emitter),
      ),
      transformer: sequential(),
    );
    add(const LockerEvent.update());
  }
  final KeyValueStore _store;
  final DlsRestApi _restApi;

  ///
  Future<void> _unlock(
    _UnlockLockerEvent event,
    Emitter<LockerState> emitter,
  ) async {
    try {
      final pin = await _store.read(StoreKeys.pin);
      if (event.bio == true || event.pin == pin) {
        emitter(state.copyWith(loading: true, isLocked: true));
        final dlsUser = await _restApi.getMe();
        emitter(state.copyWith(isLocked: false, loading: false));
        event.callback(true, dlsUser);
        return;
      } else if ((event.pin ?? '').length == 4) {
        emitter(state.copyWith(pin: '', isLocked: true, loading: false));

        /// уведомление что пин некорректный
        event.callback(false, null);

        return;
      }
      emitter(state.copyWith(pin: event.pin ?? '', loading: false));
    } on ApiError catch (e) {
      if (e.statusCode == 401) {
        emitter(
          const _LockerState(
            loading: false,
            pinsSame: false,
            pin: '',
            repin: '',
            bioEnabled: false,
            isLocked: false,
            bioStore: false,
            pinStore: false,
            error401: true,
          ),
        );
        return;
      }
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> _clear(
    _ClearLockerEvent event,
    Emitter<LockerState> emitter,
  ) async {
    emitter(
      const _LockerState(
        loading: false,
        pinsSame: false,
        pin: '',
        repin: '',
        bioEnabled: false,
        isLocked: true,
        bioStore: false,
        pinStore: false,
        error401: false,
      ),
    );
  }

  /// событие сохраняет пин и возможность входа по отпечатку
  /// на основании это делается дальнейший выбор способов входа
  Future<void> _save(
    _SaveLockerEvent event,
    Emitter<LockerState> emitter,
  ) async {
    await _store.write(StoreKeys.bio, state.bioEnabled ? 'yes' : 'no');
    await _store.write(StoreKeys.pin, state.pin);
  }

  /// обновление состояния переменных
  Future<void> _update(
    _UpdateLockerEvent event,
    Emitter<LockerState> emitter,
  ) async {
    /// при создании блока читается состояние пина и отпечатка
    /// далее на основании этого роутер принимает решение куда перекинуть пользователя
    /// состояние пина и отпечатка постоянно перечитываются (это не критично)
    /// отпечаток
    final bioString = await _store.read(StoreKeys.bio);
    bool? bio = false;
    if (bioString == 'yes') {
      bio = true;
    }
    if (bioString == 'no') {
      bio = false;
    }
    final pin = await _store.read(StoreKeys.pin);

    /// подготовка нового состояния
    final newSt = state.copyWith(
      pin: event.pin ?? state.pin,
      repin: event.repin ?? state.repin,
      bioEnabled: event.enableBio ?? state.bioEnabled,
      isLocked: event.isLocked ?? state.isLocked,
      bioStore: bio,
      pinStore: pin != null,
      loading: event.loading ?? state.loading,
    );

    /// проверки совпадения пинов
    /// используется на экране установки пина и дальнейшего
    /// проброса пользователя в приложение при логине
    final pinsSame = newSt.pin.length == 4 &&
        newSt.repin.length == 4 &&
        newSt.pin == newSt.repin;

    /// вызов управляющего callback
    if (event.callback != null) event.callback!(pinsSame);

    /// обновление состояния
    emitter(newSt.copyWith(pinsSame: pinsSame, loading: false));
  }
}
