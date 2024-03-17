// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dls_call.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DLSCall _$DLSCallFromJson(Map<String, dynamic> json) {
  return _DLSCall.fromJson(json);
}

/// @nodoc
mixin _$DLSCall {
  @JsonKey(name: 'asterisk_room')
  int? get asteriskRoom => throw _privateConstructorUsedError;
  @JsonKey(name: 'matrix_room')
  String? get matrixRoom => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_by')
  int? get createdBy => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DLSCallCopyWith<DLSCall> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DLSCallCopyWith<$Res> {
  factory $DLSCallCopyWith(DLSCall value, $Res Function(DLSCall) then) =
      _$DLSCallCopyWithImpl<$Res, DLSCall>;
  @useResult
  $Res call(
      {@JsonKey(name: 'asterisk_room') int? asteriskRoom,
      @JsonKey(name: 'matrix_room') String? matrixRoom,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'created_by') int? createdBy});
}

/// @nodoc
class _$DLSCallCopyWithImpl<$Res, $Val extends DLSCall>
    implements $DLSCallCopyWith<$Res> {
  _$DLSCallCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? asteriskRoom = freezed,
    Object? matrixRoom = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? createdBy = freezed,
  }) {
    return _then(_value.copyWith(
      asteriskRoom: freezed == asteriskRoom
          ? _value.asteriskRoom
          : asteriskRoom // ignore: cast_nullable_to_non_nullable
              as int?,
      matrixRoom: freezed == matrixRoom
          ? _value.matrixRoom
          : matrixRoom // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DLSCallCopyWith<$Res> implements $DLSCallCopyWith<$Res> {
  factory _$$_DLSCallCopyWith(
          _$_DLSCall value, $Res Function(_$_DLSCall) then) =
      __$$_DLSCallCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'asterisk_room') int? asteriskRoom,
      @JsonKey(name: 'matrix_room') String? matrixRoom,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'created_by') int? createdBy});
}

/// @nodoc
class __$$_DLSCallCopyWithImpl<$Res>
    extends _$DLSCallCopyWithImpl<$Res, _$_DLSCall>
    implements _$$_DLSCallCopyWith<$Res> {
  __$$_DLSCallCopyWithImpl(_$_DLSCall _value, $Res Function(_$_DLSCall) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? asteriskRoom = freezed,
    Object? matrixRoom = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? createdBy = freezed,
  }) {
    return _then(_$_DLSCall(
      asteriskRoom: freezed == asteriskRoom
          ? _value.asteriskRoom
          : asteriskRoom // ignore: cast_nullable_to_non_nullable
              as int?,
      matrixRoom: freezed == matrixRoom
          ? _value.matrixRoom
          : matrixRoom // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DLSCall implements _DLSCall {
  _$_DLSCall(
      {@JsonKey(name: 'asterisk_room') this.asteriskRoom,
      @JsonKey(name: 'matrix_room') this.matrixRoom,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'created_by') this.createdBy});

  factory _$_DLSCall.fromJson(Map<String, dynamic> json) =>
      _$$_DLSCallFromJson(json);

  @override
  @JsonKey(name: 'asterisk_room')
  final int? asteriskRoom;
  @override
  @JsonKey(name: 'matrix_room')
  final String? matrixRoom;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @override
  @JsonKey(name: 'created_by')
  final int? createdBy;

  @override
  String toString() {
    return 'DLSCall(asteriskRoom: $asteriskRoom, matrixRoom: $matrixRoom, createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DLSCall &&
            (identical(other.asteriskRoom, asteriskRoom) ||
                other.asteriskRoom == asteriskRoom) &&
            (identical(other.matrixRoom, matrixRoom) ||
                other.matrixRoom == matrixRoom) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, asteriskRoom, matrixRoom, createdAt, updatedAt, createdBy);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DLSCallCopyWith<_$_DLSCall> get copyWith =>
      __$$_DLSCallCopyWithImpl<_$_DLSCall>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DLSCallToJson(
      this,
    );
  }
}

abstract class _DLSCall implements DLSCall {
  factory _DLSCall(
      {@JsonKey(name: 'asterisk_room') final int? asteriskRoom,
      @JsonKey(name: 'matrix_room') final String? matrixRoom,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      @JsonKey(name: 'updated_at') final DateTime? updatedAt,
      @JsonKey(name: 'created_by') final int? createdBy}) = _$_DLSCall;

  factory _DLSCall.fromJson(Map<String, dynamic> json) = _$_DLSCall.fromJson;

  @override
  @JsonKey(name: 'asterisk_room')
  int? get asteriskRoom;
  @override
  @JsonKey(name: 'matrix_room')
  String? get matrixRoom;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(name: 'created_by')
  int? get createdBy;
  @override
  @JsonKey(ignore: true)
  _$$_DLSCallCopyWith<_$_DLSCall> get copyWith =>
      throw _privateConstructorUsedError;
}
