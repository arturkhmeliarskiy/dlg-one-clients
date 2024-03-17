// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'task_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TaskListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() refresh,
    required TResult Function() getTasks,
    required TResult Function(int status, bool withLoading) getKanban,
    required TResult Function(DlsTasks task) addTask,
    required TResult Function(DlsTasks task) deleteTask,
    required TResult Function(int id, int index) delete,
    required TResult Function(int index, DlsTasks task) updateTask,
    required TResult Function(
            DlsTasks task,
            int addToTaskIndex,
            int removeTaskIndex,
            TaskStatusType addToStatus,
            TaskStatusType removeFromStatus)
        updateTaskKanban,
    required TResult Function(TasksListHierarchy value) hierchyChange,
    required TResult Function(DlsTasks task, List<DLSUser> users, int index)
        updatePerformers,
    required TResult Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)
        filterTaskList,
    required TResult Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)
        filterTaskKanban,
    required TResult Function(String value) searchTask,
    required TResult Function(String value) searchTaskKanban,
    required TResult Function() resetFilters,
    required TResult Function() resetFiltersKanban,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? refresh,
    TResult? Function()? getTasks,
    TResult? Function(int status, bool withLoading)? getKanban,
    TResult? Function(DlsTasks task)? addTask,
    TResult? Function(DlsTasks task)? deleteTask,
    TResult? Function(int id, int index)? delete,
    TResult? Function(int index, DlsTasks task)? updateTask,
    TResult? Function(DlsTasks task, int addToTaskIndex, int removeTaskIndex,
            TaskStatusType addToStatus, TaskStatusType removeFromStatus)?
        updateTaskKanban,
    TResult? Function(TasksListHierarchy value)? hierchyChange,
    TResult? Function(DlsTasks task, List<DLSUser> users, int index)?
        updatePerformers,
    TResult? Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)?
        filterTaskList,
    TResult? Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)?
        filterTaskKanban,
    TResult? Function(String value)? searchTask,
    TResult? Function(String value)? searchTaskKanban,
    TResult? Function()? resetFilters,
    TResult? Function()? resetFiltersKanban,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? refresh,
    TResult Function()? getTasks,
    TResult Function(int status, bool withLoading)? getKanban,
    TResult Function(DlsTasks task)? addTask,
    TResult Function(DlsTasks task)? deleteTask,
    TResult Function(int id, int index)? delete,
    TResult Function(int index, DlsTasks task)? updateTask,
    TResult Function(DlsTasks task, int addToTaskIndex, int removeTaskIndex,
            TaskStatusType addToStatus, TaskStatusType removeFromStatus)?
        updateTaskKanban,
    TResult Function(TasksListHierarchy value)? hierchyChange,
    TResult Function(DlsTasks task, List<DLSUser> users, int index)?
        updatePerformers,
    TResult Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)?
        filterTaskList,
    TResult Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)?
        filterTaskKanban,
    TResult Function(String value)? searchTask,
    TResult Function(String value)? searchTaskKanban,
    TResult Function()? resetFilters,
    TResult Function()? resetFiltersKanban,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitTaskListEvent value) init,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_GetTasks value) getTasks,
    required TResult Function(_GetKanban value) getKanban,
    required TResult Function(AddTaskListEvent value) addTask,
    required TResult Function(DeleteTaskListEvent value) deleteTask,
    required TResult Function(DeleteTaskEvent value) delete,
    required TResult Function(UpdateTaskListEvent value) updateTask,
    required TResult Function(UpdateTaskKanbanListEvent value) updateTaskKanban,
    required TResult Function(HierchyChangeTaskListEvent value) hierchyChange,
    required TResult Function(UpdatePerformersTaskListEvent value)
        updatePerformers,
    required TResult Function(FilterTaskListEvent value) filterTaskList,
    required TResult Function(FilterTaskKanbanEvent value) filterTaskKanban,
    required TResult Function(SearchTaskListEvent value) searchTask,
    required TResult Function(SearchTaskKanbanEvent value) searchTaskKanban,
    required TResult Function(ResetFiltersTaskListEvent value) resetFilters,
    required TResult Function(ResetFiltersTaskKanbanEvent value)
        resetFiltersKanban,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitTaskListEvent value)? init,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_GetTasks value)? getTasks,
    TResult? Function(_GetKanban value)? getKanban,
    TResult? Function(AddTaskListEvent value)? addTask,
    TResult? Function(DeleteTaskListEvent value)? deleteTask,
    TResult? Function(DeleteTaskEvent value)? delete,
    TResult? Function(UpdateTaskListEvent value)? updateTask,
    TResult? Function(UpdateTaskKanbanListEvent value)? updateTaskKanban,
    TResult? Function(HierchyChangeTaskListEvent value)? hierchyChange,
    TResult? Function(UpdatePerformersTaskListEvent value)? updatePerformers,
    TResult? Function(FilterTaskListEvent value)? filterTaskList,
    TResult? Function(FilterTaskKanbanEvent value)? filterTaskKanban,
    TResult? Function(SearchTaskListEvent value)? searchTask,
    TResult? Function(SearchTaskKanbanEvent value)? searchTaskKanban,
    TResult? Function(ResetFiltersTaskListEvent value)? resetFilters,
    TResult? Function(ResetFiltersTaskKanbanEvent value)? resetFiltersKanban,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitTaskListEvent value)? init,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_GetTasks value)? getTasks,
    TResult Function(_GetKanban value)? getKanban,
    TResult Function(AddTaskListEvent value)? addTask,
    TResult Function(DeleteTaskListEvent value)? deleteTask,
    TResult Function(DeleteTaskEvent value)? delete,
    TResult Function(UpdateTaskListEvent value)? updateTask,
    TResult Function(UpdateTaskKanbanListEvent value)? updateTaskKanban,
    TResult Function(HierchyChangeTaskListEvent value)? hierchyChange,
    TResult Function(UpdatePerformersTaskListEvent value)? updatePerformers,
    TResult Function(FilterTaskListEvent value)? filterTaskList,
    TResult Function(FilterTaskKanbanEvent value)? filterTaskKanban,
    TResult Function(SearchTaskListEvent value)? searchTask,
    TResult Function(SearchTaskKanbanEvent value)? searchTaskKanban,
    TResult Function(ResetFiltersTaskListEvent value)? resetFilters,
    TResult Function(ResetFiltersTaskKanbanEvent value)? resetFiltersKanban,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskListEventCopyWith<$Res> {
  factory $TaskListEventCopyWith(
          TaskListEvent value, $Res Function(TaskListEvent) then) =
      _$TaskListEventCopyWithImpl<$Res, TaskListEvent>;
}

/// @nodoc
class _$TaskListEventCopyWithImpl<$Res, $Val extends TaskListEvent>
    implements $TaskListEventCopyWith<$Res> {
  _$TaskListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitTaskListEventCopyWith<$Res> {
  factory _$$InitTaskListEventCopyWith(
          _$InitTaskListEvent value, $Res Function(_$InitTaskListEvent) then) =
      __$$InitTaskListEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitTaskListEventCopyWithImpl<$Res>
    extends _$TaskListEventCopyWithImpl<$Res, _$InitTaskListEvent>
    implements _$$InitTaskListEventCopyWith<$Res> {
  __$$InitTaskListEventCopyWithImpl(
      _$InitTaskListEvent _value, $Res Function(_$InitTaskListEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitTaskListEvent extends InitTaskListEvent
    with DiagnosticableTreeMixin {
  const _$InitTaskListEvent() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TaskListEvent.init()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'TaskListEvent.init'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitTaskListEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() refresh,
    required TResult Function() getTasks,
    required TResult Function(int status, bool withLoading) getKanban,
    required TResult Function(DlsTasks task) addTask,
    required TResult Function(DlsTasks task) deleteTask,
    required TResult Function(int id, int index) delete,
    required TResult Function(int index, DlsTasks task) updateTask,
    required TResult Function(
            DlsTasks task,
            int addToTaskIndex,
            int removeTaskIndex,
            TaskStatusType addToStatus,
            TaskStatusType removeFromStatus)
        updateTaskKanban,
    required TResult Function(TasksListHierarchy value) hierchyChange,
    required TResult Function(DlsTasks task, List<DLSUser> users, int index)
        updatePerformers,
    required TResult Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)
        filterTaskList,
    required TResult Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)
        filterTaskKanban,
    required TResult Function(String value) searchTask,
    required TResult Function(String value) searchTaskKanban,
    required TResult Function() resetFilters,
    required TResult Function() resetFiltersKanban,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? refresh,
    TResult? Function()? getTasks,
    TResult? Function(int status, bool withLoading)? getKanban,
    TResult? Function(DlsTasks task)? addTask,
    TResult? Function(DlsTasks task)? deleteTask,
    TResult? Function(int id, int index)? delete,
    TResult? Function(int index, DlsTasks task)? updateTask,
    TResult? Function(DlsTasks task, int addToTaskIndex, int removeTaskIndex,
            TaskStatusType addToStatus, TaskStatusType removeFromStatus)?
        updateTaskKanban,
    TResult? Function(TasksListHierarchy value)? hierchyChange,
    TResult? Function(DlsTasks task, List<DLSUser> users, int index)?
        updatePerformers,
    TResult? Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)?
        filterTaskList,
    TResult? Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)?
        filterTaskKanban,
    TResult? Function(String value)? searchTask,
    TResult? Function(String value)? searchTaskKanban,
    TResult? Function()? resetFilters,
    TResult? Function()? resetFiltersKanban,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? refresh,
    TResult Function()? getTasks,
    TResult Function(int status, bool withLoading)? getKanban,
    TResult Function(DlsTasks task)? addTask,
    TResult Function(DlsTasks task)? deleteTask,
    TResult Function(int id, int index)? delete,
    TResult Function(int index, DlsTasks task)? updateTask,
    TResult Function(DlsTasks task, int addToTaskIndex, int removeTaskIndex,
            TaskStatusType addToStatus, TaskStatusType removeFromStatus)?
        updateTaskKanban,
    TResult Function(TasksListHierarchy value)? hierchyChange,
    TResult Function(DlsTasks task, List<DLSUser> users, int index)?
        updatePerformers,
    TResult Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)?
        filterTaskList,
    TResult Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)?
        filterTaskKanban,
    TResult Function(String value)? searchTask,
    TResult Function(String value)? searchTaskKanban,
    TResult Function()? resetFilters,
    TResult Function()? resetFiltersKanban,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitTaskListEvent value) init,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_GetTasks value) getTasks,
    required TResult Function(_GetKanban value) getKanban,
    required TResult Function(AddTaskListEvent value) addTask,
    required TResult Function(DeleteTaskListEvent value) deleteTask,
    required TResult Function(DeleteTaskEvent value) delete,
    required TResult Function(UpdateTaskListEvent value) updateTask,
    required TResult Function(UpdateTaskKanbanListEvent value) updateTaskKanban,
    required TResult Function(HierchyChangeTaskListEvent value) hierchyChange,
    required TResult Function(UpdatePerformersTaskListEvent value)
        updatePerformers,
    required TResult Function(FilterTaskListEvent value) filterTaskList,
    required TResult Function(FilterTaskKanbanEvent value) filterTaskKanban,
    required TResult Function(SearchTaskListEvent value) searchTask,
    required TResult Function(SearchTaskKanbanEvent value) searchTaskKanban,
    required TResult Function(ResetFiltersTaskListEvent value) resetFilters,
    required TResult Function(ResetFiltersTaskKanbanEvent value)
        resetFiltersKanban,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitTaskListEvent value)? init,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_GetTasks value)? getTasks,
    TResult? Function(_GetKanban value)? getKanban,
    TResult? Function(AddTaskListEvent value)? addTask,
    TResult? Function(DeleteTaskListEvent value)? deleteTask,
    TResult? Function(DeleteTaskEvent value)? delete,
    TResult? Function(UpdateTaskListEvent value)? updateTask,
    TResult? Function(UpdateTaskKanbanListEvent value)? updateTaskKanban,
    TResult? Function(HierchyChangeTaskListEvent value)? hierchyChange,
    TResult? Function(UpdatePerformersTaskListEvent value)? updatePerformers,
    TResult? Function(FilterTaskListEvent value)? filterTaskList,
    TResult? Function(FilterTaskKanbanEvent value)? filterTaskKanban,
    TResult? Function(SearchTaskListEvent value)? searchTask,
    TResult? Function(SearchTaskKanbanEvent value)? searchTaskKanban,
    TResult? Function(ResetFiltersTaskListEvent value)? resetFilters,
    TResult? Function(ResetFiltersTaskKanbanEvent value)? resetFiltersKanban,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitTaskListEvent value)? init,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_GetTasks value)? getTasks,
    TResult Function(_GetKanban value)? getKanban,
    TResult Function(AddTaskListEvent value)? addTask,
    TResult Function(DeleteTaskListEvent value)? deleteTask,
    TResult Function(DeleteTaskEvent value)? delete,
    TResult Function(UpdateTaskListEvent value)? updateTask,
    TResult Function(UpdateTaskKanbanListEvent value)? updateTaskKanban,
    TResult Function(HierchyChangeTaskListEvent value)? hierchyChange,
    TResult Function(UpdatePerformersTaskListEvent value)? updatePerformers,
    TResult Function(FilterTaskListEvent value)? filterTaskList,
    TResult Function(FilterTaskKanbanEvent value)? filterTaskKanban,
    TResult Function(SearchTaskListEvent value)? searchTask,
    TResult Function(SearchTaskKanbanEvent value)? searchTaskKanban,
    TResult Function(ResetFiltersTaskListEvent value)? resetFilters,
    TResult Function(ResetFiltersTaskKanbanEvent value)? resetFiltersKanban,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class InitTaskListEvent extends TaskListEvent {
  const factory InitTaskListEvent() = _$InitTaskListEvent;
  const InitTaskListEvent._() : super._();
}

/// @nodoc
abstract class _$$_RefreshCopyWith<$Res> {
  factory _$$_RefreshCopyWith(
          _$_Refresh value, $Res Function(_$_Refresh) then) =
      __$$_RefreshCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RefreshCopyWithImpl<$Res>
    extends _$TaskListEventCopyWithImpl<$Res, _$_Refresh>
    implements _$$_RefreshCopyWith<$Res> {
  __$$_RefreshCopyWithImpl(_$_Refresh _value, $Res Function(_$_Refresh) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Refresh extends _Refresh with DiagnosticableTreeMixin {
  const _$_Refresh() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TaskListEvent.refresh()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'TaskListEvent.refresh'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Refresh);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() refresh,
    required TResult Function() getTasks,
    required TResult Function(int status, bool withLoading) getKanban,
    required TResult Function(DlsTasks task) addTask,
    required TResult Function(DlsTasks task) deleteTask,
    required TResult Function(int id, int index) delete,
    required TResult Function(int index, DlsTasks task) updateTask,
    required TResult Function(
            DlsTasks task,
            int addToTaskIndex,
            int removeTaskIndex,
            TaskStatusType addToStatus,
            TaskStatusType removeFromStatus)
        updateTaskKanban,
    required TResult Function(TasksListHierarchy value) hierchyChange,
    required TResult Function(DlsTasks task, List<DLSUser> users, int index)
        updatePerformers,
    required TResult Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)
        filterTaskList,
    required TResult Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)
        filterTaskKanban,
    required TResult Function(String value) searchTask,
    required TResult Function(String value) searchTaskKanban,
    required TResult Function() resetFilters,
    required TResult Function() resetFiltersKanban,
  }) {
    return refresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? refresh,
    TResult? Function()? getTasks,
    TResult? Function(int status, bool withLoading)? getKanban,
    TResult? Function(DlsTasks task)? addTask,
    TResult? Function(DlsTasks task)? deleteTask,
    TResult? Function(int id, int index)? delete,
    TResult? Function(int index, DlsTasks task)? updateTask,
    TResult? Function(DlsTasks task, int addToTaskIndex, int removeTaskIndex,
            TaskStatusType addToStatus, TaskStatusType removeFromStatus)?
        updateTaskKanban,
    TResult? Function(TasksListHierarchy value)? hierchyChange,
    TResult? Function(DlsTasks task, List<DLSUser> users, int index)?
        updatePerformers,
    TResult? Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)?
        filterTaskList,
    TResult? Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)?
        filterTaskKanban,
    TResult? Function(String value)? searchTask,
    TResult? Function(String value)? searchTaskKanban,
    TResult? Function()? resetFilters,
    TResult? Function()? resetFiltersKanban,
  }) {
    return refresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? refresh,
    TResult Function()? getTasks,
    TResult Function(int status, bool withLoading)? getKanban,
    TResult Function(DlsTasks task)? addTask,
    TResult Function(DlsTasks task)? deleteTask,
    TResult Function(int id, int index)? delete,
    TResult Function(int index, DlsTasks task)? updateTask,
    TResult Function(DlsTasks task, int addToTaskIndex, int removeTaskIndex,
            TaskStatusType addToStatus, TaskStatusType removeFromStatus)?
        updateTaskKanban,
    TResult Function(TasksListHierarchy value)? hierchyChange,
    TResult Function(DlsTasks task, List<DLSUser> users, int index)?
        updatePerformers,
    TResult Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)?
        filterTaskList,
    TResult Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)?
        filterTaskKanban,
    TResult Function(String value)? searchTask,
    TResult Function(String value)? searchTaskKanban,
    TResult Function()? resetFilters,
    TResult Function()? resetFiltersKanban,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitTaskListEvent value) init,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_GetTasks value) getTasks,
    required TResult Function(_GetKanban value) getKanban,
    required TResult Function(AddTaskListEvent value) addTask,
    required TResult Function(DeleteTaskListEvent value) deleteTask,
    required TResult Function(DeleteTaskEvent value) delete,
    required TResult Function(UpdateTaskListEvent value) updateTask,
    required TResult Function(UpdateTaskKanbanListEvent value) updateTaskKanban,
    required TResult Function(HierchyChangeTaskListEvent value) hierchyChange,
    required TResult Function(UpdatePerformersTaskListEvent value)
        updatePerformers,
    required TResult Function(FilterTaskListEvent value) filterTaskList,
    required TResult Function(FilterTaskKanbanEvent value) filterTaskKanban,
    required TResult Function(SearchTaskListEvent value) searchTask,
    required TResult Function(SearchTaskKanbanEvent value) searchTaskKanban,
    required TResult Function(ResetFiltersTaskListEvent value) resetFilters,
    required TResult Function(ResetFiltersTaskKanbanEvent value)
        resetFiltersKanban,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitTaskListEvent value)? init,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_GetTasks value)? getTasks,
    TResult? Function(_GetKanban value)? getKanban,
    TResult? Function(AddTaskListEvent value)? addTask,
    TResult? Function(DeleteTaskListEvent value)? deleteTask,
    TResult? Function(DeleteTaskEvent value)? delete,
    TResult? Function(UpdateTaskListEvent value)? updateTask,
    TResult? Function(UpdateTaskKanbanListEvent value)? updateTaskKanban,
    TResult? Function(HierchyChangeTaskListEvent value)? hierchyChange,
    TResult? Function(UpdatePerformersTaskListEvent value)? updatePerformers,
    TResult? Function(FilterTaskListEvent value)? filterTaskList,
    TResult? Function(FilterTaskKanbanEvent value)? filterTaskKanban,
    TResult? Function(SearchTaskListEvent value)? searchTask,
    TResult? Function(SearchTaskKanbanEvent value)? searchTaskKanban,
    TResult? Function(ResetFiltersTaskListEvent value)? resetFilters,
    TResult? Function(ResetFiltersTaskKanbanEvent value)? resetFiltersKanban,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitTaskListEvent value)? init,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_GetTasks value)? getTasks,
    TResult Function(_GetKanban value)? getKanban,
    TResult Function(AddTaskListEvent value)? addTask,
    TResult Function(DeleteTaskListEvent value)? deleteTask,
    TResult Function(DeleteTaskEvent value)? delete,
    TResult Function(UpdateTaskListEvent value)? updateTask,
    TResult Function(UpdateTaskKanbanListEvent value)? updateTaskKanban,
    TResult Function(HierchyChangeTaskListEvent value)? hierchyChange,
    TResult Function(UpdatePerformersTaskListEvent value)? updatePerformers,
    TResult Function(FilterTaskListEvent value)? filterTaskList,
    TResult Function(FilterTaskKanbanEvent value)? filterTaskKanban,
    TResult Function(SearchTaskListEvent value)? searchTask,
    TResult Function(SearchTaskKanbanEvent value)? searchTaskKanban,
    TResult Function(ResetFiltersTaskListEvent value)? resetFilters,
    TResult Function(ResetFiltersTaskKanbanEvent value)? resetFiltersKanban,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class _Refresh extends TaskListEvent {
  const factory _Refresh() = _$_Refresh;
  const _Refresh._() : super._();
}

