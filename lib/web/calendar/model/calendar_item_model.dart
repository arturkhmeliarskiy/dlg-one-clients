import 'package:dls_calendar/dls_calendar.dart';
import 'package:dls_one/features/todo/model/repeat.dart';
import 'package:dls_one/features/todo/model/todo_model.dart';
import 'package:dls_one/features/todo/model/todo_time_config.dart';
import 'package:dls_one/web/calendar/model/popup_menu_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rest_api/rest_api.dart';

part 'calendar_item_model.freezed.dart';

@freezed
class CalendarItemModel with _$CalendarItemModel {
  const CalendarItemModel._();

  const factory CalendarItemModel.todo(TodoModel model) = TodoCalendarItemModel;

  const factory CalendarItemModel.event(TaskEventModel model) =
      TaskEventCalendarItemModel;

  const factory CalendarItemModel.popupMenu(PopupMenuModel model) =
      PopupMenuCalendarItemModel;

  DateTime? get startDateTime => when(
        todo: (model) => model.time?.startTime,
        event: (model) => model.startAt,
        popupMenu: (model) => model.startDateTime,
      );

  DateTime? get endDateTime => when(
        todo: (model) => model.time?.expireTime,
        event: (model) => model.endAt,
        popupMenu: (model) => model.endDateTime,
      );

  int? get id => when(
        todo: (model) => model.id,
        event: (model) => model.id,
        popupMenu: (model) => null,
      );

  CalendarItemType get calendarItemType => when(
        todo: (model) => CalendarItemType.todo,
        event: (model) => CalendarItemType.event,
        popupMenu: (model) => CalendarItemType.popupMenu,
      );

  String get title => when(
        todo: (model) => model.title,
        event: (model) => model.title,
        popupMenu: (model) => '',
      );

  bool? get todoIsFullDay => when(
        todo: (model) => model.time?.isFullDay ?? false,
        event: (_) => null,
        popupMenu: (_) => null,
      );

  bool? get hasRepeat => when(
        todo: (model) => model.time?.repeat != null,
        event: (model) => model.repeat != null,
        popupMenu: (_) => null,
      );

  TodoStatus? get todoStatus => when(
        todo: (model) => model.status,
        event: (_) => null,
        popupMenu: (_) => null,
      );

  TaskEventType? get taskEventType => when(
        todo: (model) => null,
        event: (model) => model.type,
        popupMenu: (model) => null,
      );

  CalendarItemModel copyWithStartDateTime(DateTime startDateTime) => map(
        todo: (todoCalendarItem) {
          final timeConfig = todoCalendarItem.model.time ??
              TodoTimeConfig(
                startTime: startDateTime,
                expireTime: startDateTime.add(const Duration(hours: 1)),
              );

          return todoCalendarItem.copyWith(
            model: todoCalendarItem.model.copyWith(
              time: timeConfig.copyWith(
                startTime: startDateTime,
              ),
            ),
          );
        },
        event: (eventCalendarItem) => eventCalendarItem.copyWith(
          model: eventCalendarItem.model.copyWith(startAt: startDateTime),
        ),
        popupMenu: (popupMenuItem) => popupMenuItem.copyWith(
          model: popupMenuItem.model.copyWith(startDateTime: startDateTime),
        ),
      );

  CalendarItemModel copyWithEndDateTime(DateTime endDateTime) => map(
        todo: (todoCalendarItem) {
          final timeConfig = todoCalendarItem.model.time ??
              TodoTimeConfig(
                startTime: endDateTime.subtract(const Duration(hours: 1)),
                expireTime: endDateTime,
              );

          return todoCalendarItem.copyWith(
            model: todoCalendarItem.model.copyWith(
              time: timeConfig.copyWith(
                expireTime: endDateTime,
              ),
            ),
          );
        },
        event: (eventCalendarItem) => eventCalendarItem.copyWith(
          model: eventCalendarItem.model.copyWith(endAt: endDateTime),
        ),
        popupMenu: (popupMenuItem) => popupMenuItem.copyWith(
          model: popupMenuItem.model.copyWith(endDateTime: endDateTime),
        ),
      );

