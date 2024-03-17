// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'locker_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LockerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? pin, bool? bio, dynamic Function(bool, DLSUser?) callback)
        unlock,
    required TResult Function() clear,
    required TResult Function() save,
    required TResult Function(String? pin, String? repin, bool? enableBio,
            bool? isLocked, bool? loading, dynamic Function(bool)? callback)
        update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String? pin, bool? bio, dynamic Function(bool, DLSUser?) callback)?
        unlock,
    TResult? Function()? clear,
    TResult? Function()? save,
    TResult? Function(String? pin, String? repin, bool? enableBio,
            bool? isLocked, bool? loading, dynamic Function(bool)? callback)?
        update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? pin, bool? bio, dynamic Function(bool, DLSUser?) callback)?
        unlock,
    TResult Function()? clear,
    TResult Function()? save,
    TResult Function(String? pin, String? repin, bool? enableBio,
            bool? isLocked, bool? loading, dynamic Function(bool)? callback)?
        update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnlockLockerEvent value) unlock,
    required TResult Function(_ClearLockerEvent value) clear,
    required TResult Function(_SaveLockerEvent value) save,
    required TResult Function(_UpdateLockerEvent value) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnlockLockerEvent value)? unlock,
    TResult? Function(_ClearLockerEvent value)? clear,
    TResult? Function(_SaveLockerEvent value)? save,
    TResult? Function(_UpdateLockerEvent value)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnlockLockerEvent value)? unlock,
    TResult Function(_ClearLockerEvent value)? clear,
    TResult Function(_SaveLockerEvent value)? save,
    TResult Function(_UpdateLockerEvent value)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LockerEventCopyWith<$Res> {
  factory $LockerEventCopyWith(
          LockerEvent value, $Res Function(LockerEvent) then) =
      _$LockerEventCopyWithImpl<$Res, LockerEvent>;
}

/// @nodoc
class _$LockerEventCopyWithImpl<$Res, $Val extends LockerEvent>
    implements $LockerEventCopyWith<$Res> {
  _$LockerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_UnlockLockerEventCopyWith<$Res> {
  factory _$$_UnlockLockerEventCopyWith(_$_UnlockLockerEvent value,
          $Res Function(_$_UnlockLockerEvent) then) =
      __$$_UnlockLockerEventCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String? pin, bool? bio, dynamic Function(bool, DLSUser?) callback});
}

/// @nodoc
class __$$_UnlockLockerEventCopyWithImpl<$Res>
    extends _$LockerEventCopyWithImpl<$Res, _$_UnlockLockerEvent>
    implements _$$_UnlockLockerEventCopyWith<$Res> {
  __$$_UnlockLockerEventCopyWithImpl(
      _$_UnlockLockerEvent _value, $Res Function(_$_UnlockLockerEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pin = freezed,
    Object? bio = freezed,
    Object? callback = null,
  }) {
    return _then(_$_UnlockLockerEvent(
      pin: freezed == pin
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as bool?,
      callback: null == callback
          ? _value.callback
          : callback // ignore: cast_nullable_to_non_nullable
              as dynamic Function(bool, DLSUser?),
    ));
  }
}

/// @nodoc

class _$_UnlockLockerEvent extends _UnlockLockerEvent {
  const _$_UnlockLockerEvent({this.pin, this.bio, required this.callback})
      : super._();

  @override
  final String? pin;
  @override
  final bool? bio;
  @override
  final dynamic Function(bool, DLSUser?) callback;

