import 'package:dls_one/core/core.dart';
import 'package:rest_api/rest_api.dart';

extension EventRepeatTypeExt on EventRepeatType {
  String get text {
    if (this == EventRepeatType.day) {
      return S.current.everyday;
    } else if (this == EventRepeatType.week) {
      return S.current.everyWeek;
    }
    return S.current.everyMonth;
  }
}
