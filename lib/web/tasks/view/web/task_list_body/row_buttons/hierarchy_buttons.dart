import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/tasks/tasks.dart';
import 'package:dls_one/web/tasks/view/web/task_list_body/row_buttons/hierarchy_button.dart';
import 'package:dls_one/web/tasks/view/web/task_list_body/row_buttons/hierarchy_toggle_button.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HierarchySwitch extends StatelessWidget {
  const HierarchySwitch({
    super.key,
    this.detailed = true,
  });

  final bool detailed;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TaskListBloc, TaskListState>(
      builder: (context, state) {
        return Row(
          children: [
            // TODO extract to widget not in Method
            _buildHierarchyButton(
              context,
              state.model.hierarchyView,
            ),
            SizedBox(width: 2.w),
            // TODO extract to widget not in Method
            _buildListButton(
              context,
              state.model.hierarchyView,
            ),
          ],
        );
      },
    );
  }

  Widget _buildHierarchyButton(
    BuildContext context,
    TasksListHierarchy hierarchyView,
  ) {
    final isFirstLevel = hierarchyView == TasksListHierarchy.firstLevel;
    if (isFirstLevel || !detailed) {
      return HierarchyButton(
        icon: Assets.icons.webTaskHierarchyGray.svg(
          colorFilter: isFirstLevel ? null : context.c_text_color_filter,
        ),
        color: isFirstLevel ? context.c_white_text : context.c_grey_hover,
        onTap: () {
          context.read<TaskListBloc>().add(
                const TaskListEvent.hierchyChange(TasksListHierarchy.hierarchy),
              );
        },
      );
    }
    return HierarchyToggleButton(type: hierarchyView);
  }

  Widget _buildListButton(
    BuildContext context,
    TasksListHierarchy hierarchyView,
  ) {
    if (hierarchyView == TasksListHierarchy.firstLevel) {
      return HierarchyButton(
        icon: Assets.icons.webTaskNotHierarchyBlack.svg(),
        color: context.c_grey_hover,
        onTap: () {},
      );
    }
    return HierarchyButton(
      icon: Assets.icons.webTaskNotHierarchyGray.svg(),
      color: context.c_white_text,
      onTap: () {
        context.read<TaskListBloc>().add(
              const TaskListEvent.hierchyChange(TasksListHierarchy.firstLevel),
            );
      },
    );
  }
}
