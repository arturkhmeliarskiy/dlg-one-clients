import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/create_events/create_events.dart';
import 'package:dls_one/web/sprints/view/widgets/completed_sprint_page/right_column/date_select_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NarrowCreateEventTopItems extends StatelessWidget {
  const NarrowCreateEventTopItems({required this.model, super.key});

  final CreateEventsModel model;

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<CreateEventsBloc>();
    return Column(
      children: [
        SizedBox(
          height: 32.h,
          child: Row(
            children: [
              Expanded(
                child: Text(
                  S.current.status,
                  style: context.ts_s14h22_4w400
                      .copyWith(color: context.c_text_grey),
                ),
              ),
              SizedBox(width: 4.w),
              EventTypeView(
                online: model.online,
                onChanged: (bool online) =>
                    bloc.add(CreateEventsEvent.setOnline(online: online)),
              ),
            ],
          ),
        ),
        SizedBox(height: 12.h),
        SizedBox(
          height: 32.h,
          child: Row(
            children: [
              Expanded(
                child: Text(
                  S.current.allDay,
                  style: context.ts_s14h22_4w400
                      .copyWith(color: context.c_text_grey),
                ),
              ),
              SizedBox(width: 4.w),
              DlsTitledSwitch(
                onChanged: (allDay) =>
                    bloc.add(CreateEventsEvent.setAllDay(allDay: allDay)),
                value: model.allDay,
                info: S.current.allDay,
              ),
            ],
          ),
        ),
        SizedBox(height: 12.h),
        SizedBox(
          height: 32.h,
          child: Row(
            children: [
              Expanded(
                child: Text(
                  S.current.date,
                  style: context.ts_s14h22_4w400
                      .copyWith(color: context.c_text_grey),
                ),
              ),
              SizedBox(width: 4.w),
              DateSelectPicker(
                isActiveDate: true,
                dateTime: model.date,
                onSelectDate: (date) =>
                    bloc.add(CreateEventsEvent.setDate(date)),
              ),
            ],
          ),
        ),
        SizedBox(height: 12.h),
        SizedBox(
          height: 32.h,
          child: Row(
            children: [
              Expanded(
                child: Text(
                  S.current.time,
                  style: context.ts_s14h22_4w400
                      .copyWith(color: context.c_text_grey),
                ),
              ),
              SizedBox(width: 4.w),
              // TODO make by Figma design
              Row(
                children: [
                  TimeSelectPicker(
                    onTimeChanged: (time) {
                      if (model.end.toDateTime().compareTo(time.toDateTime()) <
                          0) {
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
                      if (model.start
                                  .toDateTime()
                                  .compareTo(time.toDateTime()) >
                              0 &&
                          (time.hour != 0 && time.minute != 0)) {
                        return;
                      }
                      bloc.add(CreateEventsEvent.setEnd(time));
                    },
                    time: model.moveEnd ?? model.end,
                  ),
                ],
              )
            ],
          ),
        ),
        SizedBox(height: 12.h),
        SizedBox(
          height: 32.h,
          child: Row(
            children: [
              Expanded(
                child: Text(
                  S.current.repeat,
                  style: context.ts_s14h22_4w400
                      .copyWith(color: context.c_text_grey),
                ),
              ),
              SizedBox(width: 4.w),
              NarrowCreateEventRepeatView(model: model),
            ],
          ),
        ),
      ],
    );
  }
}
