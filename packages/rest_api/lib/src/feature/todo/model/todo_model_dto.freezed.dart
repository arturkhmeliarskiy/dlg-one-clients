// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_model_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TodoModelDTO _$TodoModelDTOFromJson(Map<String, dynamic> json) {
  return _TodoModelDTO.fromJson(json);
}

/// @nodoc
mixin _$TodoModelDTO {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String? get userId => throw _privateConstructorUsedError;
  @DateTimeConverter()
  @JsonKey(name: 'created_at')
  DateTime? get createTime => throw _privateConstructorUsedError;
  @DateTimeConverter()
  @JsonKey(name: 'updated_at')
  DateTime? get updateTime => throw _privateConstructorUsedError;
  @DateTimeConverter()
  @JsonKey(name: 'deleted_at')
  DateTime? get deleteTime => throw _privateConstructorUsedError;
  TodoStatus get status => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @DateTimeConverter()
  @JsonKey(name: 'start_at')
  DateTime? get startTime => throw _privateConstructorUsedError;
  @DateTimeConverter()
  @JsonKey(name: 'expired_at')
  DateTime? get expireTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_all_day')
  bool get isFullDay => throw _privateConstructorUsedError;
  DLSUser? get owner => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TodoModelDTOCopyWith<TodoModelDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoModelDTOCopyWith<$Res> {
  factory $TodoModelDTOCopyWith(
          TodoModelDTO value, $Res Function(TodoModelDTO) then) =
      _$TodoModelDTOCopyWithImpl<$Res, TodoModelDTO>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'user_id') String? userId,
      @DateTimeConverter() @JsonKey(name: 'created_at') DateTime? createTime,
      @DateTimeConverter() @JsonKey(name: 'updated_at') DateTime? updateTime,
      @DateTimeConverter() @JsonKey(name: 'deleted_at') DateTime? deleteTime,
      TodoStatus status,
      String title,
      String? description,
      @DateTimeConverter() @JsonKey(name: 'start_at') DateTime? startTime,
      @DateTimeConverter() @JsonKey(name: 'expired_at') DateTime? expireTime,
      @JsonKey(name: 'is_all_day') bool isFullDay,
      DLSUser? owner});

  $DLSUserCopyWith<$Res>? get owner;
}

