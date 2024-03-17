import 'package:dls_one/features/todo/model/repeat.dart';
import 'package:dls_one/features/todo/model/todo_model.dart';
import 'package:dls_one/features/todo/model/todo_time_config.dart';
import 'package:dls_one/web/calendar/model/calendar_item_model.dart';
import 'package:rest_api/rest_api.dart';

final DateTime now = DateTime.now();
final DateTime todayMidnight = DateTime(now.year, now.month, now.day);
final DateTime tomorrowMidnight = todayMidnight.add(const Duration(days: 1));

List<CalendarItemModel> mockCalendarItems = [
  CalendarItemModel.todo(
    TodoModel(
      id: 1,
      status: TodoStatus.processing,
      title: 'Дело 1',
      time: TodoTimeConfig(
        startTime: todayMidnight.copyWith(hour: 9),
        expireTime: todayMidnight.copyWith(hour: 10),
        repeat: const Repeat.daily(),
      ),
    ),
  ),
  CalendarItemModel.event(
    TaskEventModel(
      id: 2,
      title: 'Мероприятие 2',
      type: TaskEventType.online,
      startAt: todayMidnight.copyWith(hour: 11),
      endAt: todayMidnight.copyWith(hour: 12),
    ),
  ),
  CalendarItemModel.todo(
    TodoModel(
      id: 3,
      status: TodoStatus.processing,
      title: 'Дело 3',
      time: TodoTimeConfig(
        startTime: tomorrowMidnight.copyWith(hour: 11),
        expireTime: tomorrowMidnight.copyWith(hour: 13),
      ),
    ),
  ),
  CalendarItemModel.event(
    TaskEventModel(
      id: 4,
      title: 'Мероприятие 4',
      type: TaskEventType.offline,
      startAt: todayMidnight.copyWith(hour: 11),
      endAt: todayMidnight.copyWith(hour: 12),
    ),
  ),
  CalendarItemModel.event(
    TaskEventModel(
      id: 12,
      title: 'Мероприятие 12',
      type: TaskEventType.offline,
      startAt: todayMidnight.copyWith(hour: 11),
      endAt: todayMidnight.copyWith(hour: 12),
      repeat: const RepeatEventModel(
        repeatType: EventRepeatType.day,
      ),
    ),
  ),
  CalendarItemModel.event(
    TaskEventModel(
      id: 13,
      title: 'Мероприятие 13',
      type: TaskEventType.offline,
      startAt: todayMidnight.copyWith(hour: 11),
      endAt: todayMidnight.copyWith(hour: 12),
    ),
  ),
  CalendarItemModel.todo(
    TodoModel(
      id: 5,
      status: TodoStatus.completed,
      title: 'Дело 5',
      time: TodoTimeConfig(
        startTime: todayMidnight.copyWith(hour: 16),
        expireTime: todayMidnight.copyWith(hour: 18),
      ),
    ),
  ),
  CalendarItemModel.event(
    TaskEventModel(
      id: 6,
      title: 'Мероприятие 6',
      type: TaskEventType.online,
      startAt: todayMidnight.copyWith(hour: 19, minute: 30),
      endAt: todayMidnight.copyWith(hour: 20),
    ),
  ),
  CalendarItemModel.todo(
    TodoModel(
      id: 7,
      status: TodoStatus.processing,
      title: 'Дело 7',
      time: TodoTimeConfig(
        startTime: tomorrowMidnight.copyWith(hour: 13),
        expireTime: tomorrowMidnight.copyWith(hour: 13, minute: 45),
      ),
    ),
  ),
  CalendarItemModel.event(
    TaskEventModel(
      id: 8,
      title: 'Мероприятие 8',
      type: TaskEventType.offline,
      startAt: todayMidnight.copyWith(hour: 17),
      endAt: todayMidnight.copyWith(hour: 18),
    ),
  ),
  CalendarItemModel.todo(
    TodoModel(
      id: 9,
      status: TodoStatus.processing,
      title: 'Дело 9',
      time: TodoTimeConfig(
        startTime: tomorrowMidnight.copyWith(hour: 8),
        expireTime: tomorrowMidnight.copyWith(hour: 9),
      ),
    ),
  ),
];
