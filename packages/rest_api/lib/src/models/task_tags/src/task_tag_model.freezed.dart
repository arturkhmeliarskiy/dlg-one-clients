// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_tag_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TaskTagModel _$TaskTagModelFromJson(Map<String, dynamic> json) {
  return _TaskTagModel.fromJson(json);
}

/// @nodoc
mixin _$TaskTagModel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'deleted_at')
  DateTime? get deletedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(unknownEnumValue: TaskTagType.inactive)
  TaskTagType? get status => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskTagModelCopyWith<TaskTagModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskTagModelCopyWith<$Res> {
  factory $TaskTagModelCopyWith(
          TaskTagModel value, $Res Function(TaskTagModel) then) =
      _$TaskTagModelCopyWithImpl<$Res, TaskTagModel>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'deleted_at') DateTime? deletedAt,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(unknownEnumValue: TaskTagType.inactive) TaskTagType? status,
      String title,
      String description});
}

/// @nodoc
class _$TaskTagModelCopyWithImpl<$Res, $Val extends TaskTagModel>
    implements $TaskTagModelCopyWith<$Res> {
  _$TaskTagModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
    Object? userId = freezed,
    Object? status = freezed,
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TaskTagType?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TaskTagModelCopyWith<$Res>
    implements $TaskTagModelCopyWith<$Res> {
  factory _$$_TaskTagModelCopyWith(
          _$_TaskTagModel value, $Res Function(_$_TaskTagModel) then) =
      __$$_TaskTagModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'deleted_at') DateTime? deletedAt,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(unknownEnumValue: TaskTagType.inactive) TaskTagType? status,
      String title,
      String description});
}

/// @nodoc
class __$$_TaskTagModelCopyWithImpl<$Res>
    extends _$TaskTagModelCopyWithImpl<$Res, _$_TaskTagModel>
    implements _$$_TaskTagModelCopyWith<$Res> {
  __$$_TaskTagModelCopyWithImpl(
      _$_TaskTagModel _value, $Res Function(_$_TaskTagModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
    Object? userId = freezed,
    Object? status = freezed,
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_$_TaskTagModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TaskTagType?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TaskTagModel implements _TaskTagModel {
  const _$_TaskTagModel(
      {required this.id,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'deleted_at') this.deletedAt,
      @JsonKey(name: 'user_id') this.userId,
      @JsonKey(unknownEnumValue: TaskTagType.inactive) this.status,
      this.title = '',
      this.description = ''});

  factory _$_TaskTagModel.fromJson(Map<String, dynamic> json) =>
      _$$_TaskTagModelFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @override
  @JsonKey(name: 'deleted_at')
  final DateTime? deletedAt;
  @override
  @JsonKey(name: 'user_id')
  final int? userId;
  @override
  @JsonKey(unknownEnumValue: TaskTagType.inactive)
  final TaskTagType? status;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String description;

  @override
  String toString() {
    return 'TaskTagModel(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt, userId: $userId, status: $status, title: $title, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TaskTagModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, createdAt, updatedAt,
      deletedAt, userId, status, title, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TaskTagModelCopyWith<_$_TaskTagModel> get copyWith =>
      __$$_TaskTagModelCopyWithImpl<_$_TaskTagModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TaskTagModelToJson(
      this,
    );
  }
}

abstract class _TaskTagModel implements TaskTagModel {
  const factory _TaskTagModel(
      {required final int id,
      @JsonKey(name: 'created_at')
          final DateTime? createdAt,
      @JsonKey(name: 'updated_at')
          final DateTime? updatedAt,
      @JsonKey(name: 'deleted_at')
          final DateTime? deletedAt,
      @JsonKey(name: 'user_id')
          final int? userId,
      @JsonKey(unknownEnumValue: TaskTagType.inactive)
          final TaskTagType? status,
      final String title,
      final String description}) = _$_TaskTagModel;

  factory _TaskTagModel.fromJson(Map<String, dynamic> json) =
      _$_TaskTagModel.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(name: 'deleted_at')
  DateTime? get deletedAt;
  @override
  @JsonKey(name: 'user_id')
  int? get userId;
  @override
  @JsonKey(unknownEnumValue: TaskTagType.inactive)
  TaskTagType? get status;
  @override
  String get title;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$_TaskTagModelCopyWith<_$_TaskTagModel> get copyWith =>
      throw _privateConstructorUsedError;
}
