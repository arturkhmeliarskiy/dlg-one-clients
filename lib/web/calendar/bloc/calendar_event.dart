part of 'calendar_bloc.dart';

@freezed
class CalendarEvent with _$CalendarEvent {
  const CalendarEvent._();

  const factory CalendarEvent.init({
    required DateTime date,
    CalendarViewType? viewType,
  }) = _Init;

  const factory CalendarEvent.fetch({
    @Default(true) bool withLoading,
  }) = _Fetch;

  const factory CalendarEvent.setDateAndViewType({
    required DateTime date,
    CalendarViewType? viewType,
  }) = _SetDateAndViewType;

  const factory CalendarEvent.changeViewType(CalendarViewType type) =
      _ChangeViewType;

  const factory CalendarEvent.addCalendarItem(
    CalendarItemType calendarItemType,
    DateTime? startDateTime,
    DateTime? endDateTime,
  ) = _AddCalendarItem;

  const factory CalendarEvent.emitError(
    String message,
  ) = _EmitError;

  const factory CalendarEvent.changeCalendarItemTime(
    int? id,
    CalendarItemType calendarItemType,
    DateTime timeStart,
    DateTime timeEnd,
    Object model,
  ) = _ChangeCalendarItemTime;

  const factory CalendarEvent.changeTodoStatus(
    int id,
    bool isCompleted,
  ) = _ChangeTodoStatus;

  const factory CalendarEvent.manageMenu(
    DateTime menuTime,
  ) = _ManageMenu;

  const factory CalendarEvent.removeMenu() = _RemoveMenu;

  const factory CalendarEvent.updateModel(CalendarModel model) = _UpdateModel;

  const factory CalendarEvent.moveEventTime(
    DateTime time,
    CalendarItemModel event,
  ) = _MoveEventTime;
}
