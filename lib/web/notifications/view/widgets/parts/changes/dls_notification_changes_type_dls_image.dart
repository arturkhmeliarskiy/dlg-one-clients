import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/notifications/notifications.dart';
import 'package:flutter/material.dart';

/// изменение изображение
/// prev -> cur
class DLSNotificationChangesTypeDLSImage extends StatelessWidget {

  const DLSNotificationChangesTypeDLSImage({
    super.key,
    required this.versionPrev,
    required this.versionCur,
    this.versionTextPrev,
    this.versionTextCur,
  });

  /// предыдущая версия
  final String? versionPrev;
  final String? versionTextPrev;

  /// текущая версия
  final String? versionCur;
  final String? versionTextCur;

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.horizontal,
      children: [
        Flexible(
          child: DLSImageTextRight(
            imageUrl: versionPrev,
            text: versionTextPrev,
            isDisabled: true,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 4.w),
          child: Assets.icons.angleRight.svg(
            width: 18.r,
            height: 18.r,
            colorFilter: context.c_text_grey_color_filter,
          ),
        ),
        Flexible(
          child: DLSImageTextRight(imageUrl: versionCur, text: versionTextCur),
        ),
      ],
    );
  }
}
