import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/calendar/widget/common/popup_menu_button.dart';
import 'package:flutter/material.dart';

class CalendarPopupMenu extends StatefulWidget {
  const CalendarPopupMenu(
      {required this.onAddEventButtonTap,
      required this.onAddTodoButtonTap,
      super.key});

  final VoidCallback onAddTodoButtonTap;
  final VoidCallback onAddEventButtonTap;

  @override
  State<CalendarPopupMenu> createState() => _CalendarPopupMenuState();
}

class _CalendarPopupMenuState extends State<CalendarPopupMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(1),
      color: context.c_blue.withOpacity(0.1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CalendarPopupMenuButton(
            icon: Assets.icons.calender.path,
            tooltip: S.current.addEvent,
            onTap: widget.onAddEventButtonTap,
          ),
          SizedBox(
            width: 10.w,
          ),
          CalendarPopupMenuButton(
            icon: Assets.icons.flash.path,
            tooltip: S.current.addTask,
            onTap: widget.onAddTodoButtonTap,
          ),
        ],
      ),
    );
  }
}
