import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:dls_one/common/gen/localization/l10n.dart';
import 'package:dls_one/utils/utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rest_api/rest_api.dart';

///
/// Created by Nightwelf 14.02.2023 10:18
/// Telegram: @nightwelf
///

part 'settings_password_bloc.freezed.dart';

@freezed
class SettingsPasswordEvent with _$SettingsPasswordEvent {
  const SettingsPasswordEvent._();

  const factory SettingsPasswordEvent.save() = _SavePasswordEvent;

  const factory SettingsPasswordEvent.update({
    String? password,
    String? nPassword,
    String? nRePassword,
  }) = _UpdatePasswordEvent;
}

@freezed
class SettingsPasswordState with _$SettingsPasswordState {
  const SettingsPasswordState._();

  /// загрузка
  const factory SettingsPasswordState.loading() = _LoadingSettingsPasswordState;

  const factory SettingsPasswordState.saved() = _SavedSettingsPasswordState;

  /// данные
  const factory SettingsPasswordState.data({
    String? password,
    String? nPassword,
    String? nRePassword,
    required bool isValid,
    String? errorMessage,
  }) = _DataSettingsPasswordState;

  /// ошибка
  const factory SettingsPasswordState.failure({
    required String message,
  }) = _FailureSettingsPasswordState;
}

class SettingsPasswordBloc
    extends Bloc<SettingsPasswordEvent, SettingsPasswordState> {
  /// constructor WebSettingsPassword Bloc
  SettingsPasswordBloc({
    required DlsRestApi restApi,
  })  : _restApi = restApi,
        super(const _DataSettingsPasswordState(isValid: false)) {
    on<SettingsPasswordEvent>(
      (event, emitter) => event.map<Future<void>>(
        save: (event) => _save(event, emitter),
        update: (event) => _update(event, emitter),
      ),
      transformer: sequential(),
    );
  }

  final DlsRestApi _restApi;

  Future<void> _save(
    _SavePasswordEvent event,
    Emitter<SettingsPasswordState> emitter,
  ) async {
    await state.whenOrNull(
      data: (
        password,
        nPassword,
        nRePassword,
        isValid,
        errorMessage,
      ) async {
        final prev = state as _DataSettingsPasswordState;
        try {
          emitter(const SettingsPasswordState.loading());
          await _restApi.changePassword(
            password: password!,
            newPassword: nPassword!,
          );
          emitter(const SettingsPasswordState.saved());
          emitter(const SettingsPasswordState.data(isValid: false));
        } on ApiError catch (e) {
          if (e.statusCode == 400) {
            emitter(prev.copyWith(errorMessage: S.current.access_is_denied));
          } else {
            emitter(prev.copyWith(errorMessage: e.toString()));
          }
        } catch (e) {
          emitter(SettingsPasswordState.failure(message: e.toString()));
        }
      },
    );
  }

  Future<void> _update(
    _UpdatePasswordEvent event,
    Emitter<SettingsPasswordState> emitter,
  ) async {
    state.whenOrNull(
      data: (
        password,
        nPassword,
        nRePassword,
        isValid,
        errorMessage,
      ) {
        emitter(
          SettingsPasswordState.data(
            isValid: passwordValidator(
                  event.nPassword ?? nPassword,
                  event.nRePassword ?? nRePassword,
                ) &&
                ((event.password ?? password) ?? '').isNotEmpty,
            password: event.password ?? password,
            nPassword: event.nPassword ?? nPassword,
            nRePassword: event.nRePassword ?? nRePassword,
          ),
        );
      },
    );
  }
}
