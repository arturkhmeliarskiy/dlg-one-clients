import 'dart:async';
import 'dart:typed_data';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:dls_one/app/app_environment.dart';
import 'package:dls_one/app/di/app_di.dart';
import 'package:dls_one/common/gen/localization/l10n.dart';
import 'package:dls_one/core/users/presentation/bloc/users_bloc.dart';
import 'package:dls_one/models/dls_file.dart';
import 'package:dls_one/utils/src/etc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rest_api/rest_api.dart';

///
/// Created by Nightwelf 13.02.2023 10:39
/// Telegram: @nightwelf
///

part 'settings_profile_bloc.freezed.dart';

@freezed
class SettingsProfileEvent with _$SettingsProfileEvent {
  const SettingsProfileEvent._();

  /// прочитать данные
  const factory SettingsProfileEvent.read() = _ReadProfileEvent;

  /// удалить аватарку
  const factory SettingsProfileEvent.deletePhoto() = _DeletePhotoEvent;

  /// сохранить
  const factory SettingsProfileEvent.save() = _SaveEvent;

  /// удалить контакт
  const factory SettingsProfileEvent.deleteDLSContact(
    DLSContact value,
  ) = _DeleteDLSContactEvent;

  /// обновление данных стейта
  const factory SettingsProfileEvent.update({
    String? name,
    String? surname,
    DLSFile? photo,
    String? mainEmail,
  }) = _UpdateEvent;
}

@freezed
class SettingsProfileState with _$SettingsProfileState {
  const SettingsProfileState._();

  /// инициализация
  const factory SettingsProfileState.initial() = _InitialSettingsProfileState;

  /// загрузка
  const factory SettingsProfileState.loading() = _LoadingSettingsProfileState;

  /// данные
  const factory SettingsProfileState.data({
    required String name,
    required String surname,
    required String mainEmail,
    DLSFile? photo,
    List<DLSContact>? phones,
    List<DLSContact>? emails,
    bool? isFormValid,
    String? errorMessage,
    String? transaction,
  }) = _DataSettingsProfileState;

  /// ошибка
  const factory SettingsProfileState.failure({
    required String message,
  }) = _FailureSettingsProfileState;
}

