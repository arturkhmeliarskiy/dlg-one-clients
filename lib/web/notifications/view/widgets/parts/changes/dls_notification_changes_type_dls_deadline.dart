import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/notifications/notifications.dart';
import 'package:flutter/material.dart';

/// изменение дедлайна
/// prev -> cur
class DLSNotificationChangesTypeDLSDeadline extends StatelessWidget {

  const DLSNotificationChangesTypeDLSDeadline({
    super.key,
    required this.versionPrev,
    required this.versionCur,
  });

  /// предыдущая версия
  final DateTime versionPrev;

  /// текущая версия
  final DateTime versionCur;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        DLSDeadline(
          dateTime: versionPrev,
          iconColor: context.c_placeholder,
          textColor: context.c_placeholder,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 4.w),
          child: Assets.icons.angleRight.svg(
            width: 18.r,
            height: 18.r,
            colorFilter: context.c_text_grey_color_filter,
          ),
        ),
        DLSDeadline(dateTime: versionCur),
      ],
    );
  }
}
