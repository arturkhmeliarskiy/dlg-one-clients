// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic Function(bool) callback) auth,
    required TResult Function() clearPassword,
    required TResult Function(Function callback) iAmNotDany,
    required TResult Function(
            String? login, String? password, String? lastUsername)
        update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic Function(bool) callback)? auth,
    TResult? Function()? clearPassword,
    TResult? Function(Function callback)? iAmNotDany,
    TResult? Function(String? login, String? password, String? lastUsername)?
        update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic Function(bool) callback)? auth,
    TResult Function()? clearPassword,
    TResult Function(Function callback)? iAmNotDany,
    TResult Function(String? login, String? password, String? lastUsername)?
        update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthAuthEvent value) auth,
    required TResult Function(_ClearPasswordAuthEvent value) clearPassword,
    required TResult Function(_IAmNotDanydAuthEvent value) iAmNotDany,
    required TResult Function(_UpdateAuthEvent value) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthAuthEvent value)? auth,
    TResult? Function(_ClearPasswordAuthEvent value)? clearPassword,
    TResult? Function(_IAmNotDanydAuthEvent value)? iAmNotDany,
    TResult? Function(_UpdateAuthEvent value)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthAuthEvent value)? auth,
    TResult Function(_ClearPasswordAuthEvent value)? clearPassword,
    TResult Function(_IAmNotDanydAuthEvent value)? iAmNotDany,
    TResult Function(_UpdateAuthEvent value)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_AuthAuthEventCopyWith<$Res> {
  factory _$$_AuthAuthEventCopyWith(
          _$_AuthAuthEvent value, $Res Function(_$_AuthAuthEvent) then) =
      __$$_AuthAuthEventCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic Function(bool) callback});
}

/// @nodoc
class __$$_AuthAuthEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_AuthAuthEvent>
    implements _$$_AuthAuthEventCopyWith<$Res> {
  __$$_AuthAuthEventCopyWithImpl(
      _$_AuthAuthEvent _value, $Res Function(_$_AuthAuthEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? callback = null,
  }) {
    return _then(_$_AuthAuthEvent(
      null == callback
          ? _value.callback
          : callback // ignore: cast_nullable_to_non_nullable
              as dynamic Function(bool),
    ));
  }
}

/// @nodoc

class _$_AuthAuthEvent extends _AuthAuthEvent {
  const _$_AuthAuthEvent(this.callback) : super._();

  @override
  final dynamic Function(bool) callback;

  @override
  String toString() {
    return 'AuthEvent.auth(callback: $callback)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthAuthEvent &&
            (identical(other.callback, callback) ||
                other.callback == callback));
  }

  @override
  int get hashCode => Object.hash(runtimeType, callback);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthAuthEventCopyWith<_$_AuthAuthEvent> get copyWith =>
      __$$_AuthAuthEventCopyWithImpl<_$_AuthAuthEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic Function(bool) callback) auth,
    required TResult Function() clearPassword,
    required TResult Function(Function callback) iAmNotDany,
    required TResult Function(
            String? login, String? password, String? lastUsername)
        update,
  }) {
    return auth(callback);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic Function(bool) callback)? auth,
    TResult? Function()? clearPassword,
    TResult? Function(Function callback)? iAmNotDany,
    TResult? Function(String? login, String? password, String? lastUsername)?
        update,
  }) {
    return auth?.call(callback);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic Function(bool) callback)? auth,
    TResult Function()? clearPassword,
    TResult Function(Function callback)? iAmNotDany,
    TResult Function(String? login, String? password, String? lastUsername)?
        update,
    required TResult orElse(),
  }) {
    if (auth != null) {
      return auth(callback);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthAuthEvent value) auth,
    required TResult Function(_ClearPasswordAuthEvent value) clearPassword,
    required TResult Function(_IAmNotDanydAuthEvent value) iAmNotDany,
    required TResult Function(_UpdateAuthEvent value) update,
  }) {
    return auth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthAuthEvent value)? auth,
    TResult? Function(_ClearPasswordAuthEvent value)? clearPassword,
    TResult? Function(_IAmNotDanydAuthEvent value)? iAmNotDany,
    TResult? Function(_UpdateAuthEvent value)? update,
  }) {
    return auth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthAuthEvent value)? auth,
    TResult Function(_ClearPasswordAuthEvent value)? clearPassword,
    TResult Function(_IAmNotDanydAuthEvent value)? iAmNotDany,
    TResult Function(_UpdateAuthEvent value)? update,
    required TResult orElse(),
  }) {
    if (auth != null) {
      return auth(this);
    }
    return orElse();
  }
}

