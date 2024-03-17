import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DLSNotificationIcon extends StatelessWidget {
  const DLSNotificationIcon({
    required this.path,
    required this.borderColor,
    required this.backgroundColor,
    required this.colorFilter,
    super.key,
  });

  factory DLSNotificationIcon.bell(BuildContext context) => DLSNotificationIcon(
        path: Assets.icons.bell1.path,
        borderColor: context.c_orange,
        backgroundColor: context.c_orange_label,
        colorFilter: context.c_orange_color_filter,
      );

  factory DLSNotificationIcon.callStart(BuildContext context) => DLSNotificationIcon(
        path: Assets.icons.phone1.path,
        borderColor: context.c_green,
        backgroundColor: context.c_green_light,
        colorFilter: context.c_green_color_filter,
      );

  factory DLSNotificationIcon.callEnd(BuildContext context) => DLSNotificationIcon(
        path: Assets.icons.phoneTimes1.path,
        borderColor: context.c_grey_hover,
        backgroundColor: context.c_grey_stoke,
        colorFilter: context.c_text_grey_color_filter,
      );


  final String path;
  final Color borderColor;
  final Color backgroundColor;
  final ColorFilter colorFilter;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48.h,
      width: 48.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10000.r),
        color: backgroundColor,
        border: Border.all(width: 1.r, color: borderColor),
      ),
      alignment: Alignment.center,
      child: SvgPicture.asset(
        path,
        width: 18.r,
        height: 18.r,
        colorFilter: colorFilter,
      ),
    );
  }
}
