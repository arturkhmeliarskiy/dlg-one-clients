import 'package:badges/badges.dart' as b;
import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

class DlsNotificationsCounter extends StatelessWidget {
  const DlsNotificationsCounter({
    Key? key,
    required this.count,
    this.textStyle,
    this.badgeColor,
  }) : super(key: key);
  final String count;
  final TextStyle? textStyle;
  final Color? badgeColor;

  @override
  Widget build(BuildContext context) {
    return b.Badge(
      stackFit: StackFit.expand,
      padding: EdgeInsets.symmetric(horizontal: 4.5.r, vertical: 1.r),
      toAnimate: false,
      shape: b.BadgeShape.square,
      badgeColor: badgeColor ?? context.c_orange,
      borderRadius: BorderRadius.circular(4.r),
      elevation: 0,
      badgeContent: Text(
        count,
        style: textStyle ??
            context.ts_s12h14w500.copyWith(color: context.c_white_text),
      ),
    );
  }
}
