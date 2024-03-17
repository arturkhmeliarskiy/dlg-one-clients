// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'settings_profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SettingsProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() read,
    required TResult Function() deletePhoto,
    required TResult Function() save,
    required TResult Function(DLSContact value) deleteDLSContact,
    required TResult Function(
            String? name, String? surname, DLSFile? photo, String? mainEmail)
        update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? read,
    TResult? Function()? deletePhoto,
    TResult? Function()? save,
    TResult? Function(DLSContact value)? deleteDLSContact,
    TResult? Function(
            String? name, String? surname, DLSFile? photo, String? mainEmail)?
        update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? read,
    TResult Function()? deletePhoto,
    TResult Function()? save,
    TResult Function(DLSContact value)? deleteDLSContact,
    TResult Function(
            String? name, String? surname, DLSFile? photo, String? mainEmail)?
        update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ReadProfileEvent value) read,
    required TResult Function(_DeletePhotoEvent value) deletePhoto,
    required TResult Function(_SaveEvent value) save,
    required TResult Function(_DeleteDLSContactEvent value) deleteDLSContact,
    required TResult Function(_UpdateEvent value) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ReadProfileEvent value)? read,
    TResult? Function(_DeletePhotoEvent value)? deletePhoto,
    TResult? Function(_SaveEvent value)? save,
    TResult? Function(_DeleteDLSContactEvent value)? deleteDLSContact,
    TResult? Function(_UpdateEvent value)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReadProfileEvent value)? read,
    TResult Function(_DeletePhotoEvent value)? deletePhoto,
    TResult Function(_SaveEvent value)? save,
    TResult Function(_DeleteDLSContactEvent value)? deleteDLSContact,
    TResult Function(_UpdateEvent value)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsProfileEventCopyWith<$Res> {
  factory $SettingsProfileEventCopyWith(SettingsProfileEvent value,
          $Res Function(SettingsProfileEvent) then) =
      _$SettingsProfileEventCopyWithImpl<$Res, SettingsProfileEvent>;
}

/// @nodoc
class _$SettingsProfileEventCopyWithImpl<$Res,
        $Val extends SettingsProfileEvent>
    implements $SettingsProfileEventCopyWith<$Res> {
  _$SettingsProfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ReadProfileEventCopyWith<$Res> {
  factory _$$_ReadProfileEventCopyWith(
          _$_ReadProfileEvent value, $Res Function(_$_ReadProfileEvent) then) =
      __$$_ReadProfileEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ReadProfileEventCopyWithImpl<$Res>
    extends _$SettingsProfileEventCopyWithImpl<$Res, _$_ReadProfileEvent>
    implements _$$_ReadProfileEventCopyWith<$Res> {
  __$$_ReadProfileEventCopyWithImpl(
      _$_ReadProfileEvent _value, $Res Function(_$_ReadProfileEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ReadProfileEvent extends _ReadProfileEvent {
  const _$_ReadProfileEvent() : super._();

  @override
  String toString() {
    return 'SettingsProfileEvent.read()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ReadProfileEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() read,
    required TResult Function() deletePhoto,
    required TResult Function() save,
    required TResult Function(DLSContact value) deleteDLSContact,
    required TResult Function(
            String? name, String? surname, DLSFile? photo, String? mainEmail)
        update,
  }) {
    return read();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? read,
    TResult? Function()? deletePhoto,
    TResult? Function()? save,
    TResult? Function(DLSContact value)? deleteDLSContact,
    TResult? Function(
            String? name, String? surname, DLSFile? photo, String? mainEmail)?
        update,
  }) {
    return read?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? read,
    TResult Function()? deletePhoto,
    TResult Function()? save,
    TResult Function(DLSContact value)? deleteDLSContact,
    TResult Function(
            String? name, String? surname, DLSFile? photo, String? mainEmail)?
        update,
    required TResult orElse(),
  }) {
    if (read != null) {
      return read();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ReadProfileEvent value) read,
    required TResult Function(_DeletePhotoEvent value) deletePhoto,
    required TResult Function(_SaveEvent value) save,
    required TResult Function(_DeleteDLSContactEvent value) deleteDLSContact,
    required TResult Function(_UpdateEvent value) update,
  }) {
    return read(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ReadProfileEvent value)? read,
    TResult? Function(_DeletePhotoEvent value)? deletePhoto,
    TResult? Function(_SaveEvent value)? save,
    TResult? Function(_DeleteDLSContactEvent value)? deleteDLSContact,
    TResult? Function(_UpdateEvent value)? update,
  }) {
    return read?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReadProfileEvent value)? read,
    TResult Function(_DeletePhotoEvent value)? deletePhoto,
    TResult Function(_SaveEvent value)? save,
    TResult Function(_DeleteDLSContactEvent value)? deleteDLSContact,
    TResult Function(_UpdateEvent value)? update,
    required TResult orElse(),
  }) {
    if (read != null) {
      return read(this);
    }
    return orElse();
  }
}

