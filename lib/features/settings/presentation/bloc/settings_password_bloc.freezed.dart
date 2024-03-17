// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'settings_password_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SettingsPasswordEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() save,
    required TResult Function(
            String? password, String? nPassword, String? nRePassword)
        update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? save,
    TResult? Function(String? password, String? nPassword, String? nRePassword)?
        update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? save,
    TResult Function(String? password, String? nPassword, String? nRePassword)?
        update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SavePasswordEvent value) save,
    required TResult Function(_UpdatePasswordEvent value) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SavePasswordEvent value)? save,
    TResult? Function(_UpdatePasswordEvent value)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SavePasswordEvent value)? save,
    TResult Function(_UpdatePasswordEvent value)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsPasswordEventCopyWith<$Res> {
  factory $SettingsPasswordEventCopyWith(SettingsPasswordEvent value,
          $Res Function(SettingsPasswordEvent) then) =
      _$SettingsPasswordEventCopyWithImpl<$Res, SettingsPasswordEvent>;
}

/// @nodoc
class _$SettingsPasswordEventCopyWithImpl<$Res,
        $Val extends SettingsPasswordEvent>
    implements $SettingsPasswordEventCopyWith<$Res> {
  _$SettingsPasswordEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SavePasswordEventCopyWith<$Res> {
  factory _$$_SavePasswordEventCopyWith(_$_SavePasswordEvent value,
          $Res Function(_$_SavePasswordEvent) then) =
      __$$_SavePasswordEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SavePasswordEventCopyWithImpl<$Res>
    extends _$SettingsPasswordEventCopyWithImpl<$Res, _$_SavePasswordEvent>
    implements _$$_SavePasswordEventCopyWith<$Res> {
  __$$_SavePasswordEventCopyWithImpl(
      _$_SavePasswordEvent _value, $Res Function(_$_SavePasswordEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SavePasswordEvent extends _SavePasswordEvent {
  const _$_SavePasswordEvent() : super._();

  @override
  String toString() {
    return 'SettingsPasswordEvent.save()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SavePasswordEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() save,
    required TResult Function(
            String? password, String? nPassword, String? nRePassword)
        update,
  }) {
    return save();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? save,
    TResult? Function(String? password, String? nPassword, String? nRePassword)?
        update,
  }) {
    return save?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? save,
    TResult Function(String? password, String? nPassword, String? nRePassword)?
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
    required TResult Function(_SavePasswordEvent value) save,
    required TResult Function(_UpdatePasswordEvent value) update,
  }) {
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SavePasswordEvent value)? save,
    TResult? Function(_UpdatePasswordEvent value)? update,
  }) {
    return save?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SavePasswordEvent value)? save,
    TResult Function(_UpdatePasswordEvent value)? update,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(this);
    }
    return orElse();
  }
}

abstract class _SavePasswordEvent extends SettingsPasswordEvent {
  const factory _SavePasswordEvent() = _$_SavePasswordEvent;
  const _SavePasswordEvent._() : super._();
}

/// @nodoc
abstract class _$$_UpdatePasswordEventCopyWith<$Res> {
  factory _$$_UpdatePasswordEventCopyWith(_$_UpdatePasswordEvent value,
          $Res Function(_$_UpdatePasswordEvent) then) =
      __$$_UpdatePasswordEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String? password, String? nPassword, String? nRePassword});
}

