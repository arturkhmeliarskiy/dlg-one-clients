// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'active_call.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ActiveCall {
  String? get callId => throw _privateConstructorUsedError;
  CallMeta get callMeta => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ActiveCallCopyWith<ActiveCall> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActiveCallCopyWith<$Res> {
  factory $ActiveCallCopyWith(
          ActiveCall value, $Res Function(ActiveCall) then) =
      _$ActiveCallCopyWithImpl<$Res, ActiveCall>;
  @useResult
  $Res call({String? callId, CallMeta callMeta});

  $CallMetaCopyWith<$Res> get callMeta;
}

/// @nodoc
class _$ActiveCallCopyWithImpl<$Res, $Val extends ActiveCall>
    implements $ActiveCallCopyWith<$Res> {
  _$ActiveCallCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? callId = freezed,
    Object? callMeta = null,
  }) {
    return _then(_value.copyWith(
      callId: freezed == callId
          ? _value.callId
          : callId // ignore: cast_nullable_to_non_nullable
              as String?,
      callMeta: null == callMeta
          ? _value.callMeta
          : callMeta // ignore: cast_nullable_to_non_nullable
              as CallMeta,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CallMetaCopyWith<$Res> get callMeta {
    return $CallMetaCopyWith<$Res>(_value.callMeta, (value) {
      return _then(_value.copyWith(callMeta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ActiveCallCopyWith<$Res>
    implements $ActiveCallCopyWith<$Res> {
  factory _$$_ActiveCallCopyWith(
          _$_ActiveCall value, $Res Function(_$_ActiveCall) then) =
      __$$_ActiveCallCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? callId, CallMeta callMeta});

  @override
  $CallMetaCopyWith<$Res> get callMeta;
}

/// @nodoc
class __$$_ActiveCallCopyWithImpl<$Res>
    extends _$ActiveCallCopyWithImpl<$Res, _$_ActiveCall>
    implements _$$_ActiveCallCopyWith<$Res> {
  __$$_ActiveCallCopyWithImpl(
      _$_ActiveCall _value, $Res Function(_$_ActiveCall) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? callId = freezed,
    Object? callMeta = null,
  }) {
    return _then(_$_ActiveCall(
      callId: freezed == callId
          ? _value.callId
          : callId // ignore: cast_nullable_to_non_nullable
              as String?,
      callMeta: null == callMeta
          ? _value.callMeta
          : callMeta // ignore: cast_nullable_to_non_nullable
              as CallMeta,
    ));
  }
}

/// @nodoc

class _$_ActiveCall implements _ActiveCall {
  _$_ActiveCall({required this.callId, required this.callMeta});

  @override
  final String? callId;
  @override
  final CallMeta callMeta;

  @override
  String toString() {
    return 'ActiveCall(callId: $callId, callMeta: $callMeta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ActiveCall &&
            (identical(other.callId, callId) || other.callId == callId) &&
            (identical(other.callMeta, callMeta) ||
                other.callMeta == callMeta));
  }

  @override
  int get hashCode => Object.hash(runtimeType, callId, callMeta);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ActiveCallCopyWith<_$_ActiveCall> get copyWith =>
      __$$_ActiveCallCopyWithImpl<_$_ActiveCall>(this, _$identity);
}

abstract class _ActiveCall implements ActiveCall {
  factory _ActiveCall(
      {required final String? callId,
      required final CallMeta callMeta}) = _$_ActiveCall;

  @override
  String? get callId;
  @override
  CallMeta get callMeta;
  @override
  @JsonKey(ignore: true)
  _$$_ActiveCallCopyWith<_$_ActiveCall> get copyWith =>
      throw _privateConstructorUsedError;
}
