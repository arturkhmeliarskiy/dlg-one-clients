// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'save_task_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SaveTaskModel {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  DlsTasks? get currentTask => throw _privateConstructorUsedError;
  DlsTasks? get parentTask => throw _privateConstructorUsedError;
  List<DlsFileData> get listFile => throw _privateConstructorUsedError;
  List<TaskEventModel> get events => throw _privateConstructorUsedError;
  List<DlsSprintModel> get sprints => throw _privateConstructorUsedError;
  List<DlsTasksChecklist> get unsavedCheckList =>
      throw _privateConstructorUsedError;
  List<DlsTasksChecklist> get checkList =>
      throw _privateConstructorUsedError; // TODO set information with tree Request
  List<DlsTasks> get subtasks => throw _privateConstructorUsedError;
  List<TaskTagModel> get tags => throw _privateConstructorUsedError;
  DLSUser? get currentUser => throw _privateConstructorUsedError;
  DLSUser? get author => throw _privateConstructorUsedError;
  List<DLSUser> get performers => throw _privateConstructorUsedError;
  List<DLSUser> get responsible => throw _privateConstructorUsedError;
  List<DLSUser> get observers => throw _privateConstructorUsedError;
  DateTime? get startAt => throw _privateConstructorUsedError;
  DateTime? get expiredAt => throw _privateConstructorUsedError;
  TaskStatusType get status =>
      throw _privateConstructorUsedError; // TODO refactor to ENUM
  TaskPriorityType get priority => throw _privateConstructorUsedError;
  int? get daysCount => throw _privateConstructorUsedError;
  int? get storyPoints => throw _privateConstructorUsedError;
  List<DlsTasks> get blockingTasks => throw _privateConstructorUsedError;
  List<DlsTasks> get dependingTasks => throw _privateConstructorUsedError;
  String? get matrixRoom => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SaveTaskModelCopyWith<SaveTaskModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveTaskModelCopyWith<$Res> {
  factory $SaveTaskModelCopyWith(
          SaveTaskModel value, $Res Function(SaveTaskModel) then) =
      _$SaveTaskModelCopyWithImpl<$Res, SaveTaskModel>;
  @useResult
  $Res call(
      {String title,
      String description,
      DlsTasks? currentTask,
      DlsTasks? parentTask,
      List<DlsFileData> listFile,
      List<TaskEventModel> events,
      List<DlsSprintModel> sprints,
      List<DlsTasksChecklist> unsavedCheckList,
      List<DlsTasksChecklist> checkList,
      List<DlsTasks> subtasks,
      List<TaskTagModel> tags,
      DLSUser? currentUser,
      DLSUser? author,
      List<DLSUser> performers,
      List<DLSUser> responsible,
      List<DLSUser> observers,
      DateTime? startAt,
      DateTime? expiredAt,
      TaskStatusType status,
      TaskPriorityType priority,
      int? daysCount,
      int? storyPoints,
      List<DlsTasks> blockingTasks,
      List<DlsTasks> dependingTasks,
      String? matrixRoom});

  $DlsTasksCopyWith<$Res>? get currentTask;
  $DlsTasksCopyWith<$Res>? get parentTask;
  $DLSUserCopyWith<$Res>? get currentUser;
  $DLSUserCopyWith<$Res>? get author;
}

