import 'package:dls_calendar/dls_calendar.dart';
import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

class HoursColumnTime extends StatelessWidget {
  const HoursColumnTime({
    required this.hoursColumnStyle,
    required this.hourMinute,
    super.key,
  });

  final HoursColumnStyle hoursColumnStyle;
  final HourMinute hourMinute;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(width: 16.w,),
        Text(
          hoursColumnStyle
              .copyWith(textStyle: context.ts_s12h12w400)
              .timeFormatter(hourMinute),
          style: hoursColumnStyle.textStyle,
        ),
        SizedBox(width: 8.w,),
        Container(
          height: 60.h,
          width: 1,
          color: context.c_grey_stoke,
        ),
      ],
    );
  }
}
// TODO(Stas): внедрить когда потребуется неактивное время календаря
// Использование в DayView и WeekView
// hoursColumnTimeBuilder: (dayViewStyle, time) {
//   return HoursColumnTime(
//     hoursColumnStyle: dayViewStyle,
//     hourMinute: time,
//   );
// },
