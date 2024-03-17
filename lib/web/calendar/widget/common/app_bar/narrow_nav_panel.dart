import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/calendar/calendar.dart';
import 'package:dls_one/web/calendar/widget/common/app_bar/nav_panel_tab_bar.dart';
import 'package:dls_one/web/calendar/widget/common/navigation_angle_icon.dart';
import 'package:dls_one/web/calendar/widget/common/small_calendar_label.dart';
import 'package:flutter/material.dart';

class NarrowNavPanel extends StatelessWidget {
  const NarrowNavPanel({
    required this.onSmallCalendarTap,
    required this.selectedDay,
    required this.selectedViewTypeIndex,
    required this.onTodayButtonTap,
    this.parentKey,
    super.key,
  });

  final int selectedViewTypeIndex;
  final void Function(BuildContext) onSmallCalendarTap;
  final VoidCallback onTodayButtonTap;
  final DateTime selectedDay;
  final GlobalKey? parentKey;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 39.h,
          color: context.c_appbar,
          padding: EdgeInsets.only(
            right: 16.w,
            left: 16.w,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: onTodayButtonTap,
                child: Text(
                  S.current.today,
                  style: context.ts_s12h14w400,
                ),
              ),
              SmallCalendarLabel(
                parentKey: parentKey,
                onSmallCalendarTap: onSmallCalendarTap,
                selectedDay: selectedDay,
                viewType: CalendarViewType.values[selectedViewTypeIndex],
              )
            ],
          ),
        )
      ],
    );
  }
}