abstract class _AuthAuthEvent extends AuthEvent {
  const factory _AuthAuthEvent(final dynamic Function(bool) callback) =
      _$_AuthAuthEvent;
  const _AuthAuthEvent._() : super._();

  dynamic Function(bool) get callback;
  @JsonKey(ignore: true)
  _$$_AuthAuthEventCopyWith<_$_AuthAuthEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ClearPasswordAuthEventCopyWith<$Res> {
  factory _$$_ClearPasswordAuthEventCopyWith(_$_ClearPasswordAuthEvent value,
          $Res Function(_$_ClearPasswordAuthEvent) then) =
      __$$_ClearPasswordAuthEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ClearPasswordAuthEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_ClearPasswordAuthEvent>
    implements _$$_ClearPasswordAuthEventCopyWith<$Res> {
  __$$_ClearPasswordAuthEventCopyWithImpl(_$_ClearPasswordAuthEvent _value,
      $Res Function(_$_ClearPasswordAuthEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ClearPasswordAuthEvent extends _ClearPasswordAuthEvent {
  const _$_ClearPasswordAuthEvent() : super._();

  @override
  String toString() {
    return 'AuthEvent.clearPassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClearPasswordAuthEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic Function(bool) callback) auth,
    required TResult Function() clearPassword,
    required TResult Function(Function callback) iAmNotDany,
    required TResult Function(
            String? login, String? password, String? lastUsername)
        update,
  }) {
    return clearPassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic Function(bool) callback)? auth,
    TResult? Function()? clearPassword,
    TResult? Function(Function callback)? iAmNotDany,
    TResult? Function(String? login, String? password, String? lastUsername)?
        update,
  }) {
    return clearPassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic Function(bool) callback)? auth,
    TResult Function()? clearPassword,
    TResult Function(Function callback)? iAmNotDany,
    TResult Function(String? login, String? password, String? lastUsername)?
        update,
    required TResult orElse(),
  }) {
    if (clearPassword != null) {
      return clearPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthAuthEvent value) auth,
    required TResult Function(_ClearPasswordAuthEvent value) clearPassword,
    required TResult Function(_IAmNotDanydAuthEvent value) iAmNotDany,
    required TResult Function(_UpdateAuthEvent value) update,
  }) {
    return clearPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthAuthEvent value)? auth,
    TResult? Function(_ClearPasswordAuthEvent value)? clearPassword,
    TResult? Function(_IAmNotDanydAuthEvent value)? iAmNotDany,
    TResult? Function(_UpdateAuthEvent value)? update,
  }) {
    return clearPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthAuthEvent value)? auth,
    TResult Function(_ClearPasswordAuthEvent value)? clearPassword,
    TResult Function(_IAmNotDanydAuthEvent value)? iAmNotDany,
    TResult Function(_UpdateAuthEvent value)? update,
    required TResult orElse(),
  }) {
    if (clearPassword != null) {
      return clearPassword(this);
    }
    return orElse();
  }
}

abstract class _ClearPasswordAuthEvent extends AuthEvent {
  const factory _ClearPasswordAuthEvent() = _$_ClearPasswordAuthEvent;
  const _ClearPasswordAuthEvent._() : super._();
}

/// @nodoc
abstract class _$$_IAmNotDanydAuthEventCopyWith<$Res> {
  factory _$$_IAmNotDanydAuthEventCopyWith(_$_IAmNotDanydAuthEvent value,
          $Res Function(_$_IAmNotDanydAuthEvent) then) =
      __$$_IAmNotDanydAuthEventCopyWithImpl<$Res>;
  @useResult
  $Res call({Function callback});
}

