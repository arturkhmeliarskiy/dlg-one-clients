// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sprint_author_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SprintAuthorModel {
  String get parentTitle => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  SprintStatus get status => throw _privateConstructorUsedError;
  List<TaskEventModel> get events => throw _privateConstructorUsedError;
  Map<TaskStatusType, List<DlsTasks>> get backlogSubtasks =>
      throw _privateConstructorUsedError;
  Map<TaskStatusType, List<DlsTasks>> get sprintSubtasks =>
      throw _privateConstructorUsedError;
  DateTime? get date => throw _privateConstructorUsedError;
  SprintDurationType get duration => throw _privateConstructorUsedError;
  DateTime? get endDate => throw _privateConstructorUsedError;
  DLSUser? get author => throw _privateConstructorUsedError;
  List<DLSUser> get executors => throw _privateConstructorUsedError;
  List<DLSUser> get responsible => throw _privateConstructorUsedError;
  List<DLSUser> get observers => throw _privateConstructorUsedError;
  DlsSprintModel? get sprint => throw _privateConstructorUsedError;
  DlsTasks? get superTask => throw _privateConstructorUsedError;
  String? get matrixRoom => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SprintAuthorModelCopyWith<SprintAuthorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SprintAuthorModelCopyWith<$Res> {
  factory $SprintAuthorModelCopyWith(
          SprintAuthorModel value, $Res Function(SprintAuthorModel) then) =
      _$SprintAuthorModelCopyWithImpl<$Res, SprintAuthorModel>;
  @useResult
  $Res call(
      {String parentTitle,
      String title,
      String description,
      SprintStatus status,
      List<TaskEventModel> events,
      Map<TaskStatusType, List<DlsTasks>> backlogSubtasks,
      Map<TaskStatusType, List<DlsTasks>> sprintSubtasks,
      DateTime? date,
      SprintDurationType duration,
      DateTime? endDate,
      DLSUser? author,
      List<DLSUser> executors,
      List<DLSUser> responsible,
      List<DLSUser> observers,
      DlsSprintModel? sprint,
      DlsTasks? superTask,
      String? matrixRoom});

  $DLSUserCopyWith<$Res>? get author;
  $DlsSprintModelCopyWith<$Res>? get sprint;
  $DlsTasksCopyWith<$Res>? get superTask;
}

