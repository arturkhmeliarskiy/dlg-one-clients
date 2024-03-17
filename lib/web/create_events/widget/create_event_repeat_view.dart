import 'package:dls_one/core/core.dart';
import 'package:dls_one/utils/utils.dart';
import 'package:dls_one/web/create_events/create_events.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api/rest_api.dart';

class CreateEventRepeatView extends StatelessWidget {
  const CreateEventRepeatView({super.key, required this.model});

  final CreateEventsModel model;

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<CreateEventsBloc>();
    final repeat = model.repeat;
    if (repeat == null || repeat.type == EventRepeatType.day) {
      return const SizedBox();
    }
    final type = repeat.type;
    if (type == EventRepeatType.week) {
      return DlsPadding.symmetric(
        horizontal: 10.w,
        vertical: 8.h,
        child: DlsWeekDaysView(
          onChanged: ({required int day, required bool value}) {
            final days = repeat.repeatDays.toList();
            if (value) {
              days.add(day);
            } else {
              days.remove(day);
            }
            bloc.add(
              CreateEventsEvent.setRepeat(repeat.copyWith(repeatDays: days)),
            );
          },
          checkedDays: repeat.repeatDays,
        ),
      );
    }
    return DlsPadding.symmetric(
      horizontal: 20.w,
      vertical: 8.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            S.current.weekOfMonth,
            style: context.ts_s14h22_4w400.copyWith(color: context.c_text_grey),
          ),
          SizedBox(height: 8.h),
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 156.w),
            child: DlsDropDownButton<int>(
              value: repeat.weekNumber,
              items: const [1, 2, 3, 4],
              onChanged: (v) {
                if (v == null) {
                  return;
                }
                bloc.add(
                  CreateEventsEvent.setRepeat(repeat.copyWith(weekNumber: v)),
                );
              },
              onFormat: (v) => v?.weekNumberPlural() ?? '',
              button: DlsArrowPickButton(
                text: repeat.weekNumber.weekNumberPlural() ?? '',
              ),
            ),
          ),
          SizedBox(height: 12.h),
          Text(
            S.current.dayOfWeek,
            style: context.ts_s14h22_4w400.copyWith(color: context.c_text_grey),
          ),
          SizedBox(height: 8.h),
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 156.w),
            child: DlsDropDownButton<int>(
              value: repeat.weekDay,
              items: [for (int i = 1; i <= 7; i++) i],
              onChanged: (v) {
                if (v == null) {
                  return;
                }
                bloc.add(
                  CreateEventsEvent.setRepeat(repeat.copyWith(weekDay: v)),
                );
              },
              onFormat: (v) {
                if (v == null) {
                  return '';
                }
                return txt(formatWeekNumber(v - 1), upperCaseFistSymbol: true);
              },
              button: DlsArrowPickButton(
                text: txt(
                  formatWeekNumber(repeat.weekDay - 1),
                  upperCaseFistSymbol: true,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