/// @nodoc
abstract class _$$_GetTasksCopyWith<$Res> {
  factory _$$_GetTasksCopyWith(
          _$_GetTasks value, $Res Function(_$_GetTasks) then) =
      __$$_GetTasksCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetTasksCopyWithImpl<$Res>
    extends _$TaskListEventCopyWithImpl<$Res, _$_GetTasks>
    implements _$$_GetTasksCopyWith<$Res> {
  __$$_GetTasksCopyWithImpl(
      _$_GetTasks _value, $Res Function(_$_GetTasks) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetTasks extends _GetTasks with DiagnosticableTreeMixin {
  const _$_GetTasks() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TaskListEvent.getTasks()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'TaskListEvent.getTasks'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetTasks);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() refresh,
    required TResult Function() getTasks,
    required TResult Function(int status, bool withLoading) getKanban,
    required TResult Function(DlsTasks task) addTask,
    required TResult Function(DlsTasks task) deleteTask,
    required TResult Function(int id, int index) delete,
    required TResult Function(int index, DlsTasks task) updateTask,
    required TResult Function(
            DlsTasks task,
            int addToTaskIndex,
            int removeTaskIndex,
            TaskStatusType addToStatus,
            TaskStatusType removeFromStatus)
        updateTaskKanban,
    required TResult Function(TasksListHierarchy value) hierchyChange,
    required TResult Function(DlsTasks task, List<DLSUser> users, int index)
        updatePerformers,
    required TResult Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)
        filterTaskList,
    required TResult Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)
        filterTaskKanban,
    required TResult Function(String value) searchTask,
    required TResult Function(String value) searchTaskKanban,
    required TResult Function() resetFilters,
    required TResult Function() resetFiltersKanban,
  }) {
    return getTasks();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? refresh,
    TResult? Function()? getTasks,
    TResult? Function(int status, bool withLoading)? getKanban,
    TResult? Function(DlsTasks task)? addTask,
    TResult? Function(DlsTasks task)? deleteTask,
    TResult? Function(int id, int index)? delete,
    TResult? Function(int index, DlsTasks task)? updateTask,
    TResult? Function(DlsTasks task, int addToTaskIndex, int removeTaskIndex,
            TaskStatusType addToStatus, TaskStatusType removeFromStatus)?
        updateTaskKanban,
    TResult? Function(TasksListHierarchy value)? hierchyChange,
    TResult? Function(DlsTasks task, List<DLSUser> users, int index)?
        updatePerformers,
    TResult? Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)?
        filterTaskList,
    TResult? Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)?
        filterTaskKanban,
    TResult? Function(String value)? searchTask,
    TResult? Function(String value)? searchTaskKanban,
    TResult? Function()? resetFilters,
    TResult? Function()? resetFiltersKanban,
  }) {
    return getTasks?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? refresh,
    TResult Function()? getTasks,
    TResult Function(int status, bool withLoading)? getKanban,
    TResult Function(DlsTasks task)? addTask,
    TResult Function(DlsTasks task)? deleteTask,
    TResult Function(int id, int index)? delete,
    TResult Function(int index, DlsTasks task)? updateTask,
    TResult Function(DlsTasks task, int addToTaskIndex, int removeTaskIndex,
            TaskStatusType addToStatus, TaskStatusType removeFromStatus)?
        updateTaskKanban,
    TResult Function(TasksListHierarchy value)? hierchyChange,
    TResult Function(DlsTasks task, List<DLSUser> users, int index)?
        updatePerformers,
    TResult Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)?
        filterTaskList,
    TResult Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)?
        filterTaskKanban,
    TResult Function(String value)? searchTask,
    TResult Function(String value)? searchTaskKanban,
    TResult Function()? resetFilters,
    TResult Function()? resetFiltersKanban,
    required TResult orElse(),
  }) {
    if (getTasks != null) {
      return getTasks();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitTaskListEvent value) init,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_GetTasks value) getTasks,
    required TResult Function(_GetKanban value) getKanban,
    required TResult Function(AddTaskListEvent value) addTask,
    required TResult Function(DeleteTaskListEvent value) deleteTask,
    required TResult Function(DeleteTaskEvent value) delete,
    required TResult Function(UpdateTaskListEvent value) updateTask,
    required TResult Function(UpdateTaskKanbanListEvent value) updateTaskKanban,
    required TResult Function(HierchyChangeTaskListEvent value) hierchyChange,
    required TResult Function(UpdatePerformersTaskListEvent value)
        updatePerformers,
    required TResult Function(FilterTaskListEvent value) filterTaskList,
    required TResult Function(FilterTaskKanbanEvent value) filterTaskKanban,
    required TResult Function(SearchTaskListEvent value) searchTask,
    required TResult Function(SearchTaskKanbanEvent value) searchTaskKanban,
    required TResult Function(ResetFiltersTaskListEvent value) resetFilters,
    required TResult Function(ResetFiltersTaskKanbanEvent value)
        resetFiltersKanban,
  }) {
    return getTasks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitTaskListEvent value)? init,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_GetTasks value)? getTasks,
    TResult? Function(_GetKanban value)? getKanban,
    TResult? Function(AddTaskListEvent value)? addTask,
    TResult? Function(DeleteTaskListEvent value)? deleteTask,
    TResult? Function(DeleteTaskEvent value)? delete,
    TResult? Function(UpdateTaskListEvent value)? updateTask,
    TResult? Function(UpdateTaskKanbanListEvent value)? updateTaskKanban,
    TResult? Function(HierchyChangeTaskListEvent value)? hierchyChange,
    TResult? Function(UpdatePerformersTaskListEvent value)? updatePerformers,
    TResult? Function(FilterTaskListEvent value)? filterTaskList,
    TResult? Function(FilterTaskKanbanEvent value)? filterTaskKanban,
    TResult? Function(SearchTaskListEvent value)? searchTask,
    TResult? Function(SearchTaskKanbanEvent value)? searchTaskKanban,
    TResult? Function(ResetFiltersTaskListEvent value)? resetFilters,
    TResult? Function(ResetFiltersTaskKanbanEvent value)? resetFiltersKanban,
  }) {
    return getTasks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitTaskListEvent value)? init,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_GetTasks value)? getTasks,
    TResult Function(_GetKanban value)? getKanban,
    TResult Function(AddTaskListEvent value)? addTask,
    TResult Function(DeleteTaskListEvent value)? deleteTask,
    TResult Function(DeleteTaskEvent value)? delete,
    TResult Function(UpdateTaskListEvent value)? updateTask,
    TResult Function(UpdateTaskKanbanListEvent value)? updateTaskKanban,
    TResult Function(HierchyChangeTaskListEvent value)? hierchyChange,
    TResult Function(UpdatePerformersTaskListEvent value)? updatePerformers,
    TResult Function(FilterTaskListEvent value)? filterTaskList,
    TResult Function(FilterTaskKanbanEvent value)? filterTaskKanban,
    TResult Function(SearchTaskListEvent value)? searchTask,
    TResult Function(SearchTaskKanbanEvent value)? searchTaskKanban,
    TResult Function(ResetFiltersTaskListEvent value)? resetFilters,
    TResult Function(ResetFiltersTaskKanbanEvent value)? resetFiltersKanban,
    required TResult orElse(),
  }) {
    if (getTasks != null) {
      return getTasks(this);
    }
    return orElse();
  }
}

abstract class _GetTasks extends TaskListEvent {
  const factory _GetTasks() = _$_GetTasks;
  const _GetTasks._() : super._();
}

/// @nodoc
abstract class _$$_GetKanbanCopyWith<$Res> {
  factory _$$_GetKanbanCopyWith(
          _$_GetKanban value, $Res Function(_$_GetKanban) then) =
      __$$_GetKanbanCopyWithImpl<$Res>;
  @useResult
  $Res call({int status, bool withLoading});
}

/// @nodoc
class __$$_GetKanbanCopyWithImpl<$Res>
    extends _$TaskListEventCopyWithImpl<$Res, _$_GetKanban>
    implements _$$_GetKanbanCopyWith<$Res> {
  __$$_GetKanbanCopyWithImpl(
      _$_GetKanban _value, $Res Function(_$_GetKanban) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? withLoading = null,
  }) {
    return _then(_$_GetKanban(
      null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      withLoading: null == withLoading
          ? _value.withLoading
          : withLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_GetKanban extends _GetKanban with DiagnosticableTreeMixin {
  const _$_GetKanban(this.status, {this.withLoading = true}) : super._();

  @override
  final int status;
  @override
  @JsonKey()
  final bool withLoading;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TaskListEvent.getKanban(status: $status, withLoading: $withLoading)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TaskListEvent.getKanban'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('withLoading', withLoading));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetKanban &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.withLoading, withLoading) ||
                other.withLoading == withLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, withLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetKanbanCopyWith<_$_GetKanban> get copyWith =>
      __$$_GetKanbanCopyWithImpl<_$_GetKanban>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() refresh,
    required TResult Function() getTasks,
    required TResult Function(int status, bool withLoading) getKanban,
    required TResult Function(DlsTasks task) addTask,
    required TResult Function(DlsTasks task) deleteTask,
    required TResult Function(int id, int index) delete,
    required TResult Function(int index, DlsTasks task) updateTask,
    required TResult Function(
            DlsTasks task,
            int addToTaskIndex,
            int removeTaskIndex,
            TaskStatusType addToStatus,
            TaskStatusType removeFromStatus)
        updateTaskKanban,
    required TResult Function(TasksListHierarchy value) hierchyChange,
    required TResult Function(DlsTasks task, List<DLSUser> users, int index)
        updatePerformers,
    required TResult Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)
        filterTaskList,
    required TResult Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)
        filterTaskKanban,
    required TResult Function(String value) searchTask,
    required TResult Function(String value) searchTaskKanban,
    required TResult Function() resetFilters,
    required TResult Function() resetFiltersKanban,
  }) {
    return getKanban(status, withLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? refresh,
    TResult? Function()? getTasks,
    TResult? Function(int status, bool withLoading)? getKanban,
    TResult? Function(DlsTasks task)? addTask,
    TResult? Function(DlsTasks task)? deleteTask,
    TResult? Function(int id, int index)? delete,
    TResult? Function(int index, DlsTasks task)? updateTask,
    TResult? Function(DlsTasks task, int addToTaskIndex, int removeTaskIndex,
            TaskStatusType addToStatus, TaskStatusType removeFromStatus)?
        updateTaskKanban,
    TResult? Function(TasksListHierarchy value)? hierchyChange,
    TResult? Function(DlsTasks task, List<DLSUser> users, int index)?
        updatePerformers,
    TResult? Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)?
        filterTaskList,
    TResult? Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)?
        filterTaskKanban,
    TResult? Function(String value)? searchTask,
    TResult? Function(String value)? searchTaskKanban,
    TResult? Function()? resetFilters,
    TResult? Function()? resetFiltersKanban,
  }) {
    return getKanban?.call(status, withLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? refresh,
    TResult Function()? getTasks,
    TResult Function(int status, bool withLoading)? getKanban,
    TResult Function(DlsTasks task)? addTask,
    TResult Function(DlsTasks task)? deleteTask,
    TResult Function(int id, int index)? delete,
    TResult Function(int index, DlsTasks task)? updateTask,
    TResult Function(DlsTasks task, int addToTaskIndex, int removeTaskIndex,
            TaskStatusType addToStatus, TaskStatusType removeFromStatus)?
        updateTaskKanban,
    TResult Function(TasksListHierarchy value)? hierchyChange,
    TResult Function(DlsTasks task, List<DLSUser> users, int index)?
        updatePerformers,
    TResult Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)?
        filterTaskList,
    TResult Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)?
        filterTaskKanban,
    TResult Function(String value)? searchTask,
    TResult Function(String value)? searchTaskKanban,
    TResult Function()? resetFilters,
    TResult Function()? resetFiltersKanban,
    required TResult orElse(),
  }) {
    if (getKanban != null) {
      return getKanban(status, withLoading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitTaskListEvent value) init,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_GetTasks value) getTasks,
    required TResult Function(_GetKanban value) getKanban,
    required TResult Function(AddTaskListEvent value) addTask,
    required TResult Function(DeleteTaskListEvent value) deleteTask,
    required TResult Function(DeleteTaskEvent value) delete,
    required TResult Function(UpdateTaskListEvent value) updateTask,
    required TResult Function(UpdateTaskKanbanListEvent value) updateTaskKanban,
    required TResult Function(HierchyChangeTaskListEvent value) hierchyChange,
    required TResult Function(UpdatePerformersTaskListEvent value)
        updatePerformers,
    required TResult Function(FilterTaskListEvent value) filterTaskList,
    required TResult Function(FilterTaskKanbanEvent value) filterTaskKanban,
    required TResult Function(SearchTaskListEvent value) searchTask,
    required TResult Function(SearchTaskKanbanEvent value) searchTaskKanban,
    required TResult Function(ResetFiltersTaskListEvent value) resetFilters,
    required TResult Function(ResetFiltersTaskKanbanEvent value)
        resetFiltersKanban,
  }) {
    return getKanban(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitTaskListEvent value)? init,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_GetTasks value)? getTasks,
    TResult? Function(_GetKanban value)? getKanban,
    TResult? Function(AddTaskListEvent value)? addTask,
    TResult? Function(DeleteTaskListEvent value)? deleteTask,
    TResult? Function(DeleteTaskEvent value)? delete,
    TResult? Function(UpdateTaskListEvent value)? updateTask,
    TResult? Function(UpdateTaskKanbanListEvent value)? updateTaskKanban,
    TResult? Function(HierchyChangeTaskListEvent value)? hierchyChange,
    TResult? Function(UpdatePerformersTaskListEvent value)? updatePerformers,
    TResult? Function(FilterTaskListEvent value)? filterTaskList,
    TResult? Function(FilterTaskKanbanEvent value)? filterTaskKanban,
    TResult? Function(SearchTaskListEvent value)? searchTask,
    TResult? Function(SearchTaskKanbanEvent value)? searchTaskKanban,
    TResult? Function(ResetFiltersTaskListEvent value)? resetFilters,
    TResult? Function(ResetFiltersTaskKanbanEvent value)? resetFiltersKanban,
  }) {
    return getKanban?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitTaskListEvent value)? init,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_GetTasks value)? getTasks,
    TResult Function(_GetKanban value)? getKanban,
    TResult Function(AddTaskListEvent value)? addTask,
    TResult Function(DeleteTaskListEvent value)? deleteTask,
    TResult Function(DeleteTaskEvent value)? delete,
    TResult Function(UpdateTaskListEvent value)? updateTask,
    TResult Function(UpdateTaskKanbanListEvent value)? updateTaskKanban,
    TResult Function(HierchyChangeTaskListEvent value)? hierchyChange,
    TResult Function(UpdatePerformersTaskListEvent value)? updatePerformers,
    TResult Function(FilterTaskListEvent value)? filterTaskList,
    TResult Function(FilterTaskKanbanEvent value)? filterTaskKanban,
    TResult Function(SearchTaskListEvent value)? searchTask,
    TResult Function(SearchTaskKanbanEvent value)? searchTaskKanban,
    TResult Function(ResetFiltersTaskListEvent value)? resetFilters,
    TResult Function(ResetFiltersTaskKanbanEvent value)? resetFiltersKanban,
    required TResult orElse(),
  }) {
    if (getKanban != null) {
      return getKanban(this);
    }
    return orElse();
  }
}

abstract class _GetKanban extends TaskListEvent {
  const factory _GetKanban(final int status, {final bool withLoading}) =
      _$_GetKanban;
  const _GetKanban._() : super._();

  int get status;
  bool get withLoading;
  @JsonKey(ignore: true)
  _$$_GetKanbanCopyWith<_$_GetKanban> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddTaskListEventCopyWith<$Res> {
  factory _$$AddTaskListEventCopyWith(
          _$AddTaskListEvent value, $Res Function(_$AddTaskListEvent) then) =
      __$$AddTaskListEventCopyWithImpl<$Res>;
  @useResult
  $Res call({DlsTasks task});

  $DlsTasksCopyWith<$Res> get task;
}

/// @nodoc
class __$$AddTaskListEventCopyWithImpl<$Res>
    extends _$TaskListEventCopyWithImpl<$Res, _$AddTaskListEvent>
    implements _$$AddTaskListEventCopyWith<$Res> {
  __$$AddTaskListEventCopyWithImpl(
      _$AddTaskListEvent _value, $Res Function(_$AddTaskListEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
  }) {
    return _then(_$AddTaskListEvent(
      null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as DlsTasks,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DlsTasksCopyWith<$Res> get task {
    return $DlsTasksCopyWith<$Res>(_value.task, (value) {
      return _then(_value.copyWith(task: value));
    });
  }
}

/// @nodoc

class _$AddTaskListEvent extends AddTaskListEvent with DiagnosticableTreeMixin {
  const _$AddTaskListEvent(this.task) : super._();

  @override
  final DlsTasks task;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TaskListEvent.addTask(task: $task)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TaskListEvent.addTask'))
      ..add(DiagnosticsProperty('task', task));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddTaskListEvent &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddTaskListEventCopyWith<_$AddTaskListEvent> get copyWith =>
      __$$AddTaskListEventCopyWithImpl<_$AddTaskListEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() refresh,
    required TResult Function() getTasks,
    required TResult Function(int status, bool withLoading) getKanban,
    required TResult Function(DlsTasks task) addTask,
    required TResult Function(DlsTasks task) deleteTask,
    required TResult Function(int id, int index) delete,
    required TResult Function(int index, DlsTasks task) updateTask,
    required TResult Function(
            DlsTasks task,
            int addToTaskIndex,
            int removeTaskIndex,
            TaskStatusType addToStatus,
            TaskStatusType removeFromStatus)
        updateTaskKanban,
    required TResult Function(TasksListHierarchy value) hierchyChange,
    required TResult Function(DlsTasks task, List<DLSUser> users, int index)
        updatePerformers,
    required TResult Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)
        filterTaskList,
    required TResult Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)
        filterTaskKanban,
    required TResult Function(String value) searchTask,
    required TResult Function(String value) searchTaskKanban,
    required TResult Function() resetFilters,
    required TResult Function() resetFiltersKanban,
  }) {
    return addTask(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? refresh,
    TResult? Function()? getTasks,
    TResult? Function(int status, bool withLoading)? getKanban,
    TResult? Function(DlsTasks task)? addTask,
    TResult? Function(DlsTasks task)? deleteTask,
    TResult? Function(int id, int index)? delete,
    TResult? Function(int index, DlsTasks task)? updateTask,
    TResult? Function(DlsTasks task, int addToTaskIndex, int removeTaskIndex,
            TaskStatusType addToStatus, TaskStatusType removeFromStatus)?
        updateTaskKanban,
    TResult? Function(TasksListHierarchy value)? hierchyChange,
    TResult? Function(DlsTasks task, List<DLSUser> users, int index)?
        updatePerformers,
    TResult? Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)?
        filterTaskList,
    TResult? Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)?
        filterTaskKanban,
    TResult? Function(String value)? searchTask,
    TResult? Function(String value)? searchTaskKanban,
    TResult? Function()? resetFilters,
    TResult? Function()? resetFiltersKanban,
  }) {
    return addTask?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? refresh,
    TResult Function()? getTasks,
    TResult Function(int status, bool withLoading)? getKanban,
    TResult Function(DlsTasks task)? addTask,
    TResult Function(DlsTasks task)? deleteTask,
    TResult Function(int id, int index)? delete,
    TResult Function(int index, DlsTasks task)? updateTask,
    TResult Function(DlsTasks task, int addToTaskIndex, int removeTaskIndex,
            TaskStatusType addToStatus, TaskStatusType removeFromStatus)?
        updateTaskKanban,
    TResult Function(TasksListHierarchy value)? hierchyChange,
    TResult Function(DlsTasks task, List<DLSUser> users, int index)?
        updatePerformers,
    TResult Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)?
        filterTaskList,
    TResult Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)?
        filterTaskKanban,
    TResult Function(String value)? searchTask,
    TResult Function(String value)? searchTaskKanban,
    TResult Function()? resetFilters,
    TResult Function()? resetFiltersKanban,
    required TResult orElse(),
  }) {
    if (addTask != null) {
      return addTask(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitTaskListEvent value) init,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_GetTasks value) getTasks,
    required TResult Function(_GetKanban value) getKanban,
    required TResult Function(AddTaskListEvent value) addTask,
    required TResult Function(DeleteTaskListEvent value) deleteTask,
    required TResult Function(DeleteTaskEvent value) delete,
    required TResult Function(UpdateTaskListEvent value) updateTask,
    required TResult Function(UpdateTaskKanbanListEvent value) updateTaskKanban,
    required TResult Function(HierchyChangeTaskListEvent value) hierchyChange,
    required TResult Function(UpdatePerformersTaskListEvent value)
        updatePerformers,
    required TResult Function(FilterTaskListEvent value) filterTaskList,
    required TResult Function(FilterTaskKanbanEvent value) filterTaskKanban,
    required TResult Function(SearchTaskListEvent value) searchTask,
    required TResult Function(SearchTaskKanbanEvent value) searchTaskKanban,
    required TResult Function(ResetFiltersTaskListEvent value) resetFilters,
    required TResult Function(ResetFiltersTaskKanbanEvent value)
        resetFiltersKanban,
  }) {
    return addTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitTaskListEvent value)? init,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_GetTasks value)? getTasks,
    TResult? Function(_GetKanban value)? getKanban,
    TResult? Function(AddTaskListEvent value)? addTask,
    TResult? Function(DeleteTaskListEvent value)? deleteTask,
    TResult? Function(DeleteTaskEvent value)? delete,
    TResult? Function(UpdateTaskListEvent value)? updateTask,
    TResult? Function(UpdateTaskKanbanListEvent value)? updateTaskKanban,
    TResult? Function(HierchyChangeTaskListEvent value)? hierchyChange,
    TResult? Function(UpdatePerformersTaskListEvent value)? updatePerformers,
    TResult? Function(FilterTaskListEvent value)? filterTaskList,
    TResult? Function(FilterTaskKanbanEvent value)? filterTaskKanban,
    TResult? Function(SearchTaskListEvent value)? searchTask,
    TResult? Function(SearchTaskKanbanEvent value)? searchTaskKanban,
    TResult? Function(ResetFiltersTaskListEvent value)? resetFilters,
    TResult? Function(ResetFiltersTaskKanbanEvent value)? resetFiltersKanban,
  }) {
    return addTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitTaskListEvent value)? init,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_GetTasks value)? getTasks,
    TResult Function(_GetKanban value)? getKanban,
    TResult Function(AddTaskListEvent value)? addTask,
    TResult Function(DeleteTaskListEvent value)? deleteTask,
    TResult Function(DeleteTaskEvent value)? delete,
    TResult Function(UpdateTaskListEvent value)? updateTask,
    TResult Function(UpdateTaskKanbanListEvent value)? updateTaskKanban,
    TResult Function(HierchyChangeTaskListEvent value)? hierchyChange,
    TResult Function(UpdatePerformersTaskListEvent value)? updatePerformers,
    TResult Function(FilterTaskListEvent value)? filterTaskList,
    TResult Function(FilterTaskKanbanEvent value)? filterTaskKanban,
    TResult Function(SearchTaskListEvent value)? searchTask,
    TResult Function(SearchTaskKanbanEvent value)? searchTaskKanban,
    TResult Function(ResetFiltersTaskListEvent value)? resetFilters,
    TResult Function(ResetFiltersTaskKanbanEvent value)? resetFiltersKanban,
    required TResult orElse(),
  }) {
    if (addTask != null) {
      return addTask(this);
    }
    return orElse();
  }
}

