import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/notifications/notifications.dart';
import 'package:flutter/material.dart';
import 'package:notifications_models/notifications_models.dart';

/// изменение формата проведения мероприятия
/// онлайн/оффлайн
/// prev -> cur
class DLSNotificationChangesTypeDLSEventFormatType extends StatelessWidget {

  const DLSNotificationChangesTypeDLSEventFormatType({
    super.key,
    required this.versionPrev,
    required this.versionCur,
  });

  /// предыдущая версия
  final DLSNotificationEventFormat versionPrev;

  /// текущая версия
  final DLSNotificationEventFormat versionCur;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        DLSFormatType(
          isOnline: DLSNotificationEventFormat.online == versionPrev,
          textColor: context.c_placeholder,
          backgroundColor: context.c_grey_hover,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 4.w),
          child: Assets.icons.angleRight
              .svg(
                width: 18.r,
                height: 18.r,
                colorFilter: context.c_text_grey_color_filter,
              ),
        ),
        DLSFormatType(
          isOnline: DLSNotificationEventFormat.online == versionCur,
          backgroundColor: DLSNotificationEventFormat.offline == versionCur
              ? context.c_tiffany_background
              : null,
          textColor: DLSNotificationEventFormat.offline == versionCur
              ? context.c_tiffany
              : null,
        ),
      ],
    );
  }
}