/// @nodoc
class _$SaveTaskModelCopyWithImpl<$Res, $Val extends SaveTaskModel>
    implements $SaveTaskModelCopyWith<$Res> {
  _$SaveTaskModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? currentTask = freezed,
    Object? parentTask = freezed,
    Object? listFile = null,
    Object? events = null,
    Object? sprints = null,
    Object? unsavedCheckList = null,
    Object? checkList = null,
    Object? subtasks = null,
    Object? tags = null,
    Object? currentUser = freezed,
    Object? author = freezed,
    Object? performers = null,
    Object? responsible = null,
    Object? observers = null,
    Object? startAt = freezed,
    Object? expiredAt = freezed,
    Object? status = null,
    Object? priority = null,
    Object? daysCount = freezed,
    Object? storyPoints = freezed,
    Object? blockingTasks = null,
    Object? dependingTasks = null,
    Object? matrixRoom = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      currentTask: freezed == currentTask
          ? _value.currentTask
          : currentTask // ignore: cast_nullable_to_non_nullable
              as DlsTasks?,
      parentTask: freezed == parentTask
          ? _value.parentTask
          : parentTask // ignore: cast_nullable_to_non_nullable
              as DlsTasks?,
      listFile: null == listFile
          ? _value.listFile
          : listFile // ignore: cast_nullable_to_non_nullable
              as List<DlsFileData>,
      events: null == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as List<TaskEventModel>,
      sprints: null == sprints
          ? _value.sprints
          : sprints // ignore: cast_nullable_to_non_nullable
              as List<DlsSprintModel>,
      unsavedCheckList: null == unsavedCheckList
          ? _value.unsavedCheckList
          : unsavedCheckList // ignore: cast_nullable_to_non_nullable
              as List<DlsTasksChecklist>,
      checkList: null == checkList
          ? _value.checkList
          : checkList // ignore: cast_nullable_to_non_nullable
              as List<DlsTasksChecklist>,
      subtasks: null == subtasks
          ? _value.subtasks
          : subtasks // ignore: cast_nullable_to_non_nullable
              as List<DlsTasks>,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<TaskTagModel>,
      currentUser: freezed == currentUser
          ? _value.currentUser
          : currentUser // ignore: cast_nullable_to_non_nullable
              as DLSUser?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as DLSUser?,
      performers: null == performers
          ? _value.performers
          : performers // ignore: cast_nullable_to_non_nullable
              as List<DLSUser>,
      responsible: null == responsible
          ? _value.responsible
          : responsible // ignore: cast_nullable_to_non_nullable
              as List<DLSUser>,
      observers: null == observers
          ? _value.observers
          : observers // ignore: cast_nullable_to_non_nullable
              as List<DLSUser>,
      startAt: freezed == startAt
          ? _value.startAt
          : startAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expiredAt: freezed == expiredAt
          ? _value.expiredAt
          : expiredAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TaskStatusType,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as TaskPriorityType,
      daysCount: freezed == daysCount
          ? _value.daysCount
          : daysCount // ignore: cast_nullable_to_non_nullable
              as int?,
      storyPoints: freezed == storyPoints
          ? _value.storyPoints
          : storyPoints // ignore: cast_nullable_to_non_nullable
              as int?,
      blockingTasks: null == blockingTasks
          ? _value.blockingTasks
          : blockingTasks // ignore: cast_nullable_to_non_nullable
              as List<DlsTasks>,
      dependingTasks: null == dependingTasks
          ? _value.dependingTasks
          : dependingTasks // ignore: cast_nullable_to_non_nullable
              as List<DlsTasks>,
      matrixRoom: freezed == matrixRoom
          ? _value.matrixRoom
          : matrixRoom // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DlsTasksCopyWith<$Res>? get currentTask {
    if (_value.currentTask == null) {
      return null;
    }

    return $DlsTasksCopyWith<$Res>(_value.currentTask!, (value) {
      return _then(_value.copyWith(currentTask: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DlsTasksCopyWith<$Res>? get parentTask {
    if (_value.parentTask == null) {
      return null;
    }

    return $DlsTasksCopyWith<$Res>(_value.parentTask!, (value) {
      return _then(_value.copyWith(parentTask: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DLSUserCopyWith<$Res>? get currentUser {
    if (_value.currentUser == null) {
      return null;
    }

    return $DLSUserCopyWith<$Res>(_value.currentUser!, (value) {
      return _then(_value.copyWith(currentUser: value) as $Val);
    });
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
}

/// @nodoc
abstract class _$$_SaveTaskModelCopyWith<$Res>
    implements $SaveTaskModelCopyWith<$Res> {
  factory _$$_SaveTaskModelCopyWith(
          _$_SaveTaskModel value, $Res Function(_$_SaveTaskModel) then) =
      __$$_SaveTaskModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String description,
      DlsTasks? currentTask,
      DlsTasks? parentTask,
      List<DlsFileData> listFile,
      List<TaskEventModel> events,
      List<DlsSprintModel> sprints,
      List<DlsTasksChecklist> unsavedCheckList,
      List<DlsTasksChecklist> checkList,
      List<DlsTasks> subtasks,
      List<TaskTagModel> tags,
      DLSUser? currentUser,
      DLSUser? author,
      List<DLSUser> performers,
      List<DLSUser> responsible,
      List<DLSUser> observers,
      DateTime? startAt,
      DateTime? expiredAt,
      TaskStatusType status,
      TaskPriorityType priority,
      int? daysCount,
      int? storyPoints,
      List<DlsTasks> blockingTasks,
      List<DlsTasks> dependingTasks,
      String? matrixRoom});

  @override
  $DlsTasksCopyWith<$Res>? get currentTask;
  @override
  $DlsTasksCopyWith<$Res>? get parentTask;
  @override
  $DLSUserCopyWith<$Res>? get currentUser;
  @override
  $DLSUserCopyWith<$Res>? get author;
}

/// @nodoc
class __$$_SaveTaskModelCopyWithImpl<$Res>
    extends _$SaveTaskModelCopyWithImpl<$Res, _$_SaveTaskModel>
    implements _$$_SaveTaskModelCopyWith<$Res> {
  __$$_SaveTaskModelCopyWithImpl(
      _$_SaveTaskModel _value, $Res Function(_$_SaveTaskModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? currentTask = freezed,
    Object? parentTask = freezed,
    Object? listFile = null,
    Object? events = null,
    Object? sprints = null,
    Object? unsavedCheckList = null,
    Object? checkList = null,
    Object? subtasks = null,
    Object? tags = null,
    Object? currentUser = freezed,
    Object? author = freezed,
    Object? performers = null,
    Object? responsible = null,
    Object? observers = null,
    Object? startAt = freezed,
    Object? expiredAt = freezed,
    Object? status = null,
    Object? priority = null,
    Object? daysCount = freezed,
    Object? storyPoints = freezed,
    Object? blockingTasks = null,
    Object? dependingTasks = null,
    Object? matrixRoom = freezed,
  }) {
    return _then(_$_SaveTaskModel(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      currentTask: freezed == currentTask
          ? _value.currentTask
          : currentTask // ignore: cast_nullable_to_non_nullable
              as DlsTasks?,
      parentTask: freezed == parentTask
          ? _value.parentTask
          : parentTask // ignore: cast_nullable_to_non_nullable
              as DlsTasks?,
      listFile: null == listFile
          ? _value._listFile
          : listFile // ignore: cast_nullable_to_non_nullable
              as List<DlsFileData>,
      events: null == events
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as List<TaskEventModel>,
      sprints: null == sprints
          ? _value._sprints
          : sprints // ignore: cast_nullable_to_non_nullable
              as List<DlsSprintModel>,
      unsavedCheckList: null == unsavedCheckList
          ? _value._unsavedCheckList
          : unsavedCheckList // ignore: cast_nullable_to_non_nullable
              as List<DlsTasksChecklist>,
      checkList: null == checkList
          ? _value._checkList
          : checkList // ignore: cast_nullable_to_non_nullable
              as List<DlsTasksChecklist>,
      subtasks: null == subtasks
          ? _value._subtasks
          : subtasks // ignore: cast_nullable_to_non_nullable
              as List<DlsTasks>,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<TaskTagModel>,
      currentUser: freezed == currentUser
          ? _value.currentUser
          : currentUser // ignore: cast_nullable_to_non_nullable
              as DLSUser?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as DLSUser?,
      performers: null == performers
          ? _value._performers
          : performers // ignore: cast_nullable_to_non_nullable
              as List<DLSUser>,
      responsible: null == responsible
          ? _value._responsible
          : responsible // ignore: cast_nullable_to_non_nullable
              as List<DLSUser>,
      observers: null == observers
          ? _value._observers
          : observers // ignore: cast_nullable_to_non_nullable
              as List<DLSUser>,
      startAt: freezed == startAt
          ? _value.startAt
          : startAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expiredAt: freezed == expiredAt
          ? _value.expiredAt
          : expiredAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TaskStatusType,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as TaskPriorityType,
      daysCount: freezed == daysCount
          ? _value.daysCount
          : daysCount // ignore: cast_nullable_to_non_nullable
              as int?,
      storyPoints: freezed == storyPoints
          ? _value.storyPoints
          : storyPoints // ignore: cast_nullable_to_non_nullable
              as int?,
      blockingTasks: null == blockingTasks
          ? _value._blockingTasks
          : blockingTasks // ignore: cast_nullable_to_non_nullable
              as List<DlsTasks>,
      dependingTasks: null == dependingTasks
          ? _value._dependingTasks
          : dependingTasks // ignore: cast_nullable_to_non_nullable
              as List<DlsTasks>,
      matrixRoom: freezed == matrixRoom
          ? _value.matrixRoom
          : matrixRoom // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_SaveTaskModel implements _SaveTaskModel {
  const _$_SaveTaskModel(
      {this.title = '',
      this.description = '',
      this.currentTask,
      this.parentTask,
      final List<DlsFileData> listFile = const [],
      final List<TaskEventModel> events = const [],
      final List<DlsSprintModel> sprints = const [],
      final List<DlsTasksChecklist> unsavedCheckList = const [],
      final List<DlsTasksChecklist> checkList = const [],
      final List<DlsTasks> subtasks = const [],
      final List<TaskTagModel> tags = const [],
      this.currentUser,
      this.author,
      final List<DLSUser> performers = const [],
      final List<DLSUser> responsible = const [],
      final List<DLSUser> observers = const [],
      this.startAt,
      this.expiredAt,
      this.status = TaskStatusType.inTheQueue,
      this.priority = TaskPriorityType.high,
      this.daysCount,
      this.storyPoints,
      final List<DlsTasks> blockingTasks = const [],
      final List<DlsTasks> dependingTasks = const [],
      this.matrixRoom})
      : _listFile = listFile,
        _events = events,
        _sprints = sprints,
        _unsavedCheckList = unsavedCheckList,
        _checkList = checkList,
        _subtasks = subtasks,
        _tags = tags,
        _performers = performers,
        _responsible = responsible,
        _observers = observers,
        _blockingTasks = blockingTasks,
        _dependingTasks = dependingTasks;

  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String description;
  @override
  final DlsTasks? currentTask;
  @override
  final DlsTasks? parentTask;
  final List<DlsFileData> _listFile;
  @override
  @JsonKey()
  List<DlsFileData> get listFile {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listFile);
  }

  final List<TaskEventModel> _events;
  @override
  @JsonKey()
  List<TaskEventModel> get events {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_events);
  }

  final List<DlsSprintModel> _sprints;
  @override
  @JsonKey()
  List<DlsSprintModel> get sprints {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sprints);
  }

  final List<DlsTasksChecklist> _unsavedCheckList;
  @override
  @JsonKey()
  List<DlsTasksChecklist> get unsavedCheckList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_unsavedCheckList);
  }

  final List<DlsTasksChecklist> _checkList;
  @override
  @JsonKey()
  List<DlsTasksChecklist> get checkList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_checkList);
  }

// TODO set information with tree Request
  final List<DlsTasks> _subtasks;
// TODO set information with tree Request
  @override
  @JsonKey()
  List<DlsTasks> get subtasks {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subtasks);
  }

  final List<TaskTagModel> _tags;
  @override
  @JsonKey()
  List<TaskTagModel> get tags {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  final DLSUser? currentUser;
  @override
  final DLSUser? author;
  final List<DLSUser> _performers;
  @override
  @JsonKey()
  List<DLSUser> get performers {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_performers);
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
  final DateTime? startAt;
  @override
  final DateTime? expiredAt;
  @override
  @JsonKey()
  final TaskStatusType status;
// TODO refactor to ENUM
  @override
  @JsonKey()
  final TaskPriorityType priority;
  @override
  final int? daysCount;
  @override
  final int? storyPoints;
  final List<DlsTasks> _blockingTasks;
  @override
  @JsonKey()
  List<DlsTasks> get blockingTasks {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_blockingTasks);
  }

  final List<DlsTasks> _dependingTasks;
  @override
  @JsonKey()
  List<DlsTasks> get dependingTasks {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dependingTasks);
  }

  @override
  final String? matrixRoom;

  @override
  String toString() {
    return 'SaveTaskModel(title: $title, description: $description, currentTask: $currentTask, parentTask: $parentTask, listFile: $listFile, events: $events, sprints: $sprints, unsavedCheckList: $unsavedCheckList, checkList: $checkList, subtasks: $subtasks, tags: $tags, currentUser: $currentUser, author: $author, performers: $performers, responsible: $responsible, observers: $observers, startAt: $startAt, expiredAt: $expiredAt, status: $status, priority: $priority, daysCount: $daysCount, storyPoints: $storyPoints, blockingTasks: $blockingTasks, dependingTasks: $dependingTasks, matrixRoom: $matrixRoom)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SaveTaskModel &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.currentTask, currentTask) ||
                other.currentTask == currentTask) &&
            (identical(other.parentTask, parentTask) ||
                other.parentTask == parentTask) &&
            const DeepCollectionEquality().equals(other._listFile, _listFile) &&
            const DeepCollectionEquality().equals(other._events, _events) &&
            const DeepCollectionEquality().equals(other._sprints, _sprints) &&
            const DeepCollectionEquality()
                .equals(other._unsavedCheckList, _unsavedCheckList) &&
            const DeepCollectionEquality()
                .equals(other._checkList, _checkList) &&
            const DeepCollectionEquality().equals(other._subtasks, _subtasks) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.currentUser, currentUser) ||
                other.currentUser == currentUser) &&
            (identical(other.author, author) || other.author == author) &&
            const DeepCollectionEquality()
                .equals(other._performers, _performers) &&
            const DeepCollectionEquality()
                .equals(other._responsible, _responsible) &&
            const DeepCollectionEquality()
                .equals(other._observers, _observers) &&
            (identical(other.startAt, startAt) || other.startAt == startAt) &&
            (identical(other.expiredAt, expiredAt) ||
                other.expiredAt == expiredAt) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.daysCount, daysCount) ||
                other.daysCount == daysCount) &&
            (identical(other.storyPoints, storyPoints) ||
                other.storyPoints == storyPoints) &&
            const DeepCollectionEquality()
                .equals(other._blockingTasks, _blockingTasks) &&
            const DeepCollectionEquality()
                .equals(other._dependingTasks, _dependingTasks) &&
            (identical(other.matrixRoom, matrixRoom) ||
                other.matrixRoom == matrixRoom));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        title,
        description,
        currentTask,
        parentTask,
        const DeepCollectionEquality().hash(_listFile),
        const DeepCollectionEquality().hash(_events),
        const DeepCollectionEquality().hash(_sprints),
        const DeepCollectionEquality().hash(_unsavedCheckList),
        const DeepCollectionEquality().hash(_checkList),
        const DeepCollectionEquality().hash(_subtasks),
        const DeepCollectionEquality().hash(_tags),
        currentUser,
        author,
        const DeepCollectionEquality().hash(_performers),
        const DeepCollectionEquality().hash(_responsible),
        const DeepCollectionEquality().hash(_observers),
        startAt,
        expiredAt,
        status,
        priority,
        daysCount,
        storyPoints,
        const DeepCollectionEquality().hash(_blockingTasks),
        const DeepCollectionEquality().hash(_dependingTasks),
        matrixRoom
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SaveTaskModelCopyWith<_$_SaveTaskModel> get copyWith =>
      __$$_SaveTaskModelCopyWithImpl<_$_SaveTaskModel>(this, _$identity);
}

