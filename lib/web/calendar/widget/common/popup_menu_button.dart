import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

class CalendarPopupMenuButton extends StatefulWidget {
  const CalendarPopupMenuButton({
    required this.onTap,
    required this.icon,
    required this.tooltip,
    super.key,
  });

  final VoidCallback onTap;
  final String icon;
  final String tooltip;

  @override
  State<CalendarPopupMenuButton> createState() =>
      _CalendarPopupMenuButtonState();
}

class _CalendarPopupMenuButtonState
    extends State<CalendarPopupMenuButton> {
  // TODO(Stas): добавить цвета или заменить на собственный виджет
  // Color _getColor(Set<MaterialState> states) {
  //   if (states.contains(MaterialState.hovered)) {
  //     return context.c_blue_calendar_menu_button_background;
  //   } else if (states.contains(MaterialState.pressed)) {
  //     return context.c_blue_calendar_menu_button_background;
  //   } else if (states.contains(MaterialState.selected)) {
  //     return context.c_blue_calendar_menu_button_background;
  //   } else if (states.contains(MaterialState.focused)) {
  //     return context.c_blue_calendar_menu_button_background;
  //   }
  //   return Colors.transparent;
  // }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        // backgroundColor: MaterialStateColor.resolveWith(_getColor),
        disabledForegroundColor: Colors.transparent,
        fixedSize: Size(26.w, 26.h),
        padding: EdgeInsets.zero,
      ),
      onPressed: widget.onTap,
      child: WebButtonIconWithTooltip(
        icon: widget.icon,
        tooltip: widget.tooltip,
        iconHeight: 15.h,
        iconWidth: 15.w,
        onTap: widget.onTap,
        iconColor: context.c_blue,
      ),
    );
  }
}
