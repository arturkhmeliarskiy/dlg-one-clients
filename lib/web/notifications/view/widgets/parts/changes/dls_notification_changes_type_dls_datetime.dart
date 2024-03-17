import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/notifications/notifications.dart';
import 'package:flutter/material.dart';

/// изменение даты и времени
/// prev -> cur
class DLSNotificationChangesTypeDLSDatetime extends StatelessWidget {

  const DLSNotificationChangesTypeDLSDatetime({
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
    return Row(
      children: [
        DLSDatetime(
          dateTime: versionPrev,
          textColor: context.c_placeholder,

        ),
        Assets.icons.angleRight
            .svg(
          width: 18.r,
          height: 18.r,
          colorFilter: context.c_text_grey_color_filter,
        )
            .paddingSymmetric(horizontal: 4.w),
        DLSDatetime(dateTime: versionCur),
      ],
    );
  }
}