abstract class AddTaskListEvent extends TaskListEvent {
  const factory AddTaskListEvent(final DlsTasks task) = _$AddTaskListEvent;
  const AddTaskListEvent._() : super._();

  DlsTasks get task;
  @JsonKey(ignore: true)
  _$$AddTaskListEventCopyWith<_$AddTaskListEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteTaskListEventCopyWith<$Res> {
  factory _$$DeleteTaskListEventCopyWith(_$DeleteTaskListEvent value,
          $Res Function(_$DeleteTaskListEvent) then) =
      __$$DeleteTaskListEventCopyWithImpl<$Res>;
  @useResult
  $Res call({DlsTasks task});

  $DlsTasksCopyWith<$Res> get task;
}

/// @nodoc
class __$$DeleteTaskListEventCopyWithImpl<$Res>
    extends _$TaskListEventCopyWithImpl<$Res, _$DeleteTaskListEvent>
    implements _$$DeleteTaskListEventCopyWith<$Res> {
  __$$DeleteTaskListEventCopyWithImpl(
      _$DeleteTaskListEvent _value, $Res Function(_$DeleteTaskListEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
  }) {
    return _then(_$DeleteTaskListEvent(
      null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as DlsTasks,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DlsTasksCopyWith<$Res> get task {
    return $DlsTasksCopyWith<$Res>(_value.task, (value) {
      return _then(_value.copyWith(task: value));
    });
  }
}

/// @nodoc

class _$DeleteTaskListEvent extends DeleteTaskListEvent
    with DiagnosticableTreeMixin {
  const _$DeleteTaskListEvent(this.task) : super._();

  @override
  final DlsTasks task;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TaskListEvent.deleteTask(task: $task)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TaskListEvent.deleteTask'))
      ..add(DiagnosticsProperty('task', task));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteTaskListEvent &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteTaskListEventCopyWith<_$DeleteTaskListEvent> get copyWith =>
      __$$DeleteTaskListEventCopyWithImpl<_$DeleteTaskListEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() refresh,
    required TResult Function() getTasks,
    required TResult Function(int status, bool withLoading) getKanban,
    required TResult Function(DlsTasks task) addTask,
    required TResult Function(DlsTasks task) deleteTask,
    required TResult Function(int id, int index) delete,
    required TResult Function(int index, DlsTasks task) updateTask,
    required TResult Function(
            DlsTasks task,
            int addToTaskIndex,
            int removeTaskIndex,
            TaskStatusType addToStatus,
            TaskStatusType removeFromStatus)
        updateTaskKanban,
    required TResult Function(TasksListHierarchy value) hierchyChange,
    required TResult Function(DlsTasks task, List<DLSUser> users, int index)
        updatePerformers,
    required TResult Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)
        filterTaskList,
    required TResult Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)
        filterTaskKanban,
    required TResult Function(String value) searchTask,
    required TResult Function(String value) searchTaskKanban,
    required TResult Function() resetFilters,
    required TResult Function() resetFiltersKanban,
  }) {
    return deleteTask(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? refresh,
    TResult? Function()? getTasks,
    TResult? Function(int status, bool withLoading)? getKanban,
    TResult? Function(DlsTasks task)? addTask,
    TResult? Function(DlsTasks task)? deleteTask,
    TResult? Function(int id, int index)? delete,
    TResult? Function(int index, DlsTasks task)? updateTask,
    TResult? Function(DlsTasks task, int addToTaskIndex, int removeTaskIndex,
            TaskStatusType addToStatus, TaskStatusType removeFromStatus)?
        updateTaskKanban,
    TResult? Function(TasksListHierarchy value)? hierchyChange,
    TResult? Function(DlsTasks task, List<DLSUser> users, int index)?
        updatePerformers,
    TResult? Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)?
        filterTaskList,
    TResult? Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)?
        filterTaskKanban,
    TResult? Function(String value)? searchTask,
    TResult? Function(String value)? searchTaskKanban,
    TResult? Function()? resetFilters,
    TResult? Function()? resetFiltersKanban,
  }) {
    return deleteTask?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? refresh,
    TResult Function()? getTasks,
    TResult Function(int status, bool withLoading)? getKanban,
    TResult Function(DlsTasks task)? addTask,
    TResult Function(DlsTasks task)? deleteTask,
    TResult Function(int id, int index)? delete,
    TResult Function(int index, DlsTasks task)? updateTask,
    TResult Function(DlsTasks task, int addToTaskIndex, int removeTaskIndex,
            TaskStatusType addToStatus, TaskStatusType removeFromStatus)?
        updateTaskKanban,
    TResult Function(TasksListHierarchy value)? hierchyChange,
    TResult Function(DlsTasks task, List<DLSUser> users, int index)?
        updatePerformers,
    TResult Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)?
        filterTaskList,
    TResult Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)?
        filterTaskKanban,
    TResult Function(String value)? searchTask,
    TResult Function(String value)? searchTaskKanban,
    TResult Function()? resetFilters,
    TResult Function()? resetFiltersKanban,
    required TResult orElse(),
  }) {
    if (deleteTask != null) {
      return deleteTask(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitTaskListEvent value) init,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_GetTasks value) getTasks,
    required TResult Function(_GetKanban value) getKanban,
    required TResult Function(AddTaskListEvent value) addTask,
    required TResult Function(DeleteTaskListEvent value) deleteTask,
    required TResult Function(DeleteTaskEvent value) delete,
    required TResult Function(UpdateTaskListEvent value) updateTask,
    required TResult Function(UpdateTaskKanbanListEvent value) updateTaskKanban,
    required TResult Function(HierchyChangeTaskListEvent value) hierchyChange,
    required TResult Function(UpdatePerformersTaskListEvent value)
        updatePerformers,
    required TResult Function(FilterTaskListEvent value) filterTaskList,
    required TResult Function(FilterTaskKanbanEvent value) filterTaskKanban,
    required TResult Function(SearchTaskListEvent value) searchTask,
    required TResult Function(SearchTaskKanbanEvent value) searchTaskKanban,
    required TResult Function(ResetFiltersTaskListEvent value) resetFilters,
    required TResult Function(ResetFiltersTaskKanbanEvent value)
        resetFiltersKanban,
  }) {
    return deleteTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitTaskListEvent value)? init,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_GetTasks value)? getTasks,
    TResult? Function(_GetKanban value)? getKanban,
    TResult? Function(AddTaskListEvent value)? addTask,
    TResult? Function(DeleteTaskListEvent value)? deleteTask,
    TResult? Function(DeleteTaskEvent value)? delete,
    TResult? Function(UpdateTaskListEvent value)? updateTask,
    TResult? Function(UpdateTaskKanbanListEvent value)? updateTaskKanban,
    TResult? Function(HierchyChangeTaskListEvent value)? hierchyChange,
    TResult? Function(UpdatePerformersTaskListEvent value)? updatePerformers,
    TResult? Function(FilterTaskListEvent value)? filterTaskList,
    TResult? Function(FilterTaskKanbanEvent value)? filterTaskKanban,
    TResult? Function(SearchTaskListEvent value)? searchTask,
    TResult? Function(SearchTaskKanbanEvent value)? searchTaskKanban,
    TResult? Function(ResetFiltersTaskListEvent value)? resetFilters,
    TResult? Function(ResetFiltersTaskKanbanEvent value)? resetFiltersKanban,
  }) {
    return deleteTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitTaskListEvent value)? init,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_GetTasks value)? getTasks,
    TResult Function(_GetKanban value)? getKanban,
    TResult Function(AddTaskListEvent value)? addTask,
    TResult Function(DeleteTaskListEvent value)? deleteTask,
    TResult Function(DeleteTaskEvent value)? delete,
    TResult Function(UpdateTaskListEvent value)? updateTask,
    TResult Function(UpdateTaskKanbanListEvent value)? updateTaskKanban,
    TResult Function(HierchyChangeTaskListEvent value)? hierchyChange,
    TResult Function(UpdatePerformersTaskListEvent value)? updatePerformers,
    TResult Function(FilterTaskListEvent value)? filterTaskList,
    TResult Function(FilterTaskKanbanEvent value)? filterTaskKanban,
    TResult Function(SearchTaskListEvent value)? searchTask,
    TResult Function(SearchTaskKanbanEvent value)? searchTaskKanban,
    TResult Function(ResetFiltersTaskListEvent value)? resetFilters,
    TResult Function(ResetFiltersTaskKanbanEvent value)? resetFiltersKanban,
    required TResult orElse(),
  }) {
    if (deleteTask != null) {
      return deleteTask(this);
    }
    return orElse();
  }
}

abstract class DeleteTaskListEvent extends TaskListEvent {
  const factory DeleteTaskListEvent(final DlsTasks task) =
      _$DeleteTaskListEvent;
  const DeleteTaskListEvent._() : super._();

  DlsTasks get task;
  @JsonKey(ignore: true)
  _$$DeleteTaskListEventCopyWith<_$DeleteTaskListEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteTaskEventCopyWith<$Res> {
  factory _$$DeleteTaskEventCopyWith(
          _$DeleteTaskEvent value, $Res Function(_$DeleteTaskEvent) then) =
      __$$DeleteTaskEventCopyWithImpl<$Res>;
  @useResult
  $Res call({int id, int index});
}

/// @nodoc
class __$$DeleteTaskEventCopyWithImpl<$Res>
    extends _$TaskListEventCopyWithImpl<$Res, _$DeleteTaskEvent>
    implements _$$DeleteTaskEventCopyWith<$Res> {
  __$$DeleteTaskEventCopyWithImpl(
      _$DeleteTaskEvent _value, $Res Function(_$DeleteTaskEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? index = null,
  }) {
    return _then(_$DeleteTaskEvent(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteTaskEvent extends DeleteTaskEvent with DiagnosticableTreeMixin {
  const _$DeleteTaskEvent(this.id, this.index) : super._();

  @override
  final int id;
  @override
  final int index;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TaskListEvent.delete(id: $id, index: $index)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TaskListEvent.delete'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('index', index));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteTaskEvent &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteTaskEventCopyWith<_$DeleteTaskEvent> get copyWith =>
      __$$DeleteTaskEventCopyWithImpl<_$DeleteTaskEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() refresh,
    required TResult Function() getTasks,
    required TResult Function(int status, bool withLoading) getKanban,
    required TResult Function(DlsTasks task) addTask,
    required TResult Function(DlsTasks task) deleteTask,
    required TResult Function(int id, int index) delete,
    required TResult Function(int index, DlsTasks task) updateTask,
    required TResult Function(
            DlsTasks task,
            int addToTaskIndex,
            int removeTaskIndex,
            TaskStatusType addToStatus,
            TaskStatusType removeFromStatus)
        updateTaskKanban,
    required TResult Function(TasksListHierarchy value) hierchyChange,
    required TResult Function(DlsTasks task, List<DLSUser> users, int index)
        updatePerformers,
    required TResult Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)
        filterTaskList,
    required TResult Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)
        filterTaskKanban,
    required TResult Function(String value) searchTask,
    required TResult Function(String value) searchTaskKanban,
    required TResult Function() resetFilters,
    required TResult Function() resetFiltersKanban,
  }) {
    return delete(id, index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? refresh,
    TResult? Function()? getTasks,
    TResult? Function(int status, bool withLoading)? getKanban,
    TResult? Function(DlsTasks task)? addTask,
    TResult? Function(DlsTasks task)? deleteTask,
    TResult? Function(int id, int index)? delete,
    TResult? Function(int index, DlsTasks task)? updateTask,
    TResult? Function(DlsTasks task, int addToTaskIndex, int removeTaskIndex,
            TaskStatusType addToStatus, TaskStatusType removeFromStatus)?
        updateTaskKanban,
    TResult? Function(TasksListHierarchy value)? hierchyChange,
    TResult? Function(DlsTasks task, List<DLSUser> users, int index)?
        updatePerformers,
    TResult? Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)?
        filterTaskList,
    TResult? Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)?
        filterTaskKanban,
    TResult? Function(String value)? searchTask,
    TResult? Function(String value)? searchTaskKanban,
    TResult? Function()? resetFilters,
    TResult? Function()? resetFiltersKanban,
  }) {
    return delete?.call(id, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? refresh,
    TResult Function()? getTasks,
    TResult Function(int status, bool withLoading)? getKanban,
    TResult Function(DlsTasks task)? addTask,
    TResult Function(DlsTasks task)? deleteTask,
    TResult Function(int id, int index)? delete,
    TResult Function(int index, DlsTasks task)? updateTask,
    TResult Function(DlsTasks task, int addToTaskIndex, int removeTaskIndex,
            TaskStatusType addToStatus, TaskStatusType removeFromStatus)?
        updateTaskKanban,
    TResult Function(TasksListHierarchy value)? hierchyChange,
    TResult Function(DlsTasks task, List<DLSUser> users, int index)?
        updatePerformers,
    TResult Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)?
        filterTaskList,
    TResult Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)?
        filterTaskKanban,
    TResult Function(String value)? searchTask,
    TResult Function(String value)? searchTaskKanban,
    TResult Function()? resetFilters,
    TResult Function()? resetFiltersKanban,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(id, index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitTaskListEvent value) init,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_GetTasks value) getTasks,
    required TResult Function(_GetKanban value) getKanban,
    required TResult Function(AddTaskListEvent value) addTask,
    required TResult Function(DeleteTaskListEvent value) deleteTask,
    required TResult Function(DeleteTaskEvent value) delete,
    required TResult Function(UpdateTaskListEvent value) updateTask,
    required TResult Function(UpdateTaskKanbanListEvent value) updateTaskKanban,
    required TResult Function(HierchyChangeTaskListEvent value) hierchyChange,
    required TResult Function(UpdatePerformersTaskListEvent value)
        updatePerformers,
    required TResult Function(FilterTaskListEvent value) filterTaskList,
    required TResult Function(FilterTaskKanbanEvent value) filterTaskKanban,
    required TResult Function(SearchTaskListEvent value) searchTask,
    required TResult Function(SearchTaskKanbanEvent value) searchTaskKanban,
    required TResult Function(ResetFiltersTaskListEvent value) resetFilters,
    required TResult Function(ResetFiltersTaskKanbanEvent value)
        resetFiltersKanban,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitTaskListEvent value)? init,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_GetTasks value)? getTasks,
    TResult? Function(_GetKanban value)? getKanban,
    TResult? Function(AddTaskListEvent value)? addTask,
    TResult? Function(DeleteTaskListEvent value)? deleteTask,
    TResult? Function(DeleteTaskEvent value)? delete,
    TResult? Function(UpdateTaskListEvent value)? updateTask,
    TResult? Function(UpdateTaskKanbanListEvent value)? updateTaskKanban,
    TResult? Function(HierchyChangeTaskListEvent value)? hierchyChange,
    TResult? Function(UpdatePerformersTaskListEvent value)? updatePerformers,
    TResult? Function(FilterTaskListEvent value)? filterTaskList,
    TResult? Function(FilterTaskKanbanEvent value)? filterTaskKanban,
    TResult? Function(SearchTaskListEvent value)? searchTask,
    TResult? Function(SearchTaskKanbanEvent value)? searchTaskKanban,
    TResult? Function(ResetFiltersTaskListEvent value)? resetFilters,
    TResult? Function(ResetFiltersTaskKanbanEvent value)? resetFiltersKanban,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitTaskListEvent value)? init,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_GetTasks value)? getTasks,
    TResult Function(_GetKanban value)? getKanban,
    TResult Function(AddTaskListEvent value)? addTask,
    TResult Function(DeleteTaskListEvent value)? deleteTask,
    TResult Function(DeleteTaskEvent value)? delete,
    TResult Function(UpdateTaskListEvent value)? updateTask,
    TResult Function(UpdateTaskKanbanListEvent value)? updateTaskKanban,
    TResult Function(HierchyChangeTaskListEvent value)? hierchyChange,
    TResult Function(UpdatePerformersTaskListEvent value)? updatePerformers,
    TResult Function(FilterTaskListEvent value)? filterTaskList,
    TResult Function(FilterTaskKanbanEvent value)? filterTaskKanban,
    TResult Function(SearchTaskListEvent value)? searchTask,
    TResult Function(SearchTaskKanbanEvent value)? searchTaskKanban,
    TResult Function(ResetFiltersTaskListEvent value)? resetFilters,
    TResult Function(ResetFiltersTaskKanbanEvent value)? resetFiltersKanban,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class DeleteTaskEvent extends TaskListEvent {
  const factory DeleteTaskEvent(final int id, final int index) =
      _$DeleteTaskEvent;
  const DeleteTaskEvent._() : super._();

  int get id;
  int get index;
  @JsonKey(ignore: true)
  _$$DeleteTaskEventCopyWith<_$DeleteTaskEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateTaskListEventCopyWith<$Res> {
  factory _$$UpdateTaskListEventCopyWith(_$UpdateTaskListEvent value,
          $Res Function(_$UpdateTaskListEvent) then) =
      __$$UpdateTaskListEventCopyWithImpl<$Res>;
  @useResult
  $Res call({int index, DlsTasks task});

  $DlsTasksCopyWith<$Res> get task;
}

/// @nodoc
class __$$UpdateTaskListEventCopyWithImpl<$Res>
    extends _$TaskListEventCopyWithImpl<$Res, _$UpdateTaskListEvent>
    implements _$$UpdateTaskListEventCopyWith<$Res> {
  __$$UpdateTaskListEventCopyWithImpl(
      _$UpdateTaskListEvent _value, $Res Function(_$UpdateTaskListEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? task = null,
  }) {
    return _then(_$UpdateTaskListEvent(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as DlsTasks,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DlsTasksCopyWith<$Res> get task {
    return $DlsTasksCopyWith<$Res>(_value.task, (value) {
      return _then(_value.copyWith(task: value));
    });
  }
}

/// @nodoc

class _$UpdateTaskListEvent extends UpdateTaskListEvent
    with DiagnosticableTreeMixin {
  const _$UpdateTaskListEvent(this.index, this.task) : super._();

  @override
  final int index;
  @override
  final DlsTasks task;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TaskListEvent.updateTask(index: $index, task: $task)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TaskListEvent.updateTask'))
      ..add(DiagnosticsProperty('index', index))
      ..add(DiagnosticsProperty('task', task));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTaskListEvent &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index, task);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateTaskListEventCopyWith<_$UpdateTaskListEvent> get copyWith =>
      __$$UpdateTaskListEventCopyWithImpl<_$UpdateTaskListEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() refresh,
    required TResult Function() getTasks,
    required TResult Function(int status, bool withLoading) getKanban,
    required TResult Function(DlsTasks task) addTask,
    required TResult Function(DlsTasks task) deleteTask,
    required TResult Function(int id, int index) delete,
    required TResult Function(int index, DlsTasks task) updateTask,
    required TResult Function(
            DlsTasks task,
            int addToTaskIndex,
            int removeTaskIndex,
            TaskStatusType addToStatus,
            TaskStatusType removeFromStatus)
        updateTaskKanban,
    required TResult Function(TasksListHierarchy value) hierchyChange,
    required TResult Function(DlsTasks task, List<DLSUser> users, int index)
        updatePerformers,
    required TResult Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)
        filterTaskList,
    required TResult Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)
        filterTaskKanban,
    required TResult Function(String value) searchTask,
    required TResult Function(String value) searchTaskKanban,
    required TResult Function() resetFilters,
    required TResult Function() resetFiltersKanban,
  }) {
    return updateTask(index, task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? refresh,
    TResult? Function()? getTasks,
    TResult? Function(int status, bool withLoading)? getKanban,
    TResult? Function(DlsTasks task)? addTask,
    TResult? Function(DlsTasks task)? deleteTask,
    TResult? Function(int id, int index)? delete,
    TResult? Function(int index, DlsTasks task)? updateTask,
    TResult? Function(DlsTasks task, int addToTaskIndex, int removeTaskIndex,
            TaskStatusType addToStatus, TaskStatusType removeFromStatus)?
        updateTaskKanban,
    TResult? Function(TasksListHierarchy value)? hierchyChange,
    TResult? Function(DlsTasks task, List<DLSUser> users, int index)?
        updatePerformers,
    TResult? Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)?
        filterTaskList,
    TResult? Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)?
        filterTaskKanban,
    TResult? Function(String value)? searchTask,
    TResult? Function(String value)? searchTaskKanban,
    TResult? Function()? resetFilters,
    TResult? Function()? resetFiltersKanban,
  }) {
    return updateTask?.call(index, task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? refresh,
    TResult Function()? getTasks,
    TResult Function(int status, bool withLoading)? getKanban,
    TResult Function(DlsTasks task)? addTask,
    TResult Function(DlsTasks task)? deleteTask,
    TResult Function(int id, int index)? delete,
    TResult Function(int index, DlsTasks task)? updateTask,
    TResult Function(DlsTasks task, int addToTaskIndex, int removeTaskIndex,
            TaskStatusType addToStatus, TaskStatusType removeFromStatus)?
        updateTaskKanban,
    TResult Function(TasksListHierarchy value)? hierchyChange,
    TResult Function(DlsTasks task, List<DLSUser> users, int index)?
        updatePerformers,
    TResult Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)?
        filterTaskList,
    TResult Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)?
        filterTaskKanban,
    TResult Function(String value)? searchTask,
    TResult Function(String value)? searchTaskKanban,
    TResult Function()? resetFilters,
    TResult Function()? resetFiltersKanban,
    required TResult orElse(),
  }) {
    if (updateTask != null) {
      return updateTask(index, task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitTaskListEvent value) init,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_GetTasks value) getTasks,
    required TResult Function(_GetKanban value) getKanban,
    required TResult Function(AddTaskListEvent value) addTask,
    required TResult Function(DeleteTaskListEvent value) deleteTask,
    required TResult Function(DeleteTaskEvent value) delete,
    required TResult Function(UpdateTaskListEvent value) updateTask,
    required TResult Function(UpdateTaskKanbanListEvent value) updateTaskKanban,
    required TResult Function(HierchyChangeTaskListEvent value) hierchyChange,
    required TResult Function(UpdatePerformersTaskListEvent value)
        updatePerformers,
    required TResult Function(FilterTaskListEvent value) filterTaskList,
    required TResult Function(FilterTaskKanbanEvent value) filterTaskKanban,
    required TResult Function(SearchTaskListEvent value) searchTask,
    required TResult Function(SearchTaskKanbanEvent value) searchTaskKanban,
    required TResult Function(ResetFiltersTaskListEvent value) resetFilters,
    required TResult Function(ResetFiltersTaskKanbanEvent value)
        resetFiltersKanban,
  }) {
    return updateTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitTaskListEvent value)? init,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_GetTasks value)? getTasks,
    TResult? Function(_GetKanban value)? getKanban,
    TResult? Function(AddTaskListEvent value)? addTask,
    TResult? Function(DeleteTaskListEvent value)? deleteTask,
    TResult? Function(DeleteTaskEvent value)? delete,
    TResult? Function(UpdateTaskListEvent value)? updateTask,
    TResult? Function(UpdateTaskKanbanListEvent value)? updateTaskKanban,
    TResult? Function(HierchyChangeTaskListEvent value)? hierchyChange,
    TResult? Function(UpdatePerformersTaskListEvent value)? updatePerformers,
    TResult? Function(FilterTaskListEvent value)? filterTaskList,
    TResult? Function(FilterTaskKanbanEvent value)? filterTaskKanban,
    TResult? Function(SearchTaskListEvent value)? searchTask,
    TResult? Function(SearchTaskKanbanEvent value)? searchTaskKanban,
    TResult? Function(ResetFiltersTaskListEvent value)? resetFilters,
    TResult? Function(ResetFiltersTaskKanbanEvent value)? resetFiltersKanban,
  }) {
    return updateTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitTaskListEvent value)? init,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_GetTasks value)? getTasks,
    TResult Function(_GetKanban value)? getKanban,
    TResult Function(AddTaskListEvent value)? addTask,
    TResult Function(DeleteTaskListEvent value)? deleteTask,
    TResult Function(DeleteTaskEvent value)? delete,
    TResult Function(UpdateTaskListEvent value)? updateTask,
    TResult Function(UpdateTaskKanbanListEvent value)? updateTaskKanban,
    TResult Function(HierchyChangeTaskListEvent value)? hierchyChange,
    TResult Function(UpdatePerformersTaskListEvent value)? updatePerformers,
    TResult Function(FilterTaskListEvent value)? filterTaskList,
    TResult Function(FilterTaskKanbanEvent value)? filterTaskKanban,
    TResult Function(SearchTaskListEvent value)? searchTask,
    TResult Function(SearchTaskKanbanEvent value)? searchTaskKanban,
    TResult Function(ResetFiltersTaskListEvent value)? resetFilters,
    TResult Function(ResetFiltersTaskKanbanEvent value)? resetFiltersKanban,
    required TResult orElse(),
  }) {
    if (updateTask != null) {
      return updateTask(this);
    }
    return orElse();
  }
}

