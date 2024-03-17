part of 'task_tags_bloc.dart';

@freezed
class TaskTagsState with _$TaskTagsState {
  const factory TaskTagsState.idle({
    @Default(TaskTagsStateModel()) TaskTagsStateModel model,
  }) = _Idle;

  const factory TaskTagsState.loading({
    @Default(TaskTagsStateModel()) TaskTagsStateModel model,
  }) = _Loading;

  const factory TaskTagsState.error(
    String message, {
    @Default(TaskTagsStateModel()) TaskTagsStateModel model,
  }) = _Error;

  const factory TaskTagsState.tagAdded(
    TaskTagModel tag, {
    @Default(TaskTagsStateModel()) TaskTagsStateModel model,
  }) = _TagAdded;
}

extension TaskTagsStateExt on TaskTagsState {
  TaskTagsState toState() {
    return TaskTagsState.idle(model: model);
  }

  TaskTagsState toLoading() {
    return TaskTagsState.loading(model: model);
  }

  TaskTagsState toError(String message) {
    return TaskTagsState.error(message, model: model);
  }

  TaskTagsState toTagAdded(TaskTagModel tag) {
    return TaskTagsState.tagAdded(tag, model: model);
  }
}