  @override
  String toString() {
    return 'LockerEvent.unlock(pin: $pin, bio: $bio, callback: $callback)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UnlockLockerEvent &&
            (identical(other.pin, pin) || other.pin == pin) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.callback, callback) ||
                other.callback == callback));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pin, bio, callback);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UnlockLockerEventCopyWith<_$_UnlockLockerEvent> get copyWith =>
      __$$_UnlockLockerEventCopyWithImpl<_$_UnlockLockerEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? pin, bool? bio, dynamic Function(bool, DLSUser?) callback)
        unlock,
    required TResult Function() clear,
    required TResult Function() save,
    required TResult Function(String? pin, String? repin, bool? enableBio,
            bool? isLocked, bool? loading, dynamic Function(bool)? callback)
        update,
  }) {
    return unlock(pin, bio, callback);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String? pin, bool? bio, dynamic Function(bool, DLSUser?) callback)?
        unlock,
    TResult? Function()? clear,
    TResult? Function()? save,
    TResult? Function(String? pin, String? repin, bool? enableBio,
            bool? isLocked, bool? loading, dynamic Function(bool)? callback)?
        update,
  }) {
    return unlock?.call(pin, bio, callback);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? pin, bool? bio, dynamic Function(bool, DLSUser?) callback)?
        unlock,
    TResult Function()? clear,
    TResult Function()? save,
    TResult Function(String? pin, String? repin, bool? enableBio,
            bool? isLocked, bool? loading, dynamic Function(bool)? callback)?
        update,
    required TResult orElse(),
  }) {
    if (unlock != null) {
      return unlock(pin, bio, callback);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnlockLockerEvent value) unlock,
    required TResult Function(_ClearLockerEvent value) clear,
    required TResult Function(_SaveLockerEvent value) save,
    required TResult Function(_UpdateLockerEvent value) update,
  }) {
    return unlock(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnlockLockerEvent value)? unlock,
    TResult? Function(_ClearLockerEvent value)? clear,
    TResult? Function(_SaveLockerEvent value)? save,
    TResult? Function(_UpdateLockerEvent value)? update,
  }) {
    return unlock?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnlockLockerEvent value)? unlock,
    TResult Function(_ClearLockerEvent value)? clear,
    TResult Function(_SaveLockerEvent value)? save,
    TResult Function(_UpdateLockerEvent value)? update,
    required TResult orElse(),
  }) {
    if (unlock != null) {
      return unlock(this);
    }
    return orElse();
  }
}

abstract class _UnlockLockerEvent extends LockerEvent {
  const factory _UnlockLockerEvent(
          {final String? pin,
          final bool? bio,
          required final dynamic Function(bool, DLSUser?) callback}) =
      _$_UnlockLockerEvent;
  const _UnlockLockerEvent._() : super._();

  String? get pin;
  bool? get bio;
  dynamic Function(bool, DLSUser?) get callback;
  @JsonKey(ignore: true)
  _$$_UnlockLockerEventCopyWith<_$_UnlockLockerEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ClearLockerEventCopyWith<$Res> {
  factory _$$_ClearLockerEventCopyWith(
          _$_ClearLockerEvent value, $Res Function(_$_ClearLockerEvent) then) =
      __$$_ClearLockerEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ClearLockerEventCopyWithImpl<$Res>
    extends _$LockerEventCopyWithImpl<$Res, _$_ClearLockerEvent>
    implements _$$_ClearLockerEventCopyWith<$Res> {
  __$$_ClearLockerEventCopyWithImpl(
      _$_ClearLockerEvent _value, $Res Function(_$_ClearLockerEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ClearLockerEvent extends _ClearLockerEvent {
  const _$_ClearLockerEvent() : super._();

  @override
  String toString() {
    return 'LockerEvent.clear()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ClearLockerEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? pin, bool? bio, dynamic Function(bool, DLSUser?) callback)
        unlock,
    required TResult Function() clear,
    required TResult Function() save,
    required TResult Function(String? pin, String? repin, bool? enableBio,
            bool? isLocked, bool? loading, dynamic Function(bool)? callback)
        update,
  }) {
    return clear();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String? pin, bool? bio, dynamic Function(bool, DLSUser?) callback)?
        unlock,
    TResult? Function()? clear,
    TResult? Function()? save,
    TResult? Function(String? pin, String? repin, bool? enableBio,
            bool? isLocked, bool? loading, dynamic Function(bool)? callback)?
        update,
  }) {
    return clear?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? pin, bool? bio, dynamic Function(bool, DLSUser?) callback)?
        unlock,
    TResult Function()? clear,
    TResult Function()? save,
    TResult Function(String? pin, String? repin, bool? enableBio,
            bool? isLocked, bool? loading, dynamic Function(bool)? callback)?
        update,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnlockLockerEvent value) unlock,
    required TResult Function(_ClearLockerEvent value) clear,
    required TResult Function(_SaveLockerEvent value) save,
    required TResult Function(_UpdateLockerEvent value) update,
  }) {
    return clear(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnlockLockerEvent value)? unlock,
    TResult? Function(_ClearLockerEvent value)? clear,
    TResult? Function(_SaveLockerEvent value)? save,
    TResult? Function(_UpdateLockerEvent value)? update,
  }) {
    return clear?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnlockLockerEvent value)? unlock,
    TResult Function(_ClearLockerEvent value)? clear,
    TResult Function(_SaveLockerEvent value)? save,
    TResult Function(_UpdateLockerEvent value)? update,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear(this);
    }
    return orElse();
  }
}

