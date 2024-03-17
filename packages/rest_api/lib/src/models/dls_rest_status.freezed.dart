// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dls_rest_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DLSRestStatus _$DLSRestStatusFromJson(Map<String, dynamic> json) {
  return _DLSRestStatus.fromJson(json);
}

/// @nodoc
mixin _$DLSRestStatus {
  @JsonKey(name: 'error')
  DLSRestErrorMaybe? get error => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  DLSRestStatusMaybe? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'sucess')
  bool? get success => throw _privateConstructorUsedError;
  @JsonKey(name: 'sucess_text')
  String? get successText => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  DLSRestStatusData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DLSRestStatusCopyWith<DLSRestStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DLSRestStatusCopyWith<$Res> {
  factory $DLSRestStatusCopyWith(
          DLSRestStatus value, $Res Function(DLSRestStatus) then) =
      _$DLSRestStatusCopyWithImpl<$Res, DLSRestStatus>;
  @useResult
  $Res call(
      {@JsonKey(name: 'error') DLSRestErrorMaybe? error,
      @JsonKey(name: 'status') DLSRestStatusMaybe? status,
      @JsonKey(name: 'sucess') bool? success,
      @JsonKey(name: 'sucess_text') String? successText,
      @JsonKey(name: 'data') DLSRestStatusData? data});

  $DLSRestStatusDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$DLSRestStatusCopyWithImpl<$Res, $Val extends DLSRestStatus>
    implements $DLSRestStatusCopyWith<$Res> {
  _$DLSRestStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? status = freezed,
    Object? success = freezed,
    Object? successText = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as DLSRestErrorMaybe?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DLSRestStatusMaybe?,
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      successText: freezed == successText
          ? _value.successText
          : successText // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DLSRestStatusData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DLSRestStatusDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DLSRestStatusDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DLSRestStatusCopyWith<$Res>
    implements $DLSRestStatusCopyWith<$Res> {
  factory _$$_DLSRestStatusCopyWith(
          _$_DLSRestStatus value, $Res Function(_$_DLSRestStatus) then) =
      __$$_DLSRestStatusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'error') DLSRestErrorMaybe? error,
      @JsonKey(name: 'status') DLSRestStatusMaybe? status,
      @JsonKey(name: 'sucess') bool? success,
      @JsonKey(name: 'sucess_text') String? successText,
      @JsonKey(name: 'data') DLSRestStatusData? data});

  @override
  $DLSRestStatusDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_DLSRestStatusCopyWithImpl<$Res>
    extends _$DLSRestStatusCopyWithImpl<$Res, _$_DLSRestStatus>
    implements _$$_DLSRestStatusCopyWith<$Res> {
  __$$_DLSRestStatusCopyWithImpl(
      _$_DLSRestStatus _value, $Res Function(_$_DLSRestStatus) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? status = freezed,
    Object? success = freezed,
    Object? successText = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_DLSRestStatus(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as DLSRestErrorMaybe?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DLSRestStatusMaybe?,
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      successText: freezed == successText
          ? _value.successText
          : successText // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DLSRestStatusData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DLSRestStatus extends _DLSRestStatus {
  _$_DLSRestStatus(
      {@JsonKey(name: 'error') this.error,
      @JsonKey(name: 'status') this.status,
      @JsonKey(name: 'sucess') this.success,
      @JsonKey(name: 'sucess_text') this.successText,
      @JsonKey(name: 'data') this.data})
      : super._();

  factory _$_DLSRestStatus.fromJson(Map<String, dynamic> json) =>
      _$$_DLSRestStatusFromJson(json);

  @override
  @JsonKey(name: 'error')
  final DLSRestErrorMaybe? error;
  @override
  @JsonKey(name: 'status')
  final DLSRestStatusMaybe? status;
  @override
  @JsonKey(name: 'sucess')
  final bool? success;
  @override
  @JsonKey(name: 'sucess_text')
  final String? successText;
  @override
  @JsonKey(name: 'data')
  final DLSRestStatusData? data;

  @override
  String toString() {
    return 'DLSRestStatus(error: $error, status: $status, success: $success, successText: $successText, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DLSRestStatus &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.successText, successText) ||
                other.successText == successText) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, error, status, success, successText, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DLSRestStatusCopyWith<_$_DLSRestStatus> get copyWith =>
      __$$_DLSRestStatusCopyWithImpl<_$_DLSRestStatus>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DLSRestStatusToJson(
      this,
    );
  }
}

abstract class _DLSRestStatus extends DLSRestStatus {
  factory _DLSRestStatus(
      {@JsonKey(name: 'error') final DLSRestErrorMaybe? error,
      @JsonKey(name: 'status') final DLSRestStatusMaybe? status,
      @JsonKey(name: 'sucess') final bool? success,
      @JsonKey(name: 'sucess_text') final String? successText,
      @JsonKey(name: 'data') final DLSRestStatusData? data}) = _$_DLSRestStatus;
  _DLSRestStatus._() : super._();

  factory _DLSRestStatus.fromJson(Map<String, dynamic> json) =
      _$_DLSRestStatus.fromJson;

  @override
  @JsonKey(name: 'error')
  DLSRestErrorMaybe? get error;
  @override
  @JsonKey(name: 'status')
  DLSRestStatusMaybe? get status;
  @override
  @JsonKey(name: 'sucess')
  bool? get success;
  @override
  @JsonKey(name: 'sucess_text')
  String? get successText;
  @override
  @JsonKey(name: 'data')
  DLSRestStatusData? get data;
  @override
  @JsonKey(ignore: true)
  _$$_DLSRestStatusCopyWith<_$_DLSRestStatus> get copyWith =>
      throw _privateConstructorUsedError;
}