abstract class UpdateTaskListEvent extends TaskListEvent {
  const factory UpdateTaskListEvent(final int index, final DlsTasks task) =
      _$UpdateTaskListEvent;
  const UpdateTaskListEvent._() : super._();

  int get index;
  DlsTasks get task;
  @JsonKey(ignore: true)
  _$$UpdateTaskListEventCopyWith<_$UpdateTaskListEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateTaskKanbanListEventCopyWith<$Res> {
  factory _$$UpdateTaskKanbanListEventCopyWith(
          _$UpdateTaskKanbanListEvent value,
          $Res Function(_$UpdateTaskKanbanListEvent) then) =
      __$$UpdateTaskKanbanListEventCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {DlsTasks task,
      int addToTaskIndex,
      int removeTaskIndex,
      TaskStatusType addToStatus,
      TaskStatusType removeFromStatus});

  $DlsTasksCopyWith<$Res> get task;
}

/// @nodoc
class __$$UpdateTaskKanbanListEventCopyWithImpl<$Res>
    extends _$TaskListEventCopyWithImpl<$Res, _$UpdateTaskKanbanListEvent>
    implements _$$UpdateTaskKanbanListEventCopyWith<$Res> {
  __$$UpdateTaskKanbanListEventCopyWithImpl(_$UpdateTaskKanbanListEvent _value,
      $Res Function(_$UpdateTaskKanbanListEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
    Object? addToTaskIndex = null,
    Object? removeTaskIndex = null,
    Object? addToStatus = null,
    Object? removeFromStatus = null,
  }) {
    return _then(_$UpdateTaskKanbanListEvent(
      null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as DlsTasks,
      null == addToTaskIndex
          ? _value.addToTaskIndex
          : addToTaskIndex // ignore: cast_nullable_to_non_nullable
              as int,
      null == removeTaskIndex
          ? _value.removeTaskIndex
          : removeTaskIndex // ignore: cast_nullable_to_non_nullable
              as int,
      null == addToStatus
          ? _value.addToStatus
          : addToStatus // ignore: cast_nullable_to_non_nullable
              as TaskStatusType,
      null == removeFromStatus
          ? _value.removeFromStatus
          : removeFromStatus // ignore: cast_nullable_to_non_nullable
              as TaskStatusType,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DlsTasksCopyWith<$Res> get task {
    return $DlsTasksCopyWith<$Res>(_value.task, (value) {
      return _then(_value.copyWith(task: value));
    });
  }
}

/// @nodoc

class _$UpdateTaskKanbanListEvent extends UpdateTaskKanbanListEvent
    with DiagnosticableTreeMixin {
  const _$UpdateTaskKanbanListEvent(this.task, this.addToTaskIndex,
      this.removeTaskIndex, this.addToStatus, this.removeFromStatus)
      : super._();

  @override
  final DlsTasks task;
  @override
  final int addToTaskIndex;
  @override
  final int removeTaskIndex;
  @override
  final TaskStatusType addToStatus;
  @override
  final TaskStatusType removeFromStatus;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TaskListEvent.updateTaskKanban(task: $task, addToTaskIndex: $addToTaskIndex, removeTaskIndex: $removeTaskIndex, addToStatus: $addToStatus, removeFromStatus: $removeFromStatus)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TaskListEvent.updateTaskKanban'))
      ..add(DiagnosticsProperty('task', task))
      ..add(DiagnosticsProperty('addToTaskIndex', addToTaskIndex))
      ..add(DiagnosticsProperty('removeTaskIndex', removeTaskIndex))
      ..add(DiagnosticsProperty('addToStatus', addToStatus))
      ..add(DiagnosticsProperty('removeFromStatus', removeFromStatus));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTaskKanbanListEvent &&
            (identical(other.task, task) || other.task == task) &&
            (identical(other.addToTaskIndex, addToTaskIndex) ||
                other.addToTaskIndex == addToTaskIndex) &&
            (identical(other.removeTaskIndex, removeTaskIndex) ||
                other.removeTaskIndex == removeTaskIndex) &&
            (identical(other.addToStatus, addToStatus) ||
                other.addToStatus == addToStatus) &&
            (identical(other.removeFromStatus, removeFromStatus) ||
                other.removeFromStatus == removeFromStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task, addToTaskIndex,
      removeTaskIndex, addToStatus, removeFromStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateTaskKanbanListEventCopyWith<_$UpdateTaskKanbanListEvent>
      get copyWith => __$$UpdateTaskKanbanListEventCopyWithImpl<
          _$UpdateTaskKanbanListEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() refresh,
    required TResult Function() getTasks,
    required TResult Function(int status, bool withLoading) getKanban,
    required TResult Function(DlsTasks task) addTask,
    required TResult Function(DlsTasks task) deleteTask,
    required TResult Function(int id, int index) delete,
    required TResult Function(int index, DlsTasks task) updateTask,
    required TResult Function(
            DlsTasks task,
            int addToTaskIndex,
            int removeTaskIndex,
            TaskStatusType addToStatus,
            TaskStatusType removeFromStatus)
        updateTaskKanban,
    required TResult Function(TasksListHierarchy value) hierchyChange,
    required TResult Function(DlsTasks task, List<DLSUser> users, int index)
        updatePerformers,
    required TResult Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)
        filterTaskList,
    required TResult Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)
        filterTaskKanban,
    required TResult Function(String value) searchTask,
    required TResult Function(String value) searchTaskKanban,
    required TResult Function() resetFilters,
    required TResult Function() resetFiltersKanban,
  }) {
    return updateTaskKanban(
        task, addToTaskIndex, removeTaskIndex, addToStatus, removeFromStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? refresh,
    TResult? Function()? getTasks,
    TResult? Function(int status, bool withLoading)? getKanban,
    TResult? Function(DlsTasks task)? addTask,
    TResult? Function(DlsTasks task)? deleteTask,
    TResult? Function(int id, int index)? delete,
    TResult? Function(int index, DlsTasks task)? updateTask,
    TResult? Function(DlsTasks task, int addToTaskIndex, int removeTaskIndex,
            TaskStatusType addToStatus, TaskStatusType removeFromStatus)?
        updateTaskKanban,
    TResult? Function(TasksListHierarchy value)? hierchyChange,
    TResult? Function(DlsTasks task, List<DLSUser> users, int index)?
        updatePerformers,
    TResult? Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)?
        filterTaskList,
    TResult? Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)?
        filterTaskKanban,
    TResult? Function(String value)? searchTask,
    TResult? Function(String value)? searchTaskKanban,
    TResult? Function()? resetFilters,
    TResult? Function()? resetFiltersKanban,
  }) {
    return updateTaskKanban?.call(
        task, addToTaskIndex, removeTaskIndex, addToStatus, removeFromStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? refresh,
    TResult Function()? getTasks,
    TResult Function(int status, bool withLoading)? getKanban,
    TResult Function(DlsTasks task)? addTask,
    TResult Function(DlsTasks task)? deleteTask,
    TResult Function(int id, int index)? delete,
    TResult Function(int index, DlsTasks task)? updateTask,
    TResult Function(DlsTasks task, int addToTaskIndex, int removeTaskIndex,
            TaskStatusType addToStatus, TaskStatusType removeFromStatus)?
        updateTaskKanban,
    TResult Function(TasksListHierarchy value)? hierchyChange,
    TResult Function(DlsTasks task, List<DLSUser> users, int index)?
        updatePerformers,
    TResult Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)?
        filterTaskList,
    TResult Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)?
        filterTaskKanban,
    TResult Function(String value)? searchTask,
    TResult Function(String value)? searchTaskKanban,
    TResult Function()? resetFilters,
    TResult Function()? resetFiltersKanban,
    required TResult orElse(),
  }) {
    if (updateTaskKanban != null) {
      return updateTaskKanban(
          task, addToTaskIndex, removeTaskIndex, addToStatus, removeFromStatus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitTaskListEvent value) init,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_GetTasks value) getTasks,
    required TResult Function(_GetKanban value) getKanban,
    required TResult Function(AddTaskListEvent value) addTask,
    required TResult Function(DeleteTaskListEvent value) deleteTask,
    required TResult Function(DeleteTaskEvent value) delete,
    required TResult Function(UpdateTaskListEvent value) updateTask,
    required TResult Function(UpdateTaskKanbanListEvent value) updateTaskKanban,
    required TResult Function(HierchyChangeTaskListEvent value) hierchyChange,
    required TResult Function(UpdatePerformersTaskListEvent value)
        updatePerformers,
    required TResult Function(FilterTaskListEvent value) filterTaskList,
    required TResult Function(FilterTaskKanbanEvent value) filterTaskKanban,
    required TResult Function(SearchTaskListEvent value) searchTask,
    required TResult Function(SearchTaskKanbanEvent value) searchTaskKanban,
    required TResult Function(ResetFiltersTaskListEvent value) resetFilters,
    required TResult Function(ResetFiltersTaskKanbanEvent value)
        resetFiltersKanban,
  }) {
    return updateTaskKanban(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitTaskListEvent value)? init,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_GetTasks value)? getTasks,
    TResult? Function(_GetKanban value)? getKanban,
    TResult? Function(AddTaskListEvent value)? addTask,
    TResult? Function(DeleteTaskListEvent value)? deleteTask,
    TResult? Function(DeleteTaskEvent value)? delete,
    TResult? Function(UpdateTaskListEvent value)? updateTask,
    TResult? Function(UpdateTaskKanbanListEvent value)? updateTaskKanban,
    TResult? Function(HierchyChangeTaskListEvent value)? hierchyChange,
    TResult? Function(UpdatePerformersTaskListEvent value)? updatePerformers,
    TResult? Function(FilterTaskListEvent value)? filterTaskList,
    TResult? Function(FilterTaskKanbanEvent value)? filterTaskKanban,
    TResult? Function(SearchTaskListEvent value)? searchTask,
    TResult? Function(SearchTaskKanbanEvent value)? searchTaskKanban,
    TResult? Function(ResetFiltersTaskListEvent value)? resetFilters,
    TResult? Function(ResetFiltersTaskKanbanEvent value)? resetFiltersKanban,
  }) {
    return updateTaskKanban?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitTaskListEvent value)? init,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_GetTasks value)? getTasks,
    TResult Function(_GetKanban value)? getKanban,
    TResult Function(AddTaskListEvent value)? addTask,
    TResult Function(DeleteTaskListEvent value)? deleteTask,
    TResult Function(DeleteTaskEvent value)? delete,
    TResult Function(UpdateTaskListEvent value)? updateTask,
    TResult Function(UpdateTaskKanbanListEvent value)? updateTaskKanban,
    TResult Function(HierchyChangeTaskListEvent value)? hierchyChange,
    TResult Function(UpdatePerformersTaskListEvent value)? updatePerformers,
    TResult Function(FilterTaskListEvent value)? filterTaskList,
    TResult Function(FilterTaskKanbanEvent value)? filterTaskKanban,
    TResult Function(SearchTaskListEvent value)? searchTask,
    TResult Function(SearchTaskKanbanEvent value)? searchTaskKanban,
    TResult Function(ResetFiltersTaskListEvent value)? resetFilters,
    TResult Function(ResetFiltersTaskKanbanEvent value)? resetFiltersKanban,
    required TResult orElse(),
  }) {
    if (updateTaskKanban != null) {
      return updateTaskKanban(this);
    }
    return orElse();
  }
}

abstract class UpdateTaskKanbanListEvent extends TaskListEvent {
  const factory UpdateTaskKanbanListEvent(
      final DlsTasks task,
      final int addToTaskIndex,
      final int removeTaskIndex,
      final TaskStatusType addToStatus,
      final TaskStatusType removeFromStatus) = _$UpdateTaskKanbanListEvent;
  const UpdateTaskKanbanListEvent._() : super._();

