// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ago_updater_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AgoUpdaterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateAgoUpdaterEvent value) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateAgoUpdaterEvent value)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateAgoUpdaterEvent value)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgoUpdaterEventCopyWith<$Res> {
  factory $AgoUpdaterEventCopyWith(
          AgoUpdaterEvent value, $Res Function(AgoUpdaterEvent) then) =
      _$AgoUpdaterEventCopyWithImpl<$Res, AgoUpdaterEvent>;
}

/// @nodoc
class _$AgoUpdaterEventCopyWithImpl<$Res, $Val extends AgoUpdaterEvent>
    implements $AgoUpdaterEventCopyWith<$Res> {
  _$AgoUpdaterEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_UpdateAgoUpdaterEventCopyWith<$Res> {
  factory _$$_UpdateAgoUpdaterEventCopyWith(_$_UpdateAgoUpdaterEvent value,
          $Res Function(_$_UpdateAgoUpdaterEvent) then) =
      __$$_UpdateAgoUpdaterEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UpdateAgoUpdaterEventCopyWithImpl<$Res>
    extends _$AgoUpdaterEventCopyWithImpl<$Res, _$_UpdateAgoUpdaterEvent>
    implements _$$_UpdateAgoUpdaterEventCopyWith<$Res> {
  __$$_UpdateAgoUpdaterEventCopyWithImpl(_$_UpdateAgoUpdaterEvent _value,
      $Res Function(_$_UpdateAgoUpdaterEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_UpdateAgoUpdaterEvent implements _UpdateAgoUpdaterEvent {
  const _$_UpdateAgoUpdaterEvent();

  @override
  String toString() {
    return 'AgoUpdaterEvent.update()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UpdateAgoUpdaterEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() update,
  }) {
    return update();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? update,
  }) {
    return update?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateAgoUpdaterEvent value) update,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateAgoUpdaterEvent value)? update,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateAgoUpdaterEvent value)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _UpdateAgoUpdaterEvent implements AgoUpdaterEvent {
  const factory _UpdateAgoUpdaterEvent() = _$_UpdateAgoUpdaterEvent;
}

/// @nodoc
mixin _$AgoUpdaterState {
  String get transaction => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String transaction) s,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String transaction)? s,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String transaction)? s,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SAgoUpdaterState value) s,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SAgoUpdaterState value)? s,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SAgoUpdaterState value)? s,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AgoUpdaterStateCopyWith<AgoUpdaterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgoUpdaterStateCopyWith<$Res> {
  factory $AgoUpdaterStateCopyWith(
          AgoUpdaterState value, $Res Function(AgoUpdaterState) then) =
      _$AgoUpdaterStateCopyWithImpl<$Res, AgoUpdaterState>;
  @useResult
  $Res call({String transaction});
}

/// @nodoc
class _$AgoUpdaterStateCopyWithImpl<$Res, $Val extends AgoUpdaterState>
    implements $AgoUpdaterStateCopyWith<$Res> {
  _$AgoUpdaterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transaction = null,
  }) {
    return _then(_value.copyWith(
      transaction: null == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SAgoUpdaterStateCopyWith<$Res>
    implements $AgoUpdaterStateCopyWith<$Res> {
  factory _$$_SAgoUpdaterStateCopyWith(
          _$_SAgoUpdaterState value, $Res Function(_$_SAgoUpdaterState) then) =
      __$$_SAgoUpdaterStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String transaction});
}

/// @nodoc
class __$$_SAgoUpdaterStateCopyWithImpl<$Res>
    extends _$AgoUpdaterStateCopyWithImpl<$Res, _$_SAgoUpdaterState>
    implements _$$_SAgoUpdaterStateCopyWith<$Res> {
  __$$_SAgoUpdaterStateCopyWithImpl(
      _$_SAgoUpdaterState _value, $Res Function(_$_SAgoUpdaterState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transaction = null,
  }) {
    return _then(_$_SAgoUpdaterState(
      transaction: null == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SAgoUpdaterState implements _SAgoUpdaterState {
  const _$_SAgoUpdaterState({required this.transaction});

  @override
  final String transaction;

  @override
  String toString() {
    return 'AgoUpdaterState.s(transaction: $transaction)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SAgoUpdaterState &&
            (identical(other.transaction, transaction) ||
                other.transaction == transaction));
  }

  @override
  int get hashCode => Object.hash(runtimeType, transaction);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SAgoUpdaterStateCopyWith<_$_SAgoUpdaterState> get copyWith =>
      __$$_SAgoUpdaterStateCopyWithImpl<_$_SAgoUpdaterState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String transaction) s,
  }) {
    return s(transaction);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String transaction)? s,
  }) {
    return s?.call(transaction);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String transaction)? s,
    required TResult orElse(),
  }) {
    if (s != null) {
      return s(transaction);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SAgoUpdaterState value) s,
  }) {
    return s(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SAgoUpdaterState value)? s,
  }) {
    return s?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SAgoUpdaterState value)? s,
    required TResult orElse(),
  }) {
    if (s != null) {
      return s(this);
    }
    return orElse();
  }
}

abstract class _SAgoUpdaterState implements AgoUpdaterState {
  const factory _SAgoUpdaterState({required final String transaction}) =
      _$_SAgoUpdaterState;

  @override
  String get transaction;
  @override
  @JsonKey(ignore: true)
  _$$_SAgoUpdaterStateCopyWith<_$_SAgoUpdaterState> get copyWith =>
      throw _privateConstructorUsedError;
}
