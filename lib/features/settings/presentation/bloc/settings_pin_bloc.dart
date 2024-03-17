import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:dls_one/utils/utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:storage/storage.dart';

///
/// Created by Nightwelf 15.12.2022 10:08
/// Telegram: @nightwelf
///
part 'settings_pin_bloc.freezed.dart';

@freezed
class SettingsPinEvent with _$SettingsPinEvent {
  const factory SettingsPinEvent.tap(String val, String pinHash) =
      _TapPinSettingsPinEvent;

  const factory SettingsPinEvent.backspace() = _BackspacePinSettingsPinEvent;

  const factory SettingsPinEvent.reset() = _ResetPinSettingsPinEvent;
}

@freezed
class SettingsPinState with _$SettingsPinState {
  const factory SettingsPinState.valid(String pin, String repin) =
      _ValidSettingsPinState;

  const factory SettingsPinState.data(String pin, String repin) =
      _DataSettingsPinState;

  const factory SettingsPinState.invalid(String pin, String repin) =
      _InvalidSettingsPinState;
}

class SettingsPinBloc extends Bloc<SettingsPinEvent, SettingsPinState> {
  /// constr
  SettingsPinBloc({
    required KeyValueStore store,
  })  : _store = store,
        super(const _DataSettingsPinState('', '')) {
    on<SettingsPinEvent>(
      (event, emitter) => event.map<Future<void>>(
        tap: (event) => _tap(event, emitter),
        backspace: (event) => _backspace(event, emitter),
        reset: (event) => _reset(event, emitter),
      ),
      transformer: sequential(),
    );
  }

  final KeyValueStore _store;

  Future<void> _tap(
    _TapPinSettingsPinEvent event,
    Emitter<SettingsPinState> emitter,
  ) async {
    final pinHash = generateMd5(await _store.read(StoreKeys.pin) ?? '');
    if (pinHash == event.pinHash) {
      if (state.pin.length != 4) {
        final pin = state.pin + event.val;
        emitter(SettingsPinState.data(pin, state.repin));
      } else if (state.repin.length != 4) {
        final repin = state.repin + event.val;
        emitter(SettingsPinState.data(state.pin, repin));
      }
      if (state.repin.length == 4 &&
          state.pin.length == 4 &&
          state.repin == state.pin) {
        await _store.write(StoreKeys.pin, state.pin);
        emitter(SettingsPinState.valid(state.pin, state.repin));
      }
      if (state.repin.length == 4 &&
          state.pin.length == 4 &&
          state.repin != state.pin) {
        await _store.write(StoreKeys.pin, state.pin);
        emitter(const SettingsPinState.invalid('', ''));
      }
    }
  }

  Future<void> _backspace(
    _BackspacePinSettingsPinEvent event,
    Emitter<SettingsPinState> emitter,
  ) async {
    if (state.repin.isNotEmpty) {
      final repin = state.repin.substring(0, state.repin.length - 1);
      emitter(SettingsPinState.data(state.pin, repin));
      return;
    }
    if (state.pin.isNotEmpty) {
      final pin = state.pin.substring(0, state.pin.length - 1);
      emitter(SettingsPinState.data(pin, state.repin));
      return;
    }
  }

  Future<void> _reset(
    _ResetPinSettingsPinEvent event,
    Emitter<SettingsPinState> emitter,
  ) async {
    emitter(const SettingsPinState.data('', ''));
  }
}
