import 'package:collection/collection.dart';
import 'package:dls_one/const/enums.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/pick_task/src/view/task_author_circle.dart';
import 'package:dls_one/web/sprints/view/widgets/sprint_list/table/storypoint_file_view.dart';
import 'package:dls_one/web/tasks/const/enums.dart';
import 'package:dls_one/web/tasks/view/web/task_list_body/row_buttons/task_hierchy_files.dart';
import 'package:dls_one/web/tasks/view/web/task_list_body/row_buttons/task_performers.dart';
import 'package:dls_one/web/tasks/view/web/task_list_body/row_buttons/task_row_dates.dart';
import 'package:dls_one/web/tasks/view/web/task_list_body/row_buttons/task_tag.dart';
import 'package:dls_one/web/tasks/view/web/task_list_body/row_buttons/task_title/task_table_row_title.dart';
import 'package:flutter/material.dart';
import 'package:rest_api/rest_api.dart';

class SprintItem {
  static DataRow createRows(
    BuildContext context, {
    required DlsTasks item,
    required int index,
    required int id,
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
              hierarchyView: TasksListHierarchy.firstLevel,
            ),
          ),
        ),

        DataCell(
          StoryPointFileView(
            countFiles: item.files?.length ?? 0,
            countStoryPoints: item.storyPoints ?? 0,
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

        // My Role
        DataCell(
          Text(
            item.roles?.first.name ?? '',
            style: context.ts_s12h14w400.apply(
              color: context.c_text_grey,
            ),
          ),
        ),

        // Performers
        DataCell(
          TaskPerformers(
            // TODO change to performers
            performers: item.members?.executors ?? [],
            id: item.id,
            index: index,
            onSelectGroup: (users) {
              // TODO refactor for sprints
              // context.read<TaskListBloc>().add(
              //   TaskListEvent.updatePerformers(
              //     item,
              //     users,
              //     index,
              //   ),
              // );
            },
          ),
        ),

        // Deadline
        DataCell(
          TaskDeadline(
            date: item.expiredAt,
            duration: item.duration,
            index: index,
            selectDate: (value) {},
          ),
        ),

        // // Tags
        DataCell(
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 200.w, minWidth: 100.w),
            child: TaskTag(items: item.tags ?? []),
          ),
        ),
      ],
    );
  }
}
