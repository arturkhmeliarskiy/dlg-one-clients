import 'package:dls_one/web/tasks/const/model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rest_api/rest_api.dart';

part 'task_list_model.freezed.dart';

@freezed
class TaskListModel with _$TaskListModel {
  const factory TaskListModel({
    DlsTasksAll? data,
    @Default([]) List<DlsTasks> tasks,
    @Default([]) List<TaskTagModel> tags,
    @Default([]) List<DlsTasksExecutors> performers,
    @Default([]) List<DlsTasksExecutors> performersKanban,
    @Default([]) List<DlsTasks> listTask,
    // TODO find better solution for loading
    @Default(false) bool inTheQueueLoading,
    @Default(false) bool atWorkLoading,
    @Default(false) bool completedLoading,
    @Default([]) List<DlsTasks> listTaskInTheQueue,
    @Default([]) List<DlsTasks> listTaskAtWork,
    @Default([]) List<DlsTasks> listTaskCompleted,
    @Default([]) List<DlsTasks> listTaskInTheQueueKanban,
    @Default([]) List<DlsTasks> listTaskAtWorkKanban,
    @Default([]) List<DlsTasks> listTaskCompletedKanban,
    @Default(TasksListHierarchy.hierarchy) TasksListHierarchy hierarchyView,
    @Default(-1) int idTask,
    @Default(false) bool isResetEverything,
    @Default({}) Map<FilterTypes, Object> filters,
    @Default({}) Map<FilterTypes, Object> filtersKanban,
    @Default([]) List<int> openTasks,
    DlsTasks? task,
  }) = _TaskListModel;
}
