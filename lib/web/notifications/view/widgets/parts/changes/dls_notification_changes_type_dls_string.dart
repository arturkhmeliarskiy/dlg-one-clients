import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

/// изменения типа строка
class DLSNotificationChangesTypeDLSString extends StatelessWidget {

  const DLSNotificationChangesTypeDLSString({
    super.key,
    required this.versionPrev,
    required this.versionCur,
  });

  /// предыдущая версия
  final String versionPrev;

  /// текущая версия
  final String versionCur;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: DLSBody.s1421(
            versionPrev,
            color: context.c_placeholder,
            maxLines: 1,
            overflow: true,
          ),
        ),
        Assets.icons.angleRight
            .svg(
              width: 18.r,
              height: 18.r,
              colorFilter: context.c_text_grey_color_filter,
            )
            .paddingSymmetric(horizontal: 4.w),
        Flexible(
          child: DLSBody.s1421(
            versionCur,
            color: context.c_text,
            maxLines: 1,
            overflow: true,
          ),
        ),
      ],
    );
  }
}
