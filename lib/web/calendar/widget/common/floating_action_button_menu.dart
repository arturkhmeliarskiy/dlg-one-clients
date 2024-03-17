import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

class FloatingActionButtonMenu extends StatelessWidget {
  const FloatingActionButtonMenu({
    required this.onCreateTaskEventTap,
    required this.onCreateTodoTap,
    super.key,
  });

  final VoidCallback onCreateTaskEventTap;
  final VoidCallback onCreateTodoTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MediaQuery.of(context).viewInsets +
          EdgeInsets.symmetric(
            horizontal: 16.w,
            vertical: 12.h,
          ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
              onCreateTaskEventTap.call();
            },
            child: Row(
              children: [
                Assets.icons.eventSmallIcon.svg(),
                SizedBox(
                  width: 10.w,
                ),
                Text(
                  S.current.add_task_event,
                  style:
                      context.ts_s14h22_4w400.copyWith(color: context.c_text),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
              onCreateTaskEventTap.call();
            },
            child: Row(
              children: [
                Assets.icons.todoSmallIcon.svg(),
                SizedBox(
                  width: 10.w,
                ),
                Text(
                  S.current.add_todo,
                  style:
                      context.ts_s14h22_4w400.copyWith(color: context.c_text),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
