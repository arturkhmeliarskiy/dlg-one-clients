import 'package:dls_one/core/core.dart';
import 'package:dls_one/utils/utils.dart';
import 'package:flutter/material.dart';

class DayScheduleTopView extends StatelessWidget {
  final TimeOfDay start;
  final int count;
  const DayScheduleTopView({
    super.key,
    required this.start,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(count, (index) {
        final time = start.replacing(hour: start.hour + index);
        return Expanded(
          child: Text(
            formatTimeHHmm(time.toDateTime()),
            style: context.ts_s12h14w400.copyWith(color: context.c_placeholder),
            maxLines: 1,
          ),
        );
      }),
    );
  }
}
