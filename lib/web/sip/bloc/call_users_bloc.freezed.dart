// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'call_users_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CallUsersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onTap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onTap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onTap,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnTapUsersEvent value) onTap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnTapUsersEvent value)? onTap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnTapUsersEvent value)? onTap,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CallUsersEventCopyWith<$Res> {
  factory $CallUsersEventCopyWith(
          CallUsersEvent value, $Res Function(CallUsersEvent) then) =
      _$CallUsersEventCopyWithImpl<$Res, CallUsersEvent>;
}

/// @nodoc
class _$CallUsersEventCopyWithImpl<$Res, $Val extends CallUsersEvent>
    implements $CallUsersEventCopyWith<$Res> {
  _$CallUsersEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_OnTapUsersEventCopyWith<$Res> {
  factory _$$_OnTapUsersEventCopyWith(
          _$_OnTapUsersEvent value, $Res Function(_$_OnTapUsersEvent) then) =
      __$$_OnTapUsersEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_OnTapUsersEventCopyWithImpl<$Res>
    extends _$CallUsersEventCopyWithImpl<$Res, _$_OnTapUsersEvent>
    implements _$$_OnTapUsersEventCopyWith<$Res> {
  __$$_OnTapUsersEventCopyWithImpl(
      _$_OnTapUsersEvent _value, $Res Function(_$_OnTapUsersEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_OnTapUsersEvent implements _OnTapUsersEvent {
  const _$_OnTapUsersEvent();

  @override
  String toString() {
    return 'CallUsersEvent.onTap()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_OnTapUsersEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onTap,
  }) {
    return onTap();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onTap,
  }) {
    return onTap?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onTap,
    required TResult orElse(),
  }) {
    if (onTap != null) {
      return onTap();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnTapUsersEvent value) onTap,
  }) {
    return onTap(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnTapUsersEvent value)? onTap,
  }) {
    return onTap?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnTapUsersEvent value)? onTap,
    required TResult orElse(),
  }) {
    if (onTap != null) {
      return onTap(this);
    }
    return orElse();
  }
}

abstract class _OnTapUsersEvent implements CallUsersEvent {
  const factory _OnTapUsersEvent() = _$_OnTapUsersEvent;
}

/// @nodoc
mixin _$CallUsersState {
  bool get isOpened => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CallUsersStateCopyWith<CallUsersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CallUsersStateCopyWith<$Res> {
  factory $CallUsersStateCopyWith(
          CallUsersState value, $Res Function(CallUsersState) then) =
      _$CallUsersStateCopyWithImpl<$Res, CallUsersState>;
  @useResult
  $Res call({bool isOpened});
}

/// @nodoc
class _$CallUsersStateCopyWithImpl<$Res, $Val extends CallUsersState>
    implements $CallUsersStateCopyWith<$Res> {
  _$CallUsersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isOpened = null,
  }) {
    return _then(_value.copyWith(
      isOpened: null == isOpened
          ? _value.isOpened
          : isOpened // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CallUsersStateCopyWith<$Res>
    implements $CallUsersStateCopyWith<$Res> {
  factory _$$_CallUsersStateCopyWith(
          _$_CallUsersState value, $Res Function(_$_CallUsersState) then) =
      __$$_CallUsersStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isOpened});
}

/// @nodoc
class __$$_CallUsersStateCopyWithImpl<$Res>
    extends _$CallUsersStateCopyWithImpl<$Res, _$_CallUsersState>
    implements _$$_CallUsersStateCopyWith<$Res> {
  __$$_CallUsersStateCopyWithImpl(
      _$_CallUsersState _value, $Res Function(_$_CallUsersState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isOpened = null,
  }) {
    return _then(_$_CallUsersState(
      isOpened: null == isOpened
          ? _value.isOpened
          : isOpened // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_CallUsersState implements _CallUsersState {
  const _$_CallUsersState({required this.isOpened});

  @override
  final bool isOpened;

  @override
  String toString() {
    return 'CallUsersState(isOpened: $isOpened)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CallUsersState &&
            (identical(other.isOpened, isOpened) ||
                other.isOpened == isOpened));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isOpened);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CallUsersStateCopyWith<_$_CallUsersState> get copyWith =>
      __$$_CallUsersStateCopyWithImpl<_$_CallUsersState>(this, _$identity);
}

abstract class _CallUsersState implements CallUsersState {
  const factory _CallUsersState({required final bool isOpened}) =
      _$_CallUsersState;

  @override
  bool get isOpened;
  @override
  @JsonKey(ignore: true)
  _$$_CallUsersStateCopyWith<_$_CallUsersState> get copyWith =>
      throw _privateConstructorUsedError;
}
