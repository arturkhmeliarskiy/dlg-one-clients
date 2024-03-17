// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'settings_pin_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SettingsPinEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String val, String pinHash) tap,
    required TResult Function() backspace,
    required TResult Function() reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String val, String pinHash)? tap,
    TResult? Function()? backspace,
    TResult? Function()? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String val, String pinHash)? tap,
    TResult Function()? backspace,
    TResult Function()? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TapPinSettingsPinEvent value) tap,
    required TResult Function(_BackspacePinSettingsPinEvent value) backspace,
    required TResult Function(_ResetPinSettingsPinEvent value) reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TapPinSettingsPinEvent value)? tap,
    TResult? Function(_BackspacePinSettingsPinEvent value)? backspace,
    TResult? Function(_ResetPinSettingsPinEvent value)? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TapPinSettingsPinEvent value)? tap,
    TResult Function(_BackspacePinSettingsPinEvent value)? backspace,
    TResult Function(_ResetPinSettingsPinEvent value)? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsPinEventCopyWith<$Res> {
  factory $SettingsPinEventCopyWith(
          SettingsPinEvent value, $Res Function(SettingsPinEvent) then) =
      _$SettingsPinEventCopyWithImpl<$Res, SettingsPinEvent>;
}

/// @nodoc
class _$SettingsPinEventCopyWithImpl<$Res, $Val extends SettingsPinEvent>
    implements $SettingsPinEventCopyWith<$Res> {
  _$SettingsPinEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_TapPinSettingsPinEventCopyWith<$Res> {
  factory _$$_TapPinSettingsPinEventCopyWith(_$_TapPinSettingsPinEvent value,
          $Res Function(_$_TapPinSettingsPinEvent) then) =
      __$$_TapPinSettingsPinEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String val, String pinHash});
}

/// @nodoc
class __$$_TapPinSettingsPinEventCopyWithImpl<$Res>
    extends _$SettingsPinEventCopyWithImpl<$Res, _$_TapPinSettingsPinEvent>
    implements _$$_TapPinSettingsPinEventCopyWith<$Res> {
  __$$_TapPinSettingsPinEventCopyWithImpl(_$_TapPinSettingsPinEvent _value,
      $Res Function(_$_TapPinSettingsPinEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? val = null,
    Object? pinHash = null,
  }) {
    return _then(_$_TapPinSettingsPinEvent(
      null == val
          ? _value.val
          : val // ignore: cast_nullable_to_non_nullable
              as String,
      null == pinHash
          ? _value.pinHash
          : pinHash // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TapPinSettingsPinEvent implements _TapPinSettingsPinEvent {
  const _$_TapPinSettingsPinEvent(this.val, this.pinHash);

  @override
  final String val;
  @override
  final String pinHash;

  @override
  String toString() {
    return 'SettingsPinEvent.tap(val: $val, pinHash: $pinHash)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TapPinSettingsPinEvent &&
            (identical(other.val, val) || other.val == val) &&
            (identical(other.pinHash, pinHash) || other.pinHash == pinHash));
  }

  @override
  int get hashCode => Object.hash(runtimeType, val, pinHash);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TapPinSettingsPinEventCopyWith<_$_TapPinSettingsPinEvent> get copyWith =>
      __$$_TapPinSettingsPinEventCopyWithImpl<_$_TapPinSettingsPinEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String val, String pinHash) tap,
    required TResult Function() backspace,
    required TResult Function() reset,
  }) {
    return tap(val, pinHash);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String val, String pinHash)? tap,
    TResult? Function()? backspace,
    TResult? Function()? reset,
  }) {
    return tap?.call(val, pinHash);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String val, String pinHash)? tap,
    TResult Function()? backspace,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (tap != null) {
      return tap(val, pinHash);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TapPinSettingsPinEvent value) tap,
    required TResult Function(_BackspacePinSettingsPinEvent value) backspace,
    required TResult Function(_ResetPinSettingsPinEvent value) reset,
  }) {
    return tap(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TapPinSettingsPinEvent value)? tap,
    TResult? Function(_BackspacePinSettingsPinEvent value)? backspace,
    TResult? Function(_ResetPinSettingsPinEvent value)? reset,
  }) {
    return tap?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TapPinSettingsPinEvent value)? tap,
    TResult Function(_BackspacePinSettingsPinEvent value)? backspace,
    TResult Function(_ResetPinSettingsPinEvent value)? reset,
    required TResult orElse(),
  }) {
    if (tap != null) {
      return tap(this);
    }
    return orElse();
  }
}

