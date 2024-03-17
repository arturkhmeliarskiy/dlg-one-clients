import 'package:dls_calendar/dls_calendar.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/calendar/calendar.dart';
import 'package:flutter/material.dart';

class MonthCalendarDayItems extends StatelessWidget {
  const MonthCalendarDayItems({
    this.items = const [],
    this.onItemTap,
    super.key,
  });

  final List<CalendarItemModel> items;
  final ValueSetter<CalendarItemModel>? onItemTap;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final maxHeight = constraints.maxHeight;
        var length = items.length;
        var overflow = false;

        final itemHeight = 20.h;
        final height = length * itemHeight;

        if (height > maxHeight) {
          overflow = true;
          length =
              ((maxHeight - (maxHeight % itemHeight)) / itemHeight).round() - 1;
        }

        return Column(
          children: [
            for (var i = 0; i < length; i++)
              Padding(
                padding: EdgeInsets.symmetric(vertical: 2.h),
                child: Builder(
                  builder: (context) {
                    final item = items[i];
                    if (item.calendarItemType == CalendarItemType.event) {
                      return MonthCalendarEventItem(
                        event: items[i],
                        onTap: onItemTap == null ? null : () {
                          onItemTap?.call(items[i]);
                        },
                      );
                    }
                    // TODO config another types
                    return const SizedBox();
                  },
                ),
              ),
            if (overflow)
              Padding(
                padding: EdgeInsets.only(top: 2.h),
                child: SizedBox(
                  height: 16.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Assets.icons.calender.svg(
                        colorFilter: context.c_placeholder_color_filter,
                      ),
                      SizedBox(width: 4.w),
                      Text(
                        '+${items.length - length}',
                        style: context.ts_s10h12w400
                            .copyWith(color: context.c_placeholder),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        );
      },
    );
  }
}