class SettingsProfileBloc
    extends Bloc<SettingsProfileEvent, SettingsProfileState> {
  /// constructor WebSettingsProfile Bloc
  SettingsProfileBloc({
    required DlsRestApi restApi,
    required UsersBloc users,
  })  : _restApi = restApi,
        _users = users,
        super(const _InitialSettingsProfileState()) {
    on<SettingsProfileEvent>(
      (event, emitter) => event.map<Future<void>>(
        read: (event) => _read(event, emitter),
        update: (event) => _update(event, emitter),
        deletePhoto: (event) => _deletePhoto(event, emitter),
        save: (event) => _save(event, emitter),
        deleteDLSContact: (event) => _deleteDLSContact(event, emitter),
      ),
      transformer: sequential(),
    );
  }

  final DlsRestApi _restApi;
  final UsersBloc _users;

  Future<void> _deleteDLSContact(
    _DeleteDLSContactEvent event,
    Emitter<SettingsProfileState> emitter,
  ) async {
    await state.maybeWhen(
      orElse: () {},
      data: (
        name,
        surname,
        photo,
        mainPhone,
        phones,
        emails,
        isFormValid,
        errorMessage,
        transaction,
      ) async {
        if (event.value.id != null) {
          try {
            final prev = state as _DataSettingsProfileState;
            emitter(const SettingsProfileState.loading());
            await _restApi.contactDelete(event.value.id!);
            emitter(
              prev.copyWith(
                emails: (emails ?? [])
                    .where((e) => e.id != event.value.id)
                    .toList(),
                phones: (phones ?? [])
                    .where((e) => e.id != event.value.id)
                    .toList(),
              ),
            );
          } catch (e) {
            emitter(SettingsProfileState.failure(message: e.toString()));
          }
        }
      },
    );
  }

  Future<void> _read(
    _ReadProfileEvent event,
    Emitter<SettingsProfileState> emitter,
  ) async {
    emitter(const SettingsProfileState.loading());
    final me = await _restApi.getMe();
    emitter(
      SettingsProfileState.data(
        name: me.firstName ?? S.current.name_not_set,
        surname: me.lastName ?? S.current.surname_not_set,
        photo: me.avatarPathOnly != null
            ? DLSFile(
                key: getRandomString,
                data: Uint8List(0),
                path: AppDI.findRepository<AppEnvironment>().restApiUrl +
                    me.avatarPathOnly!,
              )
            : null,
        mainEmail: me.email ?? 'empty@empty.empty',
        phones: me.phones ?? [],
        emails: me.emails ?? [],
        isFormValid: (me.name ?? '').length > 3 &&
            (me.email ?? '').length > 3 &&
            (me.lastName ?? '').length > 3,
        transaction: getUuid,
      ),
    );
  }

  Future<void> _deletePhoto(
    _DeletePhotoEvent event,
    Emitter<SettingsProfileState> emitter,
  ) async {
    await state.maybeWhen(
      orElse: () {},
      data: (
        name,
        surname,
        photo,
        mainPhone,
        phones,
        emails,
        isFormValid,
        errorMessage,
        t,
      ) async {
        final prev = state as _DataSettingsProfileState;
        emitter(const SettingsProfileState.loading());
        try {
          final user = await _restApi.getMe();
          final newMe = await _restApi.changeMe(
            user: user,
            deleteAvatar: 1,
          );
          if (newMe.id != null) {
            _users.add(UsersEvent.justAdd(user: newMe));
            emitter(prev.copyWith(photo: null, transaction: t));
          } else {
            Exception(S.current.profile_is_empty);
          }
        } catch (e) {
          emitter(SettingsProfileState.failure(message: e.toString()));
        }
      },
    );
  }

  Future<void> _save(
    _SaveEvent event,
    Emitter<SettingsProfileState> emitter,
  ) async {
    await state.maybeWhen(
      orElse: () {},
      data: (
        name,
        surname,
        photo,
        mainPhone,
        phones,
        emails,
        isFormValid,
        errorMessage,
        t,
      ) async {
        final prev = state as _DataSettingsProfileState;
        emitter(const SettingsProfileState.loading());
        try {
          final user = await _restApi.getMe();
          final newMe = await _restApi.changeMe(
            user: user,
            firstName: prev.name,
            lastName: prev.surname,
            email: prev.mainEmail,
            fileData: prev.photo?.data,
          );
          if (newMe.id != null) {
            _users.add(UsersEvent.justAdd(user: newMe));
          } else {
            Exception(S.current.profile_is_empty);
          }
          emitter(prev.copyWith(transaction: t));
        } catch (e) {
          emitter(SettingsProfileState.failure(message: e.toString()));
        }
      },
    );
  }

  Future<void> _update(
    _UpdateEvent event,
    Emitter<SettingsProfileState> emitter,
  ) async {
    await state.maybeWhen(
      orElse: () {},
      data: (
        name,
        surname,
        mainEmail,
        photo,
        phones,
        emails,
        isFormValid,
        errorMessage,
        transaction,
      ) async {
        var myPhoto = photo;
        if (event.photo != null && event.photo?.key != photo?.key) {
          myPhoto = event.photo;
        }
        emitter(
          SettingsProfileState.data(
            name: event.name ?? name,
            surname: event.surname ?? surname,
            photo: myPhoto,
            mainEmail: event.mainEmail ?? mainEmail,
            phones: phones,
            emails: emails,
            isFormValid: (event.name ?? name).length > 3 &&
                (event.mainEmail ?? mainEmail).length > 3 &&
                (event.surname ?? surname).length > 3,
            transaction: getUuid,
          ),
        );
      },
    );
  }
}
