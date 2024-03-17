part of 'sprints_bloc.dart';

@freezed
class SprintsEvent with _$SprintsEvent {
  const factory SprintsEvent.getSprints({
    int? page,
    @Default(true) bool withLoading,
  }) = _GetSprints;

  const factory SprintsEvent.statusClick(TaskStatusType status) = _StatusClick;

  const factory SprintsEvent.setCurrentSprint(DlsSprintModel sprint) =
      _SetCurrentSprint;

  const factory SprintsEvent.updateSprint(DlsSprintModel sprint) =
      _UpdateSprint;
}