abstract class _SaveTaskModel implements SaveTaskModel {
  const factory _SaveTaskModel(
      {final String title,
      final String description,
      final DlsTasks? currentTask,
      final DlsTasks? parentTask,
      final List<DlsFileData> listFile,
      final List<TaskEventModel> events,
      final List<DlsSprintModel> sprints,
      final List<DlsTasksChecklist> unsavedCheckList,
      final List<DlsTasksChecklist> checkList,
      final List<DlsTasks> subtasks,
      final List<TaskTagModel> tags,
      final DLSUser? currentUser,
      final DLSUser? author,
      final List<DLSUser> performers,
      final List<DLSUser> responsible,
      final List<DLSUser> observers,
      final DateTime? startAt,
      final DateTime? expiredAt,
      final TaskStatusType status,
      final TaskPriorityType priority,
      final int? daysCount,
      final int? storyPoints,
      final List<DlsTasks> blockingTasks,
      final List<DlsTasks> dependingTasks,
      final String? matrixRoom}) = _$_SaveTaskModel;

  @override
  String get title;
  @override
  String get description;
  @override
  DlsTasks? get currentTask;
  @override
  DlsTasks? get parentTask;
  @override
  List<DlsFileData> get listFile;
  @override
  List<TaskEventModel> get events;
  @override
  List<DlsSprintModel> get sprints;
  @override
  List<DlsTasksChecklist> get unsavedCheckList;
  @override
  List<DlsTasksChecklist> get checkList;
  @override // TODO set information with tree Request
  List<DlsTasks> get subtasks;
  @override
  List<TaskTagModel> get tags;
  @override
  DLSUser? get currentUser;
  @override
  DLSUser? get author;
  @override
  List<DLSUser> get performers;
  @override
  List<DLSUser> get responsible;
  @override
  List<DLSUser> get observers;
  @override
  DateTime? get startAt;
  @override
  DateTime? get expiredAt;
  @override
  TaskStatusType get status;
  @override // TODO refactor to ENUM
  TaskPriorityType get priority;
  @override
  int? get daysCount;
  @override
  int? get storyPoints;
  @override
  List<DlsTasks> get blockingTasks;
  @override
  List<DlsTasks> get dependingTasks;
  @override
  String? get matrixRoom;
  @override
  @JsonKey(ignore: true)
  _$$_SaveTaskModelCopyWith<_$_SaveTaskModel> get copyWith =>
      throw _privateConstructorUsedError;
}
