import 'package:collection/collection.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/create_events/create_events.dart';
import 'package:dls_one/web/create_events/model/src/event_repeat_model.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rest_api/rest_api.dart';

part 'create_events_model.freezed.dart';

@freezed
class CreateEventsModel with _$CreateEventsModel {
  const factory CreateEventsModel({
    @Default('') String name,
    @Default('') String description,
    String? place,
    DlsTasks? task,
    DlsSprintModel? sprint,
    @Default([]) List<DlsFileData> files,
    DLSUser? currentUser,
    DLSUser? organizer,
    @Default(ScheduleViewType.today) ScheduleViewType scheduleViewType,
    @Default([]) List<DLSUser> members,
    @Default(true) bool online,
    @Default(false) bool allDay,
    DateTime? date,
    @Default(TimeOfDay(hour: 0, minute: 0)) TimeOfDay start,
    @Default(TimeOfDay(hour: 1, minute: 0)) TimeOfDay end,
    TimeOfDay? moveStart,
    TimeOfDay? moveEnd,
    EventRepeatModel? repeat,
    @Default(EventNotificationType.min15) EventNotificationType notifyBefore,
    @Default(false) bool memberInvite,
    TaskEventModel? event,
    CreateTaskEventRequest? request,
    String? matrixRoom,
  }) = _CreateEventsModel;
}

extension CreateEventsModelExt on CreateEventsModel {
  bool get saveEnabled {
    // TODO config another if it's necessary
    if (date == null || name.isEmpty) {
      return false;
    }
    if (event != null && request == null) {
      return false;
    }
    return true;
  }

  DateTime? get startAt {
    final date = this.date;
    if (date == null) {
      return null;
    }
    if (allDay) {
      return date;
    } else {
      return date.add(start.toDuration());
    }
  }

  DateTime? get endAt {
    final date = this.date;
    if (date == null) {
      return null;
    }
    if (allDay) {
      return date.add(const Duration(days: 1));
    } else {
      return date.add(end.toDuration());
    }
  }
}

extension CreateEventsTaskEventModelExt on TaskEventModel {
  CreateEventsModel toEventModel() {
    EventRepeatModel? currentRepeat;
    final repeat = this.repeat;
    if (repeat != null) {
      currentRepeat = EventRepeatModel(
        type: repeat.repeatType,
        repeatDays: repeat.days ?? [],
        weekDay: repeat.days?.firstOrNull ?? 1,
        weekNumber: repeat.weekOfMonth ?? 1,
        repeatTill: repeat.repeatTill,
      );
    }
    return CreateEventsModel(
      name: title,
      description: description ?? '',
      place: (location ?? '').isEmpty ? null : location,
      online: type == TaskEventType.online,
      date: startAt,
      start: (startAt ?? DateTime(0)).timeOfDay(),
      end: (endAt ?? DateTime(0)).timeOfDay(),
      allDay: isAllDay ?? false,
      memberInvite: isInviteOthers ?? false,
      notifyBefore: notificationType ?? EventNotificationType.min15,
      members: members?.map((e) => e.toUser()).toList() ?? [],
      // TODO config after API fix
      // files: ,
      organizer: user,
      repeat: currentRepeat,
      task: task,
      event: this,
      matrixRoom: matrixRoom,
    );
  }
}