/// @nodoc
class _$TodoModelDTOCopyWithImpl<$Res, $Val extends TodoModelDTO>
    implements $TodoModelDTOCopyWith<$Res> {
  _$TodoModelDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = freezed,
    Object? createTime = freezed,
    Object? updateTime = freezed,
    Object? deleteTime = freezed,
    Object? status = null,
    Object? title = null,
    Object? description = freezed,
    Object? startTime = freezed,
    Object? expireTime = freezed,
    Object? isFullDay = null,
    Object? owner = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      createTime: freezed == createTime
          ? _value.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updateTime: freezed == updateTime
          ? _value.updateTime
          : updateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deleteTime: freezed == deleteTime
          ? _value.deleteTime
          : deleteTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TodoStatus,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expireTime: freezed == expireTime
          ? _value.expireTime
          : expireTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isFullDay: null == isFullDay
          ? _value.isFullDay
          : isFullDay // ignore: cast_nullable_to_non_nullable
              as bool,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as DLSUser?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DLSUserCopyWith<$Res>? get owner {
    if (_value.owner == null) {
      return null;
    }

    return $DLSUserCopyWith<$Res>(_value.owner!, (value) {
      return _then(_value.copyWith(owner: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TodoModelDTOCopyWith<$Res>
    implements $TodoModelDTOCopyWith<$Res> {
  factory _$$_TodoModelDTOCopyWith(
          _$_TodoModelDTO value, $Res Function(_$_TodoModelDTO) then) =
      __$$_TodoModelDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'user_id') String? userId,
      @DateTimeConverter() @JsonKey(name: 'created_at') DateTime? createTime,
      @DateTimeConverter() @JsonKey(name: 'updated_at') DateTime? updateTime,
      @DateTimeConverter() @JsonKey(name: 'deleted_at') DateTime? deleteTime,
      TodoStatus status,
      String title,
      String? description,
      @DateTimeConverter() @JsonKey(name: 'start_at') DateTime? startTime,
      @DateTimeConverter() @JsonKey(name: 'expired_at') DateTime? expireTime,
      @JsonKey(name: 'is_all_day') bool isFullDay,
      DLSUser? owner});

  @override
  $DLSUserCopyWith<$Res>? get owner;
}

/// @nodoc
class __$$_TodoModelDTOCopyWithImpl<$Res>
    extends _$TodoModelDTOCopyWithImpl<$Res, _$_TodoModelDTO>
    implements _$$_TodoModelDTOCopyWith<$Res> {
  __$$_TodoModelDTOCopyWithImpl(
      _$_TodoModelDTO _value, $Res Function(_$_TodoModelDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = freezed,
    Object? createTime = freezed,
    Object? updateTime = freezed,
    Object? deleteTime = freezed,
    Object? status = null,
    Object? title = null,
    Object? description = freezed,
    Object? startTime = freezed,
    Object? expireTime = freezed,
    Object? isFullDay = null,
    Object? owner = freezed,
  }) {
    return _then(_$_TodoModelDTO(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      createTime: freezed == createTime
          ? _value.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updateTime: freezed == updateTime
          ? _value.updateTime
          : updateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deleteTime: freezed == deleteTime
          ? _value.deleteTime
          : deleteTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TodoStatus,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expireTime: freezed == expireTime
          ? _value.expireTime
          : expireTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isFullDay: null == isFullDay
          ? _value.isFullDay
          : isFullDay // ignore: cast_nullable_to_non_nullable
              as bool,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as DLSUser?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TodoModelDTO extends _TodoModelDTO {
  const _$_TodoModelDTO(
      {required this.id,
      @JsonKey(name: 'user_id') this.userId,
      @DateTimeConverter() @JsonKey(name: 'created_at') this.createTime,
      @DateTimeConverter() @JsonKey(name: 'updated_at') this.updateTime,
      @DateTimeConverter() @JsonKey(name: 'deleted_at') this.deleteTime,
      required this.status,
      required this.title,
      this.description,
      @DateTimeConverter() @JsonKey(name: 'start_at') this.startTime,
      @DateTimeConverter() @JsonKey(name: 'expired_at') this.expireTime,
      @JsonKey(name: 'is_all_day') required this.isFullDay,
      this.owner})
      : super._();

  factory _$_TodoModelDTO.fromJson(Map<String, dynamic> json) =>
      _$$_TodoModelDTOFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'user_id')
  final String? userId;
  @override
  @DateTimeConverter()
  @JsonKey(name: 'created_at')
  final DateTime? createTime;
  @override
  @DateTimeConverter()
  @JsonKey(name: 'updated_at')
  final DateTime? updateTime;
  @override
  @DateTimeConverter()
  @JsonKey(name: 'deleted_at')
  final DateTime? deleteTime;
  @override
  final TodoStatus status;
  @override
  final String title;
  @override
  final String? description;
  @override
  @DateTimeConverter()
  @JsonKey(name: 'start_at')
  final DateTime? startTime;
  @override
  @DateTimeConverter()
  @JsonKey(name: 'expired_at')
  final DateTime? expireTime;
  @override
  @JsonKey(name: 'is_all_day')
  final bool isFullDay;
  @override
  final DLSUser? owner;

  @override
  String toString() {
    return 'TodoModelDTO(id: $id, userId: $userId, createTime: $createTime, updateTime: $updateTime, deleteTime: $deleteTime, status: $status, title: $title, description: $description, startTime: $startTime, expireTime: $expireTime, isFullDay: $isFullDay, owner: $owner)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TodoModelDTO &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.createTime, createTime) ||
                other.createTime == createTime) &&
            (identical(other.updateTime, updateTime) ||
                other.updateTime == updateTime) &&
            (identical(other.deleteTime, deleteTime) ||
                other.deleteTime == deleteTime) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.expireTime, expireTime) ||
                other.expireTime == expireTime) &&
            (identical(other.isFullDay, isFullDay) ||
                other.isFullDay == isFullDay) &&
            (identical(other.owner, owner) || other.owner == owner));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      createTime,
      updateTime,
      deleteTime,
      status,
      title,
      description,
      startTime,
      expireTime,
      isFullDay,
      owner);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TodoModelDTOCopyWith<_$_TodoModelDTO> get copyWith =>
      __$$_TodoModelDTOCopyWithImpl<_$_TodoModelDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TodoModelDTOToJson(
      this,
    );
  }
}

abstract class _TodoModelDTO extends TodoModelDTO {
  const factory _TodoModelDTO(
      {required final int id,
      @JsonKey(name: 'user_id')
          final String? userId,
      @DateTimeConverter()
      @JsonKey(name: 'created_at')
          final DateTime? createTime,
      @DateTimeConverter()
      @JsonKey(name: 'updated_at')
          final DateTime? updateTime,
      @DateTimeConverter()
      @JsonKey(name: 'deleted_at')
          final DateTime? deleteTime,
      required final TodoStatus status,
      required final String title,
      final String? description,
      @DateTimeConverter()
      @JsonKey(name: 'start_at')
          final DateTime? startTime,
      @DateTimeConverter()
      @JsonKey(name: 'expired_at')
          final DateTime? expireTime,
      @JsonKey(name: 'is_all_day')
          required final bool isFullDay,
      final DLSUser? owner}) = _$_TodoModelDTO;
  const _TodoModelDTO._() : super._();

  factory _TodoModelDTO.fromJson(Map<String, dynamic> json) =
      _$_TodoModelDTO.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'user_id')
  String? get userId;
  @override
  @DateTimeConverter()
  @JsonKey(name: 'created_at')
  DateTime? get createTime;
  @override
  @DateTimeConverter()
  @JsonKey(name: 'updated_at')
  DateTime? get updateTime;
  @override
  @DateTimeConverter()
  @JsonKey(name: 'deleted_at')
  DateTime? get deleteTime;
  @override
  TodoStatus get status;
  @override
  String get title;
  @override
  String? get description;
  @override
  @DateTimeConverter()
  @JsonKey(name: 'start_at')
  DateTime? get startTime;
  @override
  @DateTimeConverter()
  @JsonKey(name: 'expired_at')
  DateTime? get expireTime;
  @override
  @JsonKey(name: 'is_all_day')
  bool get isFullDay;
  @override
  DLSUser? get owner;
  @override
  @JsonKey(ignore: true)
  _$$_TodoModelDTOCopyWith<_$_TodoModelDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