abstract class _TapPinSettingsPinEvent implements SettingsPinEvent {
  const factory _TapPinSettingsPinEvent(
      final String val, final String pinHash) = _$_TapPinSettingsPinEvent;

  String get val;
  String get pinHash;
  @JsonKey(ignore: true)
  _$$_TapPinSettingsPinEventCopyWith<_$_TapPinSettingsPinEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_BackspacePinSettingsPinEventCopyWith<$Res> {
  factory _$$_BackspacePinSettingsPinEventCopyWith(
          _$_BackspacePinSettingsPinEvent value,
          $Res Function(_$_BackspacePinSettingsPinEvent) then) =
      __$$_BackspacePinSettingsPinEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_BackspacePinSettingsPinEventCopyWithImpl<$Res>
    extends _$SettingsPinEventCopyWithImpl<$Res,
        _$_BackspacePinSettingsPinEvent>
    implements _$$_BackspacePinSettingsPinEventCopyWith<$Res> {
  __$$_BackspacePinSettingsPinEventCopyWithImpl(
      _$_BackspacePinSettingsPinEvent _value,
      $Res Function(_$_BackspacePinSettingsPinEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_BackspacePinSettingsPinEvent implements _BackspacePinSettingsPinEvent {
  const _$_BackspacePinSettingsPinEvent();

  @override
  String toString() {
    return 'SettingsPinEvent.backspace()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BackspacePinSettingsPinEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String val, String pinHash) tap,
    required TResult Function() backspace,
    required TResult Function() reset,
  }) {
    return backspace();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String val, String pinHash)? tap,
    TResult? Function()? backspace,
    TResult? Function()? reset,
  }) {
    return backspace?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String val, String pinHash)? tap,
    TResult Function()? backspace,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (backspace != null) {
      return backspace();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TapPinSettingsPinEvent value) tap,
    required TResult Function(_BackspacePinSettingsPinEvent value) backspace,
    required TResult Function(_ResetPinSettingsPinEvent value) reset,
  }) {
    return backspace(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TapPinSettingsPinEvent value)? tap,
    TResult? Function(_BackspacePinSettingsPinEvent value)? backspace,
    TResult? Function(_ResetPinSettingsPinEvent value)? reset,
  }) {
    return backspace?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TapPinSettingsPinEvent value)? tap,
    TResult Function(_BackspacePinSettingsPinEvent value)? backspace,
    TResult Function(_ResetPinSettingsPinEvent value)? reset,
    required TResult orElse(),
  }) {
    if (backspace != null) {
      return backspace(this);
    }
    return orElse();
  }
}

abstract class _BackspacePinSettingsPinEvent implements SettingsPinEvent {
  const factory _BackspacePinSettingsPinEvent() =
      _$_BackspacePinSettingsPinEvent;
}

