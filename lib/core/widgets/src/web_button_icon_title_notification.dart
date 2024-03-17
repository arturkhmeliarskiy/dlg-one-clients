import 'package:dls_one/core/core.dart';
import 'package:dls_one/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WebButtonIconTitleNotification extends StatefulWidget {
  const WebButtonIconTitleNotification({
    super.key,
    this.title,
    this.notificationCount,
    this.isPressed = false,
    this.icon,
    this.onTap,
    this.subWidget,
  });

  final String? title;
  final int? notificationCount;
  final bool isPressed;
  final String? icon;
  final GestureTapCallback? onTap;
  final Widget? subWidget;

  @override
  State<WebButtonIconTitleNotification> createState() =>
      _WebButtonIconTitleNotificationState();
}

class _WebButtonIconTitleNotificationState
    extends State<WebButtonIconTitleNotification> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (value) {
        setState(() {
          isHovered = true;
        });
      },
      onExit: (value) {
        setState(() {
          isHovered = false;
        });
      },
      child: Container(
        height: 32,
        decoration: BoxDecoration(
          color: isHovered || widget.isPressed
              ? context.c_grey_hover
              : Colors.transparent,
          borderRadius: BorderRadius.circular(5.r),
        ),
        child: Row(
          children: [
            SizedBox(width: 12.w),
            if (widget.icon != null)
              Padding(
                padding: EdgeInsets.only(right: 8.w),
                // child: Svg(widget.icon!),
                child: SvgPicture.asset(
                  widget.icon!,
                  width: 18.r,
                  height: 18.r,
                  color:
                      widget.isPressed ? context.c_text : context.c_text_grey,
                ),
              ),
            Expanded(
              child: Text(
                txt(widget.title),
                style: context.ts_s14h22_4w400.copyWith(
                  color:
                      widget.isPressed ? context.c_text : context.c_text_grey,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                textHeightBehavior:
                    const TextHeightBehavior(applyHeightToFirstAscent: false),
              ),
            ),
            Row(
              children: [
                if ((widget.notificationCount ?? 0) > 0 && !widget.isPressed)
                  DlsNotificationsCounter(
                    count: widget.notificationCount.toString(),
                  ),
                if (widget.subWidget != null) widget.subWidget!,
              ],
            ),
            SizedBox(width: 8.w),
          ],
        ),
      ),
    ).gestureDetector(onTap: widget.onTap);
  }
}