abstract class _ReadProfileEvent extends SettingsProfileEvent {
  const factory _ReadProfileEvent() = _$_ReadProfileEvent;
  const _ReadProfileEvent._() : super._();
}

/// @nodoc
abstract class _$$_DeletePhotoEventCopyWith<$Res> {
  factory _$$_DeletePhotoEventCopyWith(
          _$_DeletePhotoEvent value, $Res Function(_$_DeletePhotoEvent) then) =
      __$$_DeletePhotoEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DeletePhotoEventCopyWithImpl<$Res>
    extends _$SettingsProfileEventCopyWithImpl<$Res, _$_DeletePhotoEvent>
    implements _$$_DeletePhotoEventCopyWith<$Res> {
  __$$_DeletePhotoEventCopyWithImpl(
      _$_DeletePhotoEvent _value, $Res Function(_$_DeletePhotoEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_DeletePhotoEvent extends _DeletePhotoEvent {
  const _$_DeletePhotoEvent() : super._();

  @override
  String toString() {
    return 'SettingsProfileEvent.deletePhoto()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_DeletePhotoEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() read,
    required TResult Function() deletePhoto,
    required TResult Function() save,
    required TResult Function(DLSContact value) deleteDLSContact,
    required TResult Function(
            String? name, String? surname, DLSFile? photo, String? mainEmail)
        update,
  }) {
    return deletePhoto();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? read,
    TResult? Function()? deletePhoto,
    TResult? Function()? save,
    TResult? Function(DLSContact value)? deleteDLSContact,
    TResult? Function(
            String? name, String? surname, DLSFile? photo, String? mainEmail)?
        update,
  }) {
    return deletePhoto?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? read,
    TResult Function()? deletePhoto,
    TResult Function()? save,
    TResult Function(DLSContact value)? deleteDLSContact,
    TResult Function(
            String? name, String? surname, DLSFile? photo, String? mainEmail)?
        update,
    required TResult orElse(),
  }) {
    if (deletePhoto != null) {
      return deletePhoto();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ReadProfileEvent value) read,
    required TResult Function(_DeletePhotoEvent value) deletePhoto,
    required TResult Function(_SaveEvent value) save,
    required TResult Function(_DeleteDLSContactEvent value) deleteDLSContact,
    required TResult Function(_UpdateEvent value) update,
  }) {
    return deletePhoto(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ReadProfileEvent value)? read,
    TResult? Function(_DeletePhotoEvent value)? deletePhoto,
    TResult? Function(_SaveEvent value)? save,
    TResult? Function(_DeleteDLSContactEvent value)? deleteDLSContact,
    TResult? Function(_UpdateEvent value)? update,
  }) {
    return deletePhoto?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReadProfileEvent value)? read,
    TResult Function(_DeletePhotoEvent value)? deletePhoto,
    TResult Function(_SaveEvent value)? save,
    TResult Function(_DeleteDLSContactEvent value)? deleteDLSContact,
    TResult Function(_UpdateEvent value)? update,
    required TResult orElse(),
  }) {
    if (deletePhoto != null) {
      return deletePhoto(this);
    }
    return orElse();
  }
}

abstract class _DeletePhotoEvent extends SettingsProfileEvent {
  const factory _DeletePhotoEvent() = _$_DeletePhotoEvent;
  const _DeletePhotoEvent._() : super._();
}

