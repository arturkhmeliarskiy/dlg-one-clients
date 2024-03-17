import 'package:dls_one/core/core.dart';
import 'package:dls_one/utils/utils.dart';
import 'package:dls_one/web/calendar/calendar.dart';
import 'package:dls_one/web/calendar/widget/common/on_hover_background_container.dart';
import 'package:flutter/material.dart';

class SmallCalendarLabel extends StatefulWidget {
  const SmallCalendarLabel({
    required this.onSmallCalendarTap,
    required this.selectedDay,
    this.parentKey,
    this.viewType = CalendarViewType.day,
    super.key,
  });

  final void Function(BuildContext) onSmallCalendarTap;
  final DateTime selectedDay;
  final GlobalKey? parentKey;
  final CalendarViewType viewType;

  @override
  State<SmallCalendarLabel> createState() => _SmallCalendarLabelState();
}

class _SmallCalendarLabelState extends State<SmallCalendarLabel> {
  String get _date {
    // дневной календарь
    if (widget.viewType == CalendarViewType.day || (widget.viewType == CalendarViewType.week && _isMobile)) {
      return formatDateToDDMMYYW(widget.selectedDay, withYear: !_isMobile);
    }
    // месячный календарь
    else if (widget.viewType == CalendarViewType.month) {
      return txt(formatDateMMyy(widget.selectedDay), upperCaseFistSymbol: true);
    }
    // Недельный календарь
    return getWeekRange(widget.selectedDay);
  }

  final bool _isMobile =
      DLSLayoutItemBuilder.values(wide: false, narrow: true)();

  @override
  Widget build(BuildContext context) {
    return OnHoverBackgroundTappableContainer(
      parentKey: widget.parentKey,
      onTap: widget.onSmallCalendarTap,
      backgroundColor: context.c_grey_stoke,
      padding: EdgeInsets.symmetric(vertical: 7.h, horizontal: 5.w),
      borderRadius: BorderRadius.circular(5),
      child: Row(
        children: [
          if (!_isMobile)
            SizedBox(
              width: 5.w,
            ),
          Text(
            _date,
            style: _isMobile ? context.ts_s12h14w400 : context.ts_s14h14w400,
          ),
          SizedBox(
            width: _isMobile ? 7.w : 13.w,
          ),
          Assets.icons.calendarDownAngle.svg(),
          if (!_isMobile)
            SizedBox(
              width: 5.w,
            ),
        ],
      ),
    );
  }
}
