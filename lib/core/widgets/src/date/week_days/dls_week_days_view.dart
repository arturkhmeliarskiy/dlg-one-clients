import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

class DlsWeekDaysView extends StatelessWidget {
  const DlsWeekDaysView({
    required this.onChanged,
    this.checkedDays = const [],
    super.key,
  });

  final List<int> checkedDays;
  final void Function({required int day, required bool value}) onChanged;

  static List<String> weekDays = [
    S.current.monday,
    S.current.tuesday,
    S.current.wednesday,
    S.current.thursday,
    S.current.friday,
    S.current.saturday,
    S.current.sunday,
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(7, (index) {
        final day = index + 1;
        return Expanded(
          child: DLSCheckBox(
            text: weekDays[index],
            val: checkedDays.contains(day),
            onChanged: (value) {
              if (value == null) return;
              onChanged(day: day, value: value);
            },
          ),
        );
      }),
    );
  }
}