/// @nodoc
abstract class _$$_SaveEventCopyWith<$Res> {
  factory _$$_SaveEventCopyWith(
          _$_SaveEvent value, $Res Function(_$_SaveEvent) then) =
      __$$_SaveEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SaveEventCopyWithImpl<$Res>
    extends _$SettingsProfileEventCopyWithImpl<$Res, _$_SaveEvent>
    implements _$$_SaveEventCopyWith<$Res> {
  __$$_SaveEventCopyWithImpl(
      _$_SaveEvent _value, $Res Function(_$_SaveEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SaveEvent extends _SaveEvent {
  const _$_SaveEvent() : super._();

  @override
  String toString() {
    return 'SettingsProfileEvent.save()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SaveEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() read,
    required TResult Function() deletePhoto,
    required TResult Function() save,
    required TResult Function(DLSContact value) deleteDLSContact,
    required TResult Function(
            String? name, String? surname, DLSFile? photo, String? mainEmail)
        update,
  }) {
    return save();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? read,
    TResult? Function()? deletePhoto,
    TResult? Function()? save,
    TResult? Function(DLSContact value)? deleteDLSContact,
    TResult? Function(
            String? name, String? surname, DLSFile? photo, String? mainEmail)?
        update,
  }) {
    return save?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? read,
    TResult Function()? deletePhoto,
    TResult Function()? save,
    TResult Function(DLSContact value)? deleteDLSContact,
    TResult Function(
            String? name, String? surname, DLSFile? photo, String? mainEmail)?
        update,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ReadProfileEvent value) read,
    required TResult Function(_DeletePhotoEvent value) deletePhoto,
    required TResult Function(_SaveEvent value) save,
    required TResult Function(_DeleteDLSContactEvent value) deleteDLSContact,
    required TResult Function(_UpdateEvent value) update,
  }) {
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ReadProfileEvent value)? read,
    TResult? Function(_DeletePhotoEvent value)? deletePhoto,
    TResult? Function(_SaveEvent value)? save,
    TResult? Function(_DeleteDLSContactEvent value)? deleteDLSContact,
    TResult? Function(_UpdateEvent value)? update,
  }) {
    return save?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReadProfileEvent value)? read,
    TResult Function(_DeletePhotoEvent value)? deletePhoto,
    TResult Function(_SaveEvent value)? save,
    TResult Function(_DeleteDLSContactEvent value)? deleteDLSContact,
    TResult Function(_UpdateEvent value)? update,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(this);
    }
    return orElse();
  }
}

abstract class _SaveEvent extends SettingsProfileEvent {
  const factory _SaveEvent() = _$_SaveEvent;
  const _SaveEvent._() : super._();
}

/// @nodoc
abstract class _$$_DeleteDLSContactEventCopyWith<$Res> {
  factory _$$_DeleteDLSContactEventCopyWith(_$_DeleteDLSContactEvent value,
          $Res Function(_$_DeleteDLSContactEvent) then) =
      __$$_DeleteDLSContactEventCopyWithImpl<$Res>;
  @useResult
  $Res call({DLSContact value});

  $DLSContactCopyWith<$Res> get value;
}

/// @nodoc
class __$$_DeleteDLSContactEventCopyWithImpl<$Res>
    extends _$SettingsProfileEventCopyWithImpl<$Res, _$_DeleteDLSContactEvent>
    implements _$$_DeleteDLSContactEventCopyWith<$Res> {
  __$$_DeleteDLSContactEventCopyWithImpl(_$_DeleteDLSContactEvent _value,
      $Res Function(_$_DeleteDLSContactEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_DeleteDLSContactEvent(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as DLSContact,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DLSContactCopyWith<$Res> get value {
    return $DLSContactCopyWith<$Res>(_value.value, (value) {
      return _then(_value.copyWith(value: value));
    });
  }
}

/// @nodoc

class _$_DeleteDLSContactEvent extends _DeleteDLSContactEvent {
  const _$_DeleteDLSContactEvent(this.value) : super._();

  @override
  final DLSContact value;

  @override
  String toString() {
    return 'SettingsProfileEvent.deleteDLSContact(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteDLSContactEvent &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteDLSContactEventCopyWith<_$_DeleteDLSContactEvent> get copyWith =>
      __$$_DeleteDLSContactEventCopyWithImpl<_$_DeleteDLSContactEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() read,
    required TResult Function() deletePhoto,
    required TResult Function() save,
    required TResult Function(DLSContact value) deleteDLSContact,
    required TResult Function(
            String? name, String? surname, DLSFile? photo, String? mainEmail)
        update,
  }) {
    return deleteDLSContact(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? read,
    TResult? Function()? deletePhoto,
    TResult? Function()? save,
    TResult? Function(DLSContact value)? deleteDLSContact,
    TResult? Function(
            String? name, String? surname, DLSFile? photo, String? mainEmail)?
        update,
  }) {
    return deleteDLSContact?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? read,
    TResult Function()? deletePhoto,
    TResult Function()? save,
    TResult Function(DLSContact value)? deleteDLSContact,
    TResult Function(
            String? name, String? surname, DLSFile? photo, String? mainEmail)?
        update,
    required TResult orElse(),
  }) {
    if (deleteDLSContact != null) {
      return deleteDLSContact(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ReadProfileEvent value) read,
    required TResult Function(_DeletePhotoEvent value) deletePhoto,
    required TResult Function(_SaveEvent value) save,
    required TResult Function(_DeleteDLSContactEvent value) deleteDLSContact,
    required TResult Function(_UpdateEvent value) update,
  }) {
    return deleteDLSContact(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ReadProfileEvent value)? read,
    TResult? Function(_DeletePhotoEvent value)? deletePhoto,
    TResult? Function(_SaveEvent value)? save,
    TResult? Function(_DeleteDLSContactEvent value)? deleteDLSContact,
    TResult? Function(_UpdateEvent value)? update,
  }) {
    return deleteDLSContact?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReadProfileEvent value)? read,
    TResult Function(_DeletePhotoEvent value)? deletePhoto,
    TResult Function(_SaveEvent value)? save,
    TResult Function(_DeleteDLSContactEvent value)? deleteDLSContact,
    TResult Function(_UpdateEvent value)? update,
    required TResult orElse(),
  }) {
    if (deleteDLSContact != null) {
      return deleteDLSContact(this);
    }
    return orElse();
  }
}

