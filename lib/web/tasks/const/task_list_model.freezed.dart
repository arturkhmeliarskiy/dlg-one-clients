// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'task_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TaskListModel {
  DlsTasksAll? get data => throw _privateConstructorUsedError;
  List<DlsTasks> get tasks => throw _privateConstructorUsedError;
  List<TaskTagModel> get tags => throw _privateConstructorUsedError;
  List<DlsTasksExecutors> get performers => throw _privateConstructorUsedError;
  List<DlsTasksExecutors> get performersKanban =>
      throw _privateConstructorUsedError;
  List<DlsTasks> get listTask =>
      throw _privateConstructorUsedError; // TODO find better solution for loading
  bool get inTheQueueLoading => throw _privateConstructorUsedError;
  bool get atWorkLoading => throw _privateConstructorUsedError;
  bool get completedLoading => throw _privateConstructorUsedError;
  List<DlsTasks> get listTaskInTheQueue => throw _privateConstructorUsedError;
  List<DlsTasks> get listTaskAtWork => throw _privateConstructorUsedError;
  List<DlsTasks> get listTaskCompleted => throw _privateConstructorUsedError;
  List<DlsTasks> get listTaskInTheQueueKanban =>
      throw _privateConstructorUsedError;
  List<DlsTasks> get listTaskAtWorkKanban => throw _privateConstructorUsedError;
  List<DlsTasks> get listTaskCompletedKanban =>
      throw _privateConstructorUsedError;
  TasksListHierarchy get hierarchyView => throw _privateConstructorUsedError;
  int get idTask => throw _privateConstructorUsedError;
  bool get isResetEverything => throw _privateConstructorUsedError;
  Map<FilterTypes, Object> get filters => throw _privateConstructorUsedError;
  Map<FilterTypes, Object> get filtersKanban =>
      throw _privateConstructorUsedError;
  List<int> get openTasks => throw _privateConstructorUsedError;
  DlsTasks? get task => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskListModelCopyWith<TaskListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskListModelCopyWith<$Res> {
  factory $TaskListModelCopyWith(
          TaskListModel value, $Res Function(TaskListModel) then) =
      _$TaskListModelCopyWithImpl<$Res, TaskListModel>;
  @useResult
  $Res call(
      {DlsTasksAll? data,
      List<DlsTasks> tasks,
      List<TaskTagModel> tags,
      List<DlsTasksExecutors> performers,
      List<DlsTasksExecutors> performersKanban,
      List<DlsTasks> listTask,
      bool inTheQueueLoading,
      bool atWorkLoading,
      bool completedLoading,
      List<DlsTasks> listTaskInTheQueue,
      List<DlsTasks> listTaskAtWork,
      List<DlsTasks> listTaskCompleted,
      List<DlsTasks> listTaskInTheQueueKanban,
      List<DlsTasks> listTaskAtWorkKanban,
      List<DlsTasks> listTaskCompletedKanban,
      TasksListHierarchy hierarchyView,
      int idTask,
      bool isResetEverything,
      Map<FilterTypes, Object> filters,
      Map<FilterTypes, Object> filtersKanban,
      List<int> openTasks,
      DlsTasks? task});

  $DlsTasksAllCopyWith<$Res>? get data;
  $DlsTasksCopyWith<$Res>? get task;
}

