import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/todo/model/todo_time_config.dart';
import 'package:flutter/material.dart';

class TimePicker extends StatelessWidget {
  const TimePicker({
    required this.config,
    required this.onChanged,
    super.key,
  });

  final TodoTimeConfig config;
  final ValueChanged<TodoTimeConfig> onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DlsPadding.symmetric(
          horizontal: 10.w,
          child: DlsTitledSwitch(
            onChanged: (value) {
              onChanged(config.copyWith(isFullDay: !value));
            },
            value: !config.isFullDay,
            info: S.current.setTime,
          ),
        ),
        if (!config.isFullDay) ...[
          SizedBox(height: 8.h),
          DlsPadding.symmetric(
            horizontal: 10.w,
            child: Row(
              children: [
                Expanded(
                  child: TimeSelectPicker(
                    onTimeChanged: (time) {
                      onChanged(
                        config.copyWith(
                          startTime: config.startTime.applyTime(time),
                        ),
                      );
                    },
                    time: config.startTime.timeOfDay(),
                  ),
                ),
                SizedBox(width: 4.w),
                ColoredBox(
                  color: const Color(0xFFD9D9D9),
                  child: SizedBox(
                    width: 8.w,
                    height: 1.h,
                  ),
                ),
                SizedBox(width: 4.w),
                Expanded(
                  child: TimeSelectPicker(
                    onTimeChanged: (time) {
                      onChanged(
                        config.copyWith(
                          expireTime: config.expireTime.applyTime(time),
                        ),
                      );
                    },
                    time: config.expireTime.timeOfDay(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ],
    );
  }
}