abstract class _DeleteDLSContactEvent extends SettingsProfileEvent {
  const factory _DeleteDLSContactEvent(final DLSContact value) =
      _$_DeleteDLSContactEvent;
  const _DeleteDLSContactEvent._() : super._();

  DLSContact get value;
  @JsonKey(ignore: true)
  _$$_DeleteDLSContactEventCopyWith<_$_DeleteDLSContactEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateEventCopyWith<$Res> {
  factory _$$_UpdateEventCopyWith(
          _$_UpdateEvent value, $Res Function(_$_UpdateEvent) then) =
      __$$_UpdateEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String? name, String? surname, DLSFile? photo, String? mainEmail});
}

/// @nodoc
class __$$_UpdateEventCopyWithImpl<$Res>
    extends _$SettingsProfileEventCopyWithImpl<$Res, _$_UpdateEvent>
    implements _$$_UpdateEventCopyWith<$Res> {
  __$$_UpdateEventCopyWithImpl(
      _$_UpdateEvent _value, $Res Function(_$_UpdateEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? surname = freezed,
    Object? photo = freezed,
    Object? mainEmail = freezed,
  }) {
    return _then(_$_UpdateEvent(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      surname: freezed == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as DLSFile?,
      mainEmail: freezed == mainEmail
          ? _value.mainEmail
          : mainEmail // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_UpdateEvent extends _UpdateEvent {
  const _$_UpdateEvent({this.name, this.surname, this.photo, this.mainEmail})
      : super._();

  @override
  final String? name;
  @override
  final String? surname;
  @override
  final DLSFile? photo;
  @override
  final String? mainEmail;

  @override
  String toString() {
    return 'SettingsProfileEvent.update(name: $name, surname: $surname, photo: $photo, mainEmail: $mainEmail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateEvent &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.surname, surname) || other.surname == surname) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.mainEmail, mainEmail) ||
                other.mainEmail == mainEmail));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, surname, photo, mainEmail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateEventCopyWith<_$_UpdateEvent> get copyWith =>
      __$$_UpdateEventCopyWithImpl<_$_UpdateEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() read,
    required TResult Function() deletePhoto,
    required TResult Function() save,
    required TResult Function(DLSContact value) deleteDLSContact,
    required TResult Function(
            String? name, String? surname, DLSFile? photo, String? mainEmail)
        update,
  }) {
    return update(name, surname, photo, mainEmail);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? read,
    TResult? Function()? deletePhoto,
    TResult? Function()? save,
    TResult? Function(DLSContact value)? deleteDLSContact,
    TResult? Function(
            String? name, String? surname, DLSFile? photo, String? mainEmail)?
        update,
  }) {
    return update?.call(name, surname, photo, mainEmail);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? read,
    TResult Function()? deletePhoto,
    TResult Function()? save,
    TResult Function(DLSContact value)? deleteDLSContact,
    TResult Function(
            String? name, String? surname, DLSFile? photo, String? mainEmail)?
        update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(name, surname, photo, mainEmail);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ReadProfileEvent value) read,
    required TResult Function(_DeletePhotoEvent value) deletePhoto,
    required TResult Function(_SaveEvent value) save,
    required TResult Function(_DeleteDLSContactEvent value) deleteDLSContact,
    required TResult Function(_UpdateEvent value) update,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ReadProfileEvent value)? read,
    TResult? Function(_DeletePhotoEvent value)? deletePhoto,
    TResult? Function(_SaveEvent value)? save,
    TResult? Function(_DeleteDLSContactEvent value)? deleteDLSContact,
    TResult? Function(_UpdateEvent value)? update,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReadProfileEvent value)? read,
    TResult Function(_DeletePhotoEvent value)? deletePhoto,
    TResult Function(_SaveEvent value)? save,
    TResult Function(_DeleteDLSContactEvent value)? deleteDLSContact,
    TResult Function(_UpdateEvent value)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _UpdateEvent extends SettingsProfileEvent {
  const factory _UpdateEvent(
      {final String? name,
      final String? surname,
      final DLSFile? photo,
      final String? mainEmail}) = _$_UpdateEvent;
  const _UpdateEvent._() : super._();

  String? get name;
  String? get surname;
  DLSFile? get photo;
  String? get mainEmail;
  @JsonKey(ignore: true)
  _$$_UpdateEventCopyWith<_$_UpdateEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SettingsProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            String name,
            String surname,
            String mainEmail,
            DLSFile? photo,
            List<DLSContact>? phones,
            List<DLSContact>? emails,
            bool? isFormValid,
            String? errorMessage,
            String? transaction)
        data,
    required TResult Function(String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            String name,
            String surname,
            String mainEmail,
            DLSFile? photo,
            List<DLSContact>? phones,
            List<DLSContact>? emails,
            bool? isFormValid,
            String? errorMessage,
            String? transaction)?
        data,
    TResult? Function(String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            String name,
            String surname,
            String mainEmail,
            DLSFile? photo,
            List<DLSContact>? phones,
            List<DLSContact>? emails,
            bool? isFormValid,
            String? errorMessage,
            String? transaction)?
        data,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialSettingsProfileState value) initial,
    required TResult Function(_LoadingSettingsProfileState value) loading,
    required TResult Function(_DataSettingsProfileState value) data,
    required TResult Function(_FailureSettingsProfileState value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialSettingsProfileState value)? initial,
    TResult? Function(_LoadingSettingsProfileState value)? loading,
    TResult? Function(_DataSettingsProfileState value)? data,
    TResult? Function(_FailureSettingsProfileState value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialSettingsProfileState value)? initial,
    TResult Function(_LoadingSettingsProfileState value)? loading,
    TResult Function(_DataSettingsProfileState value)? data,
    TResult Function(_FailureSettingsProfileState value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsProfileStateCopyWith<$Res> {
  factory $SettingsProfileStateCopyWith(SettingsProfileState value,
          $Res Function(SettingsProfileState) then) =
      _$SettingsProfileStateCopyWithImpl<$Res, SettingsProfileState>;
}

/// @nodoc
class _$SettingsProfileStateCopyWithImpl<$Res,
        $Val extends SettingsProfileState>
    implements $SettingsProfileStateCopyWith<$Res> {
  _$SettingsProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialSettingsProfileStateCopyWith<$Res> {
  factory _$$_InitialSettingsProfileStateCopyWith(
          _$_InitialSettingsProfileState value,
          $Res Function(_$_InitialSettingsProfileState) then) =
      __$$_InitialSettingsProfileStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialSettingsProfileStateCopyWithImpl<$Res>
    extends _$SettingsProfileStateCopyWithImpl<$Res,
        _$_InitialSettingsProfileState>
    implements _$$_InitialSettingsProfileStateCopyWith<$Res> {
  __$$_InitialSettingsProfileStateCopyWithImpl(
      _$_InitialSettingsProfileState _value,
      $Res Function(_$_InitialSettingsProfileState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InitialSettingsProfileState extends _InitialSettingsProfileState {
  const _$_InitialSettingsProfileState() : super._();

  @override
  String toString() {
    return 'SettingsProfileState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InitialSettingsProfileState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            String name,
            String surname,
            String mainEmail,
            DLSFile? photo,
            List<DLSContact>? phones,
            List<DLSContact>? emails,
            bool? isFormValid,
            String? errorMessage,
            String? transaction)
        data,
    required TResult Function(String message) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            String name,
            String surname,
            String mainEmail,
            DLSFile? photo,
            List<DLSContact>? phones,
            List<DLSContact>? emails,
            bool? isFormValid,
            String? errorMessage,
            String? transaction)?
        data,
    TResult? Function(String message)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            String name,
            String surname,
            String mainEmail,
            DLSFile? photo,
            List<DLSContact>? phones,
            List<DLSContact>? emails,
            bool? isFormValid,
            String? errorMessage,
            String? transaction)?
        data,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialSettingsProfileState value) initial,
    required TResult Function(_LoadingSettingsProfileState value) loading,
    required TResult Function(_DataSettingsProfileState value) data,
    required TResult Function(_FailureSettingsProfileState value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialSettingsProfileState value)? initial,
    TResult? Function(_LoadingSettingsProfileState value)? loading,
    TResult? Function(_DataSettingsProfileState value)? data,
    TResult? Function(_FailureSettingsProfileState value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialSettingsProfileState value)? initial,
    TResult Function(_LoadingSettingsProfileState value)? loading,
    TResult Function(_DataSettingsProfileState value)? data,
    TResult Function(_FailureSettingsProfileState value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialSettingsProfileState extends SettingsProfileState {
  const factory _InitialSettingsProfileState() = _$_InitialSettingsProfileState;
  const _InitialSettingsProfileState._() : super._();
}

/// @nodoc
abstract class _$$_LoadingSettingsProfileStateCopyWith<$Res> {
  factory _$$_LoadingSettingsProfileStateCopyWith(
          _$_LoadingSettingsProfileState value,
          $Res Function(_$_LoadingSettingsProfileState) then) =
      __$$_LoadingSettingsProfileStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingSettingsProfileStateCopyWithImpl<$Res>
    extends _$SettingsProfileStateCopyWithImpl<$Res,
        _$_LoadingSettingsProfileState>
    implements _$$_LoadingSettingsProfileStateCopyWith<$Res> {
  __$$_LoadingSettingsProfileStateCopyWithImpl(
      _$_LoadingSettingsProfileState _value,
      $Res Function(_$_LoadingSettingsProfileState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadingSettingsProfileState extends _LoadingSettingsProfileState {
  const _$_LoadingSettingsProfileState() : super._();

  @override
  String toString() {
    return 'SettingsProfileState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadingSettingsProfileState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            String name,
            String surname,
            String mainEmail,
            DLSFile? photo,
            List<DLSContact>? phones,
            List<DLSContact>? emails,
            bool? isFormValid,
            String? errorMessage,
            String? transaction)
        data,
    required TResult Function(String message) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            String name,
            String surname,
            String mainEmail,
            DLSFile? photo,
            List<DLSContact>? phones,
            List<DLSContact>? emails,
            bool? isFormValid,
            String? errorMessage,
            String? transaction)?
        data,
    TResult? Function(String message)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            String name,
            String surname,
            String mainEmail,
            DLSFile? photo,
            List<DLSContact>? phones,
            List<DLSContact>? emails,
            bool? isFormValid,
            String? errorMessage,
            String? transaction)?
        data,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialSettingsProfileState value) initial,
    required TResult Function(_LoadingSettingsProfileState value) loading,
    required TResult Function(_DataSettingsProfileState value) data,
    required TResult Function(_FailureSettingsProfileState value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialSettingsProfileState value)? initial,
    TResult? Function(_LoadingSettingsProfileState value)? loading,
    TResult? Function(_DataSettingsProfileState value)? data,
    TResult? Function(_FailureSettingsProfileState value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialSettingsProfileState value)? initial,
    TResult Function(_LoadingSettingsProfileState value)? loading,
    TResult Function(_DataSettingsProfileState value)? data,
    TResult Function(_FailureSettingsProfileState value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingSettingsProfileState extends SettingsProfileState {
  const factory _LoadingSettingsProfileState() = _$_LoadingSettingsProfileState;
  const _LoadingSettingsProfileState._() : super._();
}

/// @nodoc
abstract class _$$_DataSettingsProfileStateCopyWith<$Res> {
  factory _$$_DataSettingsProfileStateCopyWith(
          _$_DataSettingsProfileState value,
          $Res Function(_$_DataSettingsProfileState) then) =
      __$$_DataSettingsProfileStateCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String name,
      String surname,
      String mainEmail,
      DLSFile? photo,
      List<DLSContact>? phones,
      List<DLSContact>? emails,
      bool? isFormValid,
      String? errorMessage,
      String? transaction});
}

/// @nodoc
class __$$_DataSettingsProfileStateCopyWithImpl<$Res>
    extends _$SettingsProfileStateCopyWithImpl<$Res,
        _$_DataSettingsProfileState>
    implements _$$_DataSettingsProfileStateCopyWith<$Res> {
  __$$_DataSettingsProfileStateCopyWithImpl(_$_DataSettingsProfileState _value,
      $Res Function(_$_DataSettingsProfileState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? surname = null,
    Object? mainEmail = null,
    Object? photo = freezed,
    Object? phones = freezed,
    Object? emails = freezed,
    Object? isFormValid = freezed,
    Object? errorMessage = freezed,
    Object? transaction = freezed,
  }) {
    return _then(_$_DataSettingsProfileState(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      surname: null == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String,
      mainEmail: null == mainEmail
          ? _value.mainEmail
          : mainEmail // ignore: cast_nullable_to_non_nullable
              as String,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as DLSFile?,
      phones: freezed == phones
          ? _value._phones
          : phones // ignore: cast_nullable_to_non_nullable
              as List<DLSContact>?,
      emails: freezed == emails
          ? _value._emails
          : emails // ignore: cast_nullable_to_non_nullable
              as List<DLSContact>?,
      isFormValid: freezed == isFormValid
          ? _value.isFormValid
          : isFormValid // ignore: cast_nullable_to_non_nullable
              as bool?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      transaction: freezed == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_DataSettingsProfileState extends _DataSettingsProfileState {
  const _$_DataSettingsProfileState(
      {required this.name,
      required this.surname,
      required this.mainEmail,
      this.photo,
      final List<DLSContact>? phones,
      final List<DLSContact>? emails,
      this.isFormValid,
      this.errorMessage,
      this.transaction})
      : _phones = phones,
        _emails = emails,
        super._();

  @override
  final String name;
  @override
  final String surname;
  @override
  final String mainEmail;
  @override
  final DLSFile? photo;
  final List<DLSContact>? _phones;
  @override
  List<DLSContact>? get phones {
    final value = _phones;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<DLSContact>? _emails;
  @override
  List<DLSContact>? get emails {
    final value = _emails;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool? isFormValid;
  @override
  final String? errorMessage;
  @override
  final String? transaction;

  @override
  String toString() {
    return 'SettingsProfileState.data(name: $name, surname: $surname, mainEmail: $mainEmail, photo: $photo, phones: $phones, emails: $emails, isFormValid: $isFormValid, errorMessage: $errorMessage, transaction: $transaction)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataSettingsProfileState &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.surname, surname) || other.surname == surname) &&
            (identical(other.mainEmail, mainEmail) ||
                other.mainEmail == mainEmail) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            const DeepCollectionEquality().equals(other._phones, _phones) &&
            const DeepCollectionEquality().equals(other._emails, _emails) &&
            (identical(other.isFormValid, isFormValid) ||
                other.isFormValid == isFormValid) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.transaction, transaction) ||
                other.transaction == transaction));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      surname,
      mainEmail,
      photo,
      const DeepCollectionEquality().hash(_phones),
      const DeepCollectionEquality().hash(_emails),
      isFormValid,
      errorMessage,
      transaction);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataSettingsProfileStateCopyWith<_$_DataSettingsProfileState>
      get copyWith => __$$_DataSettingsProfileStateCopyWithImpl<
          _$_DataSettingsProfileState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            String name,
            String surname,
            String mainEmail,
            DLSFile? photo,
            List<DLSContact>? phones,
            List<DLSContact>? emails,
            bool? isFormValid,
            String? errorMessage,
            String? transaction)
        data,
    required TResult Function(String message) failure,
  }) {
    return data(name, surname, mainEmail, photo, phones, emails, isFormValid,
        errorMessage, transaction);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            String name,
            String surname,
            String mainEmail,
            DLSFile? photo,
            List<DLSContact>? phones,
            List<DLSContact>? emails,
            bool? isFormValid,
            String? errorMessage,
            String? transaction)?
        data,
    TResult? Function(String message)? failure,
  }) {
    return data?.call(name, surname, mainEmail, photo, phones, emails,
        isFormValid, errorMessage, transaction);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            String name,
            String surname,
            String mainEmail,
            DLSFile? photo,
            List<DLSContact>? phones,
            List<DLSContact>? emails,
            bool? isFormValid,
            String? errorMessage,
            String? transaction)?
        data,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(name, surname, mainEmail, photo, phones, emails, isFormValid,
          errorMessage, transaction);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialSettingsProfileState value) initial,
    required TResult Function(_LoadingSettingsProfileState value) loading,
    required TResult Function(_DataSettingsProfileState value) data,
    required TResult Function(_FailureSettingsProfileState value) failure,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialSettingsProfileState value)? initial,
    TResult? Function(_LoadingSettingsProfileState value)? loading,
    TResult? Function(_DataSettingsProfileState value)? data,
    TResult? Function(_FailureSettingsProfileState value)? failure,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialSettingsProfileState value)? initial,
    TResult Function(_LoadingSettingsProfileState value)? loading,
    TResult Function(_DataSettingsProfileState value)? data,
    TResult Function(_FailureSettingsProfileState value)? failure,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _DataSettingsProfileState extends SettingsProfileState {
  const factory _DataSettingsProfileState(
      {required final String name,
      required final String surname,
      required final String mainEmail,
      final DLSFile? photo,
      final List<DLSContact>? phones,
      final List<DLSContact>? emails,
      final bool? isFormValid,
      final String? errorMessage,
      final String? transaction}) = _$_DataSettingsProfileState;
  const _DataSettingsProfileState._() : super._();

  String get name;
  String get surname;
  String get mainEmail;
  DLSFile? get photo;
  List<DLSContact>? get phones;
  List<DLSContact>? get emails;
  bool? get isFormValid;
  String? get errorMessage;
  String? get transaction;
  @JsonKey(ignore: true)
  _$$_DataSettingsProfileStateCopyWith<_$_DataSettingsProfileState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailureSettingsProfileStateCopyWith<$Res> {
  factory _$$_FailureSettingsProfileStateCopyWith(
          _$_FailureSettingsProfileState value,
          $Res Function(_$_FailureSettingsProfileState) then) =
      __$$_FailureSettingsProfileStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_FailureSettingsProfileStateCopyWithImpl<$Res>
    extends _$SettingsProfileStateCopyWithImpl<$Res,
        _$_FailureSettingsProfileState>
    implements _$$_FailureSettingsProfileStateCopyWith<$Res> {
  __$$_FailureSettingsProfileStateCopyWithImpl(
      _$_FailureSettingsProfileState _value,
      $Res Function(_$_FailureSettingsProfileState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_FailureSettingsProfileState(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FailureSettingsProfileState extends _FailureSettingsProfileState {
  const _$_FailureSettingsProfileState({required this.message}) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'SettingsProfileState.failure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FailureSettingsProfileState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FailureSettingsProfileStateCopyWith<_$_FailureSettingsProfileState>
      get copyWith => __$$_FailureSettingsProfileStateCopyWithImpl<
          _$_FailureSettingsProfileState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            String name,
            String surname,
            String mainEmail,
            DLSFile? photo,
            List<DLSContact>? phones,
            List<DLSContact>? emails,
            bool? isFormValid,
            String? errorMessage,
            String? transaction)
        data,
    required TResult Function(String message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            String name,
            String surname,
            String mainEmail,
            DLSFile? photo,
            List<DLSContact>? phones,
            List<DLSContact>? emails,
            bool? isFormValid,
            String? errorMessage,
            String? transaction)?
        data,
    TResult? Function(String message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            String name,
            String surname,
            String mainEmail,
            DLSFile? photo,
            List<DLSContact>? phones,
            List<DLSContact>? emails,
            bool? isFormValid,
            String? errorMessage,
            String? transaction)?
        data,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialSettingsProfileState value) initial,
    required TResult Function(_LoadingSettingsProfileState value) loading,
    required TResult Function(_DataSettingsProfileState value) data,
    required TResult Function(_FailureSettingsProfileState value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialSettingsProfileState value)? initial,
    TResult? Function(_LoadingSettingsProfileState value)? loading,
    TResult? Function(_DataSettingsProfileState value)? data,
    TResult? Function(_FailureSettingsProfileState value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialSettingsProfileState value)? initial,
    TResult Function(_LoadingSettingsProfileState value)? loading,
    TResult Function(_DataSettingsProfileState value)? data,
    TResult Function(_FailureSettingsProfileState value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _FailureSettingsProfileState extends SettingsProfileState {
  const factory _FailureSettingsProfileState({required final String message}) =
      _$_FailureSettingsProfileState;
  const _FailureSettingsProfileState._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$_FailureSettingsProfileStateCopyWith<_$_FailureSettingsProfileState>
      get copyWith => throw _privateConstructorUsedError;
}