/// @nodoc
abstract class _$$_ResetPinSettingsPinEventCopyWith<$Res> {
  factory _$$_ResetPinSettingsPinEventCopyWith(
          _$_ResetPinSettingsPinEvent value,
          $Res Function(_$_ResetPinSettingsPinEvent) then) =
      __$$_ResetPinSettingsPinEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ResetPinSettingsPinEventCopyWithImpl<$Res>
    extends _$SettingsPinEventCopyWithImpl<$Res, _$_ResetPinSettingsPinEvent>
    implements _$$_ResetPinSettingsPinEventCopyWith<$Res> {
  __$$_ResetPinSettingsPinEventCopyWithImpl(_$_ResetPinSettingsPinEvent _value,
      $Res Function(_$_ResetPinSettingsPinEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ResetPinSettingsPinEvent implements _ResetPinSettingsPinEvent {
  const _$_ResetPinSettingsPinEvent();

  @override
  String toString() {
    return 'SettingsPinEvent.reset()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResetPinSettingsPinEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String val, String pinHash) tap,
    required TResult Function() backspace,
    required TResult Function() reset,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String val, String pinHash)? tap,
    TResult? Function()? backspace,
    TResult? Function()? reset,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String val, String pinHash)? tap,
    TResult Function()? backspace,
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
    required TResult Function(_TapPinSettingsPinEvent value) tap,
    required TResult Function(_BackspacePinSettingsPinEvent value) backspace,
    required TResult Function(_ResetPinSettingsPinEvent value) reset,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TapPinSettingsPinEvent value)? tap,
    TResult? Function(_BackspacePinSettingsPinEvent value)? backspace,
    TResult? Function(_ResetPinSettingsPinEvent value)? reset,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TapPinSettingsPinEvent value)? tap,
    TResult Function(_BackspacePinSettingsPinEvent value)? backspace,
    TResult Function(_ResetPinSettingsPinEvent value)? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class _ResetPinSettingsPinEvent implements SettingsPinEvent {
  const factory _ResetPinSettingsPinEvent() = _$_ResetPinSettingsPinEvent;
}

/// @nodoc
mixin _$SettingsPinState {
  String get pin => throw _privateConstructorUsedError;
  String get repin => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pin, String repin) valid,
    required TResult Function(String pin, String repin) data,
    required TResult Function(String pin, String repin) invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String pin, String repin)? valid,
    TResult? Function(String pin, String repin)? data,
    TResult? Function(String pin, String repin)? invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pin, String repin)? valid,
    TResult Function(String pin, String repin)? data,
    TResult Function(String pin, String repin)? invalid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ValidSettingsPinState value) valid,
    required TResult Function(_DataSettingsPinState value) data,
    required TResult Function(_InvalidSettingsPinState value) invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ValidSettingsPinState value)? valid,
    TResult? Function(_DataSettingsPinState value)? data,
    TResult? Function(_InvalidSettingsPinState value)? invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ValidSettingsPinState value)? valid,
    TResult Function(_DataSettingsPinState value)? data,
    TResult Function(_InvalidSettingsPinState value)? invalid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettingsPinStateCopyWith<SettingsPinState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsPinStateCopyWith<$Res> {
  factory $SettingsPinStateCopyWith(
          SettingsPinState value, $Res Function(SettingsPinState) then) =
      _$SettingsPinStateCopyWithImpl<$Res, SettingsPinState>;
  @useResult
  $Res call({String pin, String repin});
}

