import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:common/common.dart';
import 'package:dls_one/app/di/app_di.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rest_api/rest_api.dart';

///
/// Created by Nightwelf 16.12.2022 14:27
/// Telegram: @nightwelf
///
part 'auth_bloc.freezed.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const AuthEvent._();

  const factory AuthEvent.auth(Function(bool) callback) = _AuthAuthEvent;

  const factory AuthEvent.clearPassword() = _ClearPasswordAuthEvent;

  const factory AuthEvent.iAmNotDany(Function callback) = _IAmNotDanydAuthEvent;

  const factory AuthEvent.update({
    String? login,
    String? password,
    String? lastUsername,
  }) = _UpdateAuthEvent;
}

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    required bool loading,
    String? failure,
    required bool loginValid,
    required bool passwordValid,
    DLSUser? dlsUser,
    String? login,
    String? password,
    String? lastUsername,
  }) = _AuthState;
}

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  /// Constructor
  AuthBloc({
    required DlsRestApi restApi,
  })  : _restApi = restApi,
        _logger = AppDI.findRepository<DlsLogger>(),
        super(
          const _AuthState(
            loading: false,
            loginValid: false,
            passwordValid: false,
          ),
        ) {
    on<AuthEvent>(
      (event, emitter) => event.map<Future<void>>(
        auth: (event) => _auth(event, emitter),
        update: (event) => _update(event, emitter),
        clearPassword: (event) => _clearPassword(event, emitter),
        iAmNotDany: (event) => _iAmNotDany(event, emitter),
      ),
      transformer: sequential(),
    );
  }

  final DlsRestApi _restApi;
  final DlsLogger _logger;

  Future<void> _auth(_AuthAuthEvent event, Emitter<AuthState> emitter) async {
    try {
      if ((state.login?.isEmpty ?? true) ||
          (state.password?.isEmpty ?? true) ||
          !state.loginValid ||
          !state.passwordValid) {
        return;
      }
      emitter(state.copyWith(loading: true));

      /// токен запишется репозиторием
      /// но пока пользователь не даст пин/био
      /// это ни на что не будет влиять
      final dlsUser = await _restApi.login(state.login!, state.password!);
      emitter(
        state.copyWith(
          dlsUser: dlsUser,
          loading: false,
          login: null,
          password: null,
          loginValid: false,
          passwordValid: false,
        ),
      );
      event.callback(true);
    } on ApiError catch (error, stack) {
      _logger.errorPrinter(error, stack);
      if (error.statusCode == 401) {
        emitter(
          state.copyWith(
            loading: false,
            failure: 'Доступ запрещен',
            dlsUser: null,
          ),
        );
        return;
      }
      if (error.statusCode == 500) {
        emitter(
          state.copyWith(
            loading: false,
            failure: 'Ошибка сервера',
            dlsUser: null,
          ),
        );
        return;
      } else {
        emitter(
          state.copyWith(
            loading: false,
            failure: error.toString(),
            dlsUser: null,
          ),
        );
        return;
      }
    } catch (error) {
      emitter(
        state.copyWith(
          loading: false,
          failure: error.toString(),
          dlsUser: null,
        ),
      );
      rethrow;
    }
  }

  Future<void> _update(
    _UpdateAuthEvent event,
    Emitter<AuthState> emitter,
  ) async {
    final passwordValid = ((event.password ?? state.password) ?? '').isNotEmpty;
    final loginValid = ((event.login ?? state.login) ?? '').isNotEmpty &&
        ((event.login ?? state.login) ?? '').contains('@') &&
        ((event.login ?? state.login) ?? '').contains('.');
    emitter(
      state.copyWith(
        login: event.login ?? state.login,
        loginValid: loginValid,
        password: event.password ?? state.password,
        passwordValid: passwordValid,
        failure: null,
        loading: false,
        lastUsername: event.lastUsername ?? state.lastUsername,
      ),
    );
  }

  Future<void> _iAmNotDany(
    _IAmNotDanydAuthEvent event,
    Emitter<AuthState> emitter,
  ) async {
    await _restApi.saveLastUsername();
    emitter(
      const AuthState(
        loading: false,
        loginValid: false,
        passwordValid: false,
      ),
    );
    event.callback(true);
  }

  Future<void> _clearPassword(
    _ClearPasswordAuthEvent event,
    Emitter<AuthState> emitter,
  ) async {
    emitter(
      state.copyWith(
        password: null,
        passwordValid: false,
        failure: null,
        loading: false,
        dlsUser: null,
      ),
    );
  }
}
