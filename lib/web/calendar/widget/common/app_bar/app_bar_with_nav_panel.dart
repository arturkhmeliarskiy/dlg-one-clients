import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/calendar/bloc/calendar_bloc.dart';
import 'package:dls_one/web/calendar/widget/common/app_bar/calendar_app_bar.dart';
import 'package:dls_one/web/calendar/widget/common/app_bar/narrow_nav_panel.dart';
import 'package:dls_one/web/calendar/widget/common/app_bar/wide_nav_panel.dart';
import 'package:dls_one/web/calendar/model/model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppBarWithNavPanel extends StatefulWidget implements PreferredSizeWidget {
  const AppBarWithNavPanel({
    required this.onLeftAngleTap,
    required this.onRightAngleTap,
    required this.onSmallCalendarTap,
    required this.currentDay,
    required this.isMobile,
    required this.selectedViewTypeIndex,
    required this.onViewTypeChanged,
    required this.onMobileTodoButtonTap,
    required this.onNarrowTodayButtonTap,
    required this.onWideTodoSelected,
    required this.onWideTaskEventSelected,
    this.parentKey,
    super.key,
  });

  final VoidCallback onLeftAngleTap;
  final VoidCallback onRightAngleTap;
  final VoidCallback onNarrowTodayButtonTap;
  final void Function(BuildContext) onSmallCalendarTap;
  final DateTime currentDay;
  final GlobalKey? parentKey;
  final bool isMobile;
  final int selectedViewTypeIndex;
  final ValueChanged<CalendarViewType> onViewTypeChanged;
  final VoidCallback onMobileTodoButtonTap;
  final VoidCallback onWideTodoSelected;
  final VoidCallback onWideTaskEventSelected;

  @override
  Size get preferredSize => Size.fromHeight(isMobile ? 100.h : 130.h);

  @override
  State<AppBarWithNavPanel> createState() => _AppBarWithNavPanelState();
}

class _AppBarWithNavPanelState extends State<AppBarWithNavPanel> {
  final bool _isMobile =
      DLSLayoutItemBuilder.values(wide: false, narrow: true)();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CalendarBloc, CalendarState>(
      builder: (context, state) {
        return Column(
          children: [
            CalendarAppBar(
              onWideTodoSelected: widget.onWideTodoSelected,
              onWideTaskEventSelected: widget.onWideTaskEventSelected,
              onNarrowTodoButtonTap: widget.onMobileTodoButtonTap,
              onViewTypeChanged: widget.onViewTypeChanged,
              selectedViewTypeIndex: widget.selectedViewTypeIndex,
            ),
            const DLSDivider(),
            if (_isMobile)
              NarrowNavPanel(
                onTodayButtonTap: widget.onNarrowTodayButtonTap,
                selectedViewTypeIndex: widget.selectedViewTypeIndex,
                parentKey: widget.parentKey,
                selectedDay: widget.currentDay,
                onSmallCalendarTap: widget.onSmallCalendarTap,
              )
            else
              WideNavPanel(
                onViewTypeChanged: widget.onViewTypeChanged,
                selectedViewTypeIndex: widget.selectedViewTypeIndex,
                parentKey: widget.parentKey,
                selectedDay: widget.currentDay,
                onLeftAngleTap: widget.onLeftAngleTap,
                onRightAngleTap: widget.onRightAngleTap,
                onSmallCalendarTap: widget.onSmallCalendarTap,
              ),
            const DLSDivider(),
          ],
        );
      },
    );
  }
}
