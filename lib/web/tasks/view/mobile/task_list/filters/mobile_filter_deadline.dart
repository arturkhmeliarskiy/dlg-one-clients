import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/tasks/const/enums.dart';
import 'package:dls_one/web/tasks/view/mobile/task_list/filters/mobile_check_date_time.dart';
import 'package:dls_one/web/tasks/view/mobile/task_list/filters/mobile_filter_deadline_content.dart';
import 'package:flutter/material.dart';

class MobileFilterDeadline extends StatefulWidget {
  const MobileFilterDeadline({
    required this.onChangeDeadline,
    required this.filters,
    super.key,
  });

  final void Function(DateTime, DateTime) onChangeDeadline;
  final Map<FilterTypes, Object> filters;

  @override
  State<MobileFilterDeadline> createState() => _MobileFilterDeadlineState();
}

class _MobileFilterDeadlineState extends State<MobileFilterDeadline> {
  List<DateTime> listTime = [];
  final notSelected = S.current.not_selected[0].toUpperCase() +
      S.current.not_selected.substring(1, 10);

  @override
  void didUpdateWidget(covariant MobileFilterDeadline oldWidget) {
    if (widget.filters.isEmpty) {
      listTime = [];
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        await showModalBottomSheet<void>(
          context: context,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(8.r),
            ),
          ),
          isScrollControlled: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          builder: (context) {
            return StatefulBuilder(
              builder: (BuildContext context, StateSetter setStat) {
                return MobileFilerDeadlineContent(
                  onChangeDeadline: (startDate, endDate) {
                    widget.onChangeDeadline(startDate, endDate);
                    listTime = [];
                    setState(() {
                      if (startDate != DateTime(0)) {
                        listTime.add(startDate);
                      }
                      if (endDate != DateTime(0)) {
                        listTime.add(endDate);
                      }
                    });
                  },
                );
              },
            );
          },
        );
      },
      child: SizedBox(
        height: 44.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 16.w),
              child: Text(
                S.current.deadline,
                style: context.ts_s14h22_4w400,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 16.w),
              child: MobileCheckDateTime().checkDateTime(
                listTime,
                context,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
