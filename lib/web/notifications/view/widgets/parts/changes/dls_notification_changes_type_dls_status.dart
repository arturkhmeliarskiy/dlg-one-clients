import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/notifications/notifications.dart';
import 'package:flutter/material.dart';
import 'package:notifications_models/notifications_models.dart';

/// изменение статуса задачи
/// prev -> cur
class DLSNotificationChangesTypeDLSTaskStatus extends StatelessWidget {

  const DLSNotificationChangesTypeDLSTaskStatus({
    super.key,
    required this.versionPrev,
    required this.versionCur,
  });

  /// предыдущая версия
  final DLSNotificationObjectStatus versionPrev;

  /// текущая версия
  final DLSNotificationObjectStatus versionCur;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        DLSObjectStatus(
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
        DLSObjectStatus(
          versionCur,
        ),
      ],
    );
  }
}