  CalendarItemModel copyWithStartAndEndDateTime(
    DateTime startDateTime,
    DateTime endDateTime,
  ) =>
      map(
        todo: (todoCalendarItem) {
          final timeConfig = todoCalendarItem.model.time ??
              TodoTimeConfig(
                startTime: startDateTime,
                expireTime: endDateTime,
              );

          return todoCalendarItem.copyWith(
            model: todoCalendarItem.model.copyWith(
              time: timeConfig.copyWith(
                startTime: startDateTime,
                expireTime: endDateTime,
              ),
            ),
          );
        },
        event: (eventCalendarItem) => eventCalendarItem.copyWith(
          model: eventCalendarItem.model
              .copyWith(startAt: startDateTime, endAt: endDateTime),
        ),
        popupMenu: (popupMenuItem) => popupMenuItem.copyWith(
          model: popupMenuItem.model.copyWith(
            startDateTime: startDateTime,
            endDateTime: endDateTime,
          ),
        ),
      );

  CalendarItemModel copyWithId(int id) => map(
        todo: (todoCalendarItem) => todoCalendarItem.copyWith(
          model: todoCalendarItem.model.copyWith(
            id: id,
          ),
        ),
        event: (eventCalendarItem) => eventCalendarItem.copyWith(
          model: eventCalendarItem.model.copyWith(id: id),
        ),
        popupMenu: (popupMenuItem) => popupMenuItem,
      );

  CalendarItemModel copyWithTitle(String title) => map(
        todo: (todoCalendarItem) => todoCalendarItem.copyWith(
          model: todoCalendarItem.model.copyWith(
            title: title,
          ),
        ),
        event: (eventCalendarItem) => eventCalendarItem.copyWith(
          model: eventCalendarItem.model.copyWith(title: title),
        ),
        popupMenu: (popupMenuItem) => popupMenuItem,
      );

  /// Работает только для дел в которой есть класс TimeConfig, иначе возвращает
  /// тот же инстанс что и был
  CalendarItemModel copyWithTodoIsFullDay(bool isFullDay) => map(
        todo: (todoCalendarItem) {
          final timeConfig = todoCalendarItem.model.time?.copyWith(
            isFullDay: isFullDay,
          );

          return todoCalendarItem.copyWith(
            model: todoCalendarItem.model.copyWith(
              time: timeConfig,
            ),
          );
        },
        event: (eventCalendarItem) => eventCalendarItem,
        popupMenu: (popupMenuItem) => popupMenuItem,
      );

  /// Работает только для дел в которой есть класс TimeConfig, иначе возвращает
  /// тот же инстанс что и был
  CalendarItemModel copyWithTodoRepeat(Repeat todoRepeat) => map(
        todo: (todoCalendarItem) {
          final timeConfig = todoCalendarItem.model.time?.copyWith(
            repeat: todoRepeat,
          );

          return todoCalendarItem.copyWith(
            model: todoCalendarItem.model.copyWith(
              time: timeConfig,
            ),
          );
        },
        event: (eventCalendarItem) => eventCalendarItem,
        popupMenu: (popupMenuItem) => popupMenuItem,
      );

  /// Работает только для дел иначе возвращает тот же инстанс что и был
  CalendarItemModel copyWithTodoStatus(TodoStatus todoStatus) => map(
        todo: (todoCalendarItem) => todoCalendarItem.copyWith(
          model: todoCalendarItem.model.copyWith(status: todoStatus),
        ),
        event: (eventCalendarItem) => eventCalendarItem,
        popupMenu: (popupMenuItem) => popupMenuItem,
      );

  /// Работает только для мероприятий иначе возвращает тот же инстанс что и был
  CalendarItemModel copyWithTaskEventType(TaskEventType taskEventType) => map(
        todo: (todoCalendarItem) => todoCalendarItem,
        event: (eventCalendarItem) => eventCalendarItem.copyWith(
          model: eventCalendarItem.model.copyWith(type: taskEventType),
        ),
        popupMenu: (popupMenuItem) => popupMenuItem,
      );
}
