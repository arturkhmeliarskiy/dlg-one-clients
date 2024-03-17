import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/calendar/calendar.dart';
import 'package:dls_one/web/calendar/widget/common/app_bar/nav_panel_tab_bar.dart';
import 'package:dls_one/web/calendar/widget/common/navigation_angle_icon.dart';
import 'package:dls_one/web/calendar/widget/common/small_calendar_label.dart';
import 'package:flutter/material.dart';

class WideNavPanel extends StatefulWidget {
  const WideNavPanel({
    required this.onLeftAngleTap,
    required this.onRightAngleTap,
    required this.onSmallCalendarTap,
    required this.selectedDay,
    required this.selectedViewTypeIndex,
    required this.onViewTypeChanged,
    this.parentKey,
    super.key,
  });

  final VoidCallback onLeftAngleTap;
  final int selectedViewTypeIndex;
  final VoidCallback onRightAngleTap;
  final void Function(BuildContext) onSmallCalendarTap;
  final DateTime selectedDay;
  final GlobalKey? parentKey;
  final ValueChanged<CalendarViewType> onViewTypeChanged;

  @override
  State<WideNavPanel> createState() => _WideNavPanelState();
}

class _WideNavPanelState extends State<WideNavPanel> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 76.h,
          color: context.c_appbar,
          padding: const EdgeInsets.only(
            left: 15,
            right: 20,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  NavigationAngleIcon(
                    icon: Assets.icons.calendarLeftAngle.svg(),
                    onIconTap: widget.onLeftAngleTap,
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  NavigationAngleIcon(
                    icon: Assets.icons.calendarRightAngle.svg(),
                    onIconTap: widget.onRightAngleTap,
                  ),
                  SmallCalendarLabel(
                    parentKey: widget.parentKey,
                    onSmallCalendarTap: widget.onSmallCalendarTap,
                    selectedDay: widget.selectedDay,
                    viewType:
                        CalendarViewType.values[widget.selectedViewTypeIndex],
                  ),
                ],
              ),
              NavPanelTabBar(
                selectedViewTypeIndex: widget.selectedViewTypeIndex,
                onViewTypeChanged: widget.onViewTypeChanged,
              ),
            ],
          ),
        )
      ],
    );
  }
}
