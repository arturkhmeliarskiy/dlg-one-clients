import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:dls_one/utils/utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:storage/storage.dart';

///
/// Created by Nightwelf 16.02.2023 13:05
/// Telegram: @nightwelf
///

part 'settings_bio_bloc.freezed.dart';

@freezed
class SettingsBioEvent with _$SettingsBioEvent {
  const SettingsBioEvent._();

  /// прочитать данные
  const factory SettingsBioEvent.read() = _ReadSettingsBioEvent;

  /// установить пин
  const factory SettingsBioEvent.setup(String pinHash) = _SetupSettingsBioEvent;

  /// удалить пин
  const factory SettingsBioEvent.delete(String pinHash) =
      _DeleteSettingsBioEvent;
}

@freezed
class SettingsBioState with _$SettingsBioState {
  const factory SettingsBioState({
    required bool isEnabled,
    String? errorMessage,
  }) = _SettingsBioState;
}

class SettingsBioBloc extends Bloc<SettingsBioEvent, SettingsBioState> {
  /// constructor SettingsBio Bloc
  SettingsBioBloc({
    required KeyValueStore store,
  })  : _store = store,
        super(const _SettingsBioState(isEnabled: true)) {
    on<SettingsBioEvent>(
      (event, emitter) => event.map<Future<void>>(
        read: (event) => _read(event, emitter),
        setup: (event) => _setup(event, emitter),
        delete: (event) => _delete(event, emitter),
      ),
      transformer: sequential(),
    );
  }

  final KeyValueStore _store;

  Future<void> _read(
    _ReadSettingsBioEvent event,
    Emitter<SettingsBioState> emitter,
  ) async {
    final bioString = await _store.read(StoreKeys.bio);
    final isEnabled = bioString == 'yes';
    emitter(SettingsBioState(isEnabled: isEnabled));
  }

  Future<void> _setup(
    _SetupSettingsBioEvent event,
    Emitter<SettingsBioState> emitter,
  ) async {
    final validPin = (await _store.read(StoreKeys.pin)) ?? '';
    if (generateMd5(validPin) == event.pinHash) {
      await _store.write(StoreKeys.bio, 'yes');
      add(const SettingsBioEvent.read());
    }
  }

  Future<void> _delete(
    _DeleteSettingsBioEvent event,
    Emitter<SettingsBioState> emitter,
  ) async {
    final validPin = (await _store.read(StoreKeys.pin)) ?? '';
    if (generateMd5(validPin) == event.pinHash) {
      await _store.write(StoreKeys.bio, 'no');
      add(const SettingsBioEvent.read());
    }
  }
}
