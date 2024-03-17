import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/todo/model/todo_time_config.dart';
import 'package:dls_one/features/todo/widget/ui/todo_time_config_picker/todo_time_config_picker.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TodoTimeConfigCard extends StatelessWidget {
  const TodoTimeConfigCard({
    required this.config,
    required this.onChange,
    required this.defaultDate,
    super.key,
  });

  final TodoTimeConfig? config;
  final DateTime defaultDate;
  final ValueChanged<TodoTimeConfig?> onChange;

  @override
  Widget build(BuildContext context) {
    final key = GlobalKey();
    return OutlinedButton(
      key: key,
      onPressed: () async {
        final result = await TodoTimeConfigPicker.show(
          context,
          initialConfig: config ??
              TodoTimeConfig(
                startTime: defaultDate.startOfDay(),
                expireTime: defaultDate.endOfDay(),
              ),
        );
        if (result != null) {
          onChange(result);
        }
      },
      child: Row(
        children: [
          Assets.icons.calendar.svg(width: 16.w, height: 16.h),
          SizedBox(width: 6.w),
          Text(config?.dateLabel() ?? S.current.indefinitely),
          if (config != null) ...[
            SizedBox(width: 6.w),
            GestureDetector(
              onTap: () {
                onChange(null);
              },
              child: Assets.icons.close.svg(width: 16.w, height: 16.h),
            ),
          ],
        ],
      ),
    );
  }
}

extension StringExtension on TodoTimeConfig {
  String dateLabel({bool needPad = true}) {
    final formatter = DateFormat('d MMM');
    final date = formatter.format(startTime);

    var result = date;

    if (!isFullDay) {
      result += ', ${timeLabel(needPad: needPad)}';
    }
    return result;
  }

  String timeLabel({bool needPad = true}) {
    return '${startTime.timeOfDay().formatted(needPad: needPad)} - ${expireTime.timeOfDay().formatted(needPad: needPad)}';
  }
}

extension FormattedTimeOfDay on TimeOfDay {
  String formatted({bool needPad = true}) {
    final hourLabel = needPad ? hour.toString().padLeft(2, '0') : hour;
    final minuteLabel = minute.toString().padLeft(2, '0');

    return '$hourLabel:$minuteLabel';
  }
}
