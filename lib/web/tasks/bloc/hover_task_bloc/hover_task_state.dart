part of 'hover_task_bloc.dart';

@freezed
class HoverTaskState with _$HoverTaskState {
  const HoverTaskState._();

  const factory HoverTaskState.init() = InitHoverTaskState;

  const factory HoverTaskState.preloadData({
    required int idTask,
  }) = PreloadDataHoverTaskState;
}
