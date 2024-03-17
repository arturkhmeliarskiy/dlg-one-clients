import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

class CalendarCheckbox extends StatefulWidget {
  const CalendarCheckbox({
    required this.isFinished,
    required this.onChanged,
    super.key,
  });

  final bool isFinished;
  final void Function(bool?) onChanged;

  @override
  State<CalendarCheckbox> createState() => _CalendarCheckboxState();
}

class _CalendarCheckboxState extends State<CalendarCheckbox> {
  final bool _isNarrow =
      DLSLayoutItemBuilder.values(wide: false, narrow: true)();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: _isNarrow ? 16.w : 20.w,
      height: _isNarrow ? 16.h : 20.h,
      child: Checkbox(
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        activeColor: context.c_blue,
        checkColor: context.c_white_text,
        side: BorderSide(
          color: context.c_grey_stoke,
          width: 1.w,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(4.r),
          ),
        ),
        value: widget.isFinished,
        onChanged: widget.onChanged,
      ),
    );
  }
}
