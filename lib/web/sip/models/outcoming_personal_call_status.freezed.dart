// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'outcoming_personal_call_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OutcomingPersonalCallStatus {
  String get message => throw _privateConstructorUsedError;
  Status get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OutcomingPersonalCallStatusCopyWith<OutcomingPersonalCallStatus>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OutcomingPersonalCallStatusCopyWith<$Res> {
  factory $OutcomingPersonalCallStatusCopyWith(
          OutcomingPersonalCallStatus value,
          $Res Function(OutcomingPersonalCallStatus) then) =
      _$OutcomingPersonalCallStatusCopyWithImpl<$Res,
          OutcomingPersonalCallStatus>;
  @useResult
  $Res call({String message, Status status});
}

/// @nodoc
class _$OutcomingPersonalCallStatusCopyWithImpl<$Res,
        $Val extends OutcomingPersonalCallStatus>
    implements $OutcomingPersonalCallStatusCopyWith<$Res> {
  _$OutcomingPersonalCallStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OutcomingPersonalCallStatusCopyWith<$Res>
    implements $OutcomingPersonalCallStatusCopyWith<$Res> {
  factory _$$_OutcomingPersonalCallStatusCopyWith(
          _$_OutcomingPersonalCallStatus value,
          $Res Function(_$_OutcomingPersonalCallStatus) then) =
      __$$_OutcomingPersonalCallStatusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, Status status});
}

/// @nodoc
class __$$_OutcomingPersonalCallStatusCopyWithImpl<$Res>
    extends _$OutcomingPersonalCallStatusCopyWithImpl<$Res,
        _$_OutcomingPersonalCallStatus>
    implements _$$_OutcomingPersonalCallStatusCopyWith<$Res> {
  __$$_OutcomingPersonalCallStatusCopyWithImpl(
      _$_OutcomingPersonalCallStatus _value,
      $Res Function(_$_OutcomingPersonalCallStatus) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? status = null,
  }) {
    return _then(_$_OutcomingPersonalCallStatus(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
    ));
  }
}

/// @nodoc

class _$_OutcomingPersonalCallStatus implements _OutcomingPersonalCallStatus {
  _$_OutcomingPersonalCallStatus({required this.message, required this.status});

  @override
  final String message;
  @override
  final Status status;

  @override
  String toString() {
    return 'OutcomingPersonalCallStatus(message: $message, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OutcomingPersonalCallStatus &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OutcomingPersonalCallStatusCopyWith<_$_OutcomingPersonalCallStatus>
      get copyWith => __$$_OutcomingPersonalCallStatusCopyWithImpl<
          _$_OutcomingPersonalCallStatus>(this, _$identity);
}

abstract class _OutcomingPersonalCallStatus
    implements OutcomingPersonalCallStatus {
  factory _OutcomingPersonalCallStatus(
      {required final String message,
      required final Status status}) = _$_OutcomingPersonalCallStatus;

  @override
  String get message;
  @override
  Status get status;
  @override
  @JsonKey(ignore: true)
  _$$_OutcomingPersonalCallStatusCopyWith<_$_OutcomingPersonalCallStatus>
      get copyWith => throw _privateConstructorUsedError;
}
