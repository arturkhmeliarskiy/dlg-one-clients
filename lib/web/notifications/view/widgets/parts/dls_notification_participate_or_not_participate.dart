import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/notifications/notifications.dart';
import 'package:flutter/material.dart';

class DLSNotificationParticipateOrNotParticipate extends StatelessWidget {
  const DLSNotificationParticipateOrNotParticipate({
    super.key,
    this.contentCallbacks,
  });

  final ContentCallbacks? contentCallbacks;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        DLSButtonFlat(
          onTap: contentCallbacks?.onTapParticipate,
          height: 32.r,
          color: context.c_green_light,
          horizontalPadding: 12.w,
          textStyle: context.ts_s14h14w400.copyWith(color: context.c_text),
          text: S.current.participate,
          borderRadius: BorderRadius.horizontal(left: Radius.circular(4.r)),
          icon: Padding(
            padding: EdgeInsets.only(right: 4.w),
            child: Assets.icons.check.svg(
              colorFilter: context.c_green_color_filter,
              width: 18.r,
              height: 18.r,
            ),
          ),
          border: Border.all(width: 1.r, color: context.c_green),
        ),
        DLSButtonFlat(
          onTap: contentCallbacks?.onTapNotParticipate,
          height: 32.r,
          color: context.c_white_text,
          horizontalPadding: 12.w,
          textStyle: context.ts_s14h14w400.copyWith(color: context.c_text),
          text: S.current.participate_not,
          borderRadius: BorderRadius.horizontal(left: Radius.circular(4.r)),
          icon: Padding(
            padding: EdgeInsets.only(right: 4.w),
            child: Assets.icons.times1.svg(
              colorFilter: context.c_red_color_filter,
              width: 18.r,
              height: 18.r,
            ),
          ),
          border: Border.all(width: 1.r, color: context.c_grey_stoke),
        ),
      ],
    );
  }
}
