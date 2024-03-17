import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/create_events/model/src/schedule_view_type.dart';
import 'package:flutter/material.dart';

class DayScheduleFilterButton extends StatelessWidget {
  const DayScheduleFilterButton({
    super.key,
    this.type = ScheduleViewType.today,
    required this.onTypeChanged,
  });

  final ScheduleViewType type;
  final ValueChanged<ScheduleViewType?> onTypeChanged;

  @override
  Widget build(BuildContext context) {
    return DlsDropDownButton<ScheduleViewType>(
      value: type,
      items: ScheduleViewType.values,
      onChanged: onTypeChanged,
      onFormat: (v) => v?.name,
      button: Row(
        children: [
          DlsPadding.only(
            right: 8.w,
            child: Text(
              type.name,
              style: context.ts_s14h14w500.copyWith(
                color: context.c_blue,
              ),
            ),
          ),
          WebDropdownMenuIcon(
            isMenuOpen: false,
            color: context.c_blue,
          ),
          SizedBox(width: 20.w)
        ],
      ),
    );
  }
}
