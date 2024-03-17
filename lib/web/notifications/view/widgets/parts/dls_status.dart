import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:notifications_models/notifications_models.dart';

/// статус задачи/спринта
/// например
/// + в ожидении
class DLSObjectStatus extends StatelessWidget {

  const DLSObjectStatus(
    this.status, {
    super.key,
    this.isDisabled = false,
  });

  /// статус задачи
  final DLSNotificationObjectStatus status;

  /// если статус не активен
  final bool isDisabled;

  @override
  Widget build(BuildContext context) {
    final color = isDisabled
        ? [context.c_placeholder, context.c_grey_grey]
        : _getColor(status, context);
    return Container(
      decoration: BoxDecoration(
          color: color[1], borderRadius: BorderRadius.circular(4.r)),
      height: 24.h,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _getIcon(status, color[0]).paddingOnly(right: 4.w),
          Flexible(
            child: _getText(
              status,
              color[0],
              context,
            ),
          )
        ],
      ).paddingSymmetric(horizontal: 6.w, vertical: 3.h),
    );
  }

  List<Color> _getColor(
      DLSNotificationObjectStatus status,
    BuildContext context,
  ) {
    switch (status) {
      case DLSNotificationObjectStatus.pending:
        return [context.c_blue, context.c_blue_light_button];
      case DLSNotificationObjectStatus.progress:
        return [context.c_orange, context.c_orange_label];
      case DLSNotificationObjectStatus.done:
        return [context.c_green, context.c_green_light];
      case DLSNotificationObjectStatus.unknown:
        return [context.c_text, context.c_grey_hover];
    }
  }

  SvgPicture _getIcon(
      DLSNotificationObjectStatus status,
    Color color,
  ) {
    switch (status) {
      case DLSNotificationObjectStatus.pending:
        return Assets.icons.plus1.svg(
          height: 18.h,
          width: 18.w,
          colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
        );
      case DLSNotificationObjectStatus.progress:
        return Assets.icons.play1.svg(
          height: 18.h,
          width: 18.w,
          colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
        );
      case DLSNotificationObjectStatus.done:
        return Assets.icons.squareShape1.svg(
          height: 18.h,
          width: 18.w,
          colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
        );
      case DLSNotificationObjectStatus.unknown:
        return Assets.icons.plus1.svg(
          height: 18.h,
          width: 18.w,
          colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
        );
    }
  }

  Widget _getText(
      DLSNotificationObjectStatus status,
    Color color,
    BuildContext context,
  ) {
    String text;
    switch (status) {
      case DLSNotificationObjectStatus.pending:
        text = S.current.status_todo;
        break;
      case DLSNotificationObjectStatus.progress:
        text = S.current.status_in_progress;
        break;
      case DLSNotificationObjectStatus.done:
        text = S.current.status_done;
        break;
      case DLSNotificationObjectStatus.unknown:
        text = S.current.status_todo;
        break;
    }

    return DLSBody.s1421(text,
      color: color,
      maxLines: 1,
      overflow: true,
    );
  }
}
