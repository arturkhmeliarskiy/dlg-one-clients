import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/calendar/calendar.dart';
import 'package:dls_one/web/calendar/model/calendar_view_type.dart';
import 'package:flutter/material.dart';

class NavPanelTabBar extends StatefulWidget {
  const NavPanelTabBar({
    required this.selectedViewTypeIndex,
    required this.onViewTypeChanged,
    super.key,
  });

  final int selectedViewTypeIndex;

  final ValueChanged<CalendarViewType> onViewTypeChanged;

  @override
  State<NavPanelTabBar> createState() => _NavPanelTabBarState();
}

class _NavPanelTabBarState extends State<NavPanelTabBar> {
  final List<Tab> _calendarNavPanelTabs = CalendarViewType.values
      .map(
        (type) => Tab(
          text: type.getTitle,
          height: 28.h,
        ),
      )
      .toList();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _calendarNavPanelTabs.length,
      initialIndex: widget.selectedViewTypeIndex,
      child: Container(
        width: 588.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: context.c_grey_stoke,
        ),
        child: TabBar(
          tabs: _calendarNavPanelTabs,
          onTap: (index) => widget.onViewTypeChanged(
            CalendarViewType.values[index],
          ),
          padding: EdgeInsets.all(4.r),
          labelColor: context.c_text,
          unselectedLabelStyle: context.ts_s14h22_4w400.copyWith(
            color: context.c_text_grey,
          ),
          labelStyle: context.ts_s14h22_4w400.copyWith(
            color: context.c_text,
          ),
          indicator: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: context.c_white_background,
            boxShadow: [
              BoxShadow(
                blurRadius: 5,
                color: context.c_shadow_black_opacity_10,
              )
            ],
          ),
        ),
      ),
    );
  }
}