/// @nodoc
class __$$_IAmNotDanydAuthEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_IAmNotDanydAuthEvent>
    implements _$$_IAmNotDanydAuthEventCopyWith<$Res> {
  __$$_IAmNotDanydAuthEventCopyWithImpl(_$_IAmNotDanydAuthEvent _value,
      $Res Function(_$_IAmNotDanydAuthEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? callback = null,
  }) {
    return _then(_$_IAmNotDanydAuthEvent(
      null == callback
          ? _value.callback
          : callback // ignore: cast_nullable_to_non_nullable
              as Function,
    ));
  }
}

/// @nodoc

class _$_IAmNotDanydAuthEvent extends _IAmNotDanydAuthEvent {
  const _$_IAmNotDanydAuthEvent(this.callback) : super._();

  @override
  final Function callback;

  @override
  String toString() {
    return 'AuthEvent.iAmNotDany(callback: $callback)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IAmNotDanydAuthEvent &&
            (identical(other.callback, callback) ||
                other.callback == callback));
  }

  @override
  int get hashCode => Object.hash(runtimeType, callback);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IAmNotDanydAuthEventCopyWith<_$_IAmNotDanydAuthEvent> get copyWith =>
      __$$_IAmNotDanydAuthEventCopyWithImpl<_$_IAmNotDanydAuthEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic Function(bool) callback) auth,
    required TResult Function() clearPassword,
    required TResult Function(Function callback) iAmNotDany,
    required TResult Function(
            String? login, String? password, String? lastUsername)
        update,
  }) {
    return iAmNotDany(callback);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic Function(bool) callback)? auth,
    TResult? Function()? clearPassword,
    TResult? Function(Function callback)? iAmNotDany,
    TResult? Function(String? login, String? password, String? lastUsername)?
        update,
  }) {
    return iAmNotDany?.call(callback);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic Function(bool) callback)? auth,
    TResult Function()? clearPassword,
    TResult Function(Function callback)? iAmNotDany,
    TResult Function(String? login, String? password, String? lastUsername)?
        update,
    required TResult orElse(),
  }) {
    if (iAmNotDany != null) {
      return iAmNotDany(callback);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthAuthEvent value) auth,
    required TResult Function(_ClearPasswordAuthEvent value) clearPassword,
    required TResult Function(_IAmNotDanydAuthEvent value) iAmNotDany,
    required TResult Function(_UpdateAuthEvent value) update,
  }) {
    return iAmNotDany(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthAuthEvent value)? auth,
    TResult? Function(_ClearPasswordAuthEvent value)? clearPassword,
    TResult? Function(_IAmNotDanydAuthEvent value)? iAmNotDany,
    TResult? Function(_UpdateAuthEvent value)? update,
  }) {
    return iAmNotDany?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthAuthEvent value)? auth,
    TResult Function(_ClearPasswordAuthEvent value)? clearPassword,
    TResult Function(_IAmNotDanydAuthEvent value)? iAmNotDany,
    TResult Function(_UpdateAuthEvent value)? update,
    required TResult orElse(),
  }) {
    if (iAmNotDany != null) {
      return iAmNotDany(this);
    }
    return orElse();
  }
}

abstract class _IAmNotDanydAuthEvent extends AuthEvent {
  const factory _IAmNotDanydAuthEvent(final Function callback) =
      _$_IAmNotDanydAuthEvent;
  const _IAmNotDanydAuthEvent._() : super._();

  Function get callback;
  @JsonKey(ignore: true)
  _$$_IAmNotDanydAuthEventCopyWith<_$_IAmNotDanydAuthEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateAuthEventCopyWith<$Res> {
  factory _$$_UpdateAuthEventCopyWith(
          _$_UpdateAuthEvent value, $Res Function(_$_UpdateAuthEvent) then) =
      __$$_UpdateAuthEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String? login, String? password, String? lastUsername});
}