/// @nodoc
class _$SprintAuthorModelCopyWithImpl<$Res, $Val extends SprintAuthorModel>
    implements $SprintAuthorModelCopyWith<$Res> {
  _$SprintAuthorModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parentTitle = null,
    Object? title = null,
    Object? description = null,
    Object? status = null,
    Object? events = null,
    Object? backlogSubtasks = null,
    Object? sprintSubtasks = null,
    Object? date = freezed,
    Object? duration = null,
    Object? endDate = freezed,
    Object? author = freezed,
    Object? executors = null,
    Object? responsible = null,
    Object? observers = null,
    Object? sprint = freezed,
    Object? superTask = freezed,
    Object? matrixRoom = freezed,
  }) {
    return _then(_value.copyWith(
      parentTitle: null == parentTitle
          ? _value.parentTitle
          : parentTitle // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SprintStatus,
      events: null == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as List<TaskEventModel>,
      backlogSubtasks: null == backlogSubtasks
          ? _value.backlogSubtasks
          : backlogSubtasks // ignore: cast_nullable_to_non_nullable
              as Map<TaskStatusType, List<DlsTasks>>,
      sprintSubtasks: null == sprintSubtasks
          ? _value.sprintSubtasks
          : sprintSubtasks // ignore: cast_nullable_to_non_nullable
              as Map<TaskStatusType, List<DlsTasks>>,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as SprintDurationType,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as DLSUser?,
      executors: null == executors
          ? _value.executors
          : executors // ignore: cast_nullable_to_non_nullable
              as List<DLSUser>,
      responsible: null == responsible
          ? _value.responsible
          : responsible // ignore: cast_nullable_to_non_nullable
              as List<DLSUser>,
      observers: null == observers
          ? _value.observers
          : observers // ignore: cast_nullable_to_non_nullable
              as List<DLSUser>,
      sprint: freezed == sprint
          ? _value.sprint
          : sprint // ignore: cast_nullable_to_non_nullable
              as DlsSprintModel?,
      superTask: freezed == superTask
          ? _value.superTask
          : superTask // ignore: cast_nullable_to_non_nullable
              as DlsTasks?,
      matrixRoom: freezed == matrixRoom
          ? _value.matrixRoom
          : matrixRoom // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DLSUserCopyWith<$Res>? get author {
    if (_value.author == null) {
      return null;
    }

    return $DLSUserCopyWith<$Res>(_value.author!, (value) {
      return _then(_value.copyWith(author: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DlsSprintModelCopyWith<$Res>? get sprint {
    if (_value.sprint == null) {
      return null;
    }

    return $DlsSprintModelCopyWith<$Res>(_value.sprint!, (value) {
      return _then(_value.copyWith(sprint: value) as $Val);
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
abstract class _$$_SprintAuthorModelCopyWith<$Res>
    implements $SprintAuthorModelCopyWith<$Res> {
  factory _$$_SprintAuthorModelCopyWith(_$_SprintAuthorModel value,
          $Res Function(_$_SprintAuthorModel) then) =
      __$$_SprintAuthorModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String parentTitle,
      String title,
      String description,
      SprintStatus status,
      List<TaskEventModel> events,
      Map<TaskStatusType, List<DlsTasks>> backlogSubtasks,
      Map<TaskStatusType, List<DlsTasks>> sprintSubtasks,
      DateTime? date,
      SprintDurationType duration,
      DateTime? endDate,
      DLSUser? author,
      List<DLSUser> executors,
      List<DLSUser> responsible,
      List<DLSUser> observers,
      DlsSprintModel? sprint,
      DlsTasks? superTask,
      String? matrixRoom});

  @override
  $DLSUserCopyWith<$Res>? get author;
  @override
  $DlsSprintModelCopyWith<$Res>? get sprint;
  @override
  $DlsTasksCopyWith<$Res>? get superTask;
}

/// @nodoc
class __$$_SprintAuthorModelCopyWithImpl<$Res>
    extends _$SprintAuthorModelCopyWithImpl<$Res, _$_SprintAuthorModel>
    implements _$$_SprintAuthorModelCopyWith<$Res> {
  __$$_SprintAuthorModelCopyWithImpl(
      _$_SprintAuthorModel _value, $Res Function(_$_SprintAuthorModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parentTitle = null,
    Object? title = null,
    Object? description = null,
    Object? status = null,
    Object? events = null,
    Object? backlogSubtasks = null,
    Object? sprintSubtasks = null,
    Object? date = freezed,
    Object? duration = null,
    Object? endDate = freezed,
    Object? author = freezed,
    Object? executors = null,
    Object? responsible = null,
    Object? observers = null,
    Object? sprint = freezed,
    Object? superTask = freezed,
    Object? matrixRoom = freezed,
  }) {
    return _then(_$_SprintAuthorModel(
      parentTitle: null == parentTitle
          ? _value.parentTitle
          : parentTitle // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SprintStatus,
      events: null == events
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as List<TaskEventModel>,
      backlogSubtasks: null == backlogSubtasks
          ? _value._backlogSubtasks
          : backlogSubtasks // ignore: cast_nullable_to_non_nullable
              as Map<TaskStatusType, List<DlsTasks>>,
      sprintSubtasks: null == sprintSubtasks
          ? _value._sprintSubtasks
          : sprintSubtasks // ignore: cast_nullable_to_non_nullable
              as Map<TaskStatusType, List<DlsTasks>>,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as SprintDurationType,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as DLSUser?,
      executors: null == executors
          ? _value._executors
          : executors // ignore: cast_nullable_to_non_nullable
              as List<DLSUser>,
      responsible: null == responsible
          ? _value._responsible
          : responsible // ignore: cast_nullable_to_non_nullable
              as List<DLSUser>,
      observers: null == observers
          ? _value._observers
          : observers // ignore: cast_nullable_to_non_nullable
              as List<DLSUser>,
      sprint: freezed == sprint
          ? _value.sprint
          : sprint // ignore: cast_nullable_to_non_nullable
              as DlsSprintModel?,
      superTask: freezed == superTask
          ? _value.superTask
          : superTask // ignore: cast_nullable_to_non_nullable
              as DlsTasks?,
      matrixRoom: freezed == matrixRoom
          ? _value.matrixRoom
          : matrixRoom // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_SprintAuthorModel implements _SprintAuthorModel {
  const _$_SprintAuthorModel(
      {this.parentTitle = '',
      this.title = '',
      this.description = '',
      this.status = SprintStatus.newSprint,
      final List<TaskEventModel> events = const [],
      final Map<TaskStatusType, List<DlsTasks>> backlogSubtasks = const {},
      final Map<TaskStatusType, List<DlsTasks>> sprintSubtasks = const {},
      this.date,
      this.duration = SprintDurationType.oneWeek,
      this.endDate,
      this.author,
      final List<DLSUser> executors = const [],
      final List<DLSUser> responsible = const [],
      final List<DLSUser> observers = const [],
      this.sprint,
      this.superTask,
      this.matrixRoom})
      : _events = events,
        _backlogSubtasks = backlogSubtasks,
        _sprintSubtasks = sprintSubtasks,
        _executors = executors,
        _responsible = responsible,
        _observers = observers;

  @override
  @JsonKey()
  final String parentTitle;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final SprintStatus status;
  final List<TaskEventModel> _events;
  @override
  @JsonKey()
  List<TaskEventModel> get events {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_events);
  }

  final Map<TaskStatusType, List<DlsTasks>> _backlogSubtasks;
  @override
  @JsonKey()
  Map<TaskStatusType, List<DlsTasks>> get backlogSubtasks {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_backlogSubtasks);
  }

  final Map<TaskStatusType, List<DlsTasks>> _sprintSubtasks;
  @override
  @JsonKey()
  Map<TaskStatusType, List<DlsTasks>> get sprintSubtasks {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_sprintSubtasks);
  }

  @override
  final DateTime? date;
  @override
  @JsonKey()
  final SprintDurationType duration;
  @override
  final DateTime? endDate;
  @override
  final DLSUser? author;
  final List<DLSUser> _executors;
  @override
  @JsonKey()
  List<DLSUser> get executors {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_executors);
  }

  final List<DLSUser> _responsible;
  @override
  @JsonKey()
  List<DLSUser> get responsible {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_responsible);
  }

  final List<DLSUser> _observers;
  @override
  @JsonKey()
  List<DLSUser> get observers {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_observers);
  }

  @override
  final DlsSprintModel? sprint;
  @override
  final DlsTasks? superTask;
  @override
  final String? matrixRoom;

  @override
  String toString() {
    return 'SprintAuthorModel(parentTitle: $parentTitle, title: $title, description: $description, status: $status, events: $events, backlogSubtasks: $backlogSubtasks, sprintSubtasks: $sprintSubtasks, date: $date, duration: $duration, endDate: $endDate, author: $author, executors: $executors, responsible: $responsible, observers: $observers, sprint: $sprint, superTask: $superTask, matrixRoom: $matrixRoom)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SprintAuthorModel &&
            (identical(other.parentTitle, parentTitle) ||
                other.parentTitle == parentTitle) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._events, _events) &&
            const DeepCollectionEquality()
                .equals(other._backlogSubtasks, _backlogSubtasks) &&
            const DeepCollectionEquality()
                .equals(other._sprintSubtasks, _sprintSubtasks) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.author, author) || other.author == author) &&
            const DeepCollectionEquality()
                .equals(other._executors, _executors) &&
            const DeepCollectionEquality()
                .equals(other._responsible, _responsible) &&
            const DeepCollectionEquality()
                .equals(other._observers, _observers) &&
            (identical(other.sprint, sprint) || other.sprint == sprint) &&
            (identical(other.superTask, superTask) ||
                other.superTask == superTask) &&
            (identical(other.matrixRoom, matrixRoom) ||
                other.matrixRoom == matrixRoom));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      parentTitle,
      title,
      description,
      status,
      const DeepCollectionEquality().hash(_events),
      const DeepCollectionEquality().hash(_backlogSubtasks),
      const DeepCollectionEquality().hash(_sprintSubtasks),
      date,
      duration,
      endDate,
      author,
      const DeepCollectionEquality().hash(_executors),
      const DeepCollectionEquality().hash(_responsible),
      const DeepCollectionEquality().hash(_observers),
      sprint,
      superTask,
      matrixRoom);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SprintAuthorModelCopyWith<_$_SprintAuthorModel> get copyWith =>
      __$$_SprintAuthorModelCopyWithImpl<_$_SprintAuthorModel>(
          this, _$identity);
}

abstract class _SprintAuthorModel implements SprintAuthorModel {
  const factory _SprintAuthorModel(
      {final String parentTitle,
      final String title,
      final String description,
      final SprintStatus status,
      final List<TaskEventModel> events,
      final Map<TaskStatusType, List<DlsTasks>> backlogSubtasks,
      final Map<TaskStatusType, List<DlsTasks>> sprintSubtasks,
      final DateTime? date,
      final SprintDurationType duration,
      final DateTime? endDate,
      final DLSUser? author,
      final List<DLSUser> executors,
      final List<DLSUser> responsible,
      final List<DLSUser> observers,
      final DlsSprintModel? sprint,
      final DlsTasks? superTask,
      final String? matrixRoom}) = _$_SprintAuthorModel;

  @override
  String get parentTitle;
  @override
  String get title;
  @override
  String get description;
  @override
  SprintStatus get status;
  @override
  List<TaskEventModel> get events;
  @override
  Map<TaskStatusType, List<DlsTasks>> get backlogSubtasks;
  @override
  Map<TaskStatusType, List<DlsTasks>> get sprintSubtasks;
  @override
  DateTime? get date;
  @override
  SprintDurationType get duration;
  @override
  DateTime? get endDate;
  @override
  DLSUser? get author;
  @override
  List<DLSUser> get executors;
  @override
  List<DLSUser> get responsible;
  @override
  List<DLSUser> get observers;
  @override
  DlsSprintModel? get sprint;
  @override
  DlsTasks? get superTask;
  @override
  String? get matrixRoom;
  @override
  @JsonKey(ignore: true)
  _$$_SprintAuthorModelCopyWith<_$_SprintAuthorModel> get copyWith =>
      throw _privateConstructorUsedError;
}
