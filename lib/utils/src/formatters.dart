import 'package:dls_one/common/gen/localization/l10n.dart';
import 'package:dls_one/core/extensions/src/string_extension.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
String datetimeToString(DateTime dateTime) {
  return "${dateTime.hour > 0 ? "${dateTime.hour} ${tHour(dateTime.hour)} " : ''}${dateTime.minute > 0 ? "${dateTime.minute} ${tMinute(dateTime.minute)} " : ''}${dateTime.second > 0 ? "${dateTime.second} ${tSecond(dateTime.second)}" : ''}";
}

String tHour(int count) {
  if (count < 21) {
    if (count <= 1) return S.current.hour1;
    if (count > 1 && count < 5) return S.current.hour2;
    if (count >= 5) return S.current.hour5;
  }
  final cs = count
      .toString()
      .substring(count.toString().length - 1, count.toString().length);
  return tHour(int.parse(cs));
}

String tMinute(int count) {
  if (count < 21) {
    if (count <= 1) return S.current.minute1;
    if (count > 1 && count < 5) return S.current.minute2;
    if (count >= 5) return S.current.minute5;
  }
  final cs = count
      .toString()
      .substring(count.toString().length - 1, count.toString().length);
  return tMinute(int.parse(cs));
}

String tSecond(int count) {
  if (count < 21) {
    if (count <= 1) return S.current.second1;
    if (count > 1 && count < 5) return S.current.second2;
    if (count >= 5) return S.current.second5;
  }
  final cs = count
      .toString()
      .substring(count.toString().length - 1, count.toString().length);
  return tSecond(int.parse(cs));
}

/// Возвращает строку вида 10:02:34 (часы:минуты:секунды)
String formatTime(int seconds) {
  return '${Duration(seconds: seconds)}'.split('.')[0].padLeft(8, '0');
}

String formatTimeHHMMSS(Duration duration) {
  if (duration.inSeconds < 3600) {
    return "${duration.toString().split('.').first.split(':')[1].padLeft(2, "0")}:${duration.toString().split('.').first.split(':')[2].padLeft(2, "0")}";
  }
  return duration.toString().split('.').first.padLeft(8, '0');
}

String formatTimeHHMM(TimeOfDay tod) {
  if (tod.minute < 10) {
    return '${tod.hour}:0${tod.minute}';
  }
  return '${tod.hour}:${tod.minute}';
}

String formatTimeHHMMSSmm(Duration duration) {
  if (duration.inSeconds < 3600) {
    return "${duration.toString().split('.').first.split(':')[1].padLeft(2, "0")}:${duration.toString().split('.').first.split(':')[2].padLeft(2, "0")}.${duration.toString().split('.')[1][0]}${duration.toString().split('.')[1][1]}${duration.toString().split('.')[1][2]}";
  }
  return duration.toString().split('.').first.padLeft(8, '0');
}

String formatDurationBefore(Duration duration) {
  if (duration.inHours > 0) {
    return S.current.timeBefore(S.current.hoursDuration(duration.inHours));
  }
  return S.current.timeBefore(S.current.minutesDuration(duration.inMinutes));
}

String formatTimeWhen(DateTime dateTime) {
  return DateFormat.Hms().format(dateTime);
}

String formatTimeHHmm(DateTime date) {
  return DateFormat('HH:mm').format(date);
}

String formatDateDdMM(DateTime date) {
  return DateFormat('dd MMM').format(date);
}

String formatDateMMyy(DateTime date) {
  return DateFormat('LLLL yyyy').format(date);
}

String formatDateMonth(DateTime date) {
  final formatter = DateFormat('dd.MM');
  return formatter.format(date);
}

String formatDateMonthYear(DateTime date) {
  final formatter = DateFormat('dd.MM.yyyy');
  return formatter.format(date);
}

/// Возвращает день-месяц-год без точек в виде 28042023
String formatDateMonthYearNoDots(DateTime date) {
  final formatter = DateFormat('ddMMyyyy');
  return formatter.format(date);
}

/// Парсит день-месяц-год без точек (например 28042023) в DateTime
DateTime parseDateFromDateMonthYearNoDots(String dateString) {
  final day = int.parse(dateString.substring(0, 2));
  final month = int.parse(dateString.substring(2, 4));
  final year = int.parse(dateString.substring(4, 8));

  return DateTime(year, month, day);
}

String formatDateMonthTime(DateTime date) {
  return DateFormat('dd.MM HH:mm').format(date);
}

String formatWeekDay(DateTime date) {
  return DateFormat('EEE').format(date);
}

String formatWeekDayFull(DateTime date) {
  return DateFormat('EEEE').format(date);
}

String formatWeekNumber(int day) {
  final date = DateTime(2022, 8);
  return formatWeekDayFull(date.add(Duration(days: day)));
}

String formatPostDate(DateTime date) {
  // TODO config with timezone
  return DateFormat('yyyy-MM-ddTHH:mm:ss').format(date);
}

// TODO(Stas): переписать со склонениями
/// Возвращает текущую дату в виде "26 апрель 2023 • среда"
String formatDateToDDMMYYW(DateTime date, {bool withYear = true}) {
  final dayFormat = DateFormat('d');
  final monthFormat = DateFormat('MMMM');
  final yearFormat = DateFormat('y');
  final dayOfWeekFormat = DateFormat('EEEE');

  return '${dayFormat.format(date)} ${monthFormat.format(date)} '
      '${withYear ? '${yearFormat.format(date)} •' : '•'}'
      ' ${dayOfWeekFormat.format(date)}';
}

/// Возвращает дату в виде "3 октября • Пн"
String formatDateTodMMMMEEE(int year, int month, int day) {
  final date = DateTime(year, month, day);
  final formatter = DateFormat('d MMMM • EEE');
  return formatter.format(date);
}

/// Возвращает дату в виде "Пн 3", "Вт 4", "Ср 5", при этом число начинается с нового абзаца
String formatDateToWeekdayDay(int year, int month, int day) {
  final date = DateTime(year, month, day);
  final formatter = DateFormat('EEE d');
  return formatter.format(date).replaceAll(' ', '\n');
}

/// Возвращает строку в виде  "3 октября - 9 ноября 2022 • Понедельник",
/// где 3 ноября - понедельник недели куда входит date, 9 ноября - вокресенье,
/// а понедельник - текущий день недели date
String getWeekRange(DateTime date) {
  final weekDay = date.weekday;
  final startOfWeek = date.subtract(Duration(days: weekDay - 1));
  final endOfWeek = startOfWeek.add(const Duration(days: 6));

  final formatter = DateFormat('d MMMM yyyy');

  final startOfWeekStr = formatter.format(startOfWeek);
  final endOfWeekStr = formatter.format(endOfWeek);

  final weekDayFormatter = DateFormat('EEEE');
  final weekDayStr = weekDayFormatter.format(date).capitalize();

  return '$startOfWeekStr - $endOfWeekStr • $weekDayStr';
}

/// Отсекает секунды в DateTime
DateTime truncateSeconds(DateTime dateTime) {
  return DateTime(
    dateTime.year,
    dateTime.month,
    dateTime.day,
    dateTime.hour,
    dateTime.minute,
  );
}
