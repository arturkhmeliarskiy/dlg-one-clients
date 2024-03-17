import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/todo/widget/ui/week_calendart.dart/week_carousel.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class WeekCalendarMonthPicker extends StatelessWidget {
  const WeekCalendarMonthPicker({
    required this.weekShift,
    required this.startDate,
    super.key,
  });
  final ValueListenable<int> weekShift;
  final DateTime startDate;

  String formatDate(DateTime date) {
    return DateFormat('LLLL y').format(date).capitalize();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(5.r),
      // onTap: () {
      //  // TODO: show month picker
      // },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 3.h),
        child: Row(
          children: [
            ValueListenableBuilder(
              valueListenable: weekShift,
              builder: (context, value, child) => Text(
                formatDate(
                  startDate.add(
                    Duration(days: value * WeekCarousel.pageSize),
                  ),
                ),
                style: context.ts_s14h22_4w400,
              ),
            ),
            SizedBox(width: 8.w),
            Assets.icons.arrowBottom.svg(
              width: 18.r,
              height: 18.r,
            ),
          ],
        ),
      ),
    );
  }
}