/// @nodoc
class __$$_UpdateAuthEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_UpdateAuthEvent>
    implements _$$_UpdateAuthEventCopyWith<$Res> {
  __$$_UpdateAuthEventCopyWithImpl(
      _$_UpdateAuthEvent _value, $Res Function(_$_UpdateAuthEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = freezed,
    Object? password = freezed,
    Object? lastUsername = freezed,
  }) {
    return _then(_$_UpdateAuthEvent(
      login: freezed == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      lastUsername: freezed == lastUsername
          ? _value.lastUsername
          : lastUsername // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_UpdateAuthEvent extends _UpdateAuthEvent {
  const _$_UpdateAuthEvent({this.login, this.password, this.lastUsername})
      : super._();

  @override
  final String? login;
  @override
  final String? password;
  @override
  final String? lastUsername;

  @override
  String toString() {
    return 'AuthEvent.update(login: $login, password: $password, lastUsername: $lastUsername)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateAuthEvent &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.lastUsername, lastUsername) ||
                other.lastUsername == lastUsername));
  }

  @override
  int get hashCode => Object.hash(runtimeType, login, password, lastUsername);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateAuthEventCopyWith<_$_UpdateAuthEvent> get copyWith =>
      __$$_UpdateAuthEventCopyWithImpl<_$_UpdateAuthEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic Function(bool) callback) auth,
    required TResult Function() clearPassword,
    required TResult Function(Function callback) iAmNotDany,
    required TResult Function(
            String? login, String? password, String? lastUsername)
        update,
  }) {
    return update(login, password, lastUsername);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic Function(bool) callback)? auth,
    TResult? Function()? clearPassword,
    TResult? Function(Function callback)? iAmNotDany,
    TResult? Function(String? login, String? password, String? lastUsername)?
        update,
  }) {
    return update?.call(login, password, lastUsername);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic Function(bool) callback)? auth,
    TResult Function()? clearPassword,
    TResult Function(Function callback)? iAmNotDany,
    TResult Function(String? login, String? password, String? lastUsername)?
        update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(login, password, lastUsername);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthAuthEvent value) auth,
    required TResult Function(_ClearPasswordAuthEvent value) clearPassword,
    required TResult Function(_IAmNotDanydAuthEvent value) iAmNotDany,
    required TResult Function(_UpdateAuthEvent value) update,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthAuthEvent value)? auth,
    TResult? Function(_ClearPasswordAuthEvent value)? clearPassword,
    TResult? Function(_IAmNotDanydAuthEvent value)? iAmNotDany,
    TResult? Function(_UpdateAuthEvent value)? update,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthAuthEvent value)? auth,
    TResult Function(_ClearPasswordAuthEvent value)? clearPassword,
    TResult Function(_IAmNotDanydAuthEvent value)? iAmNotDany,
    TResult Function(_UpdateAuthEvent value)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _UpdateAuthEvent extends AuthEvent {
  const factory _UpdateAuthEvent(
      {final String? login,
      final String? password,
      final String? lastUsername}) = _$_UpdateAuthEvent;
  const _UpdateAuthEvent._() : super._();

  String? get login;
  String? get password;
  String? get lastUsername;
  @JsonKey(ignore: true)
  _$$_UpdateAuthEventCopyWith<_$_UpdateAuthEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthState {
  bool get loading => throw _privateConstructorUsedError;
  String? get failure => throw _privateConstructorUsedError;
  bool get loginValid => throw _privateConstructorUsedError;
  bool get passwordValid => throw _privateConstructorUsedError;
  DLSUser? get dlsUser => throw _privateConstructorUsedError;
  String? get login => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  String? get lastUsername => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {bool loading,
      String? failure,
      bool loginValid,
      bool passwordValid,
      DLSUser? dlsUser,
      String? login,
      String? password,
      String? lastUsername});

  $DLSUserCopyWith<$Res>? get dlsUser;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? failure = freezed,
    Object? loginValid = null,
    Object? passwordValid = null,
    Object? dlsUser = freezed,
    Object? login = freezed,
    Object? password = freezed,
    Object? lastUsername = freezed,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as String?,
      loginValid: null == loginValid
          ? _value.loginValid
          : loginValid // ignore: cast_nullable_to_non_nullable
              as bool,
      passwordValid: null == passwordValid
          ? _value.passwordValid
          : passwordValid // ignore: cast_nullable_to_non_nullable
              as bool,
      dlsUser: freezed == dlsUser
          ? _value.dlsUser
          : dlsUser // ignore: cast_nullable_to_non_nullable
              as DLSUser?,
      login: freezed == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      lastUsername: freezed == lastUsername
          ? _value.lastUsername
          : lastUsername // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DLSUserCopyWith<$Res>? get dlsUser {
    if (_value.dlsUser == null) {
      return null;
    }

    return $DLSUserCopyWith<$Res>(_value.dlsUser!, (value) {
      return _then(_value.copyWith(dlsUser: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$$_AuthStateCopyWith(
          _$_AuthState value, $Res Function(_$_AuthState) then) =
      __$$_AuthStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool loading,
      String? failure,
      bool loginValid,
      bool passwordValid,
      DLSUser? dlsUser,
      String? login,
      String? password,
      String? lastUsername});

  @override
  $DLSUserCopyWith<$Res>? get dlsUser;
}

/// @nodoc
class __$$_AuthStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthState>
    implements _$$_AuthStateCopyWith<$Res> {
  __$$_AuthStateCopyWithImpl(
      _$_AuthState _value, $Res Function(_$_AuthState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? failure = freezed,
    Object? loginValid = null,
    Object? passwordValid = null,
    Object? dlsUser = freezed,
    Object? login = freezed,
    Object? password = freezed,
    Object? lastUsername = freezed,
  }) {
    return _then(_$_AuthState(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as String?,
      loginValid: null == loginValid
          ? _value.loginValid
          : loginValid // ignore: cast_nullable_to_non_nullable
              as bool,
      passwordValid: null == passwordValid
          ? _value.passwordValid
          : passwordValid // ignore: cast_nullable_to_non_nullable
              as bool,
      dlsUser: freezed == dlsUser
          ? _value.dlsUser
          : dlsUser // ignore: cast_nullable_to_non_nullable
              as DLSUser?,
      login: freezed == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      lastUsername: freezed == lastUsername
          ? _value.lastUsername
          : lastUsername // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_AuthState implements _AuthState {
  const _$_AuthState(
      {required this.loading,
      this.failure,
      required this.loginValid,
      required this.passwordValid,
      this.dlsUser,
      this.login,
      this.password,
      this.lastUsername});

  @override
  final bool loading;
  @override
  final String? failure;
  @override
  final bool loginValid;
  @override
  final bool passwordValid;
  @override
  final DLSUser? dlsUser;
  @override
  final String? login;
  @override
  final String? password;
  @override
  final String? lastUsername;

  @override
  String toString() {
    return 'AuthState(loading: $loading, failure: $failure, loginValid: $loginValid, passwordValid: $passwordValid, dlsUser: $dlsUser, login: $login, password: $password, lastUsername: $lastUsername)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthState &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.loginValid, loginValid) ||
                other.loginValid == loginValid) &&
            (identical(other.passwordValid, passwordValid) ||
                other.passwordValid == passwordValid) &&
            (identical(other.dlsUser, dlsUser) || other.dlsUser == dlsUser) &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.lastUsername, lastUsername) ||
                other.lastUsername == lastUsername));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading, failure, loginValid,
      passwordValid, dlsUser, login, password, lastUsername);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      __$$_AuthStateCopyWithImpl<_$_AuthState>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
      {required final bool loading,
      final String? failure,
      required final bool loginValid,
      required final bool passwordValid,
      final DLSUser? dlsUser,
      final String? login,
      final String? password,
      final String? lastUsername}) = _$_AuthState;

  @override
  bool get loading;
  @override
  String? get failure;
  @override
  bool get loginValid;
  @override
  bool get passwordValid;
  @override
  DLSUser? get dlsUser;
  @override
  String? get login;
  @override
  String? get password;
  @override
  String? get lastUsername;
  @override
  @JsonKey(ignore: true)
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}
