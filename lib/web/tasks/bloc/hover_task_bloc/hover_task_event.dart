part of 'hover_task_bloc.dart';

@freezed
class HoverTaskEvent with _$HoverTaskEvent {
  const HoverTaskEvent._();

  const factory HoverTaskEvent.init() = InitHoverTaskEvent;

  const factory HoverTaskEvent.hoverTask(
    int idTask,
  ) = HoverIdTaskEvent;
}
