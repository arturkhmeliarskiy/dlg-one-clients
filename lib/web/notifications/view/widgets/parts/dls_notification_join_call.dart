import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/notifications/notifications.dart';
import 'package:flutter/material.dart';

class DLSNotificationJoinCall extends StatelessWidget {
  const DLSNotificationJoinCall({
    super.key,
    this.contentCallbacks,
  });

  final ContentCallbacks? contentCallbacks;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(right: 12.w),
          child: DLSButtonFlat(
            onTap: contentCallbacks?.onTapJoin,
            height: 32.r,
            color: context.c_green,
            isBordered: false,
            horizontalPadding: 12.w,
            textStyle: context.ts_s14h14w400.copyWith(color: context.c_white_text),
            text: S.current.join,
          ),
        ),
        GestureDetector(
          onTap: contentCallbacks?.onTapMinimizedJoin,
          child: Container(
            height: 32.r,
            width: 32.r,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.r),
              color: context.c_green_light,
            ),
            alignment: Alignment.center,
            child: Assets.icons.calender
                .svg(colorFilter: context.c_green_color_filter),
          ),
        )
      ],
    );
  }
}