/// @nodoc
class _$SettingsPinStateCopyWithImpl<$Res, $Val extends SettingsPinState>
    implements $SettingsPinStateCopyWith<$Res> {
  _$SettingsPinStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pin = null,
    Object? repin = null,
  }) {
    return _then(_value.copyWith(
      pin: null == pin
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String,
      repin: null == repin
          ? _value.repin
          : repin // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ValidSettingsPinStateCopyWith<$Res>
    implements $SettingsPinStateCopyWith<$Res> {
  factory _$$_ValidSettingsPinStateCopyWith(_$_ValidSettingsPinState value,
          $Res Function(_$_ValidSettingsPinState) then) =
      __$$_ValidSettingsPinStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String pin, String repin});
}

/// @nodoc
class __$$_ValidSettingsPinStateCopyWithImpl<$Res>
    extends _$SettingsPinStateCopyWithImpl<$Res, _$_ValidSettingsPinState>
    implements _$$_ValidSettingsPinStateCopyWith<$Res> {
  __$$_ValidSettingsPinStateCopyWithImpl(_$_ValidSettingsPinState _value,
      $Res Function(_$_ValidSettingsPinState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pin = null,
    Object? repin = null,
  }) {
    return _then(_$_ValidSettingsPinState(
      null == pin
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String,
      null == repin
          ? _value.repin
          : repin // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ValidSettingsPinState implements _ValidSettingsPinState {
  const _$_ValidSettingsPinState(this.pin, this.repin);

  @override
  final String pin;
  @override
  final String repin;

  @override
  String toString() {
    return 'SettingsPinState.valid(pin: $pin, repin: $repin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ValidSettingsPinState &&
            (identical(other.pin, pin) || other.pin == pin) &&
            (identical(other.repin, repin) || other.repin == repin));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pin, repin);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ValidSettingsPinStateCopyWith<_$_ValidSettingsPinState> get copyWith =>
      __$$_ValidSettingsPinStateCopyWithImpl<_$_ValidSettingsPinState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pin, String repin) valid,
    required TResult Function(String pin, String repin) data,
    required TResult Function(String pin, String repin) invalid,
  }) {
    return valid(pin, repin);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String pin, String repin)? valid,
    TResult? Function(String pin, String repin)? data,
    TResult? Function(String pin, String repin)? invalid,
  }) {
    return valid?.call(pin, repin);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pin, String repin)? valid,
    TResult Function(String pin, String repin)? data,
    TResult Function(String pin, String repin)? invalid,
    required TResult orElse(),
  }) {
    if (valid != null) {
      return valid(pin, repin);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ValidSettingsPinState value) valid,
    required TResult Function(_DataSettingsPinState value) data,
    required TResult Function(_InvalidSettingsPinState value) invalid,
  }) {
    return valid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ValidSettingsPinState value)? valid,
    TResult? Function(_DataSettingsPinState value)? data,
    TResult? Function(_InvalidSettingsPinState value)? invalid,
  }) {
    return valid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ValidSettingsPinState value)? valid,
    TResult Function(_DataSettingsPinState value)? data,
    TResult Function(_InvalidSettingsPinState value)? invalid,
    required TResult orElse(),
  }) {
    if (valid != null) {
      return valid(this);
    }
    return orElse();
  }
}

abstract class _ValidSettingsPinState implements SettingsPinState {
  const factory _ValidSettingsPinState(final String pin, final String repin) =
      _$_ValidSettingsPinState;

  @override
  String get pin;
  @override
  String get repin;
  @override
  @JsonKey(ignore: true)
  _$$_ValidSettingsPinStateCopyWith<_$_ValidSettingsPinState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DataSettingsPinStateCopyWith<$Res>
    implements $SettingsPinStateCopyWith<$Res> {
  factory _$$_DataSettingsPinStateCopyWith(_$_DataSettingsPinState value,
          $Res Function(_$_DataSettingsPinState) then) =
      __$$_DataSettingsPinStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String pin, String repin});
}

/// @nodoc
class __$$_DataSettingsPinStateCopyWithImpl<$Res>
    extends _$SettingsPinStateCopyWithImpl<$Res, _$_DataSettingsPinState>
    implements _$$_DataSettingsPinStateCopyWith<$Res> {
  __$$_DataSettingsPinStateCopyWithImpl(_$_DataSettingsPinState _value,
      $Res Function(_$_DataSettingsPinState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pin = null,
    Object? repin = null,
  }) {
    return _then(_$_DataSettingsPinState(
      null == pin
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String,
      null == repin
          ? _value.repin
          : repin // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DataSettingsPinState implements _DataSettingsPinState {
  const _$_DataSettingsPinState(this.pin, this.repin);

  @override
  final String pin;
  @override
  final String repin;

  @override
  String toString() {
    return 'SettingsPinState.data(pin: $pin, repin: $repin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataSettingsPinState &&
            (identical(other.pin, pin) || other.pin == pin) &&
            (identical(other.repin, repin) || other.repin == repin));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pin, repin);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataSettingsPinStateCopyWith<_$_DataSettingsPinState> get copyWith =>
      __$$_DataSettingsPinStateCopyWithImpl<_$_DataSettingsPinState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pin, String repin) valid,
    required TResult Function(String pin, String repin) data,
    required TResult Function(String pin, String repin) invalid,
  }) {
    return data(pin, repin);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String pin, String repin)? valid,
    TResult? Function(String pin, String repin)? data,
    TResult? Function(String pin, String repin)? invalid,
  }) {
    return data?.call(pin, repin);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pin, String repin)? valid,
    TResult Function(String pin, String repin)? data,
    TResult Function(String pin, String repin)? invalid,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(pin, repin);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ValidSettingsPinState value) valid,
    required TResult Function(_DataSettingsPinState value) data,
    required TResult Function(_InvalidSettingsPinState value) invalid,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ValidSettingsPinState value)? valid,
    TResult? Function(_DataSettingsPinState value)? data,
    TResult? Function(_InvalidSettingsPinState value)? invalid,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ValidSettingsPinState value)? valid,
    TResult Function(_DataSettingsPinState value)? data,
    TResult Function(_InvalidSettingsPinState value)? invalid,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _DataSettingsPinState implements SettingsPinState {
  const factory _DataSettingsPinState(final String pin, final String repin) =
      _$_DataSettingsPinState;

  @override
  String get pin;
  @override
  String get repin;
  @override
  @JsonKey(ignore: true)
  _$$_DataSettingsPinStateCopyWith<_$_DataSettingsPinState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InvalidSettingsPinStateCopyWith<$Res>
    implements $SettingsPinStateCopyWith<$Res> {
  factory _$$_InvalidSettingsPinStateCopyWith(_$_InvalidSettingsPinState value,
          $Res Function(_$_InvalidSettingsPinState) then) =
      __$$_InvalidSettingsPinStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String pin, String repin});
}

