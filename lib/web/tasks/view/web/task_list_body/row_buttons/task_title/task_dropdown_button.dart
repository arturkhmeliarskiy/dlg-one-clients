import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/tasks/tasks.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api/rest_api.dart';

class TaskDropdownButton extends StatefulWidget {
  const TaskDropdownButton({
    required this.index,
    required this.hierarchyView,
    required this.item,
    this.id,
    super.key,
  });

  final int index;
  final int? id;
  final DlsTasks item;
  final TasksListHierarchy hierarchyView;

  @override
  State<TaskDropdownButton> createState() => _TaskDropdownButtonState();
}

class _TaskDropdownButtonState extends State<TaskDropdownButton> {
  bool isMenuOpen = false;

  @override
  void didUpdateWidget(covariant TaskDropdownButton oldWidget) {
    isMenuOpen = widget.item.isCheck ?? false;
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    isMenuOpen = widget.item.isCheck ?? false;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: widget.hierarchyView != TasksListHierarchy.firstLevel &&
          (widget.item.subTasks?.isNotEmpty ?? false),
      maintainSize: true,
      maintainState: true,
      maintainAnimation: true,
      child: Center(
        child: InkWell(
          hoverColor: context.c_grey_hover,
          borderRadius: BorderRadius.circular(5.r),
          onTap: () {
            if (!isMenuOpen) {
              context.read<TaskListBloc>().add(
                    TaskListEvent.addTask(widget.item),
                  );
            } else {
              context.read<TaskListBloc>().add(
                    TaskListEvent.deleteTask(widget.item),
                  );
            }
          },
          child: Container(
            width: widget.hierarchyView != TasksListHierarchy.firstLevel
                ? 24.w
                : 18.w,
            height: 24.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.r),
            ),
            child: Center(
              child: WebDropdownMenuIcon(
                isMenuOpen: isMenuOpen,
              ),
            ),
          ),
        ).paddingOnly(
          left: widget.hierarchyView != TasksListHierarchy.firstLevel &&
                  (widget.item.subTasks?.isNotEmpty ?? false)
              ? 24.w
              : 0,
          right: 2,
          top: 4.h,
          bottom: 4.h,
        ),
      ),
    );
  }
}
