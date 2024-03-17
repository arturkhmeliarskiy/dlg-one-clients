// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dls_notification_task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DLSNotificationTask _$DLSNotificationTaskFromJson(Map<String, dynamic> json) {
  return _DLSNotificationTask.fromJson(json);
}

/// @nodoc
mixin _$DLSNotificationTask {
  String get uuid => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  DLSNotificationObjectStatus? get status => throw _privateConstructorUsedError;
  DLSNotificationObjectPriority? get priority =>
      throw _privateConstructorUsedError;
  DateTime? get deadline => throw _privateConstructorUsedError;
  bool? get isLocked => throw _privateConstructorUsedError;
  List<DLSNotificationUser>? get watchers => throw _privateConstructorUsedError;
  List<DLSNotificationSprint>? get sprints =>
      throw _privateConstructorUsedError;
  List<DLSNotificationEvent>? get events => throw _privateConstructorUsedError;
  List<DLSNotificationTask>? get childTasks =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DLSNotificationTaskCopyWith<DLSNotificationTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DLSNotificationTaskCopyWith<$Res> {
  factory $DLSNotificationTaskCopyWith(
          DLSNotificationTask value, $Res Function(DLSNotificationTask) then) =
      _$DLSNotificationTaskCopyWithImpl<$Res, DLSNotificationTask>;
  @useResult
  $Res call(
      {String uuid,
      String name,
      DateTime timestamp,
      DLSNotificationObjectStatus? status,
      DLSNotificationObjectPriority? priority,
      DateTime? deadline,
      bool? isLocked,
      List<DLSNotificationUser>? watchers,
      List<DLSNotificationSprint>? sprints,
      List<DLSNotificationEvent>? events,
      List<DLSNotificationTask>? childTasks});
}

/// @nodoc
class _$DLSNotificationTaskCopyWithImpl<$Res, $Val extends DLSNotificationTask>
    implements $DLSNotificationTaskCopyWith<$Res> {
  _$DLSNotificationTaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? name = null,
    Object? timestamp = null,
    Object? status = freezed,
    Object? priority = freezed,
    Object? deadline = freezed,
    Object? isLocked = freezed,
    Object? watchers = freezed,
    Object? sprints = freezed,
    Object? events = freezed,
    Object? childTasks = freezed,
  }) {
    return _then(_value.copyWith(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DLSNotificationObjectStatus?,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as DLSNotificationObjectPriority?,
      deadline: freezed == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isLocked: freezed == isLocked
          ? _value.isLocked
          : isLocked // ignore: cast_nullable_to_non_nullable
              as bool?,
      watchers: freezed == watchers
          ? _value.watchers
          : watchers // ignore: cast_nullable_to_non_nullable
              as List<DLSNotificationUser>?,
      sprints: freezed == sprints
          ? _value.sprints
          : sprints // ignore: cast_nullable_to_non_nullable
              as List<DLSNotificationSprint>?,
      events: freezed == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as List<DLSNotificationEvent>?,
      childTasks: freezed == childTasks
          ? _value.childTasks
          : childTasks // ignore: cast_nullable_to_non_nullable
              as List<DLSNotificationTask>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DLSNotificationTaskCopyWith<$Res>
    implements $DLSNotificationTaskCopyWith<$Res> {
  factory _$$_DLSNotificationTaskCopyWith(_$_DLSNotificationTask value,
          $Res Function(_$_DLSNotificationTask) then) =
      __$$_DLSNotificationTaskCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uuid,
      String name,
      DateTime timestamp,
      DLSNotificationObjectStatus? status,
      DLSNotificationObjectPriority? priority,
      DateTime? deadline,
      bool? isLocked,
      List<DLSNotificationUser>? watchers,
      List<DLSNotificationSprint>? sprints,
      List<DLSNotificationEvent>? events,
      List<DLSNotificationTask>? childTasks});
}

/// @nodoc
class __$$_DLSNotificationTaskCopyWithImpl<$Res>
    extends _$DLSNotificationTaskCopyWithImpl<$Res, _$_DLSNotificationTask>
    implements _$$_DLSNotificationTaskCopyWith<$Res> {
  __$$_DLSNotificationTaskCopyWithImpl(_$_DLSNotificationTask _value,
      $Res Function(_$_DLSNotificationTask) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? name = null,
    Object? timestamp = null,
    Object? status = freezed,
    Object? priority = freezed,
    Object? deadline = freezed,
    Object? isLocked = freezed,
    Object? watchers = freezed,
    Object? sprints = freezed,
    Object? events = freezed,
    Object? childTasks = freezed,
  }) {
    return _then(_$_DLSNotificationTask(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DLSNotificationObjectStatus?,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as DLSNotificationObjectPriority?,
      deadline: freezed == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isLocked: freezed == isLocked
          ? _value.isLocked
          : isLocked // ignore: cast_nullable_to_non_nullable
              as bool?,
      watchers: freezed == watchers
          ? _value._watchers
          : watchers // ignore: cast_nullable_to_non_nullable
              as List<DLSNotificationUser>?,
      sprints: freezed == sprints
          ? _value._sprints
          : sprints // ignore: cast_nullable_to_non_nullable
              as List<DLSNotificationSprint>?,
      events: freezed == events
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as List<DLSNotificationEvent>?,
      childTasks: freezed == childTasks
          ? _value._childTasks
          : childTasks // ignore: cast_nullable_to_non_nullable
              as List<DLSNotificationTask>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DLSNotificationTask extends _DLSNotificationTask {
  _$_DLSNotificationTask(
      {required this.uuid,
      required this.name,
      required this.timestamp,
      this.status,
      this.priority,
      this.deadline,
      this.isLocked,
      final List<DLSNotificationUser>? watchers,
      final List<DLSNotificationSprint>? sprints,
      final List<DLSNotificationEvent>? events,
      final List<DLSNotificationTask>? childTasks})
      : _watchers = watchers,
        _sprints = sprints,
        _events = events,
        _childTasks = childTasks,
        super._();

  factory _$_DLSNotificationTask.fromJson(Map<String, dynamic> json) =>
      _$$_DLSNotificationTaskFromJson(json);

  @override
  final String uuid;
  @override
  final String name;
  @override
  final DateTime timestamp;
  @override
  final DLSNotificationObjectStatus? status;
  @override
  final DLSNotificationObjectPriority? priority;
  @override
  final DateTime? deadline;
  @override
  final bool? isLocked;
  final List<DLSNotificationUser>? _watchers;
  @override
  List<DLSNotificationUser>? get watchers {
    final value = _watchers;
    if (value == null) return null;
    if (_watchers is EqualUnmodifiableListView) return _watchers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<DLSNotificationSprint>? _sprints;
  @override
  List<DLSNotificationSprint>? get sprints {
    final value = _sprints;
    if (value == null) return null;
    if (_sprints is EqualUnmodifiableListView) return _sprints;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<DLSNotificationEvent>? _events;
  @override
  List<DLSNotificationEvent>? get events {
    final value = _events;
    if (value == null) return null;
    if (_events is EqualUnmodifiableListView) return _events;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<DLSNotificationTask>? _childTasks;
  @override
  List<DLSNotificationTask>? get childTasks {
    final value = _childTasks;
    if (value == null) return null;
    if (_childTasks is EqualUnmodifiableListView) return _childTasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DLSNotificationTask(uuid: $uuid, name: $name, timestamp: $timestamp, status: $status, priority: $priority, deadline: $deadline, isLocked: $isLocked, watchers: $watchers, sprints: $sprints, events: $events, childTasks: $childTasks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DLSNotificationTask &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.deadline, deadline) ||
                other.deadline == deadline) &&
            (identical(other.isLocked, isLocked) ||
                other.isLocked == isLocked) &&
            const DeepCollectionEquality().equals(other._watchers, _watchers) &&
            const DeepCollectionEquality().equals(other._sprints, _sprints) &&
            const DeepCollectionEquality().equals(other._events, _events) &&
            const DeepCollectionEquality()
                .equals(other._childTasks, _childTasks));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      uuid,
      name,
      timestamp,
      status,
      priority,
      deadline,
      isLocked,
      const DeepCollectionEquality().hash(_watchers),
      const DeepCollectionEquality().hash(_sprints),
      const DeepCollectionEquality().hash(_events),
      const DeepCollectionEquality().hash(_childTasks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DLSNotificationTaskCopyWith<_$_DLSNotificationTask> get copyWith =>
      __$$_DLSNotificationTaskCopyWithImpl<_$_DLSNotificationTask>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DLSNotificationTaskToJson(
      this,
    );
  }
}

abstract class _DLSNotificationTask extends DLSNotificationTask {
  factory _DLSNotificationTask(
      {required final String uuid,
      required final String name,
      required final DateTime timestamp,
      final DLSNotificationObjectStatus? status,
      final DLSNotificationObjectPriority? priority,
      final DateTime? deadline,
      final bool? isLocked,
      final List<DLSNotificationUser>? watchers,
      final List<DLSNotificationSprint>? sprints,
      final List<DLSNotificationEvent>? events,
      final List<DLSNotificationTask>? childTasks}) = _$_DLSNotificationTask;
  _DLSNotificationTask._() : super._();

  factory _DLSNotificationTask.fromJson(Map<String, dynamic> json) =
      _$_DLSNotificationTask.fromJson;

  @override
  String get uuid;
  @override
  String get name;
  @override
  DateTime get timestamp;
  @override
  DLSNotificationObjectStatus? get status;
  @override
  DLSNotificationObjectPriority? get priority;
  @override
  DateTime? get deadline;
  @override
  bool? get isLocked;
  @override
  List<DLSNotificationUser>? get watchers;
  @override
  List<DLSNotificationSprint>? get sprints;
  @override
  List<DLSNotificationEvent>? get events;
  @override
  List<DLSNotificationTask>? get childTasks;
  @override
  @JsonKey(ignore: true)
  _$$_DLSNotificationTaskCopyWith<_$_DLSNotificationTask> get copyWith =>
      throw _privateConstructorUsedError;
}
