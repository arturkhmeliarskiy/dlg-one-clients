import 'package:dls_one/core/core.dart';

enum ScheduleViewType{
  today,
  week;

  String get name{
    if(this == week) return S.current.forWeek;
    return S.current.forToday;
  }
}
