import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:common/common.dart';
import 'package:dls_one/common/gen/localization/l10n.dart';
import 'package:dls_one/utils/utils.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:queen_validators/queen_validators.dart';
import 'package:rest_api/rest_api.dart';

///
/// Created by Nightwelf 13.02.2023 19:04
/// Telegram: @nightwelf
///

part 'settings_profile_add_contact_bloc.freezed.dart';

@freezed
class SettingsProfileAddContactEvent with _$SettingsProfileAddContactEvent {
  const SettingsProfileAddContactEvent._();

  const factory SettingsProfileAddContactEvent.backToInit({
    required String contact,
  }) = _BackToInitEvent;

  const factory SettingsProfileAddContactEvent.requestCode() = _ReqCodeEvent;

  const factory SettingsProfileAddContactEvent.validateCode({
    Function? callbackUpdate,
  }) = _ValidateCodeEvent;

  const factory SettingsProfileAddContactEvent.update({
    String? contact,
    String? code,
  }) = _UpdateEvent;
}

@freezed
class SettingsProfileAddContactState with _$SettingsProfileAddContactState {
  const SettingsProfileAddContactState._();

  const factory SettingsProfileAddContactState.initial({
    String? contact,
    required bool isValid,
  }) = _InitialSettingsProfileAddContactState;

  const factory SettingsProfileAddContactState.loading() =
      _LoadingSettingsProfileAddContactState;

  const factory SettingsProfileAddContactState.saved() =
      _SavedSettingsProfileAddContactState;

  const factory SettingsProfileAddContactState.data({
    required String contact,
    String? code,
    String? message,
  }) = _DataSettingsProfileAddContactState;

  const factory SettingsProfileAddContactState.failure({
    required String message,
  }) = _FailureSettingsProfileAddContactState;
}

class SettingsProfileAddContactBloc extends Bloc<SettingsProfileAddContactEvent,
    SettingsProfileAddContactState> {
  /// constructor SettingsProfileAddContact Bloc
  SettingsProfileAddContactBloc(
    this.cType, {
    required DlsRestApi restApi,
  })  : _restApi = restApi,
        super(const _InitialSettingsProfileAddContactState(isValid: false)) {
    on<SettingsProfileAddContactEvent>(
      (event, emitter) => event.map<Future<void>>(
        requestCode: (event) => _requestCode(event, emitter),
        validateCode: (event) => _validateCode(event, emitter),
        update: (event) => _update(event, emitter),
        backToInit: (event) => _backToInit(event, emitter),
      ),
      transformer: sequential(),
    );
  }

  final DlsRestApi _restApi;
  final ContactType cType;

  Future<void> _requestCode(
    _ReqCodeEvent event,
    Emitter<SettingsProfileAddContactState> emitter,
  ) async {
    await state.maybeWhen(
      orElse: () {},
      initial: (contact, isValid) async {
        try {
          emitter(const SettingsProfileAddContactState.loading());
          final code = await _restApi.contactRequestCode(contact ?? '', cType);
          if (kDebugMode) print(code);
          emitter(
            SettingsProfileAddContactState.data(
              contact: contact ?? '',
            ),
          );
        } catch (e) {
          emitter(
            SettingsProfileAddContactState.failure(message: e.toString()),
          );
        }
      },
      data: (contact, isValid, _) async {
        try {
          emitter(const SettingsProfileAddContactState.loading());
          final code = await _restApi.contactRequestCode(contact, cType);
          if (kDebugMode) print(code);
          emitter(
            SettingsProfileAddContactState.data(contact: contact),
          );
        } catch (e) {
          emitter(
            SettingsProfileAddContactState.failure(message: e.toString()),
          );
        }
      },
    );
  }

  Future<void> _validateCode(
    _ValidateCodeEvent event,
    Emitter<SettingsProfileAddContactState> emitter,
  ) async {
    await state.maybeWhen(
      orElse: () {},
      data: (contact, code, _) async {
        try {
          emitter(const SettingsProfileAddContactState.loading());
          final ok = await _restApi.contactValidateCode(
            contact,
            int.parse(code ?? '-1'),
          );
          if (!ok) {
            Exception(S.current.confirm_code_error);
          } else {
            emitter(const SettingsProfileAddContactState.saved());

            /// когда веб/десктоп - добавление контактов это диалог и callback
            /// отрабатывает, а иначе нет, решение другое
            if (DlsPlatform.dlsPlatform != DlsPlatformType.mobile) {
              event.callbackUpdate!();
            }
          }
        } on ApiError catch (e) {
          if (e.statusCode == 400) {
            emitter(
              SettingsProfileAddContactState.data(
                contact: contact,
                code: '',
                message: S.current.confirm_code_error,
              ),
            );
          } else {
            emitter(
              SettingsProfileAddContactState.data(
                contact: contact,
                code: '',
                message: S.current.error,
              ),
            );
          }
        } catch (e) {
          emitter(
            SettingsProfileAddContactState.failure(message: e.toString()),
          );
        }
      },
    );
  }

  Future<void> _backToInit(
    _BackToInitEvent event,
    Emitter<SettingsProfileAddContactState> emitter,
  ) async {
    state.whenOrNull(
      data: (contact, code, _) => emitter(
        SettingsProfileAddContactState.initial(
          isValid: false,
          contact: contact,
        ),
      ),
    );
  }

  Future<void> _update(
    _UpdateEvent event,
    Emitter<SettingsProfileAddContactState> emitter,
  ) async {
    switch (cType) {
      case ContactType.email:
        state.whenOrNull(
          initial: (contact, isValid) => emitter(
            (state as _InitialSettingsProfileAddContactState).copyWith(
              contact: event.contact ?? contact,
              isValid:
                  const IsEmail().isValid((event.contact ?? contact) ?? ''),
            ),
          ),
          data: (contact, code, _) => emitter(
            (state as _DataSettingsProfileAddContactState).copyWith(
              contact: event.contact ?? contact,
              code: event.code ?? code,
              message: null,
            ),
          ),
        );
        break;
      case ContactType.phone:
        state.whenOrNull(
          initial: (contact, isValid) => emitter(
            (state as _InitialSettingsProfileAddContactState).copyWith(
              contact: event.contact ?? contact,
              isValid: phoneValidator((event.contact ?? contact) ?? ''),
            ),
          ),
          data: (contact, code, _) => emitter(
            (state as _DataSettingsProfileAddContactState).copyWith(
              contact: event.contact ?? contact,
              code: event.code ?? code,
              message: null,
            ),
          ),
        );
        break;
      case ContactType.unknown:
        break;
    }
  }
}