  DlsTasks get task;
  int get addToTaskIndex;
  int get removeTaskIndex;
  TaskStatusType get addToStatus;
  TaskStatusType get removeFromStatus;
  @JsonKey(ignore: true)
  _$$UpdateTaskKanbanListEventCopyWith<_$UpdateTaskKanbanListEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HierchyChangeTaskListEventCopyWith<$Res> {
  factory _$$HierchyChangeTaskListEventCopyWith(
          _$HierchyChangeTaskListEvent value,
          $Res Function(_$HierchyChangeTaskListEvent) then) =
      __$$HierchyChangeTaskListEventCopyWithImpl<$Res>;
  @useResult
  $Res call({TasksListHierarchy value});
}

/// @nodoc
class __$$HierchyChangeTaskListEventCopyWithImpl<$Res>
    extends _$TaskListEventCopyWithImpl<$Res, _$HierchyChangeTaskListEvent>
    implements _$$HierchyChangeTaskListEventCopyWith<$Res> {
  __$$HierchyChangeTaskListEventCopyWithImpl(
      _$HierchyChangeTaskListEvent _value,
      $Res Function(_$HierchyChangeTaskListEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$HierchyChangeTaskListEvent(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as TasksListHierarchy,
    ));
  }
}

/// @nodoc

class _$HierchyChangeTaskListEvent extends HierchyChangeTaskListEvent
    with DiagnosticableTreeMixin {
  const _$HierchyChangeTaskListEvent(this.value) : super._();

  @override
  final TasksListHierarchy value;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TaskListEvent.hierchyChange(value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TaskListEvent.hierchyChange'))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HierchyChangeTaskListEvent &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HierchyChangeTaskListEventCopyWith<_$HierchyChangeTaskListEvent>
      get copyWith => __$$HierchyChangeTaskListEventCopyWithImpl<
          _$HierchyChangeTaskListEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() refresh,
    required TResult Function() getTasks,
    required TResult Function(int status, bool withLoading) getKanban,
    required TResult Function(DlsTasks task) addTask,
    required TResult Function(DlsTasks task) deleteTask,
    required TResult Function(int id, int index) delete,
    required TResult Function(int index, DlsTasks task) updateTask,
    required TResult Function(
            DlsTasks task,
            int addToTaskIndex,
            int removeTaskIndex,
            TaskStatusType addToStatus,
            TaskStatusType removeFromStatus)
        updateTaskKanban,
    required TResult Function(TasksListHierarchy value) hierchyChange,
    required TResult Function(DlsTasks task, List<DLSUser> users, int index)
        updatePerformers,
    required TResult Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)
        filterTaskList,
    required TResult Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)
        filterTaskKanban,
    required TResult Function(String value) searchTask,
    required TResult Function(String value) searchTaskKanban,
    required TResult Function() resetFilters,
    required TResult Function() resetFiltersKanban,
  }) {
    return hierchyChange(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? refresh,
    TResult? Function()? getTasks,
    TResult? Function(int status, bool withLoading)? getKanban,
    TResult? Function(DlsTasks task)? addTask,
    TResult? Function(DlsTasks task)? deleteTask,
    TResult? Function(int id, int index)? delete,
    TResult? Function(int index, DlsTasks task)? updateTask,
    TResult? Function(DlsTasks task, int addToTaskIndex, int removeTaskIndex,
            TaskStatusType addToStatus, TaskStatusType removeFromStatus)?
        updateTaskKanban,
    TResult? Function(TasksListHierarchy value)? hierchyChange,
    TResult? Function(DlsTasks task, List<DLSUser> users, int index)?
        updatePerformers,
    TResult? Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)?
        filterTaskList,
    TResult? Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)?
        filterTaskKanban,
    TResult? Function(String value)? searchTask,
    TResult? Function(String value)? searchTaskKanban,
    TResult? Function()? resetFilters,
    TResult? Function()? resetFiltersKanban,
  }) {
    return hierchyChange?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? refresh,
    TResult Function()? getTasks,
    TResult Function(int status, bool withLoading)? getKanban,
    TResult Function(DlsTasks task)? addTask,
    TResult Function(DlsTasks task)? deleteTask,
    TResult Function(int id, int index)? delete,
    TResult Function(int index, DlsTasks task)? updateTask,
    TResult Function(DlsTasks task, int addToTaskIndex, int removeTaskIndex,
            TaskStatusType addToStatus, TaskStatusType removeFromStatus)?
        updateTaskKanban,
    TResult Function(TasksListHierarchy value)? hierchyChange,
    TResult Function(DlsTasks task, List<DLSUser> users, int index)?
        updatePerformers,
    TResult Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)?
        filterTaskList,
    TResult Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)?
        filterTaskKanban,
    TResult Function(String value)? searchTask,
    TResult Function(String value)? searchTaskKanban,
    TResult Function()? resetFilters,
    TResult Function()? resetFiltersKanban,
    required TResult orElse(),
  }) {
    if (hierchyChange != null) {
      return hierchyChange(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitTaskListEvent value) init,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_GetTasks value) getTasks,
    required TResult Function(_GetKanban value) getKanban,
    required TResult Function(AddTaskListEvent value) addTask,
    required TResult Function(DeleteTaskListEvent value) deleteTask,
    required TResult Function(DeleteTaskEvent value) delete,
    required TResult Function(UpdateTaskListEvent value) updateTask,
    required TResult Function(UpdateTaskKanbanListEvent value) updateTaskKanban,
    required TResult Function(HierchyChangeTaskListEvent value) hierchyChange,
    required TResult Function(UpdatePerformersTaskListEvent value)
        updatePerformers,
    required TResult Function(FilterTaskListEvent value) filterTaskList,
    required TResult Function(FilterTaskKanbanEvent value) filterTaskKanban,
    required TResult Function(SearchTaskListEvent value) searchTask,
    required TResult Function(SearchTaskKanbanEvent value) searchTaskKanban,
    required TResult Function(ResetFiltersTaskListEvent value) resetFilters,
    required TResult Function(ResetFiltersTaskKanbanEvent value)
        resetFiltersKanban,
  }) {
    return hierchyChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitTaskListEvent value)? init,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_GetTasks value)? getTasks,
    TResult? Function(_GetKanban value)? getKanban,
    TResult? Function(AddTaskListEvent value)? addTask,
    TResult? Function(DeleteTaskListEvent value)? deleteTask,
    TResult? Function(DeleteTaskEvent value)? delete,
    TResult? Function(UpdateTaskListEvent value)? updateTask,
    TResult? Function(UpdateTaskKanbanListEvent value)? updateTaskKanban,
    TResult? Function(HierchyChangeTaskListEvent value)? hierchyChange,
    TResult? Function(UpdatePerformersTaskListEvent value)? updatePerformers,
    TResult? Function(FilterTaskListEvent value)? filterTaskList,
    TResult? Function(FilterTaskKanbanEvent value)? filterTaskKanban,
    TResult? Function(SearchTaskListEvent value)? searchTask,
    TResult? Function(SearchTaskKanbanEvent value)? searchTaskKanban,
    TResult? Function(ResetFiltersTaskListEvent value)? resetFilters,
    TResult? Function(ResetFiltersTaskKanbanEvent value)? resetFiltersKanban,
  }) {
    return hierchyChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitTaskListEvent value)? init,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_GetTasks value)? getTasks,
    TResult Function(_GetKanban value)? getKanban,
    TResult Function(AddTaskListEvent value)? addTask,
    TResult Function(DeleteTaskListEvent value)? deleteTask,
    TResult Function(DeleteTaskEvent value)? delete,
    TResult Function(UpdateTaskListEvent value)? updateTask,
    TResult Function(UpdateTaskKanbanListEvent value)? updateTaskKanban,
    TResult Function(HierchyChangeTaskListEvent value)? hierchyChange,
    TResult Function(UpdatePerformersTaskListEvent value)? updatePerformers,
    TResult Function(FilterTaskListEvent value)? filterTaskList,
    TResult Function(FilterTaskKanbanEvent value)? filterTaskKanban,
    TResult Function(SearchTaskListEvent value)? searchTask,
    TResult Function(SearchTaskKanbanEvent value)? searchTaskKanban,
    TResult Function(ResetFiltersTaskListEvent value)? resetFilters,
    TResult Function(ResetFiltersTaskKanbanEvent value)? resetFiltersKanban,
    required TResult orElse(),
  }) {
    if (hierchyChange != null) {
      return hierchyChange(this);
    }
    return orElse();
  }
}

abstract class HierchyChangeTaskListEvent extends TaskListEvent {
  const factory HierchyChangeTaskListEvent(final TasksListHierarchy value) =
      _$HierchyChangeTaskListEvent;
  const HierchyChangeTaskListEvent._() : super._();

  TasksListHierarchy get value;
  @JsonKey(ignore: true)
  _$$HierchyChangeTaskListEventCopyWith<_$HierchyChangeTaskListEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdatePerformersTaskListEventCopyWith<$Res> {
  factory _$$UpdatePerformersTaskListEventCopyWith(
          _$UpdatePerformersTaskListEvent value,
          $Res Function(_$UpdatePerformersTaskListEvent) then) =
      __$$UpdatePerformersTaskListEventCopyWithImpl<$Res>;
  @useResult
  $Res call({DlsTasks task, List<DLSUser> users, int index});

  $DlsTasksCopyWith<$Res> get task;
}

/// @nodoc
class __$$UpdatePerformersTaskListEventCopyWithImpl<$Res>
    extends _$TaskListEventCopyWithImpl<$Res, _$UpdatePerformersTaskListEvent>
    implements _$$UpdatePerformersTaskListEventCopyWith<$Res> {
  __$$UpdatePerformersTaskListEventCopyWithImpl(
      _$UpdatePerformersTaskListEvent _value,
      $Res Function(_$UpdatePerformersTaskListEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
    Object? users = null,
    Object? index = null,
  }) {
    return _then(_$UpdatePerformersTaskListEvent(
      null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as DlsTasks,
      null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<DLSUser>,
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DlsTasksCopyWith<$Res> get task {
    return $DlsTasksCopyWith<$Res>(_value.task, (value) {
      return _then(_value.copyWith(task: value));
    });
  }
}

/// @nodoc

class _$UpdatePerformersTaskListEvent extends UpdatePerformersTaskListEvent
    with DiagnosticableTreeMixin {
  const _$UpdatePerformersTaskListEvent(
      this.task, final List<DLSUser> users, this.index)
      : _users = users,
        super._();

  @override
  final DlsTasks task;
  final List<DLSUser> _users;
  @override
  List<DLSUser> get users {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  final int index;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TaskListEvent.updatePerformers(task: $task, users: $users, index: $index)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TaskListEvent.updatePerformers'))
      ..add(DiagnosticsProperty('task', task))
      ..add(DiagnosticsProperty('users', users))
      ..add(DiagnosticsProperty('index', index));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePerformersTaskListEvent &&
            (identical(other.task, task) || other.task == task) &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, task, const DeepCollectionEquality().hash(_users), index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePerformersTaskListEventCopyWith<_$UpdatePerformersTaskListEvent>
      get copyWith => __$$UpdatePerformersTaskListEventCopyWithImpl<
          _$UpdatePerformersTaskListEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() refresh,
    required TResult Function() getTasks,
    required TResult Function(int status, bool withLoading) getKanban,
    required TResult Function(DlsTasks task) addTask,
    required TResult Function(DlsTasks task) deleteTask,
    required TResult Function(int id, int index) delete,
    required TResult Function(int index, DlsTasks task) updateTask,
    required TResult Function(
            DlsTasks task,
            int addToTaskIndex,
            int removeTaskIndex,
            TaskStatusType addToStatus,
            TaskStatusType removeFromStatus)
        updateTaskKanban,
    required TResult Function(TasksListHierarchy value) hierchyChange,
    required TResult Function(DlsTasks task, List<DLSUser> users, int index)
        updatePerformers,
    required TResult Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)
        filterTaskList,
    required TResult Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)
        filterTaskKanban,
    required TResult Function(String value) searchTask,
    required TResult Function(String value) searchTaskKanban,
    required TResult Function() resetFilters,
    required TResult Function() resetFiltersKanban,
  }) {
    return updatePerformers(task, users, index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? refresh,
    TResult? Function()? getTasks,
    TResult? Function(int status, bool withLoading)? getKanban,
    TResult? Function(DlsTasks task)? addTask,
    TResult? Function(DlsTasks task)? deleteTask,
    TResult? Function(int id, int index)? delete,
    TResult? Function(int index, DlsTasks task)? updateTask,
    TResult? Function(DlsTasks task, int addToTaskIndex, int removeTaskIndex,
            TaskStatusType addToStatus, TaskStatusType removeFromStatus)?
        updateTaskKanban,
    TResult? Function(TasksListHierarchy value)? hierchyChange,
    TResult? Function(DlsTasks task, List<DLSUser> users, int index)?
        updatePerformers,
    TResult? Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)?
        filterTaskList,
    TResult? Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)?
        filterTaskKanban,
    TResult? Function(String value)? searchTask,
    TResult? Function(String value)? searchTaskKanban,
    TResult? Function()? resetFilters,
    TResult? Function()? resetFiltersKanban,
  }) {
    return updatePerformers?.call(task, users, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? refresh,
    TResult Function()? getTasks,
    TResult Function(int status, bool withLoading)? getKanban,
    TResult Function(DlsTasks task)? addTask,
    TResult Function(DlsTasks task)? deleteTask,
    TResult Function(int id, int index)? delete,
    TResult Function(int index, DlsTasks task)? updateTask,
    TResult Function(DlsTasks task, int addToTaskIndex, int removeTaskIndex,
            TaskStatusType addToStatus, TaskStatusType removeFromStatus)?
        updateTaskKanban,
    TResult Function(TasksListHierarchy value)? hierchyChange,
    TResult Function(DlsTasks task, List<DLSUser> users, int index)?
        updatePerformers,
    TResult Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)?
        filterTaskList,
    TResult Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)?
        filterTaskKanban,
    TResult Function(String value)? searchTask,
    TResult Function(String value)? searchTaskKanban,
    TResult Function()? resetFilters,
    TResult Function()? resetFiltersKanban,
    required TResult orElse(),
  }) {
    if (updatePerformers != null) {
      return updatePerformers(task, users, index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitTaskListEvent value) init,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_GetTasks value) getTasks,
    required TResult Function(_GetKanban value) getKanban,
    required TResult Function(AddTaskListEvent value) addTask,
    required TResult Function(DeleteTaskListEvent value) deleteTask,
    required TResult Function(DeleteTaskEvent value) delete,
    required TResult Function(UpdateTaskListEvent value) updateTask,
    required TResult Function(UpdateTaskKanbanListEvent value) updateTaskKanban,
    required TResult Function(HierchyChangeTaskListEvent value) hierchyChange,
    required TResult Function(UpdatePerformersTaskListEvent value)
        updatePerformers,
    required TResult Function(FilterTaskListEvent value) filterTaskList,
    required TResult Function(FilterTaskKanbanEvent value) filterTaskKanban,
    required TResult Function(SearchTaskListEvent value) searchTask,
    required TResult Function(SearchTaskKanbanEvent value) searchTaskKanban,
    required TResult Function(ResetFiltersTaskListEvent value) resetFilters,
    required TResult Function(ResetFiltersTaskKanbanEvent value)
        resetFiltersKanban,
  }) {
    return updatePerformers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitTaskListEvent value)? init,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_GetTasks value)? getTasks,
    TResult? Function(_GetKanban value)? getKanban,
    TResult? Function(AddTaskListEvent value)? addTask,
    TResult? Function(DeleteTaskListEvent value)? deleteTask,
    TResult? Function(DeleteTaskEvent value)? delete,
    TResult? Function(UpdateTaskListEvent value)? updateTask,
    TResult? Function(UpdateTaskKanbanListEvent value)? updateTaskKanban,
    TResult? Function(HierchyChangeTaskListEvent value)? hierchyChange,
    TResult? Function(UpdatePerformersTaskListEvent value)? updatePerformers,
    TResult? Function(FilterTaskListEvent value)? filterTaskList,
    TResult? Function(FilterTaskKanbanEvent value)? filterTaskKanban,
    TResult? Function(SearchTaskListEvent value)? searchTask,
    TResult? Function(SearchTaskKanbanEvent value)? searchTaskKanban,
    TResult? Function(ResetFiltersTaskListEvent value)? resetFilters,
    TResult? Function(ResetFiltersTaskKanbanEvent value)? resetFiltersKanban,
  }) {
    return updatePerformers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitTaskListEvent value)? init,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_GetTasks value)? getTasks,
    TResult Function(_GetKanban value)? getKanban,
    TResult Function(AddTaskListEvent value)? addTask,
    TResult Function(DeleteTaskListEvent value)? deleteTask,
    TResult Function(DeleteTaskEvent value)? delete,
    TResult Function(UpdateTaskListEvent value)? updateTask,
    TResult Function(UpdateTaskKanbanListEvent value)? updateTaskKanban,
    TResult Function(HierchyChangeTaskListEvent value)? hierchyChange,
    TResult Function(UpdatePerformersTaskListEvent value)? updatePerformers,
    TResult Function(FilterTaskListEvent value)? filterTaskList,
    TResult Function(FilterTaskKanbanEvent value)? filterTaskKanban,
    TResult Function(SearchTaskListEvent value)? searchTask,
    TResult Function(SearchTaskKanbanEvent value)? searchTaskKanban,
    TResult Function(ResetFiltersTaskListEvent value)? resetFilters,
    TResult Function(ResetFiltersTaskKanbanEvent value)? resetFiltersKanban,
    required TResult orElse(),
  }) {
    if (updatePerformers != null) {
      return updatePerformers(this);
    }
    return orElse();
  }
}

abstract class UpdatePerformersTaskListEvent extends TaskListEvent {
  const factory UpdatePerformersTaskListEvent(
          final DlsTasks task, final List<DLSUser> users, final int index) =
      _$UpdatePerformersTaskListEvent;
  const UpdatePerformersTaskListEvent._() : super._();

  DlsTasks get task;
  List<DLSUser> get users;
  int get index;
  @JsonKey(ignore: true)
  _$$UpdatePerformersTaskListEventCopyWith<_$UpdatePerformersTaskListEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FilterTaskListEventCopyWith<$Res> {
  factory _$$FilterTaskListEventCopyWith(_$FilterTaskListEvent value,
          $Res Function(_$FilterTaskListEvent) then) =
      __$$FilterTaskListEventCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {FilterTypes? type, Object? value, Map<FilterTypes, Object>? listFilter});
}

/// @nodoc
class __$$FilterTaskListEventCopyWithImpl<$Res>
    extends _$TaskListEventCopyWithImpl<$Res, _$FilterTaskListEvent>
    implements _$$FilterTaskListEventCopyWith<$Res> {
  __$$FilterTaskListEventCopyWithImpl(
      _$FilterTaskListEvent _value, $Res Function(_$FilterTaskListEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? value = freezed,
    Object? listFilter = freezed,
  }) {
    return _then(_$FilterTaskListEvent(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as FilterTypes?,
      value: freezed == value ? _value.value : value,
      listFilter: freezed == listFilter
          ? _value._listFilter
          : listFilter // ignore: cast_nullable_to_non_nullable
              as Map<FilterTypes, Object>?,
    ));
  }
}

/// @nodoc

