import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/notifications/notifications.dart';
import 'package:flutter/material.dart';

/// изменения интервала времени
/// prev -> cur
class DLSNotificationChangesTypeDLSInterval extends StatelessWidget {

  const DLSNotificationChangesTypeDLSInterval({
    super.key,
    required this.versionPrev,
    required this.versionCur,
  });

  /// предыдущая версия
  final List<DateTime> versionPrev;

  /// текущая версия
  final List<DateTime> versionCur;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        DLSIntervalTime(
          interval: versionPrev,
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
        DLSIntervalTime(interval: versionCur)
      ],
    );
  }
}
