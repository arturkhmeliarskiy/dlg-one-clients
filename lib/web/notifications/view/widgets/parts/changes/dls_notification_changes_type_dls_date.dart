import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/notifications/notifications.dart';
import 'package:flutter/material.dart';

/// изменение даты
/// prev -> cur
class DLSNotificationChangesTypeDLSDate extends StatelessWidget {

  const DLSNotificationChangesTypeDLSDate({
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
      children: [
        DLSDate(
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
        DLSDate(dateTime: versionCur),
      ],
    );
  }
}
