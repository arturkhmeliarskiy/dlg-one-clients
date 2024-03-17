import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/notifications/notifications.dart';
import 'package:flutter/material.dart';
import 'package:notifications_models/notifications_models.dart';

/// изменение приоритета задачи
/// prev -> cur
class DLSNotificationChangesTypeDLSTaskPriority extends StatelessWidget {

  const DLSNotificationChangesTypeDLSTaskPriority({
    super.key,
    required this.versionPrev,
    required this.versionCur,
  });

  /// предыдущая версия
  final DLSNotificationObjectPriority versionPrev;

  /// текущая версия
  final DLSNotificationObjectPriority versionCur;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        DLSTaskPriority(
          versionPrev,
          isDisabled: true,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 4.w),
          child: Assets.icons.angleRight.svg(
            width: 18.r,
            height: 18.r,
            colorFilter: context.c_text_grey_color_filter,
          ),
        ),
        DLSTaskPriority(
          versionCur,
        ),
      ],
    );
  }
}
