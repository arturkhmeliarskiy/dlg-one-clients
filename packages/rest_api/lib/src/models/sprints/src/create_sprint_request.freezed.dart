// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_sprint_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateSprintRequest _$CreateSprintRequestFromJson(Map<String, dynamic> json) {
  return _CreateSprintRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateSprintRequest {
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_at')
  DateTime get startAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'expired_at')
  DateTime? get expiredAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  SprintStatus get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'duration')
  SprintDurationType? get duration => throw _privateConstructorUsedError;
  @JsonKey(name: 'tasks')
  List<int>? get tasks => throw _privateConstructorUsedError;
  @JsonKey(name: 'events')
  List<int>? get events => throw _privateConstructorUsedError;
  @JsonKey(name: 'performers')
  DlsMembers? get performers => throw _privateConstructorUsedError;
  @JsonKey(name: 'super_task_id')
  int? get superTaskId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateSprintRequestCopyWith<CreateSprintRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateSprintRequestCopyWith<$Res> {
  factory $CreateSprintRequestCopyWith(
          CreateSprintRequest value, $Res Function(CreateSprintRequest) then) =
      _$CreateSprintRequestCopyWithImpl<$Res, CreateSprintRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'start_at') DateTime startAt,
      @JsonKey(name: 'expired_at') DateTime? expiredAt,
      @JsonKey(name: 'status') SprintStatus status,
      @JsonKey(name: 'duration') SprintDurationType? duration,
      @JsonKey(name: 'tasks') List<int>? tasks,
      @JsonKey(name: 'events') List<int>? events,
      @JsonKey(name: 'performers') DlsMembers? performers,
      @JsonKey(name: 'super_task_id') int? superTaskId});

  $DlsMembersCopyWith<$Res>? get performers;
}

