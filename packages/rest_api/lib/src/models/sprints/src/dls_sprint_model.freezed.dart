// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dls_sprint_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DlsSprintModel _$DlsSprintModelFromJson(Map<String, dynamic> json) {
  return _DlsSprintModel.fromJson(json);
}

/// @nodoc
mixin _$DlsSprintModel {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_at')
  DateTime? get startAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'expired_at')
  DateTime? get expiredAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(unknownEnumValue: SprintStatus.newSprint)
  SprintStatus get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_name')
  String? get statusName => throw _privateConstructorUsedError;
  @JsonKey(unknownEnumValue: SprintDurationType.custom)
  SprintDurationType get duration => throw _privateConstructorUsedError;
  @JsonKey(name: 'duration_name')
  String? get durationName => throw _privateConstructorUsedError;
  @JsonKey(name: 'story_points')
  DlsTasksSprintStoryPoints? get storyPoints =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'story_point_plan')
  int? get storyPointPlan => throw _privateConstructorUsedError;
  @JsonKey(name: 'story_point_fact')
  int? get storyPointFact => throw _privateConstructorUsedError;
  @JsonKey(name: 'tasks_count')
  int? get tasksCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'tasks_done')
  int? get tasksDone => throw _privateConstructorUsedError;
  DlsTasksMembers? get performers => throw _privateConstructorUsedError;
  DlsTasksUser? get user => throw _privateConstructorUsedError;
  List<DlsTasks> get tasks => throw _privateConstructorUsedError;
  @JsonKey(name: 'super_task')
  DlsTasks? get superTask => throw _privateConstructorUsedError;
  List<TaskEventModel> get events => throw _privateConstructorUsedError;
  @JsonKey(name: 'matrix_room')
  String? get matrixRoom => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DlsSprintModelCopyWith<DlsSprintModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DlsSprintModelCopyWith<$Res> {
  factory $DlsSprintModelCopyWith(
          DlsSprintModel value, $Res Function(DlsSprintModel) then) =
      _$DlsSprintModelCopyWithImpl<$Res, DlsSprintModel>;
  @useResult
  $Res call(
      {int id,
      String title,
      String? description,
      @JsonKey(name: 'start_at')
          DateTime? startAt,
      @JsonKey(name: 'expired_at')
          DateTime? expiredAt,
      @JsonKey(name: 'created_at')
          DateTime? createdAt,
      @JsonKey(name: 'updated_at')
          DateTime? updatedAt,
      @JsonKey(unknownEnumValue: SprintStatus.newSprint)
          SprintStatus status,
      @JsonKey(name: 'status_name')
          String? statusName,
      @JsonKey(unknownEnumValue: SprintDurationType.custom)
          SprintDurationType duration,
      @JsonKey(name: 'duration_name')
          String? durationName,
      @JsonKey(name: 'story_points')
          DlsTasksSprintStoryPoints? storyPoints,
      @JsonKey(name: 'story_point_plan')
          int? storyPointPlan,
      @JsonKey(name: 'story_point_fact')
          int? storyPointFact,
      @JsonKey(name: 'tasks_count')
          int? tasksCount,
      @JsonKey(name: 'tasks_done')
          int? tasksDone,
      DlsTasksMembers? performers,
      DlsTasksUser? user,
      List<DlsTasks> tasks,
      @JsonKey(name: 'super_task')
          DlsTasks? superTask,
      List<TaskEventModel> events,
      @JsonKey(name: 'matrix_room')
          String? matrixRoom});

  $DlsTasksSprintStoryPointsCopyWith<$Res>? get storyPoints;
  $DlsTasksMembersCopyWith<$Res>? get performers;
  $DlsTasksUserCopyWith<$Res>? get user;
  $DlsTasksCopyWith<$Res>? get superTask;
}

