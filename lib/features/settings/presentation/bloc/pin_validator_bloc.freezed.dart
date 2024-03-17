// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pin_validator_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PinValidatorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pin) validate,
    required TResult Function() reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String pin)? validate,
    TResult? Function()? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pin)? validate,
    TResult Function()? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ValidatePinValidatorEvent value) validate,
    required TResult Function(_ResetPinValidatorEvent value) reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ValidatePinValidatorEvent value)? validate,
    TResult? Function(_ResetPinValidatorEvent value)? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ValidatePinValidatorEvent value)? validate,
    TResult Function(_ResetPinValidatorEvent value)? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PinValidatorEventCopyWith<$Res> {
  factory $PinValidatorEventCopyWith(
          PinValidatorEvent value, $Res Function(PinValidatorEvent) then) =
      _$PinValidatorEventCopyWithImpl<$Res, PinValidatorEvent>;
}

/// @nodoc
class _$PinValidatorEventCopyWithImpl<$Res, $Val extends PinValidatorEvent>
    implements $PinValidatorEventCopyWith<$Res> {
  _$PinValidatorEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ValidatePinValidatorEventCopyWith<$Res> {
  factory _$$_ValidatePinValidatorEventCopyWith(
          _$_ValidatePinValidatorEvent value,
          $Res Function(_$_ValidatePinValidatorEvent) then) =
      __$$_ValidatePinValidatorEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String pin});
}

/// @nodoc
class __$$_ValidatePinValidatorEventCopyWithImpl<$Res>
    extends _$PinValidatorEventCopyWithImpl<$Res, _$_ValidatePinValidatorEvent>
    implements _$$_ValidatePinValidatorEventCopyWith<$Res> {
  __$$_ValidatePinValidatorEventCopyWithImpl(
      _$_ValidatePinValidatorEvent _value,
      $Res Function(_$_ValidatePinValidatorEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pin = null,
  }) {
    return _then(_$_ValidatePinValidatorEvent(
      null == pin
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ValidatePinValidatorEvent implements _ValidatePinValidatorEvent {
  const _$_ValidatePinValidatorEvent(this.pin);

  @override
  final String pin;

  @override
  String toString() {
    return 'PinValidatorEvent.validate(pin: $pin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ValidatePinValidatorEvent &&
            (identical(other.pin, pin) || other.pin == pin));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pin);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ValidatePinValidatorEventCopyWith<_$_ValidatePinValidatorEvent>
      get copyWith => __$$_ValidatePinValidatorEventCopyWithImpl<
          _$_ValidatePinValidatorEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pin) validate,
    required TResult Function() reset,
  }) {
    return validate(pin);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String pin)? validate,
    TResult? Function()? reset,
  }) {
    return validate?.call(pin);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pin)? validate,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (validate != null) {
      return validate(pin);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ValidatePinValidatorEvent value) validate,
    required TResult Function(_ResetPinValidatorEvent value) reset,
  }) {
    return validate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ValidatePinValidatorEvent value)? validate,
    TResult? Function(_ResetPinValidatorEvent value)? reset,
  }) {
    return validate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ValidatePinValidatorEvent value)? validate,
    TResult Function(_ResetPinValidatorEvent value)? reset,
    required TResult orElse(),
  }) {
    if (validate != null) {
      return validate(this);
    }
    return orElse();
  }
}

abstract class _ValidatePinValidatorEvent implements PinValidatorEvent {
  const factory _ValidatePinValidatorEvent(final String pin) =
      _$_ValidatePinValidatorEvent;

  String get pin;
  @JsonKey(ignore: true)
  _$$_ValidatePinValidatorEventCopyWith<_$_ValidatePinValidatorEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ResetPinValidatorEventCopyWith<$Res> {
  factory _$$_ResetPinValidatorEventCopyWith(_$_ResetPinValidatorEvent value,
          $Res Function(_$_ResetPinValidatorEvent) then) =
      __$$_ResetPinValidatorEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ResetPinValidatorEventCopyWithImpl<$Res>
    extends _$PinValidatorEventCopyWithImpl<$Res, _$_ResetPinValidatorEvent>
    implements _$$_ResetPinValidatorEventCopyWith<$Res> {
  __$$_ResetPinValidatorEventCopyWithImpl(_$_ResetPinValidatorEvent _value,
      $Res Function(_$_ResetPinValidatorEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ResetPinValidatorEvent implements _ResetPinValidatorEvent {
  const _$_ResetPinValidatorEvent();

  @override
  String toString() {
    return 'PinValidatorEvent.reset()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResetPinValidatorEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pin) validate,
    required TResult Function() reset,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String pin)? validate,
    TResult? Function()? reset,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pin)? validate,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ValidatePinValidatorEvent value) validate,
    required TResult Function(_ResetPinValidatorEvent value) reset,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ValidatePinValidatorEvent value)? validate,
    TResult? Function(_ResetPinValidatorEvent value)? reset,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ValidatePinValidatorEvent value)? validate,
    TResult Function(_ResetPinValidatorEvent value)? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class _ResetPinValidatorEvent implements PinValidatorEvent {
  const factory _ResetPinValidatorEvent() = _$_ResetPinValidatorEvent;
}

/// @nodoc
mixin _$PinValidatorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() valid,
    required TResult Function() data,
    required TResult Function() invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? valid,
    TResult? Function()? data,
    TResult? Function()? invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? valid,
    TResult Function()? data,
    TResult Function()? invalid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ValidState value) valid,
    required TResult Function(_DataState value) data,
    required TResult Function(_InvalidState value) invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ValidState value)? valid,
    TResult? Function(_DataState value)? data,
    TResult? Function(_InvalidState value)? invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ValidState value)? valid,
    TResult Function(_DataState value)? data,
    TResult Function(_InvalidState value)? invalid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PinValidatorStateCopyWith<$Res> {
  factory $PinValidatorStateCopyWith(
          PinValidatorState value, $Res Function(PinValidatorState) then) =
      _$PinValidatorStateCopyWithImpl<$Res, PinValidatorState>;
}

