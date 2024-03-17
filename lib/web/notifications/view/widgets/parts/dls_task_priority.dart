import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:notifications_models/notifications_models.dart';

/// приоритет задачи
/// например
/// ^ критичный
class DLSTaskPriority extends StatelessWidget {

  const DLSTaskPriority(
    this.priority, {
    super.key,
    this.isDisabled = false,
  });

  /// приоритет задачи
  final DLSNotificationObjectPriority priority;

  /// если приоритет не активен
  final bool isDisabled;

  @override
  Widget build(BuildContext context) {
    final color =
        isDisabled ? context.c_placeholder : _getColor(priority, context);
    return SizedBox(
      height: 24.h,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _getIcon(priority, color).paddingOnly(right: 4.w),
          Flexible(
            child: _getText(
              priority,
              color,
              context,
            ),
          )
        ],
      ),
    );
  }

  Color _getColor(
    DLSNotificationObjectPriority priority,
    BuildContext context,
  ) {
    switch (priority) {
      case DLSNotificationObjectPriority.critical:
        return context.c_red;
      case DLSNotificationObjectPriority.high:
        return context.c_orange;
      case DLSNotificationObjectPriority.middle:
        return context.c_text_grey;
      case DLSNotificationObjectPriority.low:
        return context.c_green;
      case DLSNotificationObjectPriority.veryLow:
        return context.c_blue;
      case DLSNotificationObjectPriority.unknown:
        return context.c_text_grey;
    }
  }

  SvgPicture _getIcon(
    DLSNotificationObjectPriority priority,
    Color color,
  ) {
    switch (priority) {
      case DLSNotificationObjectPriority.critical:
        return Assets.icons.webTaskPriorityCritical.svg(
          height: 18.h,
          width: 18.w,
          colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
        );
      case DLSNotificationObjectPriority.high:
        return Assets.icons.webTaskPriorityHigh.svg(
          height: 18.h,
          width: 18.w,
          colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
        );
      case DLSNotificationObjectPriority.middle:
        return Assets.icons.webTaskPriorityStandart.svg(
          height: 18.h,
          width: 18.w,
          colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
        );
      case DLSNotificationObjectPriority.low:
        return Assets.icons.webTaskPriorityLow.svg(
          height: 18.h,
          width: 18.w,
          colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
        );
      case DLSNotificationObjectPriority.veryLow:
        return Assets.icons.webTaskPriorityMinor.svg(
          height: 18.h,
          width: 18.w,
          colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
        );
      case DLSNotificationObjectPriority.unknown:
        return Assets.icons.webTaskPriorityStandart.svg(
          height: 18.h,
          width: 18.w,
          colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
        );
    }
  }

  Widget _getText(
    DLSNotificationObjectPriority priority,
    Color color,
    BuildContext context,
  ) {
    String text;
    switch (priority) {
      case DLSNotificationObjectPriority.critical:
        text = S.current.task_priority_critical;
        break;
      case DLSNotificationObjectPriority.high:
        text = S.current.task_priority_high;
        break;
      case DLSNotificationObjectPriority.middle:
        text = S.current.task_priority_standart;
        break;
      case DLSNotificationObjectPriority.low:
        text = S.current.task_priority_low;
        break;
      case DLSNotificationObjectPriority.veryLow:
        text = S.current.task_priority_minor;
        break;
      case DLSNotificationObjectPriority.unknown:
        text = S.current.task_priority_standart;
        break;
    }
    return DLSBody.s1421(text,
      color: color,
      maxLines: 1,
      overflow: true,
    );
  }
}
