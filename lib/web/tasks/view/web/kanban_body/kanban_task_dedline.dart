import 'package:dls_one/core/core.dart';
import 'package:dls_one/utils/utils.dart';
import 'package:flutter/material.dart';

class KanbanTaskDeadline extends StatelessWidget {
  KanbanTaskDeadline({
    required this.date,
    required this.duration,
    required this.selectDtae,
    this.index = 0,
    super.key,
  });

  final DateTime? date;
  final int? duration;
  DateTime _date = DateTime.now();
  final _now = DateTime.now();
  var _isLate = false;
  int index;
  final void Function(DateTime) selectDtae;

  @override
  Widget build(BuildContext context) {
    if (date != null && duration != null) {
      _date = DateTime(date!.year, date!.month, date!.day);
      if (_date.compareTo(_now) < 0) {
        _isLate = true;
      }
    }

    return DecoratedBox(
      decoration: BoxDecoration(
        color: _isLate ? context.c_white_text : context.c_grey_stoke,
        borderRadius: BorderRadius.circular(5.r),
        border: _isLate
            ? Border.all(
                color: context.c_red,
                width: 1.h,
              )
            : null,
      ),
      child: Padding(
        padding: EdgeInsets.only(
          left: 4.w,
          right: 4.w,
          top: 3.h,
          bottom: 3.h,
        ),
        child: Row(
          children: [
            Assets.icons.deadline.svg(
              color: _isLate ? context.c_red : context.c_text_grey,
            ),
            SizedBox(
              width: 2.w,
            ),
            Text(
              formatDateMonth(_date),
              style: context.ts_s12h14w400.copyWith(
                color: _isLate ? context.c_red : context.c_text,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
