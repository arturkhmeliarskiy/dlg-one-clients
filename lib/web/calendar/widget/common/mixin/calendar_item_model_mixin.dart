import 'package:auto_route/auto_route.dart';
import 'package:dls_calendar/dls_calendar.dart';
import 'package:dls_one/app/router/app_router.dart';
import 'package:dls_one/web/calendar/bloc/calendar_bloc.dart';
import 'package:dls_one/web/calendar/model/calendar_item_model.dart';
import 'package:dls_one/web/calendar/widget/common/popup_menu/calendar_popup_menu.dart';
import 'package:dls_one/web/calendar/widget/common/todo_or_event.dart';
import 'package:flutter/material.dart';
import 'package:rest_api/rest_api.dart';

// TODO(Stas): вынести работу с блоком на уровень вызова виджета календаря
mixin ListCalendarItemModelMixin {
  /// Маппинг моделей [CalendarItemModel] в [UICalendarItem] для отображения
  /// на сетке календаря
  List<UICalendarItem> mapCalendarItemModelsToUICalendarItems(
    List<CalendarItemModel> calendarItems,
    CalendarBloc bloc,
  ) {
    return calendarItems.map(
      (calendarItem) {
        if (calendarItem is TodoCalendarItemModel) {
          return UICalendarItem(
            calendarItemType: calendarItem.calendarItemType,
            restModel: calendarItem.model,
            // маппяться должны только те модели у которых начальная и конечная дата не null
            startDateTime: calendarItem.startDateTime ?? DateTime.now(),
            endDateTime: calendarItem.endDateTime ?? DateTime.now(),
            margin: EdgeInsets.zero,
            padding: EdgeInsets.zero,
            id: calendarItem.id,
            title: calendarItem.title,
            backgroundColor: Colors.transparent,
            itemBuilder: (_, __, ___, ____, _____) {
              return TodoOrEvent(
                onTap: () async {},
                key: ValueKey(
                  calendarItem.model.toString(),
                ),
                calendarItemModel: calendarItem,
                onCheckboxTodoChanged: (value) {
                  if ((value != null) && (calendarItem.id != null)) {
                    bloc.add(
                      CalendarEvent.changeTodoStatus(
                        calendarItem.id!,
                        value,
                      ),
                    );
                  }
                },
                onMouseHoverEnter: () =>
                    bloc.add(const CalendarEvent.removeMenu()),
              );
            },
          );
        } else if (calendarItem is TaskEventCalendarItemModel) {
          return UICalendarItem(
            calendarItemType: calendarItem.calendarItemType,
            restModel: calendarItem.model,
            // маппиться должны только те модели у которых начальная и конечная дата не null
            startDateTime: calendarItem.startDateTime ?? DateTime.now(),
            endDateTime: calendarItem.endDateTime ?? DateTime.now(),
            margin: EdgeInsets.zero,
            padding: EdgeInsets.zero,
            id: calendarItem.id,
            title: calendarItem.title,
            backgroundColor: Colors.transparent,
            itemBuilder: (_, context, ___, ____, _____) {
              return TodoOrEvent(
                onTap: () async {
                  await context.router.push<TaskEventModel>(
                    CreateEventRoute(
                      popOnSuccess: true,
                      event: calendarItem.model,
                    ),
                  );
                  bloc.add(const CalendarEvent.fetch());
                },
                key: ValueKey(
                  calendarItem.model.toString(),
                ),
                calendarItemModel: calendarItem,
                onCheckboxTodoChanged: (value) {
                  if ((value != null) && (calendarItem.id != null)) {
                    bloc.add(
                      CalendarEvent.changeTodoStatus(
                        calendarItem.id!,
                        value,
                      ),
                    );
                  }
                },
                onMouseHoverEnter: () =>
                    bloc.add(const CalendarEvent.removeMenu()),
              );
            },
          );
        } else {
          calendarItem as PopupMenuCalendarItemModel;
          return UICalendarItem(
            calendarItemType: calendarItem.calendarItemType,
            restModel: calendarItem.model,
            // маппиться должны только те модели у которых начальная и конечная дата не null
            startDateTime: calendarItem.startDateTime ?? DateTime.now(),
            endDateTime: calendarItem.endDateTime ?? DateTime.now(),
            margin: EdgeInsets.zero,
            padding: EdgeInsets.zero,
            id: calendarItem.id,
            title: calendarItem.title,
            backgroundColor: Colors.transparent,
            itemBuilder: (_, context, ___, ____, _____) {
              return CalendarPopupMenu(
                onAddTodoButtonTap: () async {
                  bloc.add(CalendarEvent.addCalendarItem(
                    CalendarItemType.todo,
                    calendarItem.startDateTime,
                    calendarItem.endDateTime,
                  ));
                },
                onAddEventButtonTap: () async {
                  await context.router.push<TaskEventModel>(
                    CreateEventRoute(
                      popOnSuccess: true,
                      startAt: calendarItem.startDateTime,
                      endAt: calendarItem.endDateTime,
                    ),
                  );
                  bloc.add(const CalendarEvent.fetch());
                },
              );
            },
          );
        }
      },
    ).toList();
  }

  List<CalendarItemModel> filterByHasDateAndDate({
    required List<CalendarItemModel> source,
    required DateTime date,
  }) {
    return source.where(
      (item) {
        if ((item.startDateTime == null) || (item.endDateTime == null)) {
          return false;
        }
        return (item.startDateTime!.day == date.day) ||
            (item.endDateTime!.day == date.day);
      },
    ).toList();
  }

  List<CalendarItemModel> filterByHasDate({
    required List<CalendarItemModel> source,
  }) {
    return source.where(
      (item) {
        if ((item.startDateTime == null) || (item.endDateTime == null)) {
          return false;
        }
        return true;
      },
    ).toList();
  }

  List<CalendarItemModel> filterByCalendarItemType({
    required List<CalendarItemModel> source,
    required CalendarItemType calendarItemType,
  }) {
    return source
        .where((item) => item.calendarItemType == calendarItemType)
        .toList();
  }

  /// Возвращает массив [UICalendarItem] у которых есть начальное и конечное время
  List<UICalendarItem> mapItemsToUIItemsForDayCalendar(
    List<CalendarItemModel> calendarItems,
    CalendarBloc bloc,
    DateTime selectedDay,
  ) {
    var source = calendarItems;
    source = filterByHasDate(source: source);
    final itemList = mapCalendarItemModelsToUICalendarItems(source, bloc);
    return itemList;
  }

  List<UICalendarItem> mapItemsToUIItemsForWeekCalendar(
    List<CalendarItemModel> calendarItems,
    CalendarBloc bloc,
  ) {
    var source = calendarItems;
    source = filterByHasDate(source: source);
    final itemList = mapCalendarItemModelsToUICalendarItems(source, bloc);
    return itemList;
  }

// List<CalendarItemModel> sortByIsFinishedAndStartDateTime({
//   required List<CalendarItemModel> source,
// }) {
//   source.sort(
//         (a, b) {
//       // Сравнение по isFinished
//       if (a.isFinished != true && b.isFinished == true) {
//         return -1;
//       } else if (a.isFinished == true && b.isFinished != true) {
//         return 1;
//       } else {
//         // Сравнение по dateTime
//         if (a.startDateTime == null && b.startDateTime == null) {
//           return 0;
//         } else if (a.startDateTime == null) {
//           return -1;
//         } else if (b.startDateTime == null) {
//           return 1;
//         } else {
//           return a.startDateTime!.compareTo(b.startDateTime!);
//         }
//       }
//     },
//   );
//   return source;
// }
//
// List<DraggableOrNotSeparatedDayCalendarTask>
// mapUICalendarItemsToDraggableOrNotSeparatedDayCalendarTasks({
//   required List<UICalendarItem> source,
// }) {
//   return source
//       .map(
//         (uIcalendarItem) =>
//         DraggableOrNotSeparatedDayCalendarTask(
//           uiCalendarItem: uIcalendarItem,
//         ),
//   )
//       .toList();
// }
//
// List<DraggableOrNotSeparatedDayCalendarTask>
// mapCalendarItemsModelsToTasksForSeparatedDayTask({
//   required bool isOneDayTask,
//   required List<CalendarItemModel> source,
//   required DateTime selectedDay,
//   required CalendarBloc bloc,
//   required bool finishedIsHided,
// }) {
//   var calendarItemModelList = source;
//   if (finishedIsHided == true) {
//     calendarItemModelList = filterByFinishedIsHided(
//       source: calendarItemModelList,
//     );
//   }
//   if (isOneDayTask == false) {
//     calendarItemModelList = filterByUnscheduled(
//       source: calendarItemModelList,
//     );
//   }
//   calendarItemModelList = filterByDate(
//     source: calendarItemModelList,
//     date: selectedDay,
//   );
//   calendarItemModelList = filterByCalendarItemType(
//     source: calendarItemModelList,
//     calendarItemType: CalendarItemType.todo,
//   );
//   calendarItemModelList = sortByIsFinishedAndStartDateTime(
//     source: calendarItemModelList,
//   );
//   final uIcalendarItemList = mapCalendarItemModelsToUICalendarItems(
//     calendarItemModelList,
//     bloc,
//   );
//   final draggableOrNotSeparatedDayCalendarTask =
//   mapUICalendarItemsToDraggableOrNotSeparatedDayCalendarTasks(
//     source: uIcalendarItemList,
//   );
//   return draggableOrNotSeparatedDayCalendarTask;
// }
//
}
