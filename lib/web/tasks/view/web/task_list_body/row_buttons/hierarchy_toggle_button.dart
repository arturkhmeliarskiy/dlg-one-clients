import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/tasks/bloc/bloc.dart';
import 'package:dls_one/web/tasks/const/enums.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HierarchyToggleButton extends StatefulWidget {
  const HierarchyToggleButton({
    required this.type,
    super.key,
  });

  final TasksListHierarchy type;

  @override
  State<HierarchyToggleButton> createState() => _HierarchyToggleButtonState();
}

class _HierarchyToggleButtonState extends State<HierarchyToggleButton> {
  late bool isSwitched = widget.type == TasksListHierarchy.entireHierarchy;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.r),
        color: context.c_grey_hover,
      ),
      child: Row(
        children: [
          SizedBox(
            height: 24.h,
            width: 32.w,
            child: FittedBox(
              child: CupertinoSwitch(
                activeColor: context.c_blue,
                value: isSwitched,
                onChanged: (value) {
                  setState(() {
                    isSwitched = value;
                  });

                  if (isSwitched) {
                    context.read<TaskListBloc>().add(
                          const TaskListEvent.hierchyChange(
                            TasksListHierarchy.entireHierarchy,
                          ),
                        );
                  } else {
                    context.read<TaskListBloc>().add(
                          const TaskListEvent.hierchyChange(
                            TasksListHierarchy.hierarchy,
                          ),
                        );
                  }
                },
              ),
            ),
          ).paddingOnly(right: 8.w),
          Text(
            S.current.show_entire_hierarchy,
            style: context.ts_s14h14w400.copyWith(
              color: context.c_text,
            ),
          ).paddingOnly(right: 4.w),
          Tooltip(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.r),
              color: context.c_calls_background,
            ),
            textStyle: context.ts_s14h14w400.copyWith(
              color: context.c_appbar,
            ),
            padding: EdgeInsets.all(8.r),
            textAlign: TextAlign.left,
            message: S.current.the_whole_hierarchy,
            child: Assets.icons.webTaskInfoGray.svg(),
          ).paddingOnly(right: 10.w),
          Assets.icons.webTaskHierarchyBlack.svg(),
        ],
      ).paddingOnly(
        left: 13.w,
        right: 7.w,
      ),
    );
  }
}