abstract class _ClearLockerEvent extends LockerEvent {
  const factory _ClearLockerEvent() = _$_ClearLockerEvent;
  const _ClearLockerEvent._() : super._();
}

/// @nodoc
abstract class _$$_SaveLockerEventCopyWith<$Res> {
  factory _$$_SaveLockerEventCopyWith(
          _$_SaveLockerEvent value, $Res Function(_$_SaveLockerEvent) then) =
      __$$_SaveLockerEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SaveLockerEventCopyWithImpl<$Res>
    extends _$LockerEventCopyWithImpl<$Res, _$_SaveLockerEvent>
    implements _$$_SaveLockerEventCopyWith<$Res> {
  __$$_SaveLockerEventCopyWithImpl(
      _$_SaveLockerEvent _value, $Res Function(_$_SaveLockerEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SaveLockerEvent extends _SaveLockerEvent {
  const _$_SaveLockerEvent() : super._();

  @override
  String toString() {
    return 'LockerEvent.save()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SaveLockerEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? pin, bool? bio, dynamic Function(bool, DLSUser?) callback)
        unlock,
    required TResult Function() clear,
    required TResult Function() save,
    required TResult Function(String? pin, String? repin, bool? enableBio,
            bool? isLocked, bool? loading, dynamic Function(bool)? callback)
        update,
  }) {
    return save();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String? pin, bool? bio, dynamic Function(bool, DLSUser?) callback)?
        unlock,
    TResult? Function()? clear,
    TResult? Function()? save,
    TResult? Function(String? pin, String? repin, bool? enableBio,
            bool? isLocked, bool? loading, dynamic Function(bool)? callback)?
        update,
  }) {
    return save?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? pin, bool? bio, dynamic Function(bool, DLSUser?) callback)?
        unlock,
    TResult Function()? clear,
    TResult Function()? save,
    TResult Function(String? pin, String? repin, bool? enableBio,
            bool? isLocked, bool? loading, dynamic Function(bool)? callback)?
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
    required TResult Function(_UnlockLockerEvent value) unlock,
    required TResult Function(_ClearLockerEvent value) clear,
    required TResult Function(_SaveLockerEvent value) save,
    required TResult Function(_UpdateLockerEvent value) update,
  }) {
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnlockLockerEvent value)? unlock,
    TResult? Function(_ClearLockerEvent value)? clear,
    TResult? Function(_SaveLockerEvent value)? save,
    TResult? Function(_UpdateLockerEvent value)? update,
  }) {
    return save?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnlockLockerEvent value)? unlock,
    TResult Function(_ClearLockerEvent value)? clear,
    TResult Function(_SaveLockerEvent value)? save,
    TResult Function(_UpdateLockerEvent value)? update,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(this);
    }
    return orElse();
  }
}

abstract class _SaveLockerEvent extends LockerEvent {
  const factory _SaveLockerEvent() = _$_SaveLockerEvent;
  const _SaveLockerEvent._() : super._();
}

