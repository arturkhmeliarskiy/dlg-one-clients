import 'package:dls_one/core/core.dart';
import 'package:dls_one/utils/src/formatters.dart';
import 'package:flutter/material.dart';

class MobileCheckDateTime {
  Widget checkDateTime(
    List<DateTime> time,
    BuildContext context,
  ) {
    switch (time.length) {
      case 2:
        return Container(
          decoration: BoxDecoration(
            color: context.c_grey_stoke,
            borderRadius: BorderRadius.circular(
              4.r,
            ),
          ),
          width: 152.w,
          height: 24.h,
          child: Row(
            children: [
              SizedBox(
                width: 6.w,
              ),
              Assets.icons.calendar.svg(
                color: context.c_text_grey,
              ),
              SizedBox(
                width: 4.w,
              ),
              Text(
                formatDateMonth(time.first),
                style: context.ts_s12h14w400.copyWith(
                  color: context.c_text_grey,
                ),
              ),
              SizedBox(
                width: 6.w,
              ),
              Text(
                '-',
                style: context.ts_s12h14w400.copyWith(
                  color: context.c_text_grey,
                ),
              ),
              SizedBox(
                width: 6.w,
              ),
              Assets.icons.calendar.svg(
                color: context.c_text_grey,
              ),
              SizedBox(
                width: 4.w,
              ),
              Text(
                formatDateMonth(time.last),
                style: context.ts_s12h14w400.copyWith(
                  color: context.c_text_grey,
                ),
              ),
            ],
          ),
        );
      case 1:
        return Container(
          decoration: BoxDecoration(
            color: context.c_grey_stoke,
            borderRadius: BorderRadius.circular(
              4.r,
            ),
          ),
          width: 74.w,
          height: 24.h,
          child: Row(children: [
            SizedBox(
              width: 6.w,
            ),
            Assets.icons.deadline.svg(
              color: context.c_text_grey,
            ),
            SizedBox(
              width: 4.w,
            ),
            Text(
              formatDateMonth(time.first),
              style: context.ts_s12h14w400.copyWith(
                color: context.c_text_grey,
              ),
            ),
          ]),
        );
      default:
        return Text(
          S.current.not_selected[0].toUpperCase() +
              S.current.not_selected.substring(1, 10),
          style: context.ts_s14h22_4w400.copyWith(
            color: context.c_grey_calendar_task_isFinished,
          ),
        );
    }
  }
}
