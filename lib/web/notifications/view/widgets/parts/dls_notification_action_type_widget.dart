import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:notifications_models/notifications_models.dart';

class DLSNotificationSubAvatarTypeWidget extends StatelessWidget {
  const DLSNotificationSubAvatarTypeWidget({
    super.key,
    required this.subAvatarType,
  });

  final DLSNotificationSubAvatarType subAvatarType;

  @override
  Widget build(BuildContext context) {
    SvgPicture? svg;
    Color? backgroundColor;
    switch (subAvatarType) {
      case DLSNotificationSubAvatarType.message:
        backgroundColor = context.c_purple;
        svg = Assets.icons.commentSolid.svg(
          colorFilter: ColorFilter.mode(
            context.c_white_text,
            BlendMode.srcIn,
          ),
          width: 12.r,
          height: 12.r,
        );
        break;
      case DLSNotificationSubAvatarType.plus:
        backgroundColor = context.c_green;
        svg = Assets.icons.plusSolid.svg(
          colorFilter: ColorFilter.mode(
            context.c_white_text,
            BlendMode.srcIn,
          ),
          width: 12.r,
          height: 12.r,
        );
        break;
      case DLSNotificationSubAvatarType.pen:
        backgroundColor = context.c_blue;
        svg = Assets.icons.penSolid.svg(
          colorFilter: ColorFilter.mode(
            context.c_white_text,
            BlendMode.srcIn,
          ),
          width: 12.r,
          height: 12.r,
        );
        break;
      case DLSNotificationSubAvatarType.block:
        backgroundColor = context.c_red;
        svg = Assets.icons.timesSolid.svg(
          colorFilter: ColorFilter.mode(
            context.c_white_text,
            BlendMode.srcIn,
          ),
          width: 12.r,
          height: 12.r,
        );
        break;
      case DLSNotificationSubAvatarType.none:
        return const SizedBox();
    }

    return CircleAvatar(
      backgroundColor: backgroundColor,
      radius: 10.r,
      child: svg,
    );
  }
}
