import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/create_events/create_events.dart';
import 'package:dls_one/web/create_events/model/src/event_repeat_model.dart';
import 'package:dls_one/web/create_events/widget/create_event_repeat_view.dart';
import 'package:dls_one/web/sprints/view/widgets/completed_sprint_page/right_column/date_select_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api/rest_api.dart';

class CreateEventDateView extends StatelessWidget {
  const CreateEventDateView({super.key, required this.model});

  final CreateEventsModel model;

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<CreateEventsBloc>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DlsPadding.symmetric(
          horizontal: 20.w,
          child: DlsTitledSwitch(
            onChanged: (allDay) =>
                bloc.add(CreateEventsEvent.setAllDay(allDay: allDay)),
            value: model.allDay,
            info: S.current.allDay,
          ),
        ),
        SizedBox(height: 20.h),
        DlsPadding.symmetric(
          horizontal: 20.w,
          child: Text(
            S.current.date,
            style: context.ts_s14h22_4w400.copyWith(
              color: context.c_text_grey,
            ),
          ),
        ),
        SizedBox(height: 12.h),
        DlsPadding.symmetric(
          horizontal: 20.w,
          child: Align(
            alignment: Alignment.centerLeft,
            child: DateSelectPicker(
              isActiveDate: true,
              dateTime: model.date,
              onSelectDate: (date) => bloc.add(CreateEventsEvent.setDate(date)),
            ),
          ),
        ),
        SizedBox(height: 12.h),
        DlsPadding.symmetric(
          horizontal: 20.w,
          child: Text(
            S.current.time,
            style: context.ts_s14h22_4w400.copyWith(
              color: context.c_text_grey,
            ),
          ),
        ),
        SizedBox(height: 8.h),
        DlsPadding.symmetric(
          horizontal: 20.w,
          child: Row(
            children: [
              TimeSelectPicker(
                onTimeChanged: (time) {
                  if (model.end.toDateTime().compareTo(time.toDateTime()) < 0) {
                    return;
                  }
                  bloc.add(CreateEventsEvent.setStart(time));
                },
                time: model.moveStart ?? model.start,
              ),
              SizedBox(width: 4.w),
              Container(
                color: context.c_text,
                width: 8,
                height: 1,
              ),
              SizedBox(width: 4.w),
              TimeSelectPicker(
                onTimeChanged: (time) {
                  if (model.start.toDateTime().compareTo(time.toDateTime()) >
                          0 &&
                      (time.hour != 0 && time.minute != 0)) {
                    return;
                  }
                  bloc.add(CreateEventsEvent.setEnd(time));
                },
                time: model.moveEnd ?? model.end,
              ),
            ],
          ),
        ),
        SizedBox(height: 8.h),
        DlsPadding.symmetric(
          horizontal: 20.w,
          child: Row(
            children: [
              SizedBox(
                width: 120.w,
                height: 32.h,
                child: DlsTitledSwitch(
                  onChanged: (repeat) {
                    bloc.add(
                      CreateEventsEvent.setRepeat(
                        repeat
                            ? const EventRepeatModel(type: EventRepeatType.day)
                            : null,
                      ),
                    );
                  },
                  value: model.repeat != null,
                  info: S.current.eventRepeat,
                ),
              ),
              if (model.repeat?.type != null)
                Expanded(
                  child: DlsDropDownButton<EventRepeatType>(
                    items: EventRepeatType.items,
                    value: model.repeat?.type,
                    onFormat: (type) => type?.text,
                    onChanged: (type) {
                      if (type == null) {
                        return;
                      }
                      bloc.add(
                        CreateEventsEvent.setRepeat(
                          model.repeat?.copyWith(type: type),
                        ),
                      );
                    },
                    button: Row(
                      children: [
                        DlsPadding.only(
                          right: 8.w,
                          child: Text(
                            model.repeat?.type.text ?? '',
                            style: context.ts_s14h14w500.copyWith(
                              color: context.c_blue,
                            ),
                          ),
                        ),
                        WebDropdownMenuIcon(
                          isMenuOpen: false,
                          color: context.c_blue,
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ),
        CreateEventRepeatView(model: model),
        if (model.repeat != null)
          DlsPadding.symmetric(
            horizontal: 20.w,
            child: Row(
              children: [
                SizedBox(
                  width: 140.w,
                  height: 32.h,
                  child: DlsTitledSwitch(
                    onChanged: (repeat) {
                      final repeatModel = model.repeat?.copyWith(
                        repeatTill: repeat
                            ? model.date?.add(const Duration(days: 99))
                            : null,
                      );
                      bloc.add(CreateEventsEvent.setRepeat(repeatModel));
                    },
                    value: model.repeat?.repeatTill != null,
                    info: S.current.repeatTill,
                  ),
                ),
                if (model.repeat?.repeatTill != null)
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: DateSelectPicker(
                        isActiveDate: true,
                        dateTime: model.repeat?.repeatTill,
                        onSelectDate: (DateTime value) {
                          bloc.add(
                            CreateEventsEvent.setRepeat(
                              model.repeat?.copyWith(repeatTill: value),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
              ],
            ),
          ),
      ],
    );
  }
}
