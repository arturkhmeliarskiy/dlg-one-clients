import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

class IncomingCallControlsWidget extends StatelessWidget {
  const IncomingCallControlsWidget({
    required this.onAccept,
    required this.onReject,
    super.key,
  });

  final VoidCallback onAccept;
  final VoidCallback onReject;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 4.w),
          child: WebButtonIconWithTooltip(
            height: 40.r,
            width: 40.r,
            onTap: onAccept,
            icon: Assets.icons.phone1.path,
            iconColor: context.c_white_text,
            background: context.c_green,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 4.w),
          child: WebButtonIconWithTooltip(
            height: 40.r,
            width: 40.r,
            onTap: onReject,
            icon: Assets.icons.phoneTimes1.path,
            iconColor: context.c_white_text,
            background: context.c_red,
          ),
        ),
      ],
    );
  }
}