/// @nodoc
class _$CreateSprintRequestCopyWithImpl<$Res, $Val extends CreateSprintRequest>
    implements $CreateSprintRequestCopyWith<$Res> {
  _$CreateSprintRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = freezed,
    Object? startAt = null,
    Object? expiredAt = freezed,
    Object? status = null,
    Object? duration = freezed,
    Object? tasks = freezed,
    Object? events = freezed,
    Object? performers = freezed,
    Object? superTaskId = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      startAt: null == startAt
          ? _value.startAt
          : startAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      expiredAt: freezed == expiredAt
          ? _value.expiredAt
          : expiredAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SprintStatus,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as SprintDurationType?,
      tasks: freezed == tasks
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      events: freezed == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      performers: freezed == performers
          ? _value.performers
          : performers // ignore: cast_nullable_to_non_nullable
              as DlsMembers?,
      superTaskId: freezed == superTaskId
          ? _value.superTaskId
          : superTaskId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DlsMembersCopyWith<$Res>? get performers {
    if (_value.performers == null) {
      return null;
    }

    return $DlsMembersCopyWith<$Res>(_value.performers!, (value) {
      return _then(_value.copyWith(performers: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CreateSprintRequestCopyWith<$Res>
    implements $CreateSprintRequestCopyWith<$Res> {
  factory _$$_CreateSprintRequestCopyWith(_$_CreateSprintRequest value,
          $Res Function(_$_CreateSprintRequest) then) =
      __$$_CreateSprintRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'start_at') DateTime startAt,
      @JsonKey(name: 'expired_at') DateTime? expiredAt,
      @JsonKey(name: 'status') SprintStatus status,
      @JsonKey(name: 'duration') SprintDurationType? duration,
      @JsonKey(name: 'tasks') List<int>? tasks,
      @JsonKey(name: 'events') List<int>? events,
      @JsonKey(name: 'performers') DlsMembers? performers,
      @JsonKey(name: 'super_task_id') int? superTaskId});

  @override
  $DlsMembersCopyWith<$Res>? get performers;
}

/// @nodoc
class __$$_CreateSprintRequestCopyWithImpl<$Res>
    extends _$CreateSprintRequestCopyWithImpl<$Res, _$_CreateSprintRequest>
    implements _$$_CreateSprintRequestCopyWith<$Res> {
  __$$_CreateSprintRequestCopyWithImpl(_$_CreateSprintRequest _value,
      $Res Function(_$_CreateSprintRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = freezed,
    Object? startAt = null,
    Object? expiredAt = freezed,
    Object? status = null,
    Object? duration = freezed,
    Object? tasks = freezed,
    Object? events = freezed,
    Object? performers = freezed,
    Object? superTaskId = freezed,
  }) {
    return _then(_$_CreateSprintRequest(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      startAt: null == startAt
          ? _value.startAt
          : startAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      expiredAt: freezed == expiredAt
          ? _value.expiredAt
          : expiredAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SprintStatus,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as SprintDurationType?,
      tasks: freezed == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      events: freezed == events
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      performers: freezed == performers
          ? _value.performers
          : performers // ignore: cast_nullable_to_non_nullable
              as DlsMembers?,
      superTaskId: freezed == superTaskId
          ? _value.superTaskId
          : superTaskId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$_CreateSprintRequest implements _CreateSprintRequest {
  const _$_CreateSprintRequest(
      {@JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'start_at') required this.startAt,
      @JsonKey(name: 'expired_at') this.expiredAt,
      @JsonKey(name: 'status') required this.status,
      @JsonKey(name: 'duration') this.duration,
      @JsonKey(name: 'tasks') final List<int>? tasks,
      @JsonKey(name: 'events') final List<int>? events,
      @JsonKey(name: 'performers') this.performers,
      @JsonKey(name: 'super_task_id') this.superTaskId})
      : _tasks = tasks,
        _events = events;

  factory _$_CreateSprintRequest.fromJson(Map<String, dynamic> json) =>
      _$$_CreateSprintRequestFromJson(json);

  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'start_at')
  final DateTime startAt;
  @override
  @JsonKey(name: 'expired_at')
  final DateTime? expiredAt;
  @override
  @JsonKey(name: 'status')
  final SprintStatus status;
  @override
  @JsonKey(name: 'duration')
  final SprintDurationType? duration;
  final List<int>? _tasks;
  @override
  @JsonKey(name: 'tasks')
  List<int>? get tasks {
    final value = _tasks;
    if (value == null) return null;
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<int>? _events;
  @override
  @JsonKey(name: 'events')
  List<int>? get events {
    final value = _events;
    if (value == null) return null;
    if (_events is EqualUnmodifiableListView) return _events;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'performers')
  final DlsMembers? performers;
  @override
  @JsonKey(name: 'super_task_id')
  final int? superTaskId;

  @override
  String toString() {
    return 'CreateSprintRequest(title: $title, description: $description, startAt: $startAt, expiredAt: $expiredAt, status: $status, duration: $duration, tasks: $tasks, events: $events, performers: $performers, superTaskId: $superTaskId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateSprintRequest &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.startAt, startAt) || other.startAt == startAt) &&
            (identical(other.expiredAt, expiredAt) ||
                other.expiredAt == expiredAt) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            const DeepCollectionEquality().equals(other._tasks, _tasks) &&
            const DeepCollectionEquality().equals(other._events, _events) &&
            (identical(other.performers, performers) ||
                other.performers == performers) &&
            (identical(other.superTaskId, superTaskId) ||
                other.superTaskId == superTaskId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      description,
      startAt,
      expiredAt,
      status,
      duration,
      const DeepCollectionEquality().hash(_tasks),
      const DeepCollectionEquality().hash(_events),
      performers,
      superTaskId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateSprintRequestCopyWith<_$_CreateSprintRequest> get copyWith =>
      __$$_CreateSprintRequestCopyWithImpl<_$_CreateSprintRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateSprintRequestToJson(
      this,
    );
  }
}

abstract class _CreateSprintRequest implements CreateSprintRequest {
  const factory _CreateSprintRequest(
          {@JsonKey(name: 'title') required final String title,
          @JsonKey(name: 'description') final String? description,
          @JsonKey(name: 'start_at') required final DateTime startAt,
          @JsonKey(name: 'expired_at') final DateTime? expiredAt,
          @JsonKey(name: 'status') required final SprintStatus status,
          @JsonKey(name: 'duration') final SprintDurationType? duration,
          @JsonKey(name: 'tasks') final List<int>? tasks,
          @JsonKey(name: 'events') final List<int>? events,
          @JsonKey(name: 'performers') final DlsMembers? performers,
          @JsonKey(name: 'super_task_id') final int? superTaskId}) =
      _$_CreateSprintRequest;

  factory _CreateSprintRequest.fromJson(Map<String, dynamic> json) =
      _$_CreateSprintRequest.fromJson;

  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'start_at')
  DateTime get startAt;
  @override
  @JsonKey(name: 'expired_at')
  DateTime? get expiredAt;
  @override
  @JsonKey(name: 'status')
  SprintStatus get status;
  @override
  @JsonKey(name: 'duration')
  SprintDurationType? get duration;
  @override
  @JsonKey(name: 'tasks')
  List<int>? get tasks;
  @override
  @JsonKey(name: 'events')
  List<int>? get events;
  @override
  @JsonKey(name: 'performers')
  DlsMembers? get performers;
  @override
  @JsonKey(name: 'super_task_id')
  int? get superTaskId;
  @override
  @JsonKey(ignore: true)
  _$$_CreateSprintRequestCopyWith<_$_CreateSprintRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
