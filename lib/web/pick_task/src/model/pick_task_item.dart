import 'package:collection/collection.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/pick_task/pick_task.dart';
import 'package:dls_one/web/tasks/tasks.dart';
import 'package:dls_one/web/tasks/view/web/task_list_body/row_buttons/task_hierchy_files.dart';
import 'package:dls_one/web/tasks/view/web/task_list_body/row_buttons/task_title/task_table_row_title.dart';
import 'package:flutter/material.dart';
import 'package:rest_api/rest_api.dart';

class PickTaskItem {
  static DataRow createRows(
    BuildContext context, {
    required DlsTasks item,
    required int index,
    required int id,
    required TasksListHierarchy hierarchyView,
    VoidCallback? onTap,
  }) {
    return DataRow(
      onLongPress: () {},
      onSelectChanged: (a) {
        onTap?.call();
      },
      color: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.hovered)) {
          return context.c_grey_grey;
        } else if (states.contains(MaterialState.selected)) {
          return context.c_grey_grey;
        } else if (states.contains(MaterialState.pressed)) {
          return context.c_grey_grey;
        } else if (states.contains(MaterialState.focused)) {
          return context.c_grey_grey;
        }
        return null;
      }),
      cells: [
        DataCell(
          Padding(
            padding: EdgeInsets.only(left: 10.0.w * (item.nesting ?? 0)),
            child: TaskTableRowTitle(
              isSprint: item.sprints?.isNotEmpty ?? false,
              sprintName: item.sprints?.isNotEmpty ?? false
                  ? item.sprints?.first.title ?? ''
                  : '',
              enableTitleEdit: false,
              type: item.type ?? 0,
              title: item.title,
              id: item.id,
              idTask: id,
              index: index,
              item: item,
              onSubmittedText: (value) {},
              hierarchyView: hierarchyView,
            ),
          ),
        ),

        // Priority
        DataCell(
          SizedBox(
            width: 40.w,
            child: PriorityButton(
              isFullButton: false,
              priority: item.priority ?? TaskPriorityType.high,
              onTapPriority: (value) {},
            ),
          ),
        ),

        // Status
        DataCell(
          StatusButton(
            height: 24.h,
            isIcon: false,
            status: item.status ?? TaskStatusType.inTheQueue,
            onTapStatus: (value) {},
          ),
        ),

        DataCell(
          TaskAuthorCircle(
            // TODO change to authors if it's necessary
            author: item.members?.executors?.firstOrNull,
          ),
        ),

        DataCell(
          TaskHierchyFiles(
            countFiles: item.files?.length ?? 0,
            countSubTasks: item.countSubTasks ?? 0,
            showIfZero: true,
          ),
        ),
      ],
    );
  }
}