/// @nodoc
class _$TaskListModelCopyWithImpl<$Res, $Val extends TaskListModel>
    implements $TaskListModelCopyWith<$Res> {
  _$TaskListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? tasks = null,
    Object? tags = null,
    Object? performers = null,
    Object? performersKanban = null,
    Object? listTask = null,
    Object? inTheQueueLoading = null,
    Object? atWorkLoading = null,
    Object? completedLoading = null,
    Object? listTaskInTheQueue = null,
    Object? listTaskAtWork = null,
    Object? listTaskCompleted = null,
    Object? listTaskInTheQueueKanban = null,
    Object? listTaskAtWorkKanban = null,
    Object? listTaskCompletedKanban = null,
    Object? hierarchyView = null,
    Object? idTask = null,
    Object? isResetEverything = null,
    Object? filters = null,
    Object? filtersKanban = null,
    Object? openTasks = null,
    Object? task = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DlsTasksAll?,
      tasks: null == tasks
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<DlsTasks>,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<TaskTagModel>,
      performers: null == performers
          ? _value.performers
          : performers // ignore: cast_nullable_to_non_nullable
              as List<DlsTasksExecutors>,
      performersKanban: null == performersKanban
          ? _value.performersKanban
          : performersKanban // ignore: cast_nullable_to_non_nullable
              as List<DlsTasksExecutors>,
      listTask: null == listTask
          ? _value.listTask
          : listTask // ignore: cast_nullable_to_non_nullable
              as List<DlsTasks>,
      inTheQueueLoading: null == inTheQueueLoading
          ? _value.inTheQueueLoading
          : inTheQueueLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      atWorkLoading: null == atWorkLoading
          ? _value.atWorkLoading
          : atWorkLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      completedLoading: null == completedLoading
          ? _value.completedLoading
          : completedLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      listTaskInTheQueue: null == listTaskInTheQueue
          ? _value.listTaskInTheQueue
          : listTaskInTheQueue // ignore: cast_nullable_to_non_nullable
              as List<DlsTasks>,
      listTaskAtWork: null == listTaskAtWork
          ? _value.listTaskAtWork
          : listTaskAtWork // ignore: cast_nullable_to_non_nullable
              as List<DlsTasks>,
      listTaskCompleted: null == listTaskCompleted
          ? _value.listTaskCompleted
          : listTaskCompleted // ignore: cast_nullable_to_non_nullable
              as List<DlsTasks>,
      listTaskInTheQueueKanban: null == listTaskInTheQueueKanban
          ? _value.listTaskInTheQueueKanban
          : listTaskInTheQueueKanban // ignore: cast_nullable_to_non_nullable
              as List<DlsTasks>,
      listTaskAtWorkKanban: null == listTaskAtWorkKanban
          ? _value.listTaskAtWorkKanban
          : listTaskAtWorkKanban // ignore: cast_nullable_to_non_nullable
              as List<DlsTasks>,
      listTaskCompletedKanban: null == listTaskCompletedKanban
          ? _value.listTaskCompletedKanban
          : listTaskCompletedKanban // ignore: cast_nullable_to_non_nullable
              as List<DlsTasks>,
      hierarchyView: null == hierarchyView
          ? _value.hierarchyView
          : hierarchyView // ignore: cast_nullable_to_non_nullable
              as TasksListHierarchy,
      idTask: null == idTask
          ? _value.idTask
          : idTask // ignore: cast_nullable_to_non_nullable
              as int,
      isResetEverything: null == isResetEverything
          ? _value.isResetEverything
          : isResetEverything // ignore: cast_nullable_to_non_nullable
              as bool,
      filters: null == filters
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as Map<FilterTypes, Object>,
      filtersKanban: null == filtersKanban
          ? _value.filtersKanban
          : filtersKanban // ignore: cast_nullable_to_non_nullable
              as Map<FilterTypes, Object>,
      openTasks: null == openTasks
          ? _value.openTasks
          : openTasks // ignore: cast_nullable_to_non_nullable
              as List<int>,
      task: freezed == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as DlsTasks?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DlsTasksAllCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DlsTasksAllCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DlsTasksCopyWith<$Res>? get task {
    if (_value.task == null) {
      return null;
    }

    return $DlsTasksCopyWith<$Res>(_value.task!, (value) {
      return _then(_value.copyWith(task: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TaskListModelCopyWith<$Res>
    implements $TaskListModelCopyWith<$Res> {
  factory _$$_TaskListModelCopyWith(
          _$_TaskListModel value, $Res Function(_$_TaskListModel) then) =
      __$$_TaskListModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DlsTasksAll? data,
      List<DlsTasks> tasks,
      List<TaskTagModel> tags,
      List<DlsTasksExecutors> performers,
      List<DlsTasksExecutors> performersKanban,
      List<DlsTasks> listTask,
      bool inTheQueueLoading,
      bool atWorkLoading,
      bool completedLoading,
      List<DlsTasks> listTaskInTheQueue,
      List<DlsTasks> listTaskAtWork,
      List<DlsTasks> listTaskCompleted,
      List<DlsTasks> listTaskInTheQueueKanban,
      List<DlsTasks> listTaskAtWorkKanban,
      List<DlsTasks> listTaskCompletedKanban,
      TasksListHierarchy hierarchyView,
      int idTask,
      bool isResetEverything,
      Map<FilterTypes, Object> filters,
      Map<FilterTypes, Object> filtersKanban,
      List<int> openTasks,
      DlsTasks? task});

  @override
  $DlsTasksAllCopyWith<$Res>? get data;
  @override
  $DlsTasksCopyWith<$Res>? get task;
}

/// @nodoc
class __$$_TaskListModelCopyWithImpl<$Res>
    extends _$TaskListModelCopyWithImpl<$Res, _$_TaskListModel>
    implements _$$_TaskListModelCopyWith<$Res> {
  __$$_TaskListModelCopyWithImpl(
      _$_TaskListModel _value, $Res Function(_$_TaskListModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? tasks = null,
    Object? tags = null,
    Object? performers = null,
    Object? performersKanban = null,
    Object? listTask = null,
    Object? inTheQueueLoading = null,
    Object? atWorkLoading = null,
    Object? completedLoading = null,
    Object? listTaskInTheQueue = null,
    Object? listTaskAtWork = null,
    Object? listTaskCompleted = null,
    Object? listTaskInTheQueueKanban = null,
    Object? listTaskAtWorkKanban = null,
    Object? listTaskCompletedKanban = null,
    Object? hierarchyView = null,
    Object? idTask = null,
    Object? isResetEverything = null,
    Object? filters = null,
    Object? filtersKanban = null,
    Object? openTasks = null,
    Object? task = freezed,
  }) {
    return _then(_$_TaskListModel(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DlsTasksAll?,
      tasks: null == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<DlsTasks>,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<TaskTagModel>,
      performers: null == performers
          ? _value._performers
          : performers // ignore: cast_nullable_to_non_nullable
              as List<DlsTasksExecutors>,
      performersKanban: null == performersKanban
          ? _value._performersKanban
          : performersKanban // ignore: cast_nullable_to_non_nullable
              as List<DlsTasksExecutors>,
      listTask: null == listTask
          ? _value._listTask
          : listTask // ignore: cast_nullable_to_non_nullable
              as List<DlsTasks>,
      inTheQueueLoading: null == inTheQueueLoading
          ? _value.inTheQueueLoading
          : inTheQueueLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      atWorkLoading: null == atWorkLoading
          ? _value.atWorkLoading
          : atWorkLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      completedLoading: null == completedLoading
          ? _value.completedLoading
          : completedLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      listTaskInTheQueue: null == listTaskInTheQueue
          ? _value._listTaskInTheQueue
          : listTaskInTheQueue // ignore: cast_nullable_to_non_nullable
              as List<DlsTasks>,
      listTaskAtWork: null == listTaskAtWork
          ? _value._listTaskAtWork
          : listTaskAtWork // ignore: cast_nullable_to_non_nullable
              as List<DlsTasks>,
      listTaskCompleted: null == listTaskCompleted
          ? _value._listTaskCompleted
          : listTaskCompleted // ignore: cast_nullable_to_non_nullable
              as List<DlsTasks>,
      listTaskInTheQueueKanban: null == listTaskInTheQueueKanban
          ? _value._listTaskInTheQueueKanban
          : listTaskInTheQueueKanban // ignore: cast_nullable_to_non_nullable
              as List<DlsTasks>,
      listTaskAtWorkKanban: null == listTaskAtWorkKanban
          ? _value._listTaskAtWorkKanban
          : listTaskAtWorkKanban // ignore: cast_nullable_to_non_nullable
              as List<DlsTasks>,
      listTaskCompletedKanban: null == listTaskCompletedKanban
          ? _value._listTaskCompletedKanban
          : listTaskCompletedKanban // ignore: cast_nullable_to_non_nullable
              as List<DlsTasks>,
      hierarchyView: null == hierarchyView
          ? _value.hierarchyView
          : hierarchyView // ignore: cast_nullable_to_non_nullable
              as TasksListHierarchy,
      idTask: null == idTask
          ? _value.idTask
          : idTask // ignore: cast_nullable_to_non_nullable
              as int,
      isResetEverything: null == isResetEverything
          ? _value.isResetEverything
          : isResetEverything // ignore: cast_nullable_to_non_nullable
              as bool,
      filters: null == filters
          ? _value._filters
          : filters // ignore: cast_nullable_to_non_nullable
              as Map<FilterTypes, Object>,
      filtersKanban: null == filtersKanban
          ? _value._filtersKanban
          : filtersKanban // ignore: cast_nullable_to_non_nullable
              as Map<FilterTypes, Object>,
      openTasks: null == openTasks
          ? _value._openTasks
          : openTasks // ignore: cast_nullable_to_non_nullable
              as List<int>,
      task: freezed == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as DlsTasks?,
    ));
  }
}

/// @nodoc

class _$_TaskListModel implements _TaskListModel {
  const _$_TaskListModel(
      {this.data,
      final List<DlsTasks> tasks = const [],
      final List<TaskTagModel> tags = const [],
      final List<DlsTasksExecutors> performers = const [],
      final List<DlsTasksExecutors> performersKanban = const [],
      final List<DlsTasks> listTask = const [],
      this.inTheQueueLoading = false,
      this.atWorkLoading = false,
      this.completedLoading = false,
      final List<DlsTasks> listTaskInTheQueue = const [],
      final List<DlsTasks> listTaskAtWork = const [],
      final List<DlsTasks> listTaskCompleted = const [],
      final List<DlsTasks> listTaskInTheQueueKanban = const [],
      final List<DlsTasks> listTaskAtWorkKanban = const [],
      final List<DlsTasks> listTaskCompletedKanban = const [],
      this.hierarchyView = TasksListHierarchy.hierarchy,
      this.idTask = -1,
      this.isResetEverything = false,
      final Map<FilterTypes, Object> filters = const {},
      final Map<FilterTypes, Object> filtersKanban = const {},
      final List<int> openTasks = const [],
      this.task})
      : _tasks = tasks,
        _tags = tags,
        _performers = performers,
        _performersKanban = performersKanban,
        _listTask = listTask,
        _listTaskInTheQueue = listTaskInTheQueue,
        _listTaskAtWork = listTaskAtWork,
        _listTaskCompleted = listTaskCompleted,
        _listTaskInTheQueueKanban = listTaskInTheQueueKanban,
        _listTaskAtWorkKanban = listTaskAtWorkKanban,
        _listTaskCompletedKanban = listTaskCompletedKanban,
        _filters = filters,
        _filtersKanban = filtersKanban,
        _openTasks = openTasks;

  @override
  final DlsTasksAll? data;
  final List<DlsTasks> _tasks;
  @override
  @JsonKey()
  List<DlsTasks> get tasks {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  final List<TaskTagModel> _tags;
  @override
  @JsonKey()
  List<TaskTagModel> get tags {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  final List<DlsTasksExecutors> _performers;
  @override
  @JsonKey()
  List<DlsTasksExecutors> get performers {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_performers);
  }

  final List<DlsTasksExecutors> _performersKanban;
  @override
  @JsonKey()
  List<DlsTasksExecutors> get performersKanban {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_performersKanban);
  }

  final List<DlsTasks> _listTask;
  @override
  @JsonKey()
  List<DlsTasks> get listTask {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listTask);
  }

// TODO find better solution for loading
  @override
  @JsonKey()
  final bool inTheQueueLoading;
  @override
  @JsonKey()
  final bool atWorkLoading;
  @override
  @JsonKey()
  final bool completedLoading;
  final List<DlsTasks> _listTaskInTheQueue;
  @override
  @JsonKey()
  List<DlsTasks> get listTaskInTheQueue {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listTaskInTheQueue);
  }

  final List<DlsTasks> _listTaskAtWork;
  @override
  @JsonKey()
  List<DlsTasks> get listTaskAtWork {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listTaskAtWork);
  }

  final List<DlsTasks> _listTaskCompleted;
  @override
  @JsonKey()
  List<DlsTasks> get listTaskCompleted {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listTaskCompleted);
  }

  final List<DlsTasks> _listTaskInTheQueueKanban;
  @override
  @JsonKey()
  List<DlsTasks> get listTaskInTheQueueKanban {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listTaskInTheQueueKanban);
  }

  final List<DlsTasks> _listTaskAtWorkKanban;
  @override
  @JsonKey()
  List<DlsTasks> get listTaskAtWorkKanban {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listTaskAtWorkKanban);
  }

  final List<DlsTasks> _listTaskCompletedKanban;
  @override
  @JsonKey()
  List<DlsTasks> get listTaskCompletedKanban {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listTaskCompletedKanban);
  }

  @override
  @JsonKey()
  final TasksListHierarchy hierarchyView;
  @override
  @JsonKey()
  final int idTask;
  @override
  @JsonKey()
  final bool isResetEverything;
  final Map<FilterTypes, Object> _filters;
  @override
  @JsonKey()
  Map<FilterTypes, Object> get filters {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_filters);
  }

  final Map<FilterTypes, Object> _filtersKanban;
  @override
  @JsonKey()
  Map<FilterTypes, Object> get filtersKanban {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_filtersKanban);
  }

  final List<int> _openTasks;
  @override
  @JsonKey()
  List<int> get openTasks {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_openTasks);
  }

  @override
  final DlsTasks? task;

  @override
  String toString() {
    return 'TaskListModel(data: $data, tasks: $tasks, tags: $tags, performers: $performers, performersKanban: $performersKanban, listTask: $listTask, inTheQueueLoading: $inTheQueueLoading, atWorkLoading: $atWorkLoading, completedLoading: $completedLoading, listTaskInTheQueue: $listTaskInTheQueue, listTaskAtWork: $listTaskAtWork, listTaskCompleted: $listTaskCompleted, listTaskInTheQueueKanban: $listTaskInTheQueueKanban, listTaskAtWorkKanban: $listTaskAtWorkKanban, listTaskCompletedKanban: $listTaskCompletedKanban, hierarchyView: $hierarchyView, idTask: $idTask, isResetEverything: $isResetEverything, filters: $filters, filtersKanban: $filtersKanban, openTasks: $openTasks, task: $task)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TaskListModel &&
            (identical(other.data, data) || other.data == data) &&
            const DeepCollectionEquality().equals(other._tasks, _tasks) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality()
                .equals(other._performers, _performers) &&
            const DeepCollectionEquality()
                .equals(other._performersKanban, _performersKanban) &&
            const DeepCollectionEquality().equals(other._listTask, _listTask) &&
            (identical(other.inTheQueueLoading, inTheQueueLoading) ||
                other.inTheQueueLoading == inTheQueueLoading) &&
            (identical(other.atWorkLoading, atWorkLoading) ||
                other.atWorkLoading == atWorkLoading) &&
            (identical(other.completedLoading, completedLoading) ||
                other.completedLoading == completedLoading) &&
            const DeepCollectionEquality()
                .equals(other._listTaskInTheQueue, _listTaskInTheQueue) &&
            const DeepCollectionEquality()
                .equals(other._listTaskAtWork, _listTaskAtWork) &&
            const DeepCollectionEquality()
                .equals(other._listTaskCompleted, _listTaskCompleted) &&
            const DeepCollectionEquality().equals(
                other._listTaskInTheQueueKanban, _listTaskInTheQueueKanban) &&
            const DeepCollectionEquality()
                .equals(other._listTaskAtWorkKanban, _listTaskAtWorkKanban) &&
            const DeepCollectionEquality().equals(
                other._listTaskCompletedKanban, _listTaskCompletedKanban) &&
            (identical(other.hierarchyView, hierarchyView) ||
                other.hierarchyView == hierarchyView) &&
            (identical(other.idTask, idTask) || other.idTask == idTask) &&
            (identical(other.isResetEverything, isResetEverything) ||
                other.isResetEverything == isResetEverything) &&
            const DeepCollectionEquality().equals(other._filters, _filters) &&
            const DeepCollectionEquality()
                .equals(other._filtersKanban, _filtersKanban) &&
            const DeepCollectionEquality()
                .equals(other._openTasks, _openTasks) &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        data,
        const DeepCollectionEquality().hash(_tasks),
        const DeepCollectionEquality().hash(_tags),
        const DeepCollectionEquality().hash(_performers),
        const DeepCollectionEquality().hash(_performersKanban),
        const DeepCollectionEquality().hash(_listTask),
        inTheQueueLoading,
        atWorkLoading,
        completedLoading,
        const DeepCollectionEquality().hash(_listTaskInTheQueue),
        const DeepCollectionEquality().hash(_listTaskAtWork),
        const DeepCollectionEquality().hash(_listTaskCompleted),
        const DeepCollectionEquality().hash(_listTaskInTheQueueKanban),
        const DeepCollectionEquality().hash(_listTaskAtWorkKanban),
        const DeepCollectionEquality().hash(_listTaskCompletedKanban),
        hierarchyView,
        idTask,
        isResetEverything,
        const DeepCollectionEquality().hash(_filters),
        const DeepCollectionEquality().hash(_filtersKanban),
        const DeepCollectionEquality().hash(_openTasks),
        task
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TaskListModelCopyWith<_$_TaskListModel> get copyWith =>
      __$$_TaskListModelCopyWithImpl<_$_TaskListModel>(this, _$identity);
}

