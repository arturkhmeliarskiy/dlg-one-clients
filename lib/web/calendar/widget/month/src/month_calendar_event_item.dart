import 'package:dls_one/core/core.dart';
import 'package:dls_one/utils/utils.dart';
import 'package:dls_one/web/calendar/calendar.dart';
import 'package:flutter/material.dart';
import 'package:rest_api/rest_api.dart';

class MonthCalendarEventItem extends StatelessWidget {
  const MonthCalendarEventItem({
    required this.event,
    this.onTap,
    super.key,
  });

  final CalendarItemModel event;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final online = event.taskEventType == TaskEventType.online;
    final textColor = online ? context.c_purple : context.c_tiffany;
    final typeColor =
        online ? context.c_purple_background : context.c_tiffany_background;
    final child = GestureDetector(
      onTap: onTap,
      child: Container(
        height: 16.h,
        width: 160.w,
        decoration: BoxDecoration(
          color: typeColor,
          borderRadius: BorderRadius.circular(2.r),
        ),
        padding: EdgeInsets.symmetric(horizontal: 4.w),
        child: Row(
          children: [
            Expanded(
              child: Text(
                event.title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: context.ts_s12h12w500.copyWith(
                  fontSize: 10.sp,
                  color: textColor,
                  height: 1,
                ),
              ),
            ),
            SizedBox(width: 4.w),
            Text(
              '${formatTimeHHmm(event.startDateTime ?? DateTime(0))}'
              ' - '
              '${formatTimeHHmm(event.endDateTime ?? DateTime(0))}',
              textAlign: TextAlign.end,
              style: context.ts_s12h12w400.copyWith(
                fontSize: 10.sp,
                color: textColor,
                height: 1,
              ),
            )
          ],
        ),
      ),
    );
    return Draggable(
      data: event,
      onDragStarted: () {},
      onDragCompleted: () {},
      onDraggableCanceled: (value1, value2) {},
      onDragUpdate: (v) {},
      onDragEnd: (v) {},
      childWhenDragging: Container(
        height: 16.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2.r),
          color: context.c_grey_stoke,
        ),
      ),
      feedback: child,
      child: child,
    );
  }
}
