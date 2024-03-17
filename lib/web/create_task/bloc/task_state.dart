part of 'task_bloc.dart';

@freezed
class TaskState with _$TaskState {
  const factory TaskState({@Default(SaveTaskModel()) SaveTaskModel model}) =
      _TaskState;

  const factory TaskState.loading({
    @Default(SaveTaskModel()) SaveTaskModel model,
  }) = _Loading;

  const factory TaskState.error(
    String message, {
    @Default(SaveTaskModel()) SaveTaskModel model,
  }) = _Error;

  const factory TaskState.success({
    required SaveTaskModel model,
  }) = _Success;

  const factory TaskState.updateSuccess({
    required SaveTaskModel model,
  }) = _UpdateSuccess;

  const factory TaskState.deleteSuccess({
    required SaveTaskModel model,
  }) = _DeleteSuccess;
}

extension TaskStateExt on TaskState {
  bool get isLoading => maybeMap(
        null,
        orElse: () => false,
        loading: (_) => true,
      );

  TaskState toLoading() {
    return TaskState.loading(model: model);
  }

  TaskState toError(String message) {
    return TaskState.error(message, model: model);
  }
}
