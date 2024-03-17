// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_task_event_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateTaskEventRequest _$CreateTaskEventRequestFromJson(
    Map<String, dynamic> json) {
  return _CreateTaskEventRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateTaskEventRequest {
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  TaskEventType? get type => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  @DateTimeConverter()
  @JsonKey(name: 'start_at')
  DateTime? get startAt => throw _privateConstructorUsedError;
  @DateTimeConverter()
  @JsonKey(name: 'end_at')
  DateTime? get endAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_all_day')
  bool? get isAllDay => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_invite_others')
  bool? get isInviteOthers => throw _privateConstructorUsedError;
  @JsonKey(name: 'notification_type')
  EventNotificationType? get notificationType =>
      throw _privateConstructorUsedError;
  RepeatEventModel? get repeat => throw _privateConstructorUsedError;
  @JsonKey(name: 'member_ids')
  List<int>? get memberIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'sprint_id')
  int? get sprintId => throw _privateConstructorUsedError;
  @JsonKey(name: 'task_id')
  int? get taskId => throw _privateConstructorUsedError;
  @JsonKey(name: 'file_ids')
  List<int>? get fileIds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateTaskEventRequestCopyWith<CreateTaskEventRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateTaskEventRequestCopyWith<$Res> {
  factory $CreateTaskEventRequestCopyWith(CreateTaskEventRequest value,
          $Res Function(CreateTaskEventRequest) then) =
      _$CreateTaskEventRequestCopyWithImpl<$Res, CreateTaskEventRequest>;
  @useResult
  $Res call(
      {String? title,
      String? description,
      TaskEventType? type,
      String? location,
      @DateTimeConverter()
      @JsonKey(name: 'start_at')
          DateTime? startAt,
      @DateTimeConverter()
      @JsonKey(name: 'end_at')
          DateTime? endAt,
      @JsonKey(name: 'is_all_day')
          bool? isAllDay,
      @JsonKey(name: 'is_invite_others')
          bool? isInviteOthers,
      @JsonKey(name: 'notification_type')
          EventNotificationType? notificationType,
      RepeatEventModel? repeat,
      @JsonKey(name: 'member_ids')
          List<int>? memberIds,
      @JsonKey(name: 'sprint_id')
          int? sprintId,
      @JsonKey(name: 'task_id')
          int? taskId,
      @JsonKey(name: 'file_ids')
          List<int>? fileIds});

  $RepeatEventModelCopyWith<$Res>? get repeat;
}

/// @nodoc
class _$CreateTaskEventRequestCopyWithImpl<$Res,
        $Val extends CreateTaskEventRequest>
    implements $CreateTaskEventRequestCopyWith<$Res> {
  _$CreateTaskEventRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? type = freezed,
    Object? location = freezed,
    Object? startAt = freezed,
    Object? endAt = freezed,
    Object? isAllDay = freezed,
    Object? isInviteOthers = freezed,
    Object? notificationType = freezed,
    Object? repeat = freezed,
    Object? memberIds = freezed,
    Object? sprintId = freezed,
    Object? taskId = freezed,
    Object? fileIds = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TaskEventType?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      startAt: freezed == startAt
          ? _value.startAt
          : startAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endAt: freezed == endAt
          ? _value.endAt
          : endAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isAllDay: freezed == isAllDay
          ? _value.isAllDay
          : isAllDay // ignore: cast_nullable_to_non_nullable
              as bool?,
      isInviteOthers: freezed == isInviteOthers
          ? _value.isInviteOthers
          : isInviteOthers // ignore: cast_nullable_to_non_nullable
              as bool?,
      notificationType: freezed == notificationType
          ? _value.notificationType
          : notificationType // ignore: cast_nullable_to_non_nullable
              as EventNotificationType?,
      repeat: freezed == repeat
          ? _value.repeat
          : repeat // ignore: cast_nullable_to_non_nullable
              as RepeatEventModel?,
      memberIds: freezed == memberIds
          ? _value.memberIds
          : memberIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      sprintId: freezed == sprintId
          ? _value.sprintId
          : sprintId // ignore: cast_nullable_to_non_nullable
              as int?,
      taskId: freezed == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as int?,
      fileIds: freezed == fileIds
          ? _value.fileIds
          : fileIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RepeatEventModelCopyWith<$Res>? get repeat {
    if (_value.repeat == null) {
      return null;
    }

    return $RepeatEventModelCopyWith<$Res>(_value.repeat!, (value) {
      return _then(_value.copyWith(repeat: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CreateTaskEventRequestCopyWith<$Res>
    implements $CreateTaskEventRequestCopyWith<$Res> {
  factory _$$_CreateTaskEventRequestCopyWith(_$_CreateTaskEventRequest value,
          $Res Function(_$_CreateTaskEventRequest) then) =
      __$$_CreateTaskEventRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? title,
      String? description,
      TaskEventType? type,
      String? location,
      @DateTimeConverter()
      @JsonKey(name: 'start_at')
          DateTime? startAt,
      @DateTimeConverter()
      @JsonKey(name: 'end_at')
          DateTime? endAt,
      @JsonKey(name: 'is_all_day')
          bool? isAllDay,
      @JsonKey(name: 'is_invite_others')
          bool? isInviteOthers,
      @JsonKey(name: 'notification_type')
          EventNotificationType? notificationType,
      RepeatEventModel? repeat,
      @JsonKey(name: 'member_ids')
          List<int>? memberIds,
      @JsonKey(name: 'sprint_id')
          int? sprintId,
      @JsonKey(name: 'task_id')
          int? taskId,
      @JsonKey(name: 'file_ids')
          List<int>? fileIds});

  @override
  $RepeatEventModelCopyWith<$Res>? get repeat;
}

/// @nodoc
class __$$_CreateTaskEventRequestCopyWithImpl<$Res>
    extends _$CreateTaskEventRequestCopyWithImpl<$Res,
        _$_CreateTaskEventRequest>
    implements _$$_CreateTaskEventRequestCopyWith<$Res> {
  __$$_CreateTaskEventRequestCopyWithImpl(_$_CreateTaskEventRequest _value,
      $Res Function(_$_CreateTaskEventRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? type = freezed,
    Object? location = freezed,
    Object? startAt = freezed,
    Object? endAt = freezed,
    Object? isAllDay = freezed,
    Object? isInviteOthers = freezed,
    Object? notificationType = freezed,
    Object? repeat = freezed,
    Object? memberIds = freezed,
    Object? sprintId = freezed,
    Object? taskId = freezed,
    Object? fileIds = freezed,
  }) {
    return _then(_$_CreateTaskEventRequest(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TaskEventType?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      startAt: freezed == startAt
          ? _value.startAt
          : startAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endAt: freezed == endAt
          ? _value.endAt
          : endAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isAllDay: freezed == isAllDay
          ? _value.isAllDay
          : isAllDay // ignore: cast_nullable_to_non_nullable
              as bool?,
      isInviteOthers: freezed == isInviteOthers
          ? _value.isInviteOthers
          : isInviteOthers // ignore: cast_nullable_to_non_nullable
              as bool?,
      notificationType: freezed == notificationType
          ? _value.notificationType
          : notificationType // ignore: cast_nullable_to_non_nullable
              as EventNotificationType?,
      repeat: freezed == repeat
          ? _value.repeat
          : repeat // ignore: cast_nullable_to_non_nullable
              as RepeatEventModel?,
      memberIds: freezed == memberIds
          ? _value._memberIds
          : memberIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      sprintId: freezed == sprintId
          ? _value.sprintId
          : sprintId // ignore: cast_nullable_to_non_nullable
              as int?,
      taskId: freezed == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as int?,
      fileIds: freezed == fileIds
          ? _value._fileIds
          : fileIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$_CreateTaskEventRequest implements _CreateTaskEventRequest {
  const _$_CreateTaskEventRequest(
      {this.title,
      this.description,
      this.type,
      this.location,
      @DateTimeConverter() @JsonKey(name: 'start_at') this.startAt,
      @DateTimeConverter() @JsonKey(name: 'end_at') this.endAt,
      @JsonKey(name: 'is_all_day') this.isAllDay,
      @JsonKey(name: 'is_invite_others') this.isInviteOthers,
      @JsonKey(name: 'notification_type') this.notificationType,
      this.repeat,
      @JsonKey(name: 'member_ids') final List<int>? memberIds,
      @JsonKey(name: 'sprint_id') this.sprintId,
      @JsonKey(name: 'task_id') this.taskId,
      @JsonKey(name: 'file_ids') final List<int>? fileIds})
      : _memberIds = memberIds,
        _fileIds = fileIds;

  factory _$_CreateTaskEventRequest.fromJson(Map<String, dynamic> json) =>
      _$$_CreateTaskEventRequestFromJson(json);

  @override
  final String? title;
  @override
  final String? description;
  @override
  final TaskEventType? type;
  @override
  final String? location;
  @override
  @DateTimeConverter()
  @JsonKey(name: 'start_at')
  final DateTime? startAt;
  @override
  @DateTimeConverter()
  @JsonKey(name: 'end_at')
  final DateTime? endAt;
  @override
  @JsonKey(name: 'is_all_day')
  final bool? isAllDay;
  @override
  @JsonKey(name: 'is_invite_others')
  final bool? isInviteOthers;
  @override
  @JsonKey(name: 'notification_type')
  final EventNotificationType? notificationType;
  @override
  final RepeatEventModel? repeat;
  final List<int>? _memberIds;
  @override
  @JsonKey(name: 'member_ids')
  List<int>? get memberIds {
    final value = _memberIds;
    if (value == null) return null;
    if (_memberIds is EqualUnmodifiableListView) return _memberIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'sprint_id')
  final int? sprintId;
  @override
  @JsonKey(name: 'task_id')
  final int? taskId;
  final List<int>? _fileIds;
  @override
  @JsonKey(name: 'file_ids')
  List<int>? get fileIds {
    final value = _fileIds;
    if (value == null) return null;
    if (_fileIds is EqualUnmodifiableListView) return _fileIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CreateTaskEventRequest(title: $title, description: $description, type: $type, location: $location, startAt: $startAt, endAt: $endAt, isAllDay: $isAllDay, isInviteOthers: $isInviteOthers, notificationType: $notificationType, repeat: $repeat, memberIds: $memberIds, sprintId: $sprintId, taskId: $taskId, fileIds: $fileIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateTaskEventRequest &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.startAt, startAt) || other.startAt == startAt) &&
            (identical(other.endAt, endAt) || other.endAt == endAt) &&
            (identical(other.isAllDay, isAllDay) ||
                other.isAllDay == isAllDay) &&
            (identical(other.isInviteOthers, isInviteOthers) ||
                other.isInviteOthers == isInviteOthers) &&
            (identical(other.notificationType, notificationType) ||
                other.notificationType == notificationType) &&
            (identical(other.repeat, repeat) || other.repeat == repeat) &&
            const DeepCollectionEquality()
                .equals(other._memberIds, _memberIds) &&
            (identical(other.sprintId, sprintId) ||
                other.sprintId == sprintId) &&
            (identical(other.taskId, taskId) || other.taskId == taskId) &&
            const DeepCollectionEquality().equals(other._fileIds, _fileIds));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      description,
      type,
      location,
      startAt,
      endAt,
      isAllDay,
      isInviteOthers,
      notificationType,
      repeat,
      const DeepCollectionEquality().hash(_memberIds),
      sprintId,
      taskId,
      const DeepCollectionEquality().hash(_fileIds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateTaskEventRequestCopyWith<_$_CreateTaskEventRequest> get copyWith =>
      __$$_CreateTaskEventRequestCopyWithImpl<_$_CreateTaskEventRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateTaskEventRequestToJson(
      this,
    );
  }
}

abstract class _CreateTaskEventRequest implements CreateTaskEventRequest {
  const factory _CreateTaskEventRequest(
      {final String? title,
      final String? description,
      final TaskEventType? type,
      final String? location,
      @DateTimeConverter()
      @JsonKey(name: 'start_at')
          final DateTime? startAt,
      @DateTimeConverter()
      @JsonKey(name: 'end_at')
          final DateTime? endAt,
      @JsonKey(name: 'is_all_day')
          final bool? isAllDay,
      @JsonKey(name: 'is_invite_others')
          final bool? isInviteOthers,
      @JsonKey(name: 'notification_type')
          final EventNotificationType? notificationType,
      final RepeatEventModel? repeat,
      @JsonKey(name: 'member_ids')
          final List<int>? memberIds,
      @JsonKey(name: 'sprint_id')
          final int? sprintId,
      @JsonKey(name: 'task_id')
          final int? taskId,
      @JsonKey(name: 'file_ids')
          final List<int>? fileIds}) = _$_CreateTaskEventRequest;

  factory _CreateTaskEventRequest.fromJson(Map<String, dynamic> json) =
      _$_CreateTaskEventRequest.fromJson;

  @override
  String? get title;
  @override
  String? get description;
  @override
  TaskEventType? get type;
  @override
  String? get location;
  @override
  @DateTimeConverter()
  @JsonKey(name: 'start_at')
  DateTime? get startAt;
  @override
  @DateTimeConverter()
  @JsonKey(name: 'end_at')
  DateTime? get endAt;
  @override
  @JsonKey(name: 'is_all_day')
  bool? get isAllDay;
  @override
  @JsonKey(name: 'is_invite_others')
  bool? get isInviteOthers;
  @override
  @JsonKey(name: 'notification_type')
  EventNotificationType? get notificationType;
  @override
  RepeatEventModel? get repeat;
  @override
  @JsonKey(name: 'member_ids')
  List<int>? get memberIds;
  @override
  @JsonKey(name: 'sprint_id')
  int? get sprintId;
  @override
  @JsonKey(name: 'task_id')
  int? get taskId;
  @override
  @JsonKey(name: 'file_ids')
  List<int>? get fileIds;
  @override
  @JsonKey(ignore: true)
  _$$_CreateTaskEventRequestCopyWith<_$_CreateTaskEventRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