/// @nodoc
abstract class _$$_UpdateLockerEventCopyWith<$Res> {
  factory _$$_UpdateLockerEventCopyWith(_$_UpdateLockerEvent value,
          $Res Function(_$_UpdateLockerEvent) then) =
      __$$_UpdateLockerEventCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String? pin,
      String? repin,
      bool? enableBio,
      bool? isLocked,
      bool? loading,
      dynamic Function(bool)? callback});
}

/// @nodoc
class __$$_UpdateLockerEventCopyWithImpl<$Res>
    extends _$LockerEventCopyWithImpl<$Res, _$_UpdateLockerEvent>
    implements _$$_UpdateLockerEventCopyWith<$Res> {
  __$$_UpdateLockerEventCopyWithImpl(
      _$_UpdateLockerEvent _value, $Res Function(_$_UpdateLockerEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pin = freezed,
    Object? repin = freezed,
    Object? enableBio = freezed,
    Object? isLocked = freezed,
    Object? loading = freezed,
    Object? callback = freezed,
  }) {
    return _then(_$_UpdateLockerEvent(
      pin: freezed == pin
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String?,
      repin: freezed == repin
          ? _value.repin
          : repin // ignore: cast_nullable_to_non_nullable
              as String?,
      enableBio: freezed == enableBio
          ? _value.enableBio
          : enableBio // ignore: cast_nullable_to_non_nullable
              as bool?,
      isLocked: freezed == isLocked
          ? _value.isLocked
          : isLocked // ignore: cast_nullable_to_non_nullable
              as bool?,
      loading: freezed == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool?,
      callback: freezed == callback
          ? _value.callback
          : callback // ignore: cast_nullable_to_non_nullable
              as dynamic Function(bool)?,
    ));
  }
}

/// @nodoc

class _$_UpdateLockerEvent extends _UpdateLockerEvent {
  const _$_UpdateLockerEvent(
      {this.pin,
      this.repin,
      this.enableBio,
      this.isLocked,
      this.loading,
      this.callback})
      : super._();

  @override
  final String? pin;
  @override
  final String? repin;
  @override
  final bool? enableBio;
  @override
  final bool? isLocked;
  @override
  final bool? loading;
  @override
  final dynamic Function(bool)? callback;

