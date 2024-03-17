import 'package:dls_one/core/core.dart';
import 'package:dls_one/core/widgets/src/date/day_schedule/view/day_schedule_item.dart';
import 'package:dls_one/utils/src/formatters.dart';
import 'package:flutter/material.dart';

class DlsDayTimeView<T> extends StatelessWidget {
  const DlsDayTimeView({
    super.key,
    required this.date,
    this.items = const [],
    this.mainItems = const [],
    this.showHours = true,
  });

  final bool showHours;
  final DateTime date;

  // TODO type from server
  final List<DayScheduleModel<T>> items;
  final List<DayScheduleModel<T>> mainItems;

  @override
  Widget build(BuildContext context) {
    return Row(crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        SizedBox(
          height: 36,
          child: Column(
            children: [
              Text(
                formatDateDdMM(date).replaceAll('.', ''),
                style: context.ts_s14h14w400.copyWith(
                  color: context.c_blue,
                ),
              ),
              SizedBox(height: 2.h),
              Text(
                formatWeekDay(date),
                style: context.ts_s14h14w400.copyWith(
                  color: context.c_text_grey,
                ),
              ),
            ],
          ),
        ),
        SizedBox(width: 20.w),
        Expanded(
          child: DlsDayScheduleView(
            showHours: showHours,
            markers: [DateTime.now().timeOfDay()],
            items: items,
            mainItems: mainItems,
          ),
        ),
      ],
    );
  }
}
