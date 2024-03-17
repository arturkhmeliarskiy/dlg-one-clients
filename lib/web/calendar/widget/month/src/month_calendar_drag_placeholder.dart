import 'package:dls_one/core/core.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class MonthCalendarDragPlaceholder extends StatelessWidget {
  const MonthCalendarDragPlaceholder({super.key});

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      strokeWidth: 2.w,
      color: context.c_blue,
      dashPattern: const <double>[2, 2],
      padding: const EdgeInsets.all(1),
      radius: const Radius.circular(4),
      child: SizedBox(
        width: double.infinity,
        height: 16.h,
      ),
    );
  }
}