/// @nodoc
class __$$_UpdatePasswordEventCopyWithImpl<$Res>
    extends _$SettingsPasswordEventCopyWithImpl<$Res, _$_UpdatePasswordEvent>
    implements _$$_UpdatePasswordEventCopyWith<$Res> {
  __$$_UpdatePasswordEventCopyWithImpl(_$_UpdatePasswordEvent _value,
      $Res Function(_$_UpdatePasswordEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = freezed,
    Object? nPassword = freezed,
    Object? nRePassword = freezed,
  }) {
    return _then(_$_UpdatePasswordEvent(
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      nPassword: freezed == nPassword
          ? _value.nPassword
          : nPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      nRePassword: freezed == nRePassword
          ? _value.nRePassword
          : nRePassword // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_UpdatePasswordEvent extends _UpdatePasswordEvent {
  const _$_UpdatePasswordEvent(
      {this.password, this.nPassword, this.nRePassword})
      : super._();

  @override
  final String? password;
  @override
  final String? nPassword;
  @override
  final String? nRePassword;

  @override
  String toString() {
    return 'SettingsPasswordEvent.update(password: $password, nPassword: $nPassword, nRePassword: $nRePassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdatePasswordEvent &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.nPassword, nPassword) ||
                other.nPassword == nPassword) &&
            (identical(other.nRePassword, nRePassword) ||
                other.nRePassword == nRePassword));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, password, nPassword, nRePassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdatePasswordEventCopyWith<_$_UpdatePasswordEvent> get copyWith =>
      __$$_UpdatePasswordEventCopyWithImpl<_$_UpdatePasswordEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() save,
    required TResult Function(
            String? password, String? nPassword, String? nRePassword)
        update,
  }) {
    return update(password, nPassword, nRePassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? save,
    TResult? Function(String? password, String? nPassword, String? nRePassword)?
        update,
  }) {
    return update?.call(password, nPassword, nRePassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? save,
    TResult Function(String? password, String? nPassword, String? nRePassword)?
        update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(password, nPassword, nRePassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SavePasswordEvent value) save,
    required TResult Function(_UpdatePasswordEvent value) update,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SavePasswordEvent value)? save,
    TResult? Function(_UpdatePasswordEvent value)? update,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SavePasswordEvent value)? save,
    TResult Function(_UpdatePasswordEvent value)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _UpdatePasswordEvent extends SettingsPasswordEvent {
  const factory _UpdatePasswordEvent(
      {final String? password,
      final String? nPassword,
      final String? nRePassword}) = _$_UpdatePasswordEvent;
  const _UpdatePasswordEvent._() : super._();

  String? get password;
  String? get nPassword;
  String? get nRePassword;
  @JsonKey(ignore: true)
  _$$_UpdatePasswordEventCopyWith<_$_UpdatePasswordEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SettingsPasswordState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() saved,
    required TResult Function(String? password, String? nPassword,
            String? nRePassword, bool isValid, String? errorMessage)
        data,
    required TResult Function(String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? saved,
    TResult? Function(String? password, String? nPassword, String? nRePassword,
            bool isValid, String? errorMessage)?
        data,
    TResult? Function(String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? saved,
    TResult Function(String? password, String? nPassword, String? nRePassword,
            bool isValid, String? errorMessage)?
        data,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingSettingsPasswordState value) loading,
    required TResult Function(_SavedSettingsPasswordState value) saved,
    required TResult Function(_DataSettingsPasswordState value) data,
    required TResult Function(_FailureSettingsPasswordState value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingSettingsPasswordState value)? loading,
    TResult? Function(_SavedSettingsPasswordState value)? saved,
    TResult? Function(_DataSettingsPasswordState value)? data,
    TResult? Function(_FailureSettingsPasswordState value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingSettingsPasswordState value)? loading,
    TResult Function(_SavedSettingsPasswordState value)? saved,
    TResult Function(_DataSettingsPasswordState value)? data,
    TResult Function(_FailureSettingsPasswordState value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsPasswordStateCopyWith<$Res> {
  factory $SettingsPasswordStateCopyWith(SettingsPasswordState value,
          $Res Function(SettingsPasswordState) then) =
      _$SettingsPasswordStateCopyWithImpl<$Res, SettingsPasswordState>;
}

/// @nodoc
class _$SettingsPasswordStateCopyWithImpl<$Res,
        $Val extends SettingsPasswordState>
    implements $SettingsPasswordStateCopyWith<$Res> {
  _$SettingsPasswordStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoadingSettingsPasswordStateCopyWith<$Res> {
  factory _$$_LoadingSettingsPasswordStateCopyWith(
          _$_LoadingSettingsPasswordState value,
          $Res Function(_$_LoadingSettingsPasswordState) then) =
      __$$_LoadingSettingsPasswordStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingSettingsPasswordStateCopyWithImpl<$Res>
    extends _$SettingsPasswordStateCopyWithImpl<$Res,
        _$_LoadingSettingsPasswordState>
    implements _$$_LoadingSettingsPasswordStateCopyWith<$Res> {
  __$$_LoadingSettingsPasswordStateCopyWithImpl(
      _$_LoadingSettingsPasswordState _value,
      $Res Function(_$_LoadingSettingsPasswordState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadingSettingsPasswordState extends _LoadingSettingsPasswordState {
  const _$_LoadingSettingsPasswordState() : super._();

  @override
  String toString() {
    return 'SettingsPasswordState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadingSettingsPasswordState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() saved,
    required TResult Function(String? password, String? nPassword,
            String? nRePassword, bool isValid, String? errorMessage)
        data,
    required TResult Function(String message) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? saved,
    TResult? Function(String? password, String? nPassword, String? nRePassword,
            bool isValid, String? errorMessage)?
        data,
    TResult? Function(String message)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? saved,
    TResult Function(String? password, String? nPassword, String? nRePassword,
            bool isValid, String? errorMessage)?
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
    required TResult Function(_LoadingSettingsPasswordState value) loading,
    required TResult Function(_SavedSettingsPasswordState value) saved,
    required TResult Function(_DataSettingsPasswordState value) data,
    required TResult Function(_FailureSettingsPasswordState value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingSettingsPasswordState value)? loading,
    TResult? Function(_SavedSettingsPasswordState value)? saved,
    TResult? Function(_DataSettingsPasswordState value)? data,
    TResult? Function(_FailureSettingsPasswordState value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingSettingsPasswordState value)? loading,
    TResult Function(_SavedSettingsPasswordState value)? saved,
    TResult Function(_DataSettingsPasswordState value)? data,
    TResult Function(_FailureSettingsPasswordState value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingSettingsPasswordState extends SettingsPasswordState {
  const factory _LoadingSettingsPasswordState() =
      _$_LoadingSettingsPasswordState;
  const _LoadingSettingsPasswordState._() : super._();
}

/// @nodoc
abstract class _$$_SavedSettingsPasswordStateCopyWith<$Res> {
  factory _$$_SavedSettingsPasswordStateCopyWith(
          _$_SavedSettingsPasswordState value,
          $Res Function(_$_SavedSettingsPasswordState) then) =
      __$$_SavedSettingsPasswordStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SavedSettingsPasswordStateCopyWithImpl<$Res>
    extends _$SettingsPasswordStateCopyWithImpl<$Res,
        _$_SavedSettingsPasswordState>
    implements _$$_SavedSettingsPasswordStateCopyWith<$Res> {
  __$$_SavedSettingsPasswordStateCopyWithImpl(
      _$_SavedSettingsPasswordState _value,
      $Res Function(_$_SavedSettingsPasswordState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SavedSettingsPasswordState extends _SavedSettingsPasswordState {
  const _$_SavedSettingsPasswordState() : super._();

  @override
  String toString() {
    return 'SettingsPasswordState.saved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SavedSettingsPasswordState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() saved,
    required TResult Function(String? password, String? nPassword,
            String? nRePassword, bool isValid, String? errorMessage)
        data,
    required TResult Function(String message) failure,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? saved,
    TResult? Function(String? password, String? nPassword, String? nRePassword,
            bool isValid, String? errorMessage)?
        data,
    TResult? Function(String message)? failure,
  }) {
    return saved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? saved,
    TResult Function(String? password, String? nPassword, String? nRePassword,
            bool isValid, String? errorMessage)?
        data,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingSettingsPasswordState value) loading,
    required TResult Function(_SavedSettingsPasswordState value) saved,
    required TResult Function(_DataSettingsPasswordState value) data,
    required TResult Function(_FailureSettingsPasswordState value) failure,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingSettingsPasswordState value)? loading,
    TResult? Function(_SavedSettingsPasswordState value)? saved,
    TResult? Function(_DataSettingsPasswordState value)? data,
    TResult? Function(_FailureSettingsPasswordState value)? failure,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingSettingsPasswordState value)? loading,
    TResult Function(_SavedSettingsPasswordState value)? saved,
    TResult Function(_DataSettingsPasswordState value)? data,
    TResult Function(_FailureSettingsPasswordState value)? failure,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _SavedSettingsPasswordState extends SettingsPasswordState {
  const factory _SavedSettingsPasswordState() = _$_SavedSettingsPasswordState;
  const _SavedSettingsPasswordState._() : super._();
}

/// @nodoc
abstract class _$$_DataSettingsPasswordStateCopyWith<$Res> {
  factory _$$_DataSettingsPasswordStateCopyWith(
          _$_DataSettingsPasswordState value,
          $Res Function(_$_DataSettingsPasswordState) then) =
      __$$_DataSettingsPasswordStateCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String? password,
      String? nPassword,
      String? nRePassword,
      bool isValid,
      String? errorMessage});
}

/// @nodoc
class __$$_DataSettingsPasswordStateCopyWithImpl<$Res>
    extends _$SettingsPasswordStateCopyWithImpl<$Res,
        _$_DataSettingsPasswordState>
    implements _$$_DataSettingsPasswordStateCopyWith<$Res> {
  __$$_DataSettingsPasswordStateCopyWithImpl(
      _$_DataSettingsPasswordState _value,
      $Res Function(_$_DataSettingsPasswordState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = freezed,
    Object? nPassword = freezed,
    Object? nRePassword = freezed,
    Object? isValid = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$_DataSettingsPasswordState(
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      nPassword: freezed == nPassword
          ? _value.nPassword
          : nPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      nRePassword: freezed == nRePassword
          ? _value.nRePassword
          : nRePassword // ignore: cast_nullable_to_non_nullable
              as String?,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_DataSettingsPasswordState extends _DataSettingsPasswordState {
  const _$_DataSettingsPasswordState(
      {this.password,
      this.nPassword,
      this.nRePassword,
      required this.isValid,
      this.errorMessage})
      : super._();

  @override
  final String? password;
  @override
  final String? nPassword;
  @override
  final String? nRePassword;
  @override
  final bool isValid;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'SettingsPasswordState.data(password: $password, nPassword: $nPassword, nRePassword: $nRePassword, isValid: $isValid, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataSettingsPasswordState &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.nPassword, nPassword) ||
                other.nPassword == nPassword) &&
            (identical(other.nRePassword, nRePassword) ||
                other.nRePassword == nRePassword) &&
            (identical(other.isValid, isValid) || other.isValid == isValid) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, password, nPassword, nRePassword, isValid, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataSettingsPasswordStateCopyWith<_$_DataSettingsPasswordState>
      get copyWith => __$$_DataSettingsPasswordStateCopyWithImpl<
          _$_DataSettingsPasswordState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() saved,
    required TResult Function(String? password, String? nPassword,
            String? nRePassword, bool isValid, String? errorMessage)
        data,
    required TResult Function(String message) failure,
  }) {
    return data(password, nPassword, nRePassword, isValid, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? saved,
    TResult? Function(String? password, String? nPassword, String? nRePassword,
            bool isValid, String? errorMessage)?
        data,
    TResult? Function(String message)? failure,
  }) {
    return data?.call(password, nPassword, nRePassword, isValid, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? saved,
    TResult Function(String? password, String? nPassword, String? nRePassword,
            bool isValid, String? errorMessage)?
        data,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(password, nPassword, nRePassword, isValid, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingSettingsPasswordState value) loading,
    required TResult Function(_SavedSettingsPasswordState value) saved,
    required TResult Function(_DataSettingsPasswordState value) data,
    required TResult Function(_FailureSettingsPasswordState value) failure,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingSettingsPasswordState value)? loading,
    TResult? Function(_SavedSettingsPasswordState value)? saved,
    TResult? Function(_DataSettingsPasswordState value)? data,
    TResult? Function(_FailureSettingsPasswordState value)? failure,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingSettingsPasswordState value)? loading,
    TResult Function(_SavedSettingsPasswordState value)? saved,
    TResult Function(_DataSettingsPasswordState value)? data,
    TResult Function(_FailureSettingsPasswordState value)? failure,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _DataSettingsPasswordState extends SettingsPasswordState {
  const factory _DataSettingsPasswordState(
      {final String? password,
      final String? nPassword,
      final String? nRePassword,
      required final bool isValid,
      final String? errorMessage}) = _$_DataSettingsPasswordState;
  const _DataSettingsPasswordState._() : super._();

  String? get password;
  String? get nPassword;
  String? get nRePassword;
  bool get isValid;
  String? get errorMessage;
  @JsonKey(ignore: true)
  _$$_DataSettingsPasswordStateCopyWith<_$_DataSettingsPasswordState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailureSettingsPasswordStateCopyWith<$Res> {
  factory _$$_FailureSettingsPasswordStateCopyWith(
          _$_FailureSettingsPasswordState value,
          $Res Function(_$_FailureSettingsPasswordState) then) =
      __$$_FailureSettingsPasswordStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_FailureSettingsPasswordStateCopyWithImpl<$Res>
    extends _$SettingsPasswordStateCopyWithImpl<$Res,
        _$_FailureSettingsPasswordState>
    implements _$$_FailureSettingsPasswordStateCopyWith<$Res> {
  __$$_FailureSettingsPasswordStateCopyWithImpl(
      _$_FailureSettingsPasswordState _value,
      $Res Function(_$_FailureSettingsPasswordState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_FailureSettingsPasswordState(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FailureSettingsPasswordState extends _FailureSettingsPasswordState {
  const _$_FailureSettingsPasswordState({required this.message}) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'SettingsPasswordState.failure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FailureSettingsPasswordState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FailureSettingsPasswordStateCopyWith<_$_FailureSettingsPasswordState>
      get copyWith => __$$_FailureSettingsPasswordStateCopyWithImpl<
          _$_FailureSettingsPasswordState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() saved,
    required TResult Function(String? password, String? nPassword,
            String? nRePassword, bool isValid, String? errorMessage)
        data,
    required TResult Function(String message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? saved,
    TResult? Function(String? password, String? nPassword, String? nRePassword,
            bool isValid, String? errorMessage)?
        data,
    TResult? Function(String message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? saved,
    TResult Function(String? password, String? nPassword, String? nRePassword,
            bool isValid, String? errorMessage)?
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
    required TResult Function(_LoadingSettingsPasswordState value) loading,
    required TResult Function(_SavedSettingsPasswordState value) saved,
    required TResult Function(_DataSettingsPasswordState value) data,
    required TResult Function(_FailureSettingsPasswordState value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingSettingsPasswordState value)? loading,
    TResult? Function(_SavedSettingsPasswordState value)? saved,
    TResult? Function(_DataSettingsPasswordState value)? data,
    TResult? Function(_FailureSettingsPasswordState value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingSettingsPasswordState value)? loading,
    TResult Function(_SavedSettingsPasswordState value)? saved,
    TResult Function(_DataSettingsPasswordState value)? data,
    TResult Function(_FailureSettingsPasswordState value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _FailureSettingsPasswordState extends SettingsPasswordState {
  const factory _FailureSettingsPasswordState({required final String message}) =
      _$_FailureSettingsPasswordState;
  const _FailureSettingsPasswordState._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$_FailureSettingsPasswordStateCopyWith<_$_FailureSettingsPasswordState>
      get copyWith => throw _privateConstructorUsedError;
}
