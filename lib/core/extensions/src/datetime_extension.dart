import 'package:flutter/material.dart';

extension DateTimeExtension on DateTime {
  TimeOfDay timeOfDay() {
    return TimeOfDay(hour: hour, minute: minute);
  }

  DateTime byDay() => DateTime(year, month, day);

  DateTime startOfDay() => byDay();

  /// Следующий день, минус 1 миллисекунда.
  ///
  /// Для Iso8601 минимальая отображаемая единица - миллисекунда.
  DateTime endOfDay() => byDay()
      .add(const Duration(days: 1))
      .subtract(const Duration(microseconds: 1));

  bool isSameDayWith(DateTime date) => byDay() == date.byDay();

  DateTime applyTime(TimeOfDay time) => copyWith(
        hour: time.hour,
        minute: time.minute,
      );

  DateTime applyDay(DateTime date) => copyWith(
        year: date.year,
        month: date.month,
        day: date.day,
      );

  /// Возвращает массив DateTime с понедельника по воскресенье от текущей даты
  List<DateTime> getWeekDates() {
    final dayOfTheWeek = weekday;
    final startOfWeek = subtract(Duration(days: dayOfTheWeek - 1));

    return List<DateTime>.generate(
      7,
      (index) => startOfWeek.add(Duration(days: index)),
    );
  }

  /// Возвращает первый день недели
  DateTime getFirstDayOfWeek() {
    return getWeekDates().first;
  }
  /// Возвращает последний день недели
  DateTime getLastDayOfWeek() {
    return getWeekDates().last;
  }

  /// Возвращает первый день месяца, время 00.00.00
  DateTime getFirstDayOfMonth() {
    return DateTime(year, month, 1, 0, 0);
  }

  /// Возвращает последний день месяца, время 23.59.59
  DateTime getLastDayOfMonth() {
    final lastDay = DateTime(year, month + 1, 0);
    return lastDay.endOfDay();
  }

  // TODO(Stas): Экстеншн будет исправлен после ответа дизайнеров, временное решение
  String fancyDate() {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final yesterday = DateTime(now.year, now.month, now.day - 1);
    final tomorrow = DateTime(now.year, now.month, now.day + 1);

    final dateToCheck = DateTime(year, month, day);

    if (dateToCheck == today) {
      return 'Сегодня';
    } else if (dateToCheck == yesterday) {
      return 'Вчера';
    } else if (dateToCheck == tomorrow) {
      return 'Завтра';
    } else if (dateToCheck.isBefore(now)) {
      return 'Давным давно';
    } else {
      return 'В светлом будущем';
    }
  }
}
