part of 'create_events_bloc.dart';

@freezed
class CreateEventsEvent with _$CreateEventsEvent {
  const factory CreateEventsEvent.init({
    DlsTasks? parentTask,
    DlsSprintModel? parentSprint,
    String? title,
    TaskEventModel? currentEvent,
    DateTime? day,
    TimeOfDay? startAt,
    TimeOfDay? endAt,
    DLSUser? currentUser,
  }) = _InitEvent;

  const factory CreateEventsEvent.fetchEvent({
    TaskEventModel? currentEvent,
  }) = _FetchEvent;

  const factory CreateEventsEvent.updateModel(CreateEventsModel model) =
      _UpdateModelEvent;

  const factory CreateEventsEvent.setTitle(String title) = _SetTitle;

  const factory CreateEventsEvent.setDescription(String description) =
      _SetDescription;

  const factory CreateEventsEvent.setLocation(String? location) = _SetLocation;

  const factory CreateEventsEvent.setTask(DlsTasks task) = _SetTask;

  const factory CreateEventsEvent.setMembers(List<DLSUser> users) = _SetMembers;

  const factory CreateEventsEvent.setOnline({@Default(false) bool online}) =
      _SetOnline;

  const factory CreateEventsEvent.setNotifyBefore(
    EventNotificationType notifyBefore,
  ) = _SetNotifyBefore;

  const factory CreateEventsEvent.setMemberInvite({
    @Default(false) bool memberInvite,
  }) = _SetMemberInvite;

  const factory CreateEventsEvent.setScheduleViewType(ScheduleViewType type) =
      _SetScheduleViewType;

  const factory CreateEventsEvent.setAllDay({@Default(false) bool allDay}) =
      _SetAllDay;

  const factory CreateEventsEvent.setDate(DateTime date) = _SetDate;

  const factory CreateEventsEvent.setStart(TimeOfDay start) = _SetStart;

  const factory CreateEventsEvent.setEnd(TimeOfDay end) = _SetEnd;

  const factory CreateEventsEvent.setRepeat(EventRepeatModel? repeat) =
      _SetRepeat;

  const factory CreateEventsEvent.addFile(
    bool isDoc, {
    String? name,
    Uint8List? file,
  }) = _AddFileEvent;

  const factory CreateEventsEvent.deleteFile(int index) = _DeleteFile;

  const factory CreateEventsEvent.save() = _SaveEvent;

  const factory CreateEventsEvent.delete() = _DeleteEvent;

  const factory CreateEventsEvent.updateEvent() = _UpdateEvent;
}
