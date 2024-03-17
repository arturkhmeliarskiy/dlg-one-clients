import 'package:dls_one/core/core.dart';
import 'package:dls_one/utils/utils.dart';
import 'package:flutter/material.dart';

class DLSTab extends Tab {
  const DLSTab({
    super.key,
    super.text,
    super.icon,
    this.height,
    this.width,
    this.isPressed = false,
    this.notificationCount,
  }) : assert(text != null || icon != null);
  final double? height;
  final double? width;
  final bool isPressed;
  final int? notificationCount;

  @override
  Widget build(BuildContext context) {
    return Tab(
      height: height ?? 28.h,
      key: key,
      child: Container(
        width: width,
        decoration: BoxDecoration(
          color: isPressed ? context.c_white_text : Colors.transparent,
          borderRadius: BorderRadius.circular(5.r),
        ),
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: 12.w),
            if (icon != null)
              Padding(
                padding: EdgeInsets.only(right: 8.w),
                // child: Svg(widget.icon!),
                child: icon,
              ),
            Text(
              txt(text, upperCaseFistSymbol: true),
              style: context.ts_s14h22_4w400.copyWith(
                color: isPressed ? context.c_text : context.c_text_grey,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              textHeightBehavior:
                  const TextHeightBehavior(applyHeightToFirstAscent: false),
            ),
            SizedBox(width: 12.w),
            if ((notificationCount ?? 0) > 0)
              Padding(
                padding: EdgeInsets.only(right: 8.w),
                child: DlsNotificationsCounter(
                  count: notificationCount.toString(),
                  badgeColor: context.c_orange,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