class _$FilterTaskListEvent extends FilterTaskListEvent
    with DiagnosticableTreeMixin {
  const _$FilterTaskListEvent(
      {this.type, this.value, final Map<FilterTypes, Object>? listFilter})
      : _listFilter = listFilter,
        super._();

  @override
  final FilterTypes? type;
  @override
  final Object? value;
  final Map<FilterTypes, Object>? _listFilter;
  @override
  Map<FilterTypes, Object>? get listFilter {
    final value = _listFilter;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TaskListEvent.filterTaskList(type: $type, value: $value, listFilter: $listFilter)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TaskListEvent.filterTaskList'))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('value', value))
      ..add(DiagnosticsProperty('listFilter', listFilter));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterTaskListEvent &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality()
                .equals(other._listFilter, _listFilter));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      type,
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(_listFilter));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterTaskListEventCopyWith<_$FilterTaskListEvent> get copyWith =>
      __$$FilterTaskListEventCopyWithImpl<_$FilterTaskListEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() refresh,
    required TResult Function() getTasks,
    required TResult Function(int status, bool withLoading) getKanban,
    required TResult Function(DlsTasks task) addTask,
    required TResult Function(DlsTasks task) deleteTask,
    required TResult Function(int id, int index) delete,
    required TResult Function(int index, DlsTasks task) updateTask,
    required TResult Function(
            DlsTasks task,
            int addToTaskIndex,
            int removeTaskIndex,
            TaskStatusType addToStatus,
            TaskStatusType removeFromStatus)
        updateTaskKanban,
    required TResult Function(TasksListHierarchy value) hierchyChange,
    required TResult Function(DlsTasks task, List<DLSUser> users, int index)
        updatePerformers,
    required TResult Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)
        filterTaskList,
    required TResult Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)
        filterTaskKanban,
    required TResult Function(String value) searchTask,
    required TResult Function(String value) searchTaskKanban,
    required TResult Function() resetFilters,
    required TResult Function() resetFiltersKanban,
  }) {
    return filterTaskList(type, value, listFilter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? refresh,
    TResult? Function()? getTasks,
    TResult? Function(int status, bool withLoading)? getKanban,
    TResult? Function(DlsTasks task)? addTask,
    TResult? Function(DlsTasks task)? deleteTask,
    TResult? Function(int id, int index)? delete,
    TResult? Function(int index, DlsTasks task)? updateTask,
    TResult? Function(DlsTasks task, int addToTaskIndex, int removeTaskIndex,
            TaskStatusType addToStatus, TaskStatusType removeFromStatus)?
        updateTaskKanban,
    TResult? Function(TasksListHierarchy value)? hierchyChange,
    TResult? Function(DlsTasks task, List<DLSUser> users, int index)?
        updatePerformers,
    TResult? Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)?
        filterTaskList,
    TResult? Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)?
        filterTaskKanban,
    TResult? Function(String value)? searchTask,
    TResult? Function(String value)? searchTaskKanban,
    TResult? Function()? resetFilters,
    TResult? Function()? resetFiltersKanban,
  }) {
    return filterTaskList?.call(type, value, listFilter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? refresh,
    TResult Function()? getTasks,
    TResult Function(int status, bool withLoading)? getKanban,
    TResult Function(DlsTasks task)? addTask,
    TResult Function(DlsTasks task)? deleteTask,
    TResult Function(int id, int index)? delete,
    TResult Function(int index, DlsTasks task)? updateTask,
    TResult Function(DlsTasks task, int addToTaskIndex, int removeTaskIndex,
            TaskStatusType addToStatus, TaskStatusType removeFromStatus)?
        updateTaskKanban,
    TResult Function(TasksListHierarchy value)? hierchyChange,
    TResult Function(DlsTasks task, List<DLSUser> users, int index)?
        updatePerformers,
    TResult Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)?
        filterTaskList,
    TResult Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)?
        filterTaskKanban,
    TResult Function(String value)? searchTask,
    TResult Function(String value)? searchTaskKanban,
    TResult Function()? resetFilters,
    TResult Function()? resetFiltersKanban,
    required TResult orElse(),
  }) {
    if (filterTaskList != null) {
      return filterTaskList(type, value, listFilter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitTaskListEvent value) init,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_GetTasks value) getTasks,
    required TResult Function(_GetKanban value) getKanban,
    required TResult Function(AddTaskListEvent value) addTask,
    required TResult Function(DeleteTaskListEvent value) deleteTask,
    required TResult Function(DeleteTaskEvent value) delete,
    required TResult Function(UpdateTaskListEvent value) updateTask,
    required TResult Function(UpdateTaskKanbanListEvent value) updateTaskKanban,
    required TResult Function(HierchyChangeTaskListEvent value) hierchyChange,
    required TResult Function(UpdatePerformersTaskListEvent value)
        updatePerformers,
    required TResult Function(FilterTaskListEvent value) filterTaskList,
    required TResult Function(FilterTaskKanbanEvent value) filterTaskKanban,
    required TResult Function(SearchTaskListEvent value) searchTask,
    required TResult Function(SearchTaskKanbanEvent value) searchTaskKanban,
    required TResult Function(ResetFiltersTaskListEvent value) resetFilters,
    required TResult Function(ResetFiltersTaskKanbanEvent value)
        resetFiltersKanban,
  }) {
    return filterTaskList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitTaskListEvent value)? init,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_GetTasks value)? getTasks,
    TResult? Function(_GetKanban value)? getKanban,
    TResult? Function(AddTaskListEvent value)? addTask,
    TResult? Function(DeleteTaskListEvent value)? deleteTask,
    TResult? Function(DeleteTaskEvent value)? delete,
    TResult? Function(UpdateTaskListEvent value)? updateTask,
    TResult? Function(UpdateTaskKanbanListEvent value)? updateTaskKanban,
    TResult? Function(HierchyChangeTaskListEvent value)? hierchyChange,
    TResult? Function(UpdatePerformersTaskListEvent value)? updatePerformers,
    TResult? Function(FilterTaskListEvent value)? filterTaskList,
    TResult? Function(FilterTaskKanbanEvent value)? filterTaskKanban,
    TResult? Function(SearchTaskListEvent value)? searchTask,
    TResult? Function(SearchTaskKanbanEvent value)? searchTaskKanban,
    TResult? Function(ResetFiltersTaskListEvent value)? resetFilters,
    TResult? Function(ResetFiltersTaskKanbanEvent value)? resetFiltersKanban,
  }) {
    return filterTaskList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitTaskListEvent value)? init,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_GetTasks value)? getTasks,
    TResult Function(_GetKanban value)? getKanban,
    TResult Function(AddTaskListEvent value)? addTask,
    TResult Function(DeleteTaskListEvent value)? deleteTask,
    TResult Function(DeleteTaskEvent value)? delete,
    TResult Function(UpdateTaskListEvent value)? updateTask,
    TResult Function(UpdateTaskKanbanListEvent value)? updateTaskKanban,
    TResult Function(HierchyChangeTaskListEvent value)? hierchyChange,
    TResult Function(UpdatePerformersTaskListEvent value)? updatePerformers,
    TResult Function(FilterTaskListEvent value)? filterTaskList,
    TResult Function(FilterTaskKanbanEvent value)? filterTaskKanban,
    TResult Function(SearchTaskListEvent value)? searchTask,
    TResult Function(SearchTaskKanbanEvent value)? searchTaskKanban,
    TResult Function(ResetFiltersTaskListEvent value)? resetFilters,
    TResult Function(ResetFiltersTaskKanbanEvent value)? resetFiltersKanban,
    required TResult orElse(),
  }) {
    if (filterTaskList != null) {
      return filterTaskList(this);
    }
    return orElse();
  }
}

abstract class FilterTaskListEvent extends TaskListEvent {
  const factory FilterTaskListEvent(
      {final FilterTypes? type,
      final Object? value,
      final Map<FilterTypes, Object>? listFilter}) = _$FilterTaskListEvent;
  const FilterTaskListEvent._() : super._();

  FilterTypes? get type;
  Object? get value;
  Map<FilterTypes, Object>? get listFilter;
  @JsonKey(ignore: true)
  _$$FilterTaskListEventCopyWith<_$FilterTaskListEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FilterTaskKanbanEventCopyWith<$Res> {
  factory _$$FilterTaskKanbanEventCopyWith(_$FilterTaskKanbanEvent value,
          $Res Function(_$FilterTaskKanbanEvent) then) =
      __$$FilterTaskKanbanEventCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {FilterTypes? type, Object? value, Map<FilterTypes, Object>? listFilter});
}

/// @nodoc
class __$$FilterTaskKanbanEventCopyWithImpl<$Res>
    extends _$TaskListEventCopyWithImpl<$Res, _$FilterTaskKanbanEvent>
    implements _$$FilterTaskKanbanEventCopyWith<$Res> {
  __$$FilterTaskKanbanEventCopyWithImpl(_$FilterTaskKanbanEvent _value,
      $Res Function(_$FilterTaskKanbanEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? value = freezed,
    Object? listFilter = freezed,
  }) {
    return _then(_$FilterTaskKanbanEvent(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as FilterTypes?,
      value: freezed == value ? _value.value : value,
      listFilter: freezed == listFilter
          ? _value._listFilter
          : listFilter // ignore: cast_nullable_to_non_nullable
              as Map<FilterTypes, Object>?,
    ));
  }
}

/// @nodoc

class _$FilterTaskKanbanEvent extends FilterTaskKanbanEvent
    with DiagnosticableTreeMixin {
  const _$FilterTaskKanbanEvent(
      {this.type, this.value, final Map<FilterTypes, Object>? listFilter})
      : _listFilter = listFilter,
        super._();

  @override
  final FilterTypes? type;
  @override
  final Object? value;
  final Map<FilterTypes, Object>? _listFilter;
  @override
  Map<FilterTypes, Object>? get listFilter {
    final value = _listFilter;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TaskListEvent.filterTaskKanban(type: $type, value: $value, listFilter: $listFilter)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TaskListEvent.filterTaskKanban'))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('value', value))
      ..add(DiagnosticsProperty('listFilter', listFilter));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterTaskKanbanEvent &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality()
                .equals(other._listFilter, _listFilter));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      type,
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(_listFilter));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterTaskKanbanEventCopyWith<_$FilterTaskKanbanEvent> get copyWith =>
      __$$FilterTaskKanbanEventCopyWithImpl<_$FilterTaskKanbanEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() refresh,
    required TResult Function() getTasks,
    required TResult Function(int status, bool withLoading) getKanban,
    required TResult Function(DlsTasks task) addTask,
    required TResult Function(DlsTasks task) deleteTask,
    required TResult Function(int id, int index) delete,
    required TResult Function(int index, DlsTasks task) updateTask,
    required TResult Function(
            DlsTasks task,
            int addToTaskIndex,
            int removeTaskIndex,
            TaskStatusType addToStatus,
            TaskStatusType removeFromStatus)
        updateTaskKanban,
    required TResult Function(TasksListHierarchy value) hierchyChange,
    required TResult Function(DlsTasks task, List<DLSUser> users, int index)
        updatePerformers,
    required TResult Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)
        filterTaskList,
    required TResult Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)
        filterTaskKanban,
    required TResult Function(String value) searchTask,
    required TResult Function(String value) searchTaskKanban,
    required TResult Function() resetFilters,
    required TResult Function() resetFiltersKanban,
  }) {
    return filterTaskKanban(type, value, listFilter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? refresh,
    TResult? Function()? getTasks,
    TResult? Function(int status, bool withLoading)? getKanban,
    TResult? Function(DlsTasks task)? addTask,
    TResult? Function(DlsTasks task)? deleteTask,
    TResult? Function(int id, int index)? delete,
    TResult? Function(int index, DlsTasks task)? updateTask,
    TResult? Function(DlsTasks task, int addToTaskIndex, int removeTaskIndex,
            TaskStatusType addToStatus, TaskStatusType removeFromStatus)?
        updateTaskKanban,
    TResult? Function(TasksListHierarchy value)? hierchyChange,
    TResult? Function(DlsTasks task, List<DLSUser> users, int index)?
        updatePerformers,
    TResult? Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)?
        filterTaskList,
    TResult? Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)?
        filterTaskKanban,
    TResult? Function(String value)? searchTask,
    TResult? Function(String value)? searchTaskKanban,
    TResult? Function()? resetFilters,
    TResult? Function()? resetFiltersKanban,
  }) {
    return filterTaskKanban?.call(type, value, listFilter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? refresh,
    TResult Function()? getTasks,
    TResult Function(int status, bool withLoading)? getKanban,
    TResult Function(DlsTasks task)? addTask,
    TResult Function(DlsTasks task)? deleteTask,
    TResult Function(int id, int index)? delete,
    TResult Function(int index, DlsTasks task)? updateTask,
    TResult Function(DlsTasks task, int addToTaskIndex, int removeTaskIndex,
            TaskStatusType addToStatus, TaskStatusType removeFromStatus)?
        updateTaskKanban,
    TResult Function(TasksListHierarchy value)? hierchyChange,
    TResult Function(DlsTasks task, List<DLSUser> users, int index)?
        updatePerformers,
    TResult Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)?
        filterTaskList,
    TResult Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)?
        filterTaskKanban,
    TResult Function(String value)? searchTask,
    TResult Function(String value)? searchTaskKanban,
    TResult Function()? resetFilters,
    TResult Function()? resetFiltersKanban,
    required TResult orElse(),
  }) {
    if (filterTaskKanban != null) {
      return filterTaskKanban(type, value, listFilter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitTaskListEvent value) init,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_GetTasks value) getTasks,
    required TResult Function(_GetKanban value) getKanban,
    required TResult Function(AddTaskListEvent value) addTask,
    required TResult Function(DeleteTaskListEvent value) deleteTask,
    required TResult Function(DeleteTaskEvent value) delete,
    required TResult Function(UpdateTaskListEvent value) updateTask,
    required TResult Function(UpdateTaskKanbanListEvent value) updateTaskKanban,
    required TResult Function(HierchyChangeTaskListEvent value) hierchyChange,
    required TResult Function(UpdatePerformersTaskListEvent value)
        updatePerformers,
    required TResult Function(FilterTaskListEvent value) filterTaskList,
    required TResult Function(FilterTaskKanbanEvent value) filterTaskKanban,
    required TResult Function(SearchTaskListEvent value) searchTask,
    required TResult Function(SearchTaskKanbanEvent value) searchTaskKanban,
    required TResult Function(ResetFiltersTaskListEvent value) resetFilters,
    required TResult Function(ResetFiltersTaskKanbanEvent value)
        resetFiltersKanban,
  }) {
    return filterTaskKanban(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitTaskListEvent value)? init,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_GetTasks value)? getTasks,
    TResult? Function(_GetKanban value)? getKanban,
    TResult? Function(AddTaskListEvent value)? addTask,
    TResult? Function(DeleteTaskListEvent value)? deleteTask,
    TResult? Function(DeleteTaskEvent value)? delete,
    TResult? Function(UpdateTaskListEvent value)? updateTask,
    TResult? Function(UpdateTaskKanbanListEvent value)? updateTaskKanban,
    TResult? Function(HierchyChangeTaskListEvent value)? hierchyChange,
    TResult? Function(UpdatePerformersTaskListEvent value)? updatePerformers,
    TResult? Function(FilterTaskListEvent value)? filterTaskList,
    TResult? Function(FilterTaskKanbanEvent value)? filterTaskKanban,
    TResult? Function(SearchTaskListEvent value)? searchTask,
    TResult? Function(SearchTaskKanbanEvent value)? searchTaskKanban,
    TResult? Function(ResetFiltersTaskListEvent value)? resetFilters,
    TResult? Function(ResetFiltersTaskKanbanEvent value)? resetFiltersKanban,
  }) {
    return filterTaskKanban?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitTaskListEvent value)? init,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_GetTasks value)? getTasks,
    TResult Function(_GetKanban value)? getKanban,
    TResult Function(AddTaskListEvent value)? addTask,
    TResult Function(DeleteTaskListEvent value)? deleteTask,
    TResult Function(DeleteTaskEvent value)? delete,
    TResult Function(UpdateTaskListEvent value)? updateTask,
    TResult Function(UpdateTaskKanbanListEvent value)? updateTaskKanban,
    TResult Function(HierchyChangeTaskListEvent value)? hierchyChange,
    TResult Function(UpdatePerformersTaskListEvent value)? updatePerformers,
    TResult Function(FilterTaskListEvent value)? filterTaskList,
    TResult Function(FilterTaskKanbanEvent value)? filterTaskKanban,
    TResult Function(SearchTaskListEvent value)? searchTask,
    TResult Function(SearchTaskKanbanEvent value)? searchTaskKanban,
    TResult Function(ResetFiltersTaskListEvent value)? resetFilters,
    TResult Function(ResetFiltersTaskKanbanEvent value)? resetFiltersKanban,
    required TResult orElse(),
  }) {
    if (filterTaskKanban != null) {
      return filterTaskKanban(this);
    }
    return orElse();
  }
}

abstract class FilterTaskKanbanEvent extends TaskListEvent {
  const factory FilterTaskKanbanEvent(
      {final FilterTypes? type,
      final Object? value,
      final Map<FilterTypes, Object>? listFilter}) = _$FilterTaskKanbanEvent;
  const FilterTaskKanbanEvent._() : super._();

  FilterTypes? get type;
  Object? get value;
  Map<FilterTypes, Object>? get listFilter;
  @JsonKey(ignore: true)
  _$$FilterTaskKanbanEventCopyWith<_$FilterTaskKanbanEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchTaskListEventCopyWith<$Res> {
  factory _$$SearchTaskListEventCopyWith(_$SearchTaskListEvent value,
          $Res Function(_$SearchTaskListEvent) then) =
      __$$SearchTaskListEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$SearchTaskListEventCopyWithImpl<$Res>
    extends _$TaskListEventCopyWithImpl<$Res, _$SearchTaskListEvent>
    implements _$$SearchTaskListEventCopyWith<$Res> {
  __$$SearchTaskListEventCopyWithImpl(
      _$SearchTaskListEvent _value, $Res Function(_$SearchTaskListEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$SearchTaskListEvent(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchTaskListEvent extends SearchTaskListEvent
    with DiagnosticableTreeMixin {
  const _$SearchTaskListEvent(this.value) : super._();

  @override
  final String value;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TaskListEvent.searchTask(value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TaskListEvent.searchTask'))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchTaskListEvent &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchTaskListEventCopyWith<_$SearchTaskListEvent> get copyWith =>
      __$$SearchTaskListEventCopyWithImpl<_$SearchTaskListEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() refresh,
    required TResult Function() getTasks,
    required TResult Function(int status, bool withLoading) getKanban,
    required TResult Function(DlsTasks task) addTask,
    required TResult Function(DlsTasks task) deleteTask,
    required TResult Function(int id, int index) delete,
    required TResult Function(int index, DlsTasks task) updateTask,
    required TResult Function(
            DlsTasks task,
            int addToTaskIndex,
            int removeTaskIndex,
            TaskStatusType addToStatus,
            TaskStatusType removeFromStatus)
        updateTaskKanban,
    required TResult Function(TasksListHierarchy value) hierchyChange,
    required TResult Function(DlsTasks task, List<DLSUser> users, int index)
        updatePerformers,
    required TResult Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)
        filterTaskList,
    required TResult Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)
        filterTaskKanban,
    required TResult Function(String value) searchTask,
    required TResult Function(String value) searchTaskKanban,
    required TResult Function() resetFilters,
    required TResult Function() resetFiltersKanban,
  }) {
    return searchTask(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? refresh,
    TResult? Function()? getTasks,
    TResult? Function(int status, bool withLoading)? getKanban,
    TResult? Function(DlsTasks task)? addTask,
    TResult? Function(DlsTasks task)? deleteTask,
    TResult? Function(int id, int index)? delete,
    TResult? Function(int index, DlsTasks task)? updateTask,
    TResult? Function(DlsTasks task, int addToTaskIndex, int removeTaskIndex,
            TaskStatusType addToStatus, TaskStatusType removeFromStatus)?
        updateTaskKanban,
    TResult? Function(TasksListHierarchy value)? hierchyChange,
    TResult? Function(DlsTasks task, List<DLSUser> users, int index)?
        updatePerformers,
    TResult? Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)?
        filterTaskList,
    TResult? Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)?
        filterTaskKanban,
    TResult? Function(String value)? searchTask,
    TResult? Function(String value)? searchTaskKanban,
    TResult? Function()? resetFilters,
    TResult? Function()? resetFiltersKanban,
  }) {
    return searchTask?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? refresh,
    TResult Function()? getTasks,
    TResult Function(int status, bool withLoading)? getKanban,
    TResult Function(DlsTasks task)? addTask,
    TResult Function(DlsTasks task)? deleteTask,
    TResult Function(int id, int index)? delete,
    TResult Function(int index, DlsTasks task)? updateTask,
    TResult Function(DlsTasks task, int addToTaskIndex, int removeTaskIndex,
            TaskStatusType addToStatus, TaskStatusType removeFromStatus)?
        updateTaskKanban,
    TResult Function(TasksListHierarchy value)? hierchyChange,
    TResult Function(DlsTasks task, List<DLSUser> users, int index)?
        updatePerformers,
    TResult Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)?
        filterTaskList,
    TResult Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)?
        filterTaskKanban,
    TResult Function(String value)? searchTask,
    TResult Function(String value)? searchTaskKanban,
    TResult Function()? resetFilters,
    TResult Function()? resetFiltersKanban,
    required TResult orElse(),
  }) {
    if (searchTask != null) {
      return searchTask(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitTaskListEvent value) init,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_GetTasks value) getTasks,
    required TResult Function(_GetKanban value) getKanban,
    required TResult Function(AddTaskListEvent value) addTask,
    required TResult Function(DeleteTaskListEvent value) deleteTask,
    required TResult Function(DeleteTaskEvent value) delete,
    required TResult Function(UpdateTaskListEvent value) updateTask,
    required TResult Function(UpdateTaskKanbanListEvent value) updateTaskKanban,
    required TResult Function(HierchyChangeTaskListEvent value) hierchyChange,
    required TResult Function(UpdatePerformersTaskListEvent value)
        updatePerformers,
    required TResult Function(FilterTaskListEvent value) filterTaskList,
    required TResult Function(FilterTaskKanbanEvent value) filterTaskKanban,
    required TResult Function(SearchTaskListEvent value) searchTask,
    required TResult Function(SearchTaskKanbanEvent value) searchTaskKanban,
    required TResult Function(ResetFiltersTaskListEvent value) resetFilters,
    required TResult Function(ResetFiltersTaskKanbanEvent value)
        resetFiltersKanban,
  }) {
    return searchTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitTaskListEvent value)? init,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_GetTasks value)? getTasks,
    TResult? Function(_GetKanban value)? getKanban,
    TResult? Function(AddTaskListEvent value)? addTask,
    TResult? Function(DeleteTaskListEvent value)? deleteTask,
    TResult? Function(DeleteTaskEvent value)? delete,
    TResult? Function(UpdateTaskListEvent value)? updateTask,
    TResult? Function(UpdateTaskKanbanListEvent value)? updateTaskKanban,
    TResult? Function(HierchyChangeTaskListEvent value)? hierchyChange,
    TResult? Function(UpdatePerformersTaskListEvent value)? updatePerformers,
    TResult? Function(FilterTaskListEvent value)? filterTaskList,
    TResult? Function(FilterTaskKanbanEvent value)? filterTaskKanban,
    TResult? Function(SearchTaskListEvent value)? searchTask,
    TResult? Function(SearchTaskKanbanEvent value)? searchTaskKanban,
    TResult? Function(ResetFiltersTaskListEvent value)? resetFilters,
    TResult? Function(ResetFiltersTaskKanbanEvent value)? resetFiltersKanban,
  }) {
    return searchTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitTaskListEvent value)? init,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_GetTasks value)? getTasks,
    TResult Function(_GetKanban value)? getKanban,
    TResult Function(AddTaskListEvent value)? addTask,
    TResult Function(DeleteTaskListEvent value)? deleteTask,
    TResult Function(DeleteTaskEvent value)? delete,
    TResult Function(UpdateTaskListEvent value)? updateTask,
    TResult Function(UpdateTaskKanbanListEvent value)? updateTaskKanban,
    TResult Function(HierchyChangeTaskListEvent value)? hierchyChange,
    TResult Function(UpdatePerformersTaskListEvent value)? updatePerformers,
    TResult Function(FilterTaskListEvent value)? filterTaskList,
    TResult Function(FilterTaskKanbanEvent value)? filterTaskKanban,
    TResult Function(SearchTaskListEvent value)? searchTask,
    TResult Function(SearchTaskKanbanEvent value)? searchTaskKanban,
    TResult Function(ResetFiltersTaskListEvent value)? resetFilters,
    TResult Function(ResetFiltersTaskKanbanEvent value)? resetFiltersKanban,
    required TResult orElse(),
  }) {
    if (searchTask != null) {
      return searchTask(this);
    }
    return orElse();
  }
}

