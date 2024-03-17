part of 'sprint_author_bloc.dart';

@freezed
class SprintAuthorEvent with _$SprintAuthorEvent {
  const SprintAuthorEvent._();

  const factory SprintAuthorEvent.init({
    @Default('') String parentTitle,
    @Default([]) List<DlsTasks> backlog,
    DlsSprintModel? sprint,
    DlsTasks? superTask,
    DLSUser? currentUser,
  }) = _Init;

  const factory SprintAuthorEvent.fetch({@Default(false) bool update}) = _Fetch;

  const factory SprintAuthorEvent.updateSubtask({
    required int index,
    required TaskStatusType status,
    required DlsTasks item,
    required bool backlog,
  }) = _UpdateSubtask;

  const factory SprintAuthorEvent.updateDuration({
    required SprintDurationType duration,
    DateTime? endDate,
  }) = _UpdateDuration;

  const factory SprintAuthorEvent.updateModel(SprintAuthorModel model) =
      _UpdateModel;

  const factory SprintAuthorEvent.finish() = _Finish;

  const factory SprintAuthorEvent.save() = _Save;
}