  @override
  String toString() {
    return 'LockerEvent.update(pin: $pin, repin: $repin, enableBio: $enableBio, isLocked: $isLocked, loading: $loading, callback: $callback)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateLockerEvent &&
            (identical(other.pin, pin) || other.pin == pin) &&
            (identical(other.repin, repin) || other.repin == repin) &&
            (identical(other.enableBio, enableBio) ||
                other.enableBio == enableBio) &&
            (identical(other.isLocked, isLocked) ||
                other.isLocked == isLocked) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.callback, callback) ||
                other.callback == callback));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, pin, repin, enableBio, isLocked, loading, callback);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateLockerEventCopyWith<_$_UpdateLockerEvent> get copyWith =>
      __$$_UpdateLockerEventCopyWithImpl<_$_UpdateLockerEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? pin, bool? bio, dynamic Function(bool, DLSUser?) callback)
        unlock,
    required TResult Function() clear,
    required TResult Function() save,
    required TResult Function(String? pin, String? repin, bool? enableBio,
            bool? isLocked, bool? loading, dynamic Function(bool)? callback)
        update,
  }) {
    return update(pin, repin, enableBio, isLocked, loading, callback);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String? pin, bool? bio, dynamic Function(bool, DLSUser?) callback)?
        unlock,
    TResult? Function()? clear,
    TResult? Function()? save,
    TResult? Function(String? pin, String? repin, bool? enableBio,
            bool? isLocked, bool? loading, dynamic Function(bool)? callback)?
        update,
  }) {
    return update?.call(pin, repin, enableBio, isLocked, loading, callback);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? pin, bool? bio, dynamic Function(bool, DLSUser?) callback)?
        unlock,
    TResult Function()? clear,
    TResult Function()? save,
    TResult Function(String? pin, String? repin, bool? enableBio,
            bool? isLocked, bool? loading, dynamic Function(bool)? callback)?
        update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(pin, repin, enableBio, isLocked, loading, callback);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnlockLockerEvent value) unlock,
    required TResult Function(_ClearLockerEvent value) clear,
    required TResult Function(_SaveLockerEvent value) save,
    required TResult Function(_UpdateLockerEvent value) update,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnlockLockerEvent value)? unlock,
    TResult? Function(_ClearLockerEvent value)? clear,
    TResult? Function(_SaveLockerEvent value)? save,
    TResult? Function(_UpdateLockerEvent value)? update,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnlockLockerEvent value)? unlock,
    TResult Function(_ClearLockerEvent value)? clear,
    TResult Function(_SaveLockerEvent value)? save,
    TResult Function(_UpdateLockerEvent value)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _UpdateLockerEvent extends LockerEvent {
  const factory _UpdateLockerEvent(
      {final String? pin,
      final String? repin,
      final bool? enableBio,
      final bool? isLocked,
      final bool? loading,
      final dynamic Function(bool)? callback}) = _$_UpdateLockerEvent;
  const _UpdateLockerEvent._() : super._();

  String? get pin;
  String? get repin;
  bool? get enableBio;
  bool? get isLocked;
  bool? get loading;
  dynamic Function(bool)? get callback;
  @JsonKey(ignore: true)
  _$$_UpdateLockerEventCopyWith<_$_UpdateLockerEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LockerState {
  bool get loading => throw _privateConstructorUsedError;
  bool get pinsSame => throw _privateConstructorUsedError;
  String get pin => throw _privateConstructorUsedError;
  String get repin => throw _privateConstructorUsedError;
  bool get bioEnabled => throw _privateConstructorUsedError;
  bool get isLocked => throw _privateConstructorUsedError;
  bool get bioStore => throw _privateConstructorUsedError;
  bool get pinStore => throw _privateConstructorUsedError;
  bool get error401 => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LockerStateCopyWith<LockerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LockerStateCopyWith<$Res> {
  factory $LockerStateCopyWith(
          LockerState value, $Res Function(LockerState) then) =
      _$LockerStateCopyWithImpl<$Res, LockerState>;
  @useResult
  $Res call(
      {bool loading,
      bool pinsSame,
      String pin,
      String repin,
      bool bioEnabled,
      bool isLocked,
      bool bioStore,
      bool pinStore,
      bool error401});
}

/// @nodoc
class _$LockerStateCopyWithImpl<$Res, $Val extends LockerState>
    implements $LockerStateCopyWith<$Res> {
  _$LockerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? pinsSame = null,
    Object? pin = null,
    Object? repin = null,
    Object? bioEnabled = null,
    Object? isLocked = null,
    Object? bioStore = null,
    Object? pinStore = null,
    Object? error401 = null,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      pinsSame: null == pinsSame
          ? _value.pinsSame
          : pinsSame // ignore: cast_nullable_to_non_nullable
              as bool,
      pin: null == pin
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String,
      repin: null == repin
          ? _value.repin
          : repin // ignore: cast_nullable_to_non_nullable
              as String,
      bioEnabled: null == bioEnabled
          ? _value.bioEnabled
          : bioEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isLocked: null == isLocked
          ? _value.isLocked
          : isLocked // ignore: cast_nullable_to_non_nullable
              as bool,
      bioStore: null == bioStore
          ? _value.bioStore
          : bioStore // ignore: cast_nullable_to_non_nullable
              as bool,
      pinStore: null == pinStore
          ? _value.pinStore
          : pinStore // ignore: cast_nullable_to_non_nullable
              as bool,
      error401: null == error401
          ? _value.error401
          : error401 // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LockerStateCopyWith<$Res>
    implements $LockerStateCopyWith<$Res> {
  factory _$$_LockerStateCopyWith(
          _$_LockerState value, $Res Function(_$_LockerState) then) =
      __$$_LockerStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool loading,
      bool pinsSame,
      String pin,
      String repin,
      bool bioEnabled,
      bool isLocked,
      bool bioStore,
      bool pinStore,
      bool error401});
}

/// @nodoc
class __$$_LockerStateCopyWithImpl<$Res>
    extends _$LockerStateCopyWithImpl<$Res, _$_LockerState>
    implements _$$_LockerStateCopyWith<$Res> {
  __$$_LockerStateCopyWithImpl(
      _$_LockerState _value, $Res Function(_$_LockerState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? pinsSame = null,
    Object? pin = null,
    Object? repin = null,
    Object? bioEnabled = null,
    Object? isLocked = null,
    Object? bioStore = null,
    Object? pinStore = null,
    Object? error401 = null,
  }) {
    return _then(_$_LockerState(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      pinsSame: null == pinsSame
          ? _value.pinsSame
          : pinsSame // ignore: cast_nullable_to_non_nullable
              as bool,
      pin: null == pin
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String,
      repin: null == repin
          ? _value.repin
          : repin // ignore: cast_nullable_to_non_nullable
              as String,
      bioEnabled: null == bioEnabled
          ? _value.bioEnabled
          : bioEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isLocked: null == isLocked
          ? _value.isLocked
          : isLocked // ignore: cast_nullable_to_non_nullable
              as bool,
      bioStore: null == bioStore
          ? _value.bioStore
          : bioStore // ignore: cast_nullable_to_non_nullable
              as bool,
      pinStore: null == pinStore
          ? _value.pinStore
          : pinStore // ignore: cast_nullable_to_non_nullable
              as bool,
      error401: null == error401
          ? _value.error401
          : error401 // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_LockerState implements _LockerState {
  const _$_LockerState(
      {required this.loading,
      required this.pinsSame,
      required this.pin,
      required this.repin,
      required this.bioEnabled,
      required this.isLocked,
      required this.bioStore,
      required this.pinStore,
      required this.error401});

  @override
  final bool loading;
  @override
  final bool pinsSame;
  @override
  final String pin;
  @override
  final String repin;
  @override
  final bool bioEnabled;
  @override
  final bool isLocked;
  @override
  final bool bioStore;
  @override
  final bool pinStore;
  @override
  final bool error401;

  @override
  String toString() {
    return 'LockerState(loading: $loading, pinsSame: $pinsSame, pin: $pin, repin: $repin, bioEnabled: $bioEnabled, isLocked: $isLocked, bioStore: $bioStore, pinStore: $pinStore, error401: $error401)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LockerState &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.pinsSame, pinsSame) ||
                other.pinsSame == pinsSame) &&
            (identical(other.pin, pin) || other.pin == pin) &&
            (identical(other.repin, repin) || other.repin == repin) &&
            (identical(other.bioEnabled, bioEnabled) ||
                other.bioEnabled == bioEnabled) &&
            (identical(other.isLocked, isLocked) ||
                other.isLocked == isLocked) &&
            (identical(other.bioStore, bioStore) ||
                other.bioStore == bioStore) &&
            (identical(other.pinStore, pinStore) ||
                other.pinStore == pinStore) &&
            (identical(other.error401, error401) ||
                other.error401 == error401));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading, pinsSame, pin, repin,
      bioEnabled, isLocked, bioStore, pinStore, error401);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LockerStateCopyWith<_$_LockerState> get copyWith =>
      __$$_LockerStateCopyWithImpl<_$_LockerState>(this, _$identity);
}

abstract class _LockerState implements LockerState {
  const factory _LockerState(
      {required final bool loading,
      required final bool pinsSame,
      required final String pin,
      required final String repin,
      required final bool bioEnabled,
      required final bool isLocked,
      required final bool bioStore,
      required final bool pinStore,
      required final bool error401}) = _$_LockerState;

  @override
  bool get loading;
  @override
  bool get pinsSame;
  @override
  String get pin;
  @override
  String get repin;
  @override
  bool get bioEnabled;
  @override
  bool get isLocked;
  @override
  bool get bioStore;
  @override
  bool get pinStore;
  @override
  bool get error401;
  @override
  @JsonKey(ignore: true)
  _$$_LockerStateCopyWith<_$_LockerState> get copyWith =>
      throw _privateConstructorUsedError;
}
