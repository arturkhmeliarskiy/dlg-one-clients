import 'package:dls_one/core/core.dart';
import 'package:dls_one/utils/src/formatters.dart';
import 'package:flutter/material.dart';

class TimeSelectPicker extends StatelessWidget {
  const TimeSelectPicker({
    required this.time,
    required this.onTimeChanged,
    super.key,
  });

  final TimeOfDay time;
  final ValueChanged<TimeOfDay> onTimeChanged;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: 80.w),
      child: DlsArrowPickButton(
        onTap: () async {
          // Нужно отображать выподающий список с выбором времени согласно дизайну.
          final result = await showTimePicker(
            context: context,
            initialTime: time,
          );
          if (result == null) {
            return;
          }
          onTimeChanged(result);
        },
        text: formatTimeHHmm(time.toDateTime()),
      ),
    );
  }
}
