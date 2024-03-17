import 'package:dls_one/features/todo/model/repeat.dart';
import 'package:dls_one/web/create_events/create_events.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rest_api/rest_api.dart';

part 'event_repeat_model.freezed.dart';

// TODO refactor to [Repeat] model
@freezed
class EventRepeatModel with _$EventRepeatModel {
  const factory EventRepeatModel({
    required EventRepeatType type,
    @Default([]) List<int> repeatDays,
    @Default(1) int weekNumber,
    @Default(1) int weekDay,
    DateTime? repeatTill,
  }) = _EventRepeatModel;
}

extension EventRepeatModelExt on EventRepeatModel {
  RepeatEventModel toRestModel({int? calendarId}) {
    List<int>? days;
    int? weekOfMonth;
    if (type == EventRepeatType.week) {
      days = repeatDays;
    }
    if (type == EventRepeatType.month) {
      weekOfMonth = weekNumber;
      days = [weekDay];
    }
    return RepeatEventModel(
      repeatType: type,
      calendarId: calendarId,
      repeatTill: repeatTill,
      days: days,
      weekOfMonth: weekOfMonth,
    );
  }

  Repeat toRepeat() {
    if (type == EventRepeatType.week) {
      return Repeat.weekly(dayNumbers: repeatDays);
    }
    if (type == EventRepeatType.month) {
      return Repeat.monthly(weekNumber: weekNumber, dayNumber: weekDay);
    }
    return const Repeat.daily();
  }
}

// TODO remove after refactor
extension RepeatExt on Repeat {
  EventRepeatModel toRepeatModel() {
    return map(
      daily: (model) {
        return const EventRepeatModel(type: EventRepeatType.day);
      },
      weekly: (model) {
        return EventRepeatModel(
          type: EventRepeatType.week,
          repeatDays: model.dayNumbers,
        );
      },
      monthly: (model) {
        return EventRepeatModel(
          type: EventRepeatType.month,
          weekNumber: model.weekNumber,
          weekDay: model.dayNumber,
        );
      },
    );
  }
}
