import 'package:dls_calendar/dls_calendar.dart';

/// Возвращает DateTime, объединяя год, месяц и день DateTime, часы и минуты из HourMinute
DateTime getDateTimeFromHourMinute(
    DateTime dateTime,
    HourMinute hourMinute,
    ) {
  return DateTime(dateTime.year, dateTime.month, dateTime.day, hourMinute.hour,
      hourMinute.minute);
}