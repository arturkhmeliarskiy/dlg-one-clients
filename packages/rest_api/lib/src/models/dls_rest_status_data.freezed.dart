// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dls_rest_status_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DLSRestStatusData _$DLSRestStatusDataFromJson(Map<String, dynamic> json) {
  return _DLSRestStatusData.fromJson(json);
}

/// @nodoc
mixin _$DLSRestStatusData {
  @JsonKey(name: 'errors')
  DLSRestStatusDataError? get errors => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DLSRestStatusDataCopyWith<DLSRestStatusData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DLSRestStatusDataCopyWith<$Res> {
  factory $DLSRestStatusDataCopyWith(
          DLSRestStatusData value, $Res Function(DLSRestStatusData) then) =
      _$DLSRestStatusDataCopyWithImpl<$Res, DLSRestStatusData>;
  @useResult
  $Res call({@JsonKey(name: 'errors') DLSRestStatusDataError? errors});

  $DLSRestStatusDataErrorCopyWith<$Res>? get errors;
}

/// @nodoc
class _$DLSRestStatusDataCopyWithImpl<$Res, $Val extends DLSRestStatusData>
    implements $DLSRestStatusDataCopyWith<$Res> {
  _$DLSRestStatusDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errors = freezed,
  }) {
    return _then(_value.copyWith(
      errors: freezed == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as DLSRestStatusDataError?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DLSRestStatusDataErrorCopyWith<$Res>? get errors {
    if (_value.errors == null) {
      return null;
    }

    return $DLSRestStatusDataErrorCopyWith<$Res>(_value.errors!, (value) {
      return _then(_value.copyWith(errors: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DLSRestStatusDataCopyWith<$Res>
    implements $DLSRestStatusDataCopyWith<$Res> {
  factory _$$_DLSRestStatusDataCopyWith(_$_DLSRestStatusData value,
          $Res Function(_$_DLSRestStatusData) then) =
      __$$_DLSRestStatusDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'errors') DLSRestStatusDataError? errors});

  @override
  $DLSRestStatusDataErrorCopyWith<$Res>? get errors;
}

/// @nodoc
class __$$_DLSRestStatusDataCopyWithImpl<$Res>
    extends _$DLSRestStatusDataCopyWithImpl<$Res, _$_DLSRestStatusData>
    implements _$$_DLSRestStatusDataCopyWith<$Res> {
  __$$_DLSRestStatusDataCopyWithImpl(
      _$_DLSRestStatusData _value, $Res Function(_$_DLSRestStatusData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errors = freezed,
  }) {
    return _then(_$_DLSRestStatusData(
      errors: freezed == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as DLSRestStatusDataError?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DLSRestStatusData extends _DLSRestStatusData {
  _$_DLSRestStatusData({@JsonKey(name: 'errors') this.errors}) : super._();

  factory _$_DLSRestStatusData.fromJson(Map<String, dynamic> json) =>
      _$$_DLSRestStatusDataFromJson(json);

  @override
  @JsonKey(name: 'errors')
  final DLSRestStatusDataError? errors;

  @override
  String toString() {
    return 'DLSRestStatusData(errors: $errors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DLSRestStatusData &&
            (identical(other.errors, errors) || other.errors == errors));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, errors);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DLSRestStatusDataCopyWith<_$_DLSRestStatusData> get copyWith =>
      __$$_DLSRestStatusDataCopyWithImpl<_$_DLSRestStatusData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DLSRestStatusDataToJson(
      this,
    );
  }
}

abstract class _DLSRestStatusData extends DLSRestStatusData {
  factory _DLSRestStatusData(
          {@JsonKey(name: 'errors') final DLSRestStatusDataError? errors}) =
      _$_DLSRestStatusData;
  _DLSRestStatusData._() : super._();

  factory _DLSRestStatusData.fromJson(Map<String, dynamic> json) =
      _$_DLSRestStatusData.fromJson;

  @override
  @JsonKey(name: 'errors')
  DLSRestStatusDataError? get errors;
  @override
  @JsonKey(ignore: true)
  _$$_DLSRestStatusDataCopyWith<_$_DLSRestStatusData> get copyWith =>
      throw _privateConstructorUsedError;
}