abstract class SearchTaskListEvent extends TaskListEvent {
  const factory SearchTaskListEvent(final String value) = _$SearchTaskListEvent;
  const SearchTaskListEvent._() : super._();

  String get value;
  @JsonKey(ignore: true)
  _$$SearchTaskListEventCopyWith<_$SearchTaskListEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchTaskKanbanEventCopyWith<$Res> {
  factory _$$SearchTaskKanbanEventCopyWith(_$SearchTaskKanbanEvent value,
          $Res Function(_$SearchTaskKanbanEvent) then) =
      __$$SearchTaskKanbanEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$SearchTaskKanbanEventCopyWithImpl<$Res>
    extends _$TaskListEventCopyWithImpl<$Res, _$SearchTaskKanbanEvent>
    implements _$$SearchTaskKanbanEventCopyWith<$Res> {
  __$$SearchTaskKanbanEventCopyWithImpl(_$SearchTaskKanbanEvent _value,
      $Res Function(_$SearchTaskKanbanEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$SearchTaskKanbanEvent(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchTaskKanbanEvent extends SearchTaskKanbanEvent
    with DiagnosticableTreeMixin {
  const _$SearchTaskKanbanEvent(this.value) : super._();

  @override
  final String value;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TaskListEvent.searchTaskKanban(value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TaskListEvent.searchTaskKanban'))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchTaskKanbanEvent &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchTaskKanbanEventCopyWith<_$SearchTaskKanbanEvent> get copyWith =>
      __$$SearchTaskKanbanEventCopyWithImpl<_$SearchTaskKanbanEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() refresh,
    required TResult Function() getTasks,
    required TResult Function(int status, bool withLoading) getKanban,
    required TResult Function(DlsTasks task) addTask,
    required TResult Function(DlsTasks task) deleteTask,
    required TResult Function(int id, int index) delete,
    required TResult Function(int index, DlsTasks task) updateTask,
    required TResult Function(
            DlsTasks task,
            int addToTaskIndex,
            int removeTaskIndex,
            TaskStatusType addToStatus,
            TaskStatusType removeFromStatus)
        updateTaskKanban,
    required TResult Function(TasksListHierarchy value) hierchyChange,
    required TResult Function(DlsTasks task, List<DLSUser> users, int index)
        updatePerformers,
    required TResult Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)
        filterTaskList,
    required TResult Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)
        filterTaskKanban,
    required TResult Function(String value) searchTask,
    required TResult Function(String value) searchTaskKanban,
    required TResult Function() resetFilters,
    required TResult Function() resetFiltersKanban,
  }) {
    return searchTaskKanban(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? refresh,
    TResult? Function()? getTasks,
    TResult? Function(int status, bool withLoading)? getKanban,
    TResult? Function(DlsTasks task)? addTask,
    TResult? Function(DlsTasks task)? deleteTask,
    TResult? Function(int id, int index)? delete,
    TResult? Function(int index, DlsTasks task)? updateTask,
    TResult? Function(DlsTasks task, int addToTaskIndex, int removeTaskIndex,
            TaskStatusType addToStatus, TaskStatusType removeFromStatus)?
        updateTaskKanban,
    TResult? Function(TasksListHierarchy value)? hierchyChange,
    TResult? Function(DlsTasks task, List<DLSUser> users, int index)?
        updatePerformers,
    TResult? Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)?
        filterTaskList,
    TResult? Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)?
        filterTaskKanban,
    TResult? Function(String value)? searchTask,
    TResult? Function(String value)? searchTaskKanban,
    TResult? Function()? resetFilters,
    TResult? Function()? resetFiltersKanban,
  }) {
    return searchTaskKanban?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? refresh,
    TResult Function()? getTasks,
    TResult Function(int status, bool withLoading)? getKanban,
    TResult Function(DlsTasks task)? addTask,
    TResult Function(DlsTasks task)? deleteTask,
    TResult Function(int id, int index)? delete,
    TResult Function(int index, DlsTasks task)? updateTask,
    TResult Function(DlsTasks task, int addToTaskIndex, int removeTaskIndex,
            TaskStatusType addToStatus, TaskStatusType removeFromStatus)?
        updateTaskKanban,
    TResult Function(TasksListHierarchy value)? hierchyChange,
    TResult Function(DlsTasks task, List<DLSUser> users, int index)?
        updatePerformers,
    TResult Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)?
        filterTaskList,
    TResult Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)?
        filterTaskKanban,
    TResult Function(String value)? searchTask,
    TResult Function(String value)? searchTaskKanban,
    TResult Function()? resetFilters,
    TResult Function()? resetFiltersKanban,
    required TResult orElse(),
  }) {
    if (searchTaskKanban != null) {
      return searchTaskKanban(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitTaskListEvent value) init,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_GetTasks value) getTasks,
    required TResult Function(_GetKanban value) getKanban,
    required TResult Function(AddTaskListEvent value) addTask,
    required TResult Function(DeleteTaskListEvent value) deleteTask,
    required TResult Function(DeleteTaskEvent value) delete,
    required TResult Function(UpdateTaskListEvent value) updateTask,
    required TResult Function(UpdateTaskKanbanListEvent value) updateTaskKanban,
    required TResult Function(HierchyChangeTaskListEvent value) hierchyChange,
    required TResult Function(UpdatePerformersTaskListEvent value)
        updatePerformers,
    required TResult Function(FilterTaskListEvent value) filterTaskList,
    required TResult Function(FilterTaskKanbanEvent value) filterTaskKanban,
    required TResult Function(SearchTaskListEvent value) searchTask,
    required TResult Function(SearchTaskKanbanEvent value) searchTaskKanban,
    required TResult Function(ResetFiltersTaskListEvent value) resetFilters,
    required TResult Function(ResetFiltersTaskKanbanEvent value)
        resetFiltersKanban,
  }) {
    return searchTaskKanban(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitTaskListEvent value)? init,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_GetTasks value)? getTasks,
    TResult? Function(_GetKanban value)? getKanban,
    TResult? Function(AddTaskListEvent value)? addTask,
    TResult? Function(DeleteTaskListEvent value)? deleteTask,
    TResult? Function(DeleteTaskEvent value)? delete,
    TResult? Function(UpdateTaskListEvent value)? updateTask,
    TResult? Function(UpdateTaskKanbanListEvent value)? updateTaskKanban,
    TResult? Function(HierchyChangeTaskListEvent value)? hierchyChange,
    TResult? Function(UpdatePerformersTaskListEvent value)? updatePerformers,
    TResult? Function(FilterTaskListEvent value)? filterTaskList,
    TResult? Function(FilterTaskKanbanEvent value)? filterTaskKanban,
    TResult? Function(SearchTaskListEvent value)? searchTask,
    TResult? Function(SearchTaskKanbanEvent value)? searchTaskKanban,
    TResult? Function(ResetFiltersTaskListEvent value)? resetFilters,
    TResult? Function(ResetFiltersTaskKanbanEvent value)? resetFiltersKanban,
  }) {
    return searchTaskKanban?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitTaskListEvent value)? init,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_GetTasks value)? getTasks,
    TResult Function(_GetKanban value)? getKanban,
    TResult Function(AddTaskListEvent value)? addTask,
    TResult Function(DeleteTaskListEvent value)? deleteTask,
    TResult Function(DeleteTaskEvent value)? delete,
    TResult Function(UpdateTaskListEvent value)? updateTask,
    TResult Function(UpdateTaskKanbanListEvent value)? updateTaskKanban,
    TResult Function(HierchyChangeTaskListEvent value)? hierchyChange,
    TResult Function(UpdatePerformersTaskListEvent value)? updatePerformers,
    TResult Function(FilterTaskListEvent value)? filterTaskList,
    TResult Function(FilterTaskKanbanEvent value)? filterTaskKanban,
    TResult Function(SearchTaskListEvent value)? searchTask,
    TResult Function(SearchTaskKanbanEvent value)? searchTaskKanban,
    TResult Function(ResetFiltersTaskListEvent value)? resetFilters,
    TResult Function(ResetFiltersTaskKanbanEvent value)? resetFiltersKanban,
    required TResult orElse(),
  }) {
    if (searchTaskKanban != null) {
      return searchTaskKanban(this);
    }
    return orElse();
  }
}

abstract class SearchTaskKanbanEvent extends TaskListEvent {
  const factory SearchTaskKanbanEvent(final String value) =
      _$SearchTaskKanbanEvent;
  const SearchTaskKanbanEvent._() : super._();

  String get value;
  @JsonKey(ignore: true)
  _$$SearchTaskKanbanEventCopyWith<_$SearchTaskKanbanEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetFiltersTaskListEventCopyWith<$Res> {
  factory _$$ResetFiltersTaskListEventCopyWith(
          _$ResetFiltersTaskListEvent value,
          $Res Function(_$ResetFiltersTaskListEvent) then) =
      __$$ResetFiltersTaskListEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetFiltersTaskListEventCopyWithImpl<$Res>
    extends _$TaskListEventCopyWithImpl<$Res, _$ResetFiltersTaskListEvent>
    implements _$$ResetFiltersTaskListEventCopyWith<$Res> {
  __$$ResetFiltersTaskListEventCopyWithImpl(_$ResetFiltersTaskListEvent _value,
      $Res Function(_$ResetFiltersTaskListEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResetFiltersTaskListEvent extends ResetFiltersTaskListEvent
    with DiagnosticableTreeMixin {
  const _$ResetFiltersTaskListEvent() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TaskListEvent.resetFilters()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'TaskListEvent.resetFilters'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResetFiltersTaskListEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() refresh,
    required TResult Function() getTasks,
    required TResult Function(int status, bool withLoading) getKanban,
    required TResult Function(DlsTasks task) addTask,
    required TResult Function(DlsTasks task) deleteTask,
    required TResult Function(int id, int index) delete,
    required TResult Function(int index, DlsTasks task) updateTask,
    required TResult Function(
            DlsTasks task,
            int addToTaskIndex,
            int removeTaskIndex,
            TaskStatusType addToStatus,
            TaskStatusType removeFromStatus)
        updateTaskKanban,
    required TResult Function(TasksListHierarchy value) hierchyChange,
    required TResult Function(DlsTasks task, List<DLSUser> users, int index)
        updatePerformers,
    required TResult Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)
        filterTaskList,
    required TResult Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)
        filterTaskKanban,
    required TResult Function(String value) searchTask,
    required TResult Function(String value) searchTaskKanban,
    required TResult Function() resetFilters,
    required TResult Function() resetFiltersKanban,
  }) {
    return resetFilters();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? refresh,
    TResult? Function()? getTasks,
    TResult? Function(int status, bool withLoading)? getKanban,
    TResult? Function(DlsTasks task)? addTask,
    TResult? Function(DlsTasks task)? deleteTask,
    TResult? Function(int id, int index)? delete,
    TResult? Function(int index, DlsTasks task)? updateTask,
    TResult? Function(DlsTasks task, int addToTaskIndex, int removeTaskIndex,
            TaskStatusType addToStatus, TaskStatusType removeFromStatus)?
        updateTaskKanban,
    TResult? Function(TasksListHierarchy value)? hierchyChange,
    TResult? Function(DlsTasks task, List<DLSUser> users, int index)?
        updatePerformers,
    TResult? Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)?
        filterTaskList,
    TResult? Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)?
        filterTaskKanban,
    TResult? Function(String value)? searchTask,
    TResult? Function(String value)? searchTaskKanban,
    TResult? Function()? resetFilters,
    TResult? Function()? resetFiltersKanban,
  }) {
    return resetFilters?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? refresh,
    TResult Function()? getTasks,
    TResult Function(int status, bool withLoading)? getKanban,
    TResult Function(DlsTasks task)? addTask,
    TResult Function(DlsTasks task)? deleteTask,
    TResult Function(int id, int index)? delete,
    TResult Function(int index, DlsTasks task)? updateTask,
    TResult Function(DlsTasks task, int addToTaskIndex, int removeTaskIndex,
            TaskStatusType addToStatus, TaskStatusType removeFromStatus)?
        updateTaskKanban,
    TResult Function(TasksListHierarchy value)? hierchyChange,
    TResult Function(DlsTasks task, List<DLSUser> users, int index)?
        updatePerformers,
    TResult Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)?
        filterTaskList,
    TResult Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)?
        filterTaskKanban,
    TResult Function(String value)? searchTask,
    TResult Function(String value)? searchTaskKanban,
    TResult Function()? resetFilters,
    TResult Function()? resetFiltersKanban,
    required TResult orElse(),
  }) {
    if (resetFilters != null) {
      return resetFilters();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitTaskListEvent value) init,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_GetTasks value) getTasks,
    required TResult Function(_GetKanban value) getKanban,
    required TResult Function(AddTaskListEvent value) addTask,
    required TResult Function(DeleteTaskListEvent value) deleteTask,
    required TResult Function(DeleteTaskEvent value) delete,
    required TResult Function(UpdateTaskListEvent value) updateTask,
    required TResult Function(UpdateTaskKanbanListEvent value) updateTaskKanban,
    required TResult Function(HierchyChangeTaskListEvent value) hierchyChange,
    required TResult Function(UpdatePerformersTaskListEvent value)
        updatePerformers,
    required TResult Function(FilterTaskListEvent value) filterTaskList,
    required TResult Function(FilterTaskKanbanEvent value) filterTaskKanban,
    required TResult Function(SearchTaskListEvent value) searchTask,
    required TResult Function(SearchTaskKanbanEvent value) searchTaskKanban,
    required TResult Function(ResetFiltersTaskListEvent value) resetFilters,
    required TResult Function(ResetFiltersTaskKanbanEvent value)
        resetFiltersKanban,
  }) {
    return resetFilters(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitTaskListEvent value)? init,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_GetTasks value)? getTasks,
    TResult? Function(_GetKanban value)? getKanban,
    TResult? Function(AddTaskListEvent value)? addTask,
    TResult? Function(DeleteTaskListEvent value)? deleteTask,
    TResult? Function(DeleteTaskEvent value)? delete,
    TResult? Function(UpdateTaskListEvent value)? updateTask,
    TResult? Function(UpdateTaskKanbanListEvent value)? updateTaskKanban,
    TResult? Function(HierchyChangeTaskListEvent value)? hierchyChange,
    TResult? Function(UpdatePerformersTaskListEvent value)? updatePerformers,
    TResult? Function(FilterTaskListEvent value)? filterTaskList,
    TResult? Function(FilterTaskKanbanEvent value)? filterTaskKanban,
    TResult? Function(SearchTaskListEvent value)? searchTask,
    TResult? Function(SearchTaskKanbanEvent value)? searchTaskKanban,
    TResult? Function(ResetFiltersTaskListEvent value)? resetFilters,
    TResult? Function(ResetFiltersTaskKanbanEvent value)? resetFiltersKanban,
  }) {
    return resetFilters?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitTaskListEvent value)? init,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_GetTasks value)? getTasks,
    TResult Function(_GetKanban value)? getKanban,
    TResult Function(AddTaskListEvent value)? addTask,
    TResult Function(DeleteTaskListEvent value)? deleteTask,
    TResult Function(DeleteTaskEvent value)? delete,
    TResult Function(UpdateTaskListEvent value)? updateTask,
    TResult Function(UpdateTaskKanbanListEvent value)? updateTaskKanban,
    TResult Function(HierchyChangeTaskListEvent value)? hierchyChange,
    TResult Function(UpdatePerformersTaskListEvent value)? updatePerformers,
    TResult Function(FilterTaskListEvent value)? filterTaskList,
    TResult Function(FilterTaskKanbanEvent value)? filterTaskKanban,
    TResult Function(SearchTaskListEvent value)? searchTask,
    TResult Function(SearchTaskKanbanEvent value)? searchTaskKanban,
    TResult Function(ResetFiltersTaskListEvent value)? resetFilters,
    TResult Function(ResetFiltersTaskKanbanEvent value)? resetFiltersKanban,
    required TResult orElse(),
  }) {
    if (resetFilters != null) {
      return resetFilters(this);
    }
    return orElse();
  }
}

abstract class ResetFiltersTaskListEvent extends TaskListEvent {
  const factory ResetFiltersTaskListEvent() = _$ResetFiltersTaskListEvent;
  const ResetFiltersTaskListEvent._() : super._();
}

