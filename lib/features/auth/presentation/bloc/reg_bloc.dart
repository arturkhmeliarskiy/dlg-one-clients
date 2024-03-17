import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:common/common.dart';
import 'package:dls_one/app/di/app_di.dart';
import 'package:dls_one/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:dls_one/models/dls_file.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:queen_validators/queen_validators.dart';
import 'package:rest_api/rest_api.dart';

///
/// Created by Nightwelf 15.12.2022 13:05
/// Telegram: @nightwelf
///
part 'reg_bloc.freezed.dart';

@freezed
class RegEvent with _$RegEvent {
  const factory RegEvent.update({
    String? login,
    String? approveCode,
    String? password,
    String? repassword,
    String? name,
    String? surename,
    DLSFile? photo,
  }) = _UpdateRegEvent;

  const factory RegEvent.getApproveCode({
    required void Function(bool) callback,
  }) = _GetApproveCodeRegEvent;

  const factory RegEvent.getResetPasswordApproveCode() =
      _GetResetPasswordApproveCodeRegEvent;

  const factory RegEvent.approveCode({
    required String approveCode,
    required void Function(bool) callback,
  }) = _ApproveCodeRegEvent;

  const factory RegEvent.deletePhoto() = _DeletePhotoRegEvent;

  const factory RegEvent.clearApproveCode() = _ClearApproveCodeRegEvent;

  const factory RegEvent.clearTel() = _ClearTelCodeRegEvent;

  const factory RegEvent.register({
    required void Function(bool) callback,
  }) = _RegisterRegEvent;

  const factory RegEvent.freshState() = _FreshStateRegEvent;

  const factory RegEvent.resetPassword({
    required void Function(bool) callback,
  }) = _ResetPasswordRegEvent;
}

@freezed
class RegState with _$RegState {
  const factory RegState({
    required bool loading,
    required bool loginValid,
    required bool passwordsSame,
    required String? login,
    required String? approveCode,
    required String? password,
    required String? repassword,
    required String? name,
    required String? surename,
    DLSFile? photo,
    String? failure,
  }) = _RegState;
}

class RegBloc extends Bloc<RegEvent, RegState> {
  RegBloc({
    required DlsRestApi restApi,
    required AuthBloc authBloc,
  })  : _restApi = restApi,
        _authBloc = authBloc,
        super(
          const _RegState(
            loading: false,
            loginValid: false,
            passwordsSame: false,
            login: null,
            approveCode: null,
            password: null,
            repassword: null,
            name: null,
            surename: null,
          ),
        ) {
    on<RegEvent>(
      (event, emitter) => event.map<Future<void>>(
        getApproveCode: (event) => _getApproveCode(event, emitter),
        getResetPasswordApproveCode: (event) =>
            _getResetPasswordApproveCode(event, emitter),
        approveCode: (event) => _approveCode(event, emitter),
        update: (event) => _update(event, emitter),
        deletePhoto: (event) => _deletePhoto(event, emitter),
        register: (event) => _register(event, emitter),
        clearApproveCode: (event) => _clearApproveCode(event, emitter),
        clearTel: (event) => _clearTel(event, emitter),
        freshState: (event) => _freshState(event, emitter),
        resetPassword: (event) => _resetPassword(event, emitter),
      ),
      transformer: sequential(),
    );
  }
  final DlsRestApi _restApi;
  final AuthBloc _authBloc;

  Future<void> _freshState(
    _FreshStateRegEvent event,
    Emitter<RegState> emitter,
  ) async {
    emitter(
      const _RegState(
        loading: false,
        loginValid: false,
        passwordsSame: false,
        login: null,
        approveCode: null,
        password: null,
        repassword: null,
        name: null,
        surename: null,
      ),
    );
  }

  Future<void> _clearApproveCode(
    _ClearApproveCodeRegEvent event,
    Emitter<RegState> emitter,
  ) async {
    emitter(state.copyWith(approveCode: null, failure: null));
  }

  Future<void> _clearTel(
    _ClearTelCodeRegEvent event,
    Emitter<RegState> emitter,
  ) async {
    emitter(state.copyWith(login: null, failure: null));
  }

  Future<void> _getApproveCode(
    _GetApproveCodeRegEvent event,
    Emitter<RegState> emitter,
  ) async {
    if (!state.loginValid) {
      return;
    }

    emitter(state.copyWith(loading: true, failure: null));
    try {
      /// TODO ТЕЛЕФОН ЗАГЛУШКА
      final loginAvailable = await _restApi.checkLoginAvailable(
        email: state.login,
        tel: '79874563210',
      );
      if (loginAvailable != null) throw loginAvailable;
      final text = await _restApi.sendCode(state.login ?? '');

      /// TODO тут написан код
      AppDI.findRepository<DlsLogger>().todoPrinter(text);
      emitter(state.copyWith(loading: false, failure: null));
      event.callback(true);
    } catch (e) {
      if (e is ApiError) {
        if (e.statusCode == 400) {
          final status = DLSRestStatus.fromJson(e.data as Map<String, dynamic>);
          if (status.success == false) {
            if (status.data?.errors?.emails?.isNotEmpty ?? false) {
              return emitter(
                state.copyWith(
                  loading: false,
                  failure: status.data?.errors?.emails!.first,
                ),
              );
            }

            if (status.data?.errors?.numbers?.isNotEmpty ?? false) {
              return emitter(
                state.copyWith(
                  loading: false,
                  failure: status.data?.errors?.numbers!.first,
                ),
              );
            }
          }
        }
      }
      AppDI.findRepository<DlsLogger>().errorPrinter(e);
      emitter(state.copyWith(loading: false, failure: e.toString()));
    }
  }

