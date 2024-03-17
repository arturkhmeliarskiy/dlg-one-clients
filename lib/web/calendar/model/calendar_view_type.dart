import 'package:dls_one/core/core.dart';

enum CalendarViewType {
  day(Duration(minutes: 30)),
  week(Duration(hours: 1)),
  month(Duration(hours: 1));

  const CalendarViewType(this.popupMenuDuration);

  final Duration popupMenuDuration;

  String get getTitle {
    switch (this) {
      case CalendarViewType.day:
        return S.current.day;
      case CalendarViewType.week:
        return S.current.week;
      case CalendarViewType.month:
        return S.current.month;
    }
  }
}

class CalendarViewTypeHelper {
  /// Возвращает индекс текущего состояния календаря, дневной = 0, недельный = 1
  /// месячный - 2
  static int getIndexFromTitle(String title) {
    for (final type in CalendarViewType.values) {
      if (type.getTitle == title) {
        return CalendarViewType.values.indexOf(type);
      }
    }
    // возвращает -1, если заголовок не найден
    return -1;
  }
}