/// @nodoc
class __$$_InvalidSettingsPinStateCopyWithImpl<$Res>
    extends _$SettingsPinStateCopyWithImpl<$Res, _$_InvalidSettingsPinState>
    implements _$$_InvalidSettingsPinStateCopyWith<$Res> {
  __$$_InvalidSettingsPinStateCopyWithImpl(_$_InvalidSettingsPinState _value,
      $Res Function(_$_InvalidSettingsPinState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pin = null,
    Object? repin = null,
  }) {
    return _then(_$_InvalidSettingsPinState(
      null == pin
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String,
      null == repin
          ? _value.repin
          : repin // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_InvalidSettingsPinState implements _InvalidSettingsPinState {
  const _$_InvalidSettingsPinState(this.pin, this.repin);

  @override
  final String pin;
  @override
  final String repin;

  @override
  String toString() {
    return 'SettingsPinState.invalid(pin: $pin, repin: $repin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InvalidSettingsPinState &&
            (identical(other.pin, pin) || other.pin == pin) &&
            (identical(other.repin, repin) || other.repin == repin));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pin, repin);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InvalidSettingsPinStateCopyWith<_$_InvalidSettingsPinState>
      get copyWith =>
          __$$_InvalidSettingsPinStateCopyWithImpl<_$_InvalidSettingsPinState>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pin, String repin) valid,
    required TResult Function(String pin, String repin) data,
    required TResult Function(String pin, String repin) invalid,
  }) {
    return invalid(pin, repin);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String pin, String repin)? valid,
    TResult? Function(String pin, String repin)? data,
    TResult? Function(String pin, String repin)? invalid,
  }) {
    return invalid?.call(pin, repin);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pin, String repin)? valid,
    TResult Function(String pin, String repin)? data,
    TResult Function(String pin, String repin)? invalid,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid(pin, repin);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ValidSettingsPinState value) valid,
    required TResult Function(_DataSettingsPinState value) data,
    required TResult Function(_InvalidSettingsPinState value) invalid,
  }) {
    return invalid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ValidSettingsPinState value)? valid,
    TResult? Function(_DataSettingsPinState value)? data,
    TResult? Function(_InvalidSettingsPinState value)? invalid,
  }) {
    return invalid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ValidSettingsPinState value)? valid,
    TResult Function(_DataSettingsPinState value)? data,
    TResult Function(_InvalidSettingsPinState value)? invalid,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid(this);
    }
    return orElse();
  }
}

abstract class _InvalidSettingsPinState implements SettingsPinState {
  const factory _InvalidSettingsPinState(final String pin, final String repin) =
      _$_InvalidSettingsPinState;

  @override
  String get pin;
  @override
  String get repin;
  @override
  @JsonKey(ignore: true)
  _$$_InvalidSettingsPinStateCopyWith<_$_InvalidSettingsPinState>
      get copyWith => throw _privateConstructorUsedError;
}