/// @nodoc
abstract class _$$ResetFiltersTaskKanbanEventCopyWith<$Res> {
  factory _$$ResetFiltersTaskKanbanEventCopyWith(
          _$ResetFiltersTaskKanbanEvent value,
          $Res Function(_$ResetFiltersTaskKanbanEvent) then) =
      __$$ResetFiltersTaskKanbanEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetFiltersTaskKanbanEventCopyWithImpl<$Res>
    extends _$TaskListEventCopyWithImpl<$Res, _$ResetFiltersTaskKanbanEvent>
    implements _$$ResetFiltersTaskKanbanEventCopyWith<$Res> {
  __$$ResetFiltersTaskKanbanEventCopyWithImpl(
      _$ResetFiltersTaskKanbanEvent _value,
      $Res Function(_$ResetFiltersTaskKanbanEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResetFiltersTaskKanbanEvent extends ResetFiltersTaskKanbanEvent
    with DiagnosticableTreeMixin {
  const _$ResetFiltersTaskKanbanEvent() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TaskListEvent.resetFiltersKanban()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'TaskListEvent.resetFiltersKanban'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResetFiltersTaskKanbanEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() refresh,
    required TResult Function() getTasks,
    required TResult Function(int status, bool withLoading) getKanban,
    required TResult Function(DlsTasks task) addTask,
    required TResult Function(DlsTasks task) deleteTask,
    required TResult Function(int id, int index) delete,
    required TResult Function(int index, DlsTasks task) updateTask,
    required TResult Function(
            DlsTasks task,
            int addToTaskIndex,
            int removeTaskIndex,
            TaskStatusType addToStatus,
            TaskStatusType removeFromStatus)
        updateTaskKanban,
    required TResult Function(TasksListHierarchy value) hierchyChange,
    required TResult Function(DlsTasks task, List<DLSUser> users, int index)
        updatePerformers,
    required TResult Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)
        filterTaskList,
    required TResult Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)
        filterTaskKanban,
    required TResult Function(String value) searchTask,
    required TResult Function(String value) searchTaskKanban,
    required TResult Function() resetFilters,
    required TResult Function() resetFiltersKanban,
  }) {
    return resetFiltersKanban();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? refresh,
    TResult? Function()? getTasks,
    TResult? Function(int status, bool withLoading)? getKanban,
    TResult? Function(DlsTasks task)? addTask,
    TResult? Function(DlsTasks task)? deleteTask,
    TResult? Function(int id, int index)? delete,
    TResult? Function(int index, DlsTasks task)? updateTask,
    TResult? Function(DlsTasks task, int addToTaskIndex, int removeTaskIndex,
            TaskStatusType addToStatus, TaskStatusType removeFromStatus)?
        updateTaskKanban,
    TResult? Function(TasksListHierarchy value)? hierchyChange,
    TResult? Function(DlsTasks task, List<DLSUser> users, int index)?
        updatePerformers,
    TResult? Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)?
        filterTaskList,
    TResult? Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)?
        filterTaskKanban,
    TResult? Function(String value)? searchTask,
    TResult? Function(String value)? searchTaskKanban,
    TResult? Function()? resetFilters,
    TResult? Function()? resetFiltersKanban,
  }) {
    return resetFiltersKanban?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? refresh,
    TResult Function()? getTasks,
    TResult Function(int status, bool withLoading)? getKanban,
    TResult Function(DlsTasks task)? addTask,
    TResult Function(DlsTasks task)? deleteTask,
    TResult Function(int id, int index)? delete,
    TResult Function(int index, DlsTasks task)? updateTask,
    TResult Function(DlsTasks task, int addToTaskIndex, int removeTaskIndex,
            TaskStatusType addToStatus, TaskStatusType removeFromStatus)?
        updateTaskKanban,
    TResult Function(TasksListHierarchy value)? hierchyChange,
    TResult Function(DlsTasks task, List<DLSUser> users, int index)?
        updatePerformers,
    TResult Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)?
        filterTaskList,
    TResult Function(FilterTypes? type, Object? value,
            Map<FilterTypes, Object>? listFilter)?
        filterTaskKanban,
    TResult Function(String value)? searchTask,
    TResult Function(String value)? searchTaskKanban,
    TResult Function()? resetFilters,
    TResult Function()? resetFiltersKanban,
    required TResult orElse(),
  }) {
    if (resetFiltersKanban != null) {
      return resetFiltersKanban();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitTaskListEvent value) init,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_GetTasks value) getTasks,
    required TResult Function(_GetKanban value) getKanban,
    required TResult Function(AddTaskListEvent value) addTask,
    required TResult Function(DeleteTaskListEvent value) deleteTask,
    required TResult Function(DeleteTaskEvent value) delete,
    required TResult Function(UpdateTaskListEvent value) updateTask,
    required TResult Function(UpdateTaskKanbanListEvent value) updateTaskKanban,
    required TResult Function(HierchyChangeTaskListEvent value) hierchyChange,
    required TResult Function(UpdatePerformersTaskListEvent value)
        updatePerformers,
    required TResult Function(FilterTaskListEvent value) filterTaskList,
    required TResult Function(FilterTaskKanbanEvent value) filterTaskKanban,
    required TResult Function(SearchTaskListEvent value) searchTask,
    required TResult Function(SearchTaskKanbanEvent value) searchTaskKanban,
    required TResult Function(ResetFiltersTaskListEvent value) resetFilters,
    required TResult Function(ResetFiltersTaskKanbanEvent value)
        resetFiltersKanban,
  }) {
    return resetFiltersKanban(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitTaskListEvent value)? init,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_GetTasks value)? getTasks,
    TResult? Function(_GetKanban value)? getKanban,
    TResult? Function(AddTaskListEvent value)? addTask,
    TResult? Function(DeleteTaskListEvent value)? deleteTask,
    TResult? Function(DeleteTaskEvent value)? delete,
    TResult? Function(UpdateTaskListEvent value)? updateTask,
    TResult? Function(UpdateTaskKanbanListEvent value)? updateTaskKanban,
    TResult? Function(HierchyChangeTaskListEvent value)? hierchyChange,
    TResult? Function(UpdatePerformersTaskListEvent value)? updatePerformers,
    TResult? Function(FilterTaskListEvent value)? filterTaskList,
    TResult? Function(FilterTaskKanbanEvent value)? filterTaskKanban,
    TResult? Function(SearchTaskListEvent value)? searchTask,
    TResult? Function(SearchTaskKanbanEvent value)? searchTaskKanban,
    TResult? Function(ResetFiltersTaskListEvent value)? resetFilters,
    TResult? Function(ResetFiltersTaskKanbanEvent value)? resetFiltersKanban,
  }) {
    return resetFiltersKanban?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitTaskListEvent value)? init,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_GetTasks value)? getTasks,
    TResult Function(_GetKanban value)? getKanban,
    TResult Function(AddTaskListEvent value)? addTask,
    TResult Function(DeleteTaskListEvent value)? deleteTask,
    TResult Function(DeleteTaskEvent value)? delete,
    TResult Function(UpdateTaskListEvent value)? updateTask,
    TResult Function(UpdateTaskKanbanListEvent value)? updateTaskKanban,
    TResult Function(HierchyChangeTaskListEvent value)? hierchyChange,
    TResult Function(UpdatePerformersTaskListEvent value)? updatePerformers,
    TResult Function(FilterTaskListEvent value)? filterTaskList,
    TResult Function(FilterTaskKanbanEvent value)? filterTaskKanban,
    TResult Function(SearchTaskListEvent value)? searchTask,
    TResult Function(SearchTaskKanbanEvent value)? searchTaskKanban,
    TResult Function(ResetFiltersTaskListEvent value)? resetFilters,
    TResult Function(ResetFiltersTaskKanbanEvent value)? resetFiltersKanban,
    required TResult orElse(),
  }) {
    if (resetFiltersKanban != null) {
      return resetFiltersKanban(this);
    }
    return orElse();
  }
}

abstract class ResetFiltersTaskKanbanEvent extends TaskListEvent {
  const factory ResetFiltersTaskKanbanEvent() = _$ResetFiltersTaskKanbanEvent;
  const ResetFiltersTaskKanbanEvent._() : super._();
}

/// @nodoc
mixin _$TaskListState {
  TaskListModel get model => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TaskListModel model) init,
    required TResult Function(TaskListModel model) loading,
    required TResult Function(TaskListModel model) preloadData,
    required TResult Function(String message, TaskListModel model) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TaskListModel model)? init,
    TResult? Function(TaskListModel model)? loading,
    TResult? Function(TaskListModel model)? preloadData,
    TResult? Function(String message, TaskListModel model)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TaskListModel model)? init,
    TResult Function(TaskListModel model)? loading,
    TResult Function(TaskListModel model)? preloadData,
    TResult Function(String message, TaskListModel model)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitTaskListState value) init,
    required TResult Function(LoadingTaskListState value) loading,
    required TResult Function(PreloadDataTaskListState value) preloadData,
    required TResult Function(ErrorTaskListState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitTaskListState value)? init,
    TResult? Function(LoadingTaskListState value)? loading,
    TResult? Function(PreloadDataTaskListState value)? preloadData,
    TResult? Function(ErrorTaskListState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitTaskListState value)? init,
    TResult Function(LoadingTaskListState value)? loading,
    TResult Function(PreloadDataTaskListState value)? preloadData,
    TResult Function(ErrorTaskListState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskListStateCopyWith<TaskListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskListStateCopyWith<$Res> {
  factory $TaskListStateCopyWith(
          TaskListState value, $Res Function(TaskListState) then) =
      _$TaskListStateCopyWithImpl<$Res, TaskListState>;
  @useResult
  $Res call({TaskListModel model});

  $TaskListModelCopyWith<$Res> get model;
}

/// @nodoc
class _$TaskListStateCopyWithImpl<$Res, $Val extends TaskListState>
    implements $TaskListStateCopyWith<$Res> {
  _$TaskListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_value.copyWith(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as TaskListModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TaskListModelCopyWith<$Res> get model {
    return $TaskListModelCopyWith<$Res>(_value.model, (value) {
      return _then(_value.copyWith(model: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitTaskListStateCopyWith<$Res>
    implements $TaskListStateCopyWith<$Res> {
  factory _$$InitTaskListStateCopyWith(
          _$InitTaskListState value, $Res Function(_$InitTaskListState) then) =
      __$$InitTaskListStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TaskListModel model});

  @override
  $TaskListModelCopyWith<$Res> get model;
}

/// @nodoc
class __$$InitTaskListStateCopyWithImpl<$Res>
    extends _$TaskListStateCopyWithImpl<$Res, _$InitTaskListState>
    implements _$$InitTaskListStateCopyWith<$Res> {
  __$$InitTaskListStateCopyWithImpl(
      _$InitTaskListState _value, $Res Function(_$InitTaskListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$InitTaskListState(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as TaskListModel,
    ));
  }
}

/// @nodoc

class _$InitTaskListState extends InitTaskListState
    with DiagnosticableTreeMixin {
  const _$InitTaskListState({this.model = const TaskListModel()}) : super._();

  @override
  @JsonKey()
  final TaskListModel model;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TaskListState.init(model: $model)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TaskListState.init'))
      ..add(DiagnosticsProperty('model', model));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitTaskListState &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitTaskListStateCopyWith<_$InitTaskListState> get copyWith =>
      __$$InitTaskListStateCopyWithImpl<_$InitTaskListState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TaskListModel model) init,
    required TResult Function(TaskListModel model) loading,
    required TResult Function(TaskListModel model) preloadData,
    required TResult Function(String message, TaskListModel model) error,
  }) {
    return init(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TaskListModel model)? init,
    TResult? Function(TaskListModel model)? loading,
    TResult? Function(TaskListModel model)? preloadData,
    TResult? Function(String message, TaskListModel model)? error,
  }) {
    return init?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TaskListModel model)? init,
    TResult Function(TaskListModel model)? loading,
    TResult Function(TaskListModel model)? preloadData,
    TResult Function(String message, TaskListModel model)? error,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitTaskListState value) init,
    required TResult Function(LoadingTaskListState value) loading,
    required TResult Function(PreloadDataTaskListState value) preloadData,
    required TResult Function(ErrorTaskListState value) error,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitTaskListState value)? init,
    TResult? Function(LoadingTaskListState value)? loading,
    TResult? Function(PreloadDataTaskListState value)? preloadData,
    TResult? Function(ErrorTaskListState value)? error,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitTaskListState value)? init,
    TResult Function(LoadingTaskListState value)? loading,
    TResult Function(PreloadDataTaskListState value)? preloadData,
    TResult Function(ErrorTaskListState value)? error,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class InitTaskListState extends TaskListState {
  const factory InitTaskListState({final TaskListModel model}) =
      _$InitTaskListState;
  const InitTaskListState._() : super._();

  @override
  TaskListModel get model;
  @override
  @JsonKey(ignore: true)
  _$$InitTaskListStateCopyWith<_$InitTaskListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingTaskListStateCopyWith<$Res>
    implements $TaskListStateCopyWith<$Res> {
  factory _$$LoadingTaskListStateCopyWith(_$LoadingTaskListState value,
          $Res Function(_$LoadingTaskListState) then) =
      __$$LoadingTaskListStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TaskListModel model});

  @override
  $TaskListModelCopyWith<$Res> get model;
}

/// @nodoc
class __$$LoadingTaskListStateCopyWithImpl<$Res>
    extends _$TaskListStateCopyWithImpl<$Res, _$LoadingTaskListState>
    implements _$$LoadingTaskListStateCopyWith<$Res> {
  __$$LoadingTaskListStateCopyWithImpl(_$LoadingTaskListState _value,
      $Res Function(_$LoadingTaskListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$LoadingTaskListState(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as TaskListModel,
    ));
  }
}

/// @nodoc

class _$LoadingTaskListState extends LoadingTaskListState
    with DiagnosticableTreeMixin {
  const _$LoadingTaskListState({this.model = const TaskListModel()})
      : super._();

  @override
  @JsonKey()
  final TaskListModel model;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TaskListState.loading(model: $model)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TaskListState.loading'))
      ..add(DiagnosticsProperty('model', model));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingTaskListState &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingTaskListStateCopyWith<_$LoadingTaskListState> get copyWith =>
      __$$LoadingTaskListStateCopyWithImpl<_$LoadingTaskListState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TaskListModel model) init,
    required TResult Function(TaskListModel model) loading,
    required TResult Function(TaskListModel model) preloadData,
    required TResult Function(String message, TaskListModel model) error,
  }) {
    return loading(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TaskListModel model)? init,
    TResult? Function(TaskListModel model)? loading,
    TResult? Function(TaskListModel model)? preloadData,
    TResult? Function(String message, TaskListModel model)? error,
  }) {
    return loading?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TaskListModel model)? init,
    TResult Function(TaskListModel model)? loading,
    TResult Function(TaskListModel model)? preloadData,
    TResult Function(String message, TaskListModel model)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitTaskListState value) init,
    required TResult Function(LoadingTaskListState value) loading,
    required TResult Function(PreloadDataTaskListState value) preloadData,
    required TResult Function(ErrorTaskListState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitTaskListState value)? init,
    TResult? Function(LoadingTaskListState value)? loading,
    TResult? Function(PreloadDataTaskListState value)? preloadData,
    TResult? Function(ErrorTaskListState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitTaskListState value)? init,
    TResult Function(LoadingTaskListState value)? loading,
    TResult Function(PreloadDataTaskListState value)? preloadData,
    TResult Function(ErrorTaskListState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingTaskListState extends TaskListState {
  const factory LoadingTaskListState({final TaskListModel model}) =
      _$LoadingTaskListState;
  const LoadingTaskListState._() : super._();

  @override
  TaskListModel get model;
  @override
  @JsonKey(ignore: true)
  _$$LoadingTaskListStateCopyWith<_$LoadingTaskListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PreloadDataTaskListStateCopyWith<$Res>
    implements $TaskListStateCopyWith<$Res> {
  factory _$$PreloadDataTaskListStateCopyWith(_$PreloadDataTaskListState value,
          $Res Function(_$PreloadDataTaskListState) then) =
      __$$PreloadDataTaskListStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TaskListModel model});

  @override
  $TaskListModelCopyWith<$Res> get model;
}

/// @nodoc
class __$$PreloadDataTaskListStateCopyWithImpl<$Res>
    extends _$TaskListStateCopyWithImpl<$Res, _$PreloadDataTaskListState>
    implements _$$PreloadDataTaskListStateCopyWith<$Res> {
  __$$PreloadDataTaskListStateCopyWithImpl(_$PreloadDataTaskListState _value,
      $Res Function(_$PreloadDataTaskListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$PreloadDataTaskListState(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as TaskListModel,
    ));
  }
}

/// @nodoc

class _$PreloadDataTaskListState extends PreloadDataTaskListState
    with DiagnosticableTreeMixin {
  const _$PreloadDataTaskListState({this.model = const TaskListModel()})
      : super._();

  @override
  @JsonKey()
  final TaskListModel model;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TaskListState.preloadData(model: $model)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TaskListState.preloadData'))
      ..add(DiagnosticsProperty('model', model));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreloadDataTaskListState &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PreloadDataTaskListStateCopyWith<_$PreloadDataTaskListState>
      get copyWith =>
          __$$PreloadDataTaskListStateCopyWithImpl<_$PreloadDataTaskListState>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TaskListModel model) init,
    required TResult Function(TaskListModel model) loading,
    required TResult Function(TaskListModel model) preloadData,
    required TResult Function(String message, TaskListModel model) error,
  }) {
    return preloadData(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TaskListModel model)? init,
    TResult? Function(TaskListModel model)? loading,
    TResult? Function(TaskListModel model)? preloadData,
    TResult? Function(String message, TaskListModel model)? error,
  }) {
    return preloadData?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TaskListModel model)? init,
    TResult Function(TaskListModel model)? loading,
    TResult Function(TaskListModel model)? preloadData,
    TResult Function(String message, TaskListModel model)? error,
    required TResult orElse(),
  }) {
    if (preloadData != null) {
      return preloadData(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitTaskListState value) init,
    required TResult Function(LoadingTaskListState value) loading,
    required TResult Function(PreloadDataTaskListState value) preloadData,
    required TResult Function(ErrorTaskListState value) error,
  }) {
    return preloadData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitTaskListState value)? init,
    TResult? Function(LoadingTaskListState value)? loading,
    TResult? Function(PreloadDataTaskListState value)? preloadData,
    TResult? Function(ErrorTaskListState value)? error,
  }) {
    return preloadData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitTaskListState value)? init,
    TResult Function(LoadingTaskListState value)? loading,
    TResult Function(PreloadDataTaskListState value)? preloadData,
    TResult Function(ErrorTaskListState value)? error,
    required TResult orElse(),
  }) {
    if (preloadData != null) {
      return preloadData(this);
    }
    return orElse();
  }
}

abstract class PreloadDataTaskListState extends TaskListState {
  const factory PreloadDataTaskListState({final TaskListModel model}) =
      _$PreloadDataTaskListState;
  const PreloadDataTaskListState._() : super._();

  @override
  TaskListModel get model;
  @override
  @JsonKey(ignore: true)
  _$$PreloadDataTaskListStateCopyWith<_$PreloadDataTaskListState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorTaskListStateCopyWith<$Res>
    implements $TaskListStateCopyWith<$Res> {
  factory _$$ErrorTaskListStateCopyWith(_$ErrorTaskListState value,
          $Res Function(_$ErrorTaskListState) then) =
      __$$ErrorTaskListStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, TaskListModel model});

  @override
  $TaskListModelCopyWith<$Res> get model;
}

/// @nodoc
class __$$ErrorTaskListStateCopyWithImpl<$Res>
    extends _$TaskListStateCopyWithImpl<$Res, _$ErrorTaskListState>
    implements _$$ErrorTaskListStateCopyWith<$Res> {
  __$$ErrorTaskListStateCopyWithImpl(
      _$ErrorTaskListState _value, $Res Function(_$ErrorTaskListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? model = null,
  }) {
    return _then(_$ErrorTaskListState(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as TaskListModel,
    ));
  }
}

/// @nodoc

class _$ErrorTaskListState extends ErrorTaskListState
    with DiagnosticableTreeMixin {
  const _$ErrorTaskListState(this.message, {this.model = const TaskListModel()})
      : super._();

  @override
  final String message;
  @override
  @JsonKey()
  final TaskListModel model;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TaskListState.error(message: $message, model: $model)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TaskListState.error'))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('model', model));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorTaskListState &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorTaskListStateCopyWith<_$ErrorTaskListState> get copyWith =>
      __$$ErrorTaskListStateCopyWithImpl<_$ErrorTaskListState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TaskListModel model) init,
    required TResult Function(TaskListModel model) loading,
    required TResult Function(TaskListModel model) preloadData,
    required TResult Function(String message, TaskListModel model) error,
  }) {
    return error(message, model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TaskListModel model)? init,
    TResult? Function(TaskListModel model)? loading,
    TResult? Function(TaskListModel model)? preloadData,
    TResult? Function(String message, TaskListModel model)? error,
  }) {
    return error?.call(message, model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TaskListModel model)? init,
    TResult Function(TaskListModel model)? loading,
    TResult Function(TaskListModel model)? preloadData,
    TResult Function(String message, TaskListModel model)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message, model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitTaskListState value) init,
    required TResult Function(LoadingTaskListState value) loading,
    required TResult Function(PreloadDataTaskListState value) preloadData,
    required TResult Function(ErrorTaskListState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitTaskListState value)? init,
    TResult? Function(LoadingTaskListState value)? loading,
    TResult? Function(PreloadDataTaskListState value)? preloadData,
    TResult? Function(ErrorTaskListState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitTaskListState value)? init,
    TResult Function(LoadingTaskListState value)? loading,
    TResult Function(PreloadDataTaskListState value)? preloadData,
    TResult Function(ErrorTaskListState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorTaskListState extends TaskListState {
  const factory ErrorTaskListState(final String message,
      {final TaskListModel model}) = _$ErrorTaskListState;
  const ErrorTaskListState._() : super._();

  String get message;
  @override
  TaskListModel get model;
  @override
  @JsonKey(ignore: true)
  _$$ErrorTaskListStateCopyWith<_$ErrorTaskListState> get copyWith =>
      throw _privateConstructorUsedError;
}