  Future<void> _getResetPasswordApproveCode(
    _GetResetPasswordApproveCodeRegEvent event,
    Emitter<RegState> emitter,
  ) async {
    emitter(state.copyWith(loading: true, failure: null));
    try {
      final text = await _restApi.sendCode(state.login ?? '');

      /// TODO тут написан код
      AppDI.findRepository<DlsLogger>().todoPrinter(text);
      emitter(state.copyWith(loading: false, failure: null));
    } catch (e) {
      if (e is ApiError) {
        if (e.statusCode == 400) {
          final status = DLSRestStatus.fromJson(e.data as Map<String, dynamic>);
          if (status.success == false) {
            if (status.data?.errors?.emails?.isNotEmpty ?? false) {
              return emitter(
                state.copyWith(
                  loading: false,
                  failure: status.data?.errors?.emails!.first,
                ),
              );
            }

            if (status.data?.errors?.numbers?.isNotEmpty ?? false) {
              return emitter(
                state.copyWith(
                  loading: false,
                  failure: status.data?.errors?.numbers!.first,
                ),
              );
            }
          }
        }
      }
      AppDI.findRepository<DlsLogger>().errorPrinter(e);
      emitter(state.copyWith(loading: false, failure: e.toString()));
    }
  }

  Future<void> _approveCode(
    _ApproveCodeRegEvent event,
    Emitter<RegState> emitter,
  ) async {
    if (event.approveCode.length == 4) {
      emitter(state.copyWith(loading: true, failure: null));
      try {
        final approved =
            await _restApi.checkCode(state.login ?? '', event.approveCode);
        emitter(
          state.copyWith(
            loading: false,
            approveCode: approved ? event.approveCode : null,
            failure: approved ? null : 'Код введен некорректно',
          ),
        );
        event.callback(approved);
      } catch (e) {
        AppDI.findRepository<DlsLogger>().errorPrinter(e);
        if (e is ApiError) {
          if (e.statusCode == 400) {
            emitter(
              state.copyWith(
                loading: false,
                failure: 'Ошибка в коде подтверждения',
              ),
            );
            return;
          }
        }
        emitter(state.copyWith(loading: false, failure: e.toString()));
      }
    }
  }

  Future<void> _update(
    _UpdateRegEvent event,
    Emitter<RegState> emitter,
  ) async {
    final loginValid =
        const IsEmail().isValid((event.login ?? state.login) ?? '') &&
            ((event.login ?? state.login)?.isNotEmpty ?? false);
    emitter(
      state.copyWith(
        loading: false,
        loginValid: loginValid,
        passwordsSame: state.passwordsSame,
        login: event.login ?? state.login,
        approveCode: event.approveCode ?? state.approveCode,
        password: event.password ?? state.password,
        repassword: event.repassword ?? state.repassword,
        name: event.name ?? state.name,
        surename: event.surename ?? state.surename,
        photo: event.photo ?? state.photo,
        failure: null,
      ),
    );
    var passwordsSame = false;
    if (state.password == state.repassword) {
      if ((state.password?.length ?? -1) >= 6) {
        passwordsSame = true;
      }
    }
    emitter(
      state.copyWith(
        loading: false,
        loginValid: loginValid,
        passwordsSame: passwordsSame,
        login: event.login ?? state.login,
        approveCode: event.approveCode ?? state.approveCode,
        password: state.password,
        repassword: state.repassword,
        name: state.name,
        surename: state.surename,
        photo: state.photo,
        failure: null,
      ),
    );
  }

  Future<void> _deletePhoto(
    _DeletePhotoRegEvent event,
    Emitter<RegState> emitter,
  ) async {
    emitter(state.copyWith(loading: false, photo: null, failure: null));
  }

  Future<void> _register(
    _RegisterRegEvent event,
    Emitter<RegState> emitter,
  ) async {
    emitter(state.copyWith(loading: true, failure: null));
    try {
      await _restApi.register(
        email: state.login!,
        code: state.approveCode!,
        password: state.password!,
        fileData: state.photo?.data,
        filePath: state.photo?.path,
        fileName: state.photo?.fileName,
        firstName: state.name!,
        lastName: state.surename!,
      );

      /// подвязка на авторизацию
      _authBloc
        ..add(AuthEvent.update(login: state.login, password: state.password))
        ..add(AuthEvent.auth(event.callback));
      emitter(
        state.copyWith(
          loading: false,
        ),
      );
    } catch (e) {
      AppDI.findRepository<DlsLogger>().errorPrinter(e);
      emitter(
        state.copyWith(
          loading: false,
          failure: 'При регистрации произошла ошибка',
        ),
      );
    }
  }

  Future<void> _resetPassword(
    _ResetPasswordRegEvent event,
    Emitter<RegState> emitter,
  ) async {
    if (state.loginValid &&
        state.approveCode?.length == 4 &&
        state.passwordsSame &&
        (state.password ?? '').length >= 6) {
      emitter(state.copyWith(loading: true, failure: null));
      try {
        await _restApi.resetPassword(
          email: state.login!,
          code: state.approveCode!,
          password: state.password!,
        );

        /// подвязка на авторизацию
        _authBloc
          ..add(AuthEvent.update(login: state.login, password: state.password))
          ..add(AuthEvent.auth(event.callback));
      } catch (e) {
        AppDI.findRepository<DlsLogger>().errorPrinter(e);
        emitter(
          state.copyWith(
            loading: false,
            failure: 'При регистрации произошла ошибка',
          ),
        );
      } finally {
        emitter(state.copyWith(loading: false));
      }
    }
  }
}
