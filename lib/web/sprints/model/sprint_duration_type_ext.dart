import 'package:dls_one/core/core.dart';
import 'package:rest_api/rest_api.dart';

extension SprintDurationTypeExt on SprintDurationType{
  String text(){
    switch(this){
      case SprintDurationType.oneWeek:
        return S.current.weeksCount(1);
      case SprintDurationType.twoWeeks:
        return S.current.weeksCount(2);
      case SprintDurationType.fourWeeks:
        return S.current.weeksCount(4);
      case SprintDurationType.custom:
        return S.current.custom;
    }
  }

  Duration? duration(){
    if (this == SprintDurationType.oneWeek) {
      return const Duration(days: 7);
    }
    if (this == SprintDurationType.twoWeeks) {
      return const Duration(days: 14);
    }
    if (this == SprintDurationType.fourWeeks) {
      return const Duration(days: 28);
    }
    return null;
  }
}
