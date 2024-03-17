part of 'task_list_bloc.dart';

@freezed
class TaskListState with _$TaskListState {
  const TaskListState._();

  const factory TaskListState.init({
    @Default(TaskListModel()) TaskListModel model,
  }) = InitTaskListState;

  const factory TaskListState.loading({
    @Default(TaskListModel()) TaskListModel model,
  }) = LoadingTaskListState;

  const factory TaskListState.preloadData({
    @Default(TaskListModel()) TaskListModel model,
  }) = PreloadDataTaskListState;

  const factory TaskListState.error(String message, {
    @Default(TaskListModel()) TaskListModel model,
  }) = ErrorTaskListState;

  bool get loading => maybeMap(orElse: () => false, loading: (_) => true);
}