abstract class _TaskListModel implements TaskListModel {
  const factory _TaskListModel(
      {final DlsTasksAll? data,
      final List<DlsTasks> tasks,
      final List<TaskTagModel> tags,
      final List<DlsTasksExecutors> performers,
      final List<DlsTasksExecutors> performersKanban,
      final List<DlsTasks> listTask,
      final bool inTheQueueLoading,
      final bool atWorkLoading,
      final bool completedLoading,
      final List<DlsTasks> listTaskInTheQueue,
      final List<DlsTasks> listTaskAtWork,
      final List<DlsTasks> listTaskCompleted,
      final List<DlsTasks> listTaskInTheQueueKanban,
      final List<DlsTasks> listTaskAtWorkKanban,
      final List<DlsTasks> listTaskCompletedKanban,
      final TasksListHierarchy hierarchyView,
      final int idTask,
      final bool isResetEverything,
      final Map<FilterTypes, Object> filters,
      final Map<FilterTypes, Object> filtersKanban,
      final List<int> openTasks,
      final DlsTasks? task}) = _$_TaskListModel;

  @override
  DlsTasksAll? get data;
  @override
  List<DlsTasks> get tasks;
  @override
  List<TaskTagModel> get tags;
  @override
  List<DlsTasksExecutors> get performers;
  @override
  List<DlsTasksExecutors> get performersKanban;
  @override
  List<DlsTasks> get listTask;
  @override // TODO find better solution for loading
  bool get inTheQueueLoading;
  @override
  bool get atWorkLoading;
  @override
  bool get completedLoading;
  @override
  List<DlsTasks> get listTaskInTheQueue;
  @override
  List<DlsTasks> get listTaskAtWork;
  @override
  List<DlsTasks> get listTaskCompleted;
  @override
  List<DlsTasks> get listTaskInTheQueueKanban;
  @override
  List<DlsTasks> get listTaskAtWorkKanban;
  @override
  List<DlsTasks> get listTaskCompletedKanban;
  @override
  TasksListHierarchy get hierarchyView;
  @override
  int get idTask;
  @override
  bool get isResetEverything;
  @override
  Map<FilterTypes, Object> get filters;
  @override
  Map<FilterTypes, Object> get filtersKanban;
  @override
  List<int> get openTasks;
  @override
  DlsTasks? get task;
  @override
  @JsonKey(ignore: true)
  _$$_TaskListModelCopyWith<_$_TaskListModel> get copyWith =>
      throw _privateConstructorUsedError;
}
