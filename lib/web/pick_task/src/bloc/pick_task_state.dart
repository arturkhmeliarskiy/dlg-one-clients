part of 'pick_task_bloc.dart';

@freezed
class PickTaskState with _$PickTaskState {
  const factory PickTaskState({
    // TODO config Pagination
    @Default([]) List<DlsTasks> tasks,
  }) = _PickTaskState;
  const factory PickTaskState.loading({
    @Default([]) List<DlsTasks> tasks,
  }) = _Loading;
}