/// @nodoc
class _$DlsSprintModelCopyWithImpl<$Res, $Val extends DlsSprintModel>
    implements $DlsSprintModelCopyWith<$Res> {
  _$DlsSprintModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = freezed,
    Object? startAt = freezed,
    Object? expiredAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? status = null,
    Object? statusName = freezed,
    Object? duration = null,
    Object? durationName = freezed,
    Object? storyPoints = freezed,
    Object? storyPointPlan = freezed,
    Object? storyPointFact = freezed,
    Object? tasksCount = freezed,
    Object? tasksDone = freezed,
    Object? performers = freezed,
    Object? user = freezed,
    Object? tasks = null,
    Object? superTask = freezed,
    Object? events = null,
    Object? matrixRoom = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      startAt: freezed == startAt
          ? _value.startAt
          : startAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expiredAt: freezed == expiredAt
          ? _value.expiredAt
          : expiredAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SprintStatus,
      statusName: freezed == statusName
          ? _value.statusName
          : statusName // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as SprintDurationType,
      durationName: freezed == durationName
          ? _value.durationName
          : durationName // ignore: cast_nullable_to_non_nullable
              as String?,
      storyPoints: freezed == storyPoints
          ? _value.storyPoints
          : storyPoints // ignore: cast_nullable_to_non_nullable
              as DlsTasksSprintStoryPoints?,
      storyPointPlan: freezed == storyPointPlan
          ? _value.storyPointPlan
          : storyPointPlan // ignore: cast_nullable_to_non_nullable
              as int?,
      storyPointFact: freezed == storyPointFact
          ? _value.storyPointFact
          : storyPointFact // ignore: cast_nullable_to_non_nullable
              as int?,
      tasksCount: freezed == tasksCount
          ? _value.tasksCount
          : tasksCount // ignore: cast_nullable_to_non_nullable
              as int?,
      tasksDone: freezed == tasksDone
          ? _value.tasksDone
          : tasksDone // ignore: cast_nullable_to_non_nullable
              as int?,
      performers: freezed == performers
          ? _value.performers
          : performers // ignore: cast_nullable_to_non_nullable
              as DlsTasksMembers?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as DlsTasksUser?,
      tasks: null == tasks
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<DlsTasks>,
      superTask: freezed == superTask
          ? _value.superTask
          : superTask // ignore: cast_nullable_to_non_nullable
              as DlsTasks?,
      events: null == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as List<TaskEventModel>,
      matrixRoom: freezed == matrixRoom
          ? _value.matrixRoom
          : matrixRoom // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DlsTasksSprintStoryPointsCopyWith<$Res>? get storyPoints {
    if (_value.storyPoints == null) {
      return null;
    }

    return $DlsTasksSprintStoryPointsCopyWith<$Res>(_value.storyPoints!,
        (value) {
      return _then(_value.copyWith(storyPoints: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DlsTasksMembersCopyWith<$Res>? get performers {
    if (_value.performers == null) {
      return null;
    }

    return $DlsTasksMembersCopyWith<$Res>(_value.performers!, (value) {
      return _then(_value.copyWith(performers: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DlsTasksUserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $DlsTasksUserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DlsTasksCopyWith<$Res>? get superTask {
    if (_value.superTask == null) {
      return null;
    }

    return $DlsTasksCopyWith<$Res>(_value.superTask!, (value) {
      return _then(_value.copyWith(superTask: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DlsSprintModelCopyWith<$Res>
    implements $DlsSprintModelCopyWith<$Res> {
  factory _$$_DlsSprintModelCopyWith(
          _$_DlsSprintModel value, $Res Function(_$_DlsSprintModel) then) =
      __$$_DlsSprintModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String? description,
      @JsonKey(name: 'start_at')
          DateTime? startAt,
      @JsonKey(name: 'expired_at')
          DateTime? expiredAt,
      @JsonKey(name: 'created_at')
          DateTime? createdAt,
      @JsonKey(name: 'updated_at')
          DateTime? updatedAt,
      @JsonKey(unknownEnumValue: SprintStatus.newSprint)
          SprintStatus status,
      @JsonKey(name: 'status_name')
          String? statusName,
      @JsonKey(unknownEnumValue: SprintDurationType.custom)
          SprintDurationType duration,
      @JsonKey(name: 'duration_name')
          String? durationName,
      @JsonKey(name: 'story_points')
          DlsTasksSprintStoryPoints? storyPoints,
      @JsonKey(name: 'story_point_plan')
          int? storyPointPlan,
      @JsonKey(name: 'story_point_fact')
          int? storyPointFact,
      @JsonKey(name: 'tasks_count')
          int? tasksCount,
      @JsonKey(name: 'tasks_done')
          int? tasksDone,
      DlsTasksMembers? performers,
      DlsTasksUser? user,
      List<DlsTasks> tasks,
      @JsonKey(name: 'super_task')
          DlsTasks? superTask,
      List<TaskEventModel> events,
      @JsonKey(name: 'matrix_room')
          String? matrixRoom});

  @override
  $DlsTasksSprintStoryPointsCopyWith<$Res>? get storyPoints;
  @override
  $DlsTasksMembersCopyWith<$Res>? get performers;
  @override
  $DlsTasksUserCopyWith<$Res>? get user;
  @override
  $DlsTasksCopyWith<$Res>? get superTask;
}

/// @nodoc
class __$$_DlsSprintModelCopyWithImpl<$Res>
    extends _$DlsSprintModelCopyWithImpl<$Res, _$_DlsSprintModel>
    implements _$$_DlsSprintModelCopyWith<$Res> {
  __$$_DlsSprintModelCopyWithImpl(
      _$_DlsSprintModel _value, $Res Function(_$_DlsSprintModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = freezed,
    Object? startAt = freezed,
    Object? expiredAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? status = null,
    Object? statusName = freezed,
    Object? duration = null,
    Object? durationName = freezed,
    Object? storyPoints = freezed,
    Object? storyPointPlan = freezed,
    Object? storyPointFact = freezed,
    Object? tasksCount = freezed,
    Object? tasksDone = freezed,
    Object? performers = freezed,
    Object? user = freezed,
    Object? tasks = null,
    Object? superTask = freezed,
    Object? events = null,
    Object? matrixRoom = freezed,
  }) {
    return _then(_$_DlsSprintModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      startAt: freezed == startAt
          ? _value.startAt
          : startAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expiredAt: freezed == expiredAt
          ? _value.expiredAt
          : expiredAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SprintStatus,
      statusName: freezed == statusName
          ? _value.statusName
          : statusName // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as SprintDurationType,
      durationName: freezed == durationName
          ? _value.durationName
          : durationName // ignore: cast_nullable_to_non_nullable
              as String?,
      storyPoints: freezed == storyPoints
          ? _value.storyPoints
          : storyPoints // ignore: cast_nullable_to_non_nullable
              as DlsTasksSprintStoryPoints?,
      storyPointPlan: freezed == storyPointPlan
          ? _value.storyPointPlan
          : storyPointPlan // ignore: cast_nullable_to_non_nullable
              as int?,
      storyPointFact: freezed == storyPointFact
          ? _value.storyPointFact
          : storyPointFact // ignore: cast_nullable_to_non_nullable
              as int?,
      tasksCount: freezed == tasksCount
          ? _value.tasksCount
          : tasksCount // ignore: cast_nullable_to_non_nullable
              as int?,
      tasksDone: freezed == tasksDone
          ? _value.tasksDone
          : tasksDone // ignore: cast_nullable_to_non_nullable
              as int?,
      performers: freezed == performers
          ? _value.performers
          : performers // ignore: cast_nullable_to_non_nullable
              as DlsTasksMembers?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as DlsTasksUser?,
      tasks: null == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<DlsTasks>,
      superTask: freezed == superTask
          ? _value.superTask
          : superTask // ignore: cast_nullable_to_non_nullable
              as DlsTasks?,
      events: null == events
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as List<TaskEventModel>,
      matrixRoom: freezed == matrixRoom
          ? _value.matrixRoom
          : matrixRoom // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DlsSprintModel implements _DlsSprintModel {
  _$_DlsSprintModel(
      {required this.id,
      this.title = '',
      this.description,
      @JsonKey(name: 'start_at')
          this.startAt,
      @JsonKey(name: 'expired_at')
          this.expiredAt,
      @JsonKey(name: 'created_at')
          this.createdAt,
      @JsonKey(name: 'updated_at')
          this.updatedAt,
      @JsonKey(unknownEnumValue: SprintStatus.newSprint)
          required this.status,
      @JsonKey(name: 'status_name')
          this.statusName,
      @JsonKey(unknownEnumValue: SprintDurationType.custom)
          this.duration = SprintDurationType.custom,
      @JsonKey(name: 'duration_name')
          this.durationName,
      @JsonKey(name: 'story_points')
          this.storyPoints,
      @JsonKey(name: 'story_point_plan')
          this.storyPointPlan,
      @JsonKey(name: 'story_point_fact')
          this.storyPointFact,
      @JsonKey(name: 'tasks_count')
          this.tasksCount,
      @JsonKey(name: 'tasks_done')
          this.tasksDone,
      this.performers,
      this.user,
      final List<DlsTasks> tasks = const [],
      @JsonKey(name: 'super_task')
          this.superTask,
      final List<TaskEventModel> events = const [],
      @JsonKey(name: 'matrix_room')
          this.matrixRoom})
      : _tasks = tasks,
        _events = events;

  factory _$_DlsSprintModel.fromJson(Map<String, dynamic> json) =>
      _$$_DlsSprintModelFromJson(json);

  @override
  final int id;
  @override
  @JsonKey()
  final String title;
  @override
  final String? description;
  @override
  @JsonKey(name: 'start_at')
  final DateTime? startAt;
  @override
  @JsonKey(name: 'expired_at')
  final DateTime? expiredAt;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @override
  @JsonKey(unknownEnumValue: SprintStatus.newSprint)
  final SprintStatus status;
  @override
  @JsonKey(name: 'status_name')
  final String? statusName;
  @override
  @JsonKey(unknownEnumValue: SprintDurationType.custom)
  final SprintDurationType duration;
  @override
  @JsonKey(name: 'duration_name')
  final String? durationName;
  @override
  @JsonKey(name: 'story_points')
  final DlsTasksSprintStoryPoints? storyPoints;
  @override
  @JsonKey(name: 'story_point_plan')
  final int? storyPointPlan;
  @override
  @JsonKey(name: 'story_point_fact')
  final int? storyPointFact;
  @override
  @JsonKey(name: 'tasks_count')
  final int? tasksCount;
  @override
  @JsonKey(name: 'tasks_done')
  final int? tasksDone;
  @override
  final DlsTasksMembers? performers;
  @override
  final DlsTasksUser? user;
  final List<DlsTasks> _tasks;
  @override
  @JsonKey()
  List<DlsTasks> get tasks {
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  @override
  @JsonKey(name: 'super_task')
  final DlsTasks? superTask;
  final List<TaskEventModel> _events;
  @override
  @JsonKey()
  List<TaskEventModel> get events {
    if (_events is EqualUnmodifiableListView) return _events;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_events);
  }

  @override
  @JsonKey(name: 'matrix_room')
  final String? matrixRoom;

  @override
  String toString() {
    return 'DlsSprintModel(id: $id, title: $title, description: $description, startAt: $startAt, expiredAt: $expiredAt, createdAt: $createdAt, updatedAt: $updatedAt, status: $status, statusName: $statusName, duration: $duration, durationName: $durationName, storyPoints: $storyPoints, storyPointPlan: $storyPointPlan, storyPointFact: $storyPointFact, tasksCount: $tasksCount, tasksDone: $tasksDone, performers: $performers, user: $user, tasks: $tasks, superTask: $superTask, events: $events, matrixRoom: $matrixRoom)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DlsSprintModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.startAt, startAt) || other.startAt == startAt) &&
            (identical(other.expiredAt, expiredAt) ||
                other.expiredAt == expiredAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.statusName, statusName) ||
                other.statusName == statusName) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.durationName, durationName) ||
                other.durationName == durationName) &&
            (identical(other.storyPoints, storyPoints) ||
                other.storyPoints == storyPoints) &&
            (identical(other.storyPointPlan, storyPointPlan) ||
                other.storyPointPlan == storyPointPlan) &&
            (identical(other.storyPointFact, storyPointFact) ||
                other.storyPointFact == storyPointFact) &&
            (identical(other.tasksCount, tasksCount) ||
                other.tasksCount == tasksCount) &&
            (identical(other.tasksDone, tasksDone) ||
                other.tasksDone == tasksDone) &&
            (identical(other.performers, performers) ||
                other.performers == performers) &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality().equals(other._tasks, _tasks) &&
            (identical(other.superTask, superTask) ||
                other.superTask == superTask) &&
            const DeepCollectionEquality().equals(other._events, _events) &&
            (identical(other.matrixRoom, matrixRoom) ||
                other.matrixRoom == matrixRoom));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        title,
        description,
        startAt,
        expiredAt,
        createdAt,
        updatedAt,
        status,
        statusName,
        duration,
        durationName,
        storyPoints,
        storyPointPlan,
        storyPointFact,
        tasksCount,
        tasksDone,
        performers,
        user,
        const DeepCollectionEquality().hash(_tasks),
        superTask,
        const DeepCollectionEquality().hash(_events),
        matrixRoom
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DlsSprintModelCopyWith<_$_DlsSprintModel> get copyWith =>
      __$$_DlsSprintModelCopyWithImpl<_$_DlsSprintModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DlsSprintModelToJson(
      this,
    );
  }
}

abstract class _DlsSprintModel implements DlsSprintModel {
  factory _DlsSprintModel(
      {required final int id,
      final String title,
      final String? description,
      @JsonKey(name: 'start_at')
          final DateTime? startAt,
      @JsonKey(name: 'expired_at')
          final DateTime? expiredAt,
      @JsonKey(name: 'created_at')
          final DateTime? createdAt,
      @JsonKey(name: 'updated_at')
          final DateTime? updatedAt,
      @JsonKey(unknownEnumValue: SprintStatus.newSprint)
          required final SprintStatus status,
      @JsonKey(name: 'status_name')
          final String? statusName,
      @JsonKey(unknownEnumValue: SprintDurationType.custom)
          final SprintDurationType duration,
      @JsonKey(name: 'duration_name')
          final String? durationName,
      @JsonKey(name: 'story_points')
          final DlsTasksSprintStoryPoints? storyPoints,
      @JsonKey(name: 'story_point_plan')
          final int? storyPointPlan,
      @JsonKey(name: 'story_point_fact')
          final int? storyPointFact,
      @JsonKey(name: 'tasks_count')
          final int? tasksCount,
      @JsonKey(name: 'tasks_done')
          final int? tasksDone,
      final DlsTasksMembers? performers,
      final DlsTasksUser? user,
      final List<DlsTasks> tasks,
      @JsonKey(name: 'super_task')
          final DlsTasks? superTask,
      final List<TaskEventModel> events,
      @JsonKey(name: 'matrix_room')
          final String? matrixRoom}) = _$_DlsSprintModel;

  factory _DlsSprintModel.fromJson(Map<String, dynamic> json) =
      _$_DlsSprintModel.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String? get description;
  @override
  @JsonKey(name: 'start_at')
  DateTime? get startAt;
  @override
  @JsonKey(name: 'expired_at')
  DateTime? get expiredAt;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(unknownEnumValue: SprintStatus.newSprint)
  SprintStatus get status;
  @override
  @JsonKey(name: 'status_name')
  String? get statusName;
  @override
  @JsonKey(unknownEnumValue: SprintDurationType.custom)
  SprintDurationType get duration;
  @override
  @JsonKey(name: 'duration_name')
  String? get durationName;
  @override
  @JsonKey(name: 'story_points')
  DlsTasksSprintStoryPoints? get storyPoints;
  @override
  @JsonKey(name: 'story_point_plan')
  int? get storyPointPlan;
  @override
  @JsonKey(name: 'story_point_fact')
  int? get storyPointFact;
  @override
  @JsonKey(name: 'tasks_count')
  int? get tasksCount;
  @override
  @JsonKey(name: 'tasks_done')
  int? get tasksDone;
  @override
  DlsTasksMembers? get performers;
  @override
  DlsTasksUser? get user;
  @override
  List<DlsTasks> get tasks;
  @override
  @JsonKey(name: 'super_task')
  DlsTasks? get superTask;
  @override
  List<TaskEventModel> get events;
  @override
  @JsonKey(name: 'matrix_room')
  String? get matrixRoom;
  @override
  @JsonKey(ignore: true)
  _$$_DlsSprintModelCopyWith<_$_DlsSprintModel> get copyWith =>
      throw _privateConstructorUsedError;
}
