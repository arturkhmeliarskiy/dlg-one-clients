part of 'task_list_bloc.dart';

@freezed
class TaskListEvent with _$TaskListEvent {
  const TaskListEvent._();

  const factory TaskListEvent.init() = InitTaskListEvent;

  const factory TaskListEvent.refresh() = _Refresh;

  const factory TaskListEvent.getTasks() = _GetTasks;

  const factory TaskListEvent.getKanban(
    int status, {
    @Default(true) bool withLoading,
  }) = _GetKanban;

  const factory TaskListEvent.addTask(DlsTasks task) = AddTaskListEvent;

  const factory TaskListEvent.deleteTask(DlsTasks task) = DeleteTaskListEvent;

  const factory TaskListEvent.delete(
    int id,
    int index,
  ) = DeleteTaskEvent;

  const factory TaskListEvent.updateTask(
    int index,
    DlsTasks task,
  ) = UpdateTaskListEvent;

  const factory TaskListEvent.updateTaskKanban(
    DlsTasks task,
    int addToTaskIndex,
    int removeTaskIndex,
    TaskStatusType addToStatus,
    TaskStatusType removeFromStatus,
  ) = UpdateTaskKanbanListEvent;

  const factory TaskListEvent.hierchyChange(
    TasksListHierarchy value,
  ) = HierchyChangeTaskListEvent;

  const factory TaskListEvent.updatePerformers(
    DlsTasks task,
    List<DLSUser> users,
    int index,
  ) = UpdatePerformersTaskListEvent;

  // TODO я считаю этот ивент не имеет смысла ведь все это можно сделать в [getTasks]
  const factory TaskListEvent.filterTaskList({
    FilterTypes? type,
    Object? value,
    Map<FilterTypes, Object>? listFilter,
  }) = FilterTaskListEvent;

  // TODO я считаю этот ивент не имеет смысла ведь все это можно сделать в [getKanban]
  const factory TaskListEvent.filterTaskKanban({
    FilterTypes? type,
    Object? value,
    Map<FilterTypes, Object>? listFilter,
  }) = FilterTaskKanbanEvent;

  // TODO я считаю этот ивент не имеет смысла ведь все это можно сделать в [getTasks]
  const factory TaskListEvent.searchTask(
    String value,
  ) = SearchTaskListEvent;

  // TODO я считаю этот ивент не имеет смысла ведь все это можно сделать в [getKanban]
  const factory TaskListEvent.searchTaskKanban(
    String value,
  ) = SearchTaskKanbanEvent;

  // TODO я считаю этот ивент не имеет смысла ведь все это можно сделать в [getTasks]
  const factory TaskListEvent.resetFilters() = ResetFiltersTaskListEvent;

  // TODO я считаю этот ивент не имеет смысла ведь все это можно сделать в [getKanban]
  const factory TaskListEvent.resetFiltersKanban() =
      ResetFiltersTaskKanbanEvent;
}
