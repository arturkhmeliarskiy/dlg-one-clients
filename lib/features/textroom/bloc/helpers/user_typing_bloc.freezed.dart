// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_typing_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserTypingEvent {
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateUserTypingEvent value) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateUserTypingEvent value)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateUserTypingEvent value)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserTypingEventCopyWith<UserTypingEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserTypingEventCopyWith<$Res> {
  factory $UserTypingEventCopyWith(
          UserTypingEvent value, $Res Function(UserTypingEvent) then) =
      _$UserTypingEventCopyWithImpl<$Res, UserTypingEvent>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$UserTypingEventCopyWithImpl<$Res, $Val extends UserTypingEvent>
    implements $UserTypingEventCopyWith<$Res> {
  _$UserTypingEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UpdateUserTypingEventCopyWith<$Res>
    implements $UserTypingEventCopyWith<$Res> {
  factory _$$_UpdateUserTypingEventCopyWith(_$_UpdateUserTypingEvent value,
          $Res Function(_$_UpdateUserTypingEvent) then) =
      __$$_UpdateUserTypingEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_UpdateUserTypingEventCopyWithImpl<$Res>
    extends _$UserTypingEventCopyWithImpl<$Res, _$_UpdateUserTypingEvent>
    implements _$$_UpdateUserTypingEventCopyWith<$Res> {
  __$$_UpdateUserTypingEventCopyWithImpl(_$_UpdateUserTypingEvent _value,
      $Res Function(_$_UpdateUserTypingEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_UpdateUserTypingEvent(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UpdateUserTypingEvent implements _UpdateUserTypingEvent {
  const _$_UpdateUserTypingEvent(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'UserTypingEvent.update(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateUserTypingEvent &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateUserTypingEventCopyWith<_$_UpdateUserTypingEvent> get copyWith =>
      __$$_UpdateUserTypingEventCopyWithImpl<_$_UpdateUserTypingEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) update,
  }) {
    return update(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? update,
  }) {
    return update?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateUserTypingEvent value) update,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateUserTypingEvent value)? update,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateUserTypingEvent value)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _UpdateUserTypingEvent implements UserTypingEvent {
  const factory _UpdateUserTypingEvent(final String message) =
      _$_UpdateUserTypingEvent;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateUserTypingEventCopyWith<_$_UpdateUserTypingEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserTypingState {
  String get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserTypingStateCopyWith<UserTypingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserTypingStateCopyWith<$Res> {
  factory $UserTypingStateCopyWith(
          UserTypingState value, $Res Function(UserTypingState) then) =
      _$UserTypingStateCopyWithImpl<$Res, UserTypingState>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$UserTypingStateCopyWithImpl<$Res, $Val extends UserTypingState>
    implements $UserTypingStateCopyWith<$Res> {
  _$UserTypingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserTypingStateCopyWith<$Res>
    implements $UserTypingStateCopyWith<$Res> {
  factory _$$_UserTypingStateCopyWith(
          _$_UserTypingState value, $Res Function(_$_UserTypingState) then) =
      __$$_UserTypingStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_UserTypingStateCopyWithImpl<$Res>
    extends _$UserTypingStateCopyWithImpl<$Res, _$_UserTypingState>
    implements _$$_UserTypingStateCopyWith<$Res> {
  __$$_UserTypingStateCopyWithImpl(
      _$_UserTypingState _value, $Res Function(_$_UserTypingState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_UserTypingState(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UserTypingState implements _UserTypingState {
  _$_UserTypingState({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'UserTypingState(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserTypingState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserTypingStateCopyWith<_$_UserTypingState> get copyWith =>
      __$$_UserTypingStateCopyWithImpl<_$_UserTypingState>(this, _$identity);
}

abstract class _UserTypingState implements UserTypingState {
  factory _UserTypingState({required final String message}) =
      _$_UserTypingState;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_UserTypingStateCopyWith<_$_UserTypingState> get copyWith =>
      throw _privateConstructorUsedError;
}