/// @nodoc
class _$PinValidatorStateCopyWithImpl<$Res, $Val extends PinValidatorState>
    implements $PinValidatorStateCopyWith<$Res> {
  _$PinValidatorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ValidStateCopyWith<$Res> {
  factory _$$_ValidStateCopyWith(
          _$_ValidState value, $Res Function(_$_ValidState) then) =
      __$$_ValidStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ValidStateCopyWithImpl<$Res>
    extends _$PinValidatorStateCopyWithImpl<$Res, _$_ValidState>
    implements _$$_ValidStateCopyWith<$Res> {
  __$$_ValidStateCopyWithImpl(
      _$_ValidState _value, $Res Function(_$_ValidState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ValidState implements _ValidState {
  const _$_ValidState();

  @override
  String toString() {
    return 'PinValidatorState.valid()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ValidState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() valid,
    required TResult Function() data,
    required TResult Function() invalid,
  }) {
    return valid();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? valid,
    TResult? Function()? data,
    TResult? Function()? invalid,
  }) {
    return valid?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? valid,
    TResult Function()? data,
    TResult Function()? invalid,
    required TResult orElse(),
  }) {
    if (valid != null) {
      return valid();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ValidState value) valid,
    required TResult Function(_DataState value) data,
    required TResult Function(_InvalidState value) invalid,
  }) {
    return valid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ValidState value)? valid,
    TResult? Function(_DataState value)? data,
    TResult? Function(_InvalidState value)? invalid,
  }) {
    return valid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ValidState value)? valid,
    TResult Function(_DataState value)? data,
    TResult Function(_InvalidState value)? invalid,
    required TResult orElse(),
  }) {
    if (valid != null) {
      return valid(this);
    }
    return orElse();
  }
}

abstract class _ValidState implements PinValidatorState {
  const factory _ValidState() = _$_ValidState;
}

/// @nodoc
abstract class _$$_DataStateCopyWith<$Res> {
  factory _$$_DataStateCopyWith(
          _$_DataState value, $Res Function(_$_DataState) then) =
      __$$_DataStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DataStateCopyWithImpl<$Res>
    extends _$PinValidatorStateCopyWithImpl<$Res, _$_DataState>
    implements _$$_DataStateCopyWith<$Res> {
  __$$_DataStateCopyWithImpl(
      _$_DataState _value, $Res Function(_$_DataState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_DataState implements _DataState {
  const _$_DataState();

  @override
  String toString() {
    return 'PinValidatorState.data()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_DataState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() valid,
    required TResult Function() data,
    required TResult Function() invalid,
  }) {
    return data();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? valid,
    TResult? Function()? data,
    TResult? Function()? invalid,
  }) {
    return data?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? valid,
    TResult Function()? data,
    TResult Function()? invalid,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ValidState value) valid,
    required TResult Function(_DataState value) data,
    required TResult Function(_InvalidState value) invalid,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ValidState value)? valid,
    TResult? Function(_DataState value)? data,
    TResult? Function(_InvalidState value)? invalid,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ValidState value)? valid,
    TResult Function(_DataState value)? data,
    TResult Function(_InvalidState value)? invalid,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _DataState implements PinValidatorState {
  const factory _DataState() = _$_DataState;
}

/// @nodoc
abstract class _$$_InvalidStateCopyWith<$Res> {
  factory _$$_InvalidStateCopyWith(
          _$_InvalidState value, $Res Function(_$_InvalidState) then) =
      __$$_InvalidStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InvalidStateCopyWithImpl<$Res>
    extends _$PinValidatorStateCopyWithImpl<$Res, _$_InvalidState>
    implements _$$_InvalidStateCopyWith<$Res> {
  __$$_InvalidStateCopyWithImpl(
      _$_InvalidState _value, $Res Function(_$_InvalidState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InvalidState implements _InvalidState {
  const _$_InvalidState();

  @override
  String toString() {
    return 'PinValidatorState.invalid()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_InvalidState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() valid,
    required TResult Function() data,
    required TResult Function() invalid,
  }) {
    return invalid();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? valid,
    TResult? Function()? data,
    TResult? Function()? invalid,
  }) {
    return invalid?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? valid,
    TResult Function()? data,
    TResult Function()? invalid,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ValidState value) valid,
    required TResult Function(_DataState value) data,
    required TResult Function(_InvalidState value) invalid,
  }) {
    return invalid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ValidState value)? valid,
    TResult? Function(_DataState value)? data,
    TResult? Function(_InvalidState value)? invalid,
  }) {
    return invalid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ValidState value)? valid,
    TResult Function(_DataState value)? data,
    TResult Function(_InvalidState value)? invalid,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid(this);
    }
    return orElse();
  }
}

abstract class _InvalidState implements PinValidatorState {
  const factory _InvalidState() = _$_InvalidState;
}
