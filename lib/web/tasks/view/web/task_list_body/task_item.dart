import 'package:auto_route/auto_route.dart';
import 'package:dls_one/app/router/app_router.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/create_task/bloc/task_bloc.dart';
import 'package:dls_one/web/sprints/sprints.dart';
import 'package:dls_one/web/tasks/bloc/hover_task_bloc/hover_task_bloc.dart';
import 'package:dls_one/web/tasks/bloc/task_list_bloc/task_list_bloc.dart';
import 'package:dls_one/web/tasks/const/enums.dart';
import 'package:dls_one/web/tasks/view/web/task_list_body/row_buttons/task_hierchy_files.dart';
import 'package:dls_one/web/tasks/view/web/task_list_body/row_buttons/task_menu_icons.dart';
import 'package:dls_one/web/tasks/view/web/task_list_body/row_buttons/task_my_roles.dart';
import 'package:dls_one/web/tasks/view/web/task_list_body/row_buttons/task_performers.dart';
import 'package:dls_one/web/tasks/view/web/task_list_body/row_buttons/task_row_dates.dart';
import 'package:dls_one/web/tasks/view/web/task_list_body/row_buttons/task_tag.dart';
import 'package:dls_one/web/tasks/view/web/task_list_body/row_buttons/task_title/task_table_row_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api/rest_api.dart';
import 'package:rest_api/src/models/enums/dls_task_roles_type.dart';

class TaskItem {
  static DataRow createRows({
    required DlsTasks item,
    required BuildContext context,
    required int index,
    required int id,
    required TasksListHierarchy hierarchyView,
  }) {
    return DataRow(
      onSelectChanged: (value) async {
        final bloc = context.read<TaskListBloc>();
        await context.router.push(
          NewTaskSprintRoute(
            task: item,
            onTaskSaved: (task) async {
              context.read<SprintsBloc>().add(
                    const SprintsEvent.getSprints(withLoading: false),
                  );
              bloc.add(const TaskListEvent.refresh());
            },
            status: TaskStatusType.inTheQueue,
          ),
        );
        bloc.add(const TaskListEvent.refresh());
      },
      onLongPress: () {},
      color: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.hovered)) {
          Future.delayed(const Duration(milliseconds: 10), () {
            context.read<HoverTaskBloc>().add(
                  HoverTaskEvent.hoverTask(
                    item.id,
                  ),
                );
          });
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
        // Title and type

        DataCell(
          Padding(
            padding: EdgeInsets.only(left: 24.0.w * (item.nesting ?? 0)),
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
              onSubmittedText: (value) {
                context.read<TaskListBloc>().add(
                      TaskListEvent.updateTask(
                        index,
                        item.copyWith(title: value),
                      ),
                    );
              },
              hierarchyView: hierarchyView,
            ),
          ),
        ),

        // Hierchy & Files
        DataCell(
          TaskHierchyFiles(
            countFiles: item.files?.length ?? 0,
            countSubTasks: item.countSubTasks ?? 0,
            role: item.roles?.first,
          ),
        ),

        // Priority
        DataCell(
          SizedBox(
            width: 40.w,
            child: Tooltip(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.r),
                color: context.c_calls_background,
              ),
              textStyle: context.ts_s14h14w400.copyWith(
                color: context.c_appbar,
              ),
              message: S.current.change_priority,
              child: PriorityButton(
                isFullButton: false,
                enabled: item.roles?.first.name != S.current.viewing,
                priority: item.priority ?? TaskPriorityType.high,
                onTapPriority: (value) {
                  context.read<TaskListBloc>().add(
                        TaskListEvent.updateTask(
                          index,
                          item.copyWith(priority: value),
                        ),
                      );
                },
              ),
            ),
          ),
        ),

        // Status
        DataCell(
          Tooltip(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.r),
              color: context.c_calls_background,
            ),
            textStyle: context.ts_s14h14w400.copyWith(
              color: context.c_appbar,
            ),
            message: S.current.change_status,
            child: StatusButton(
              height: 24.h,
              isIcon: false,
              enabled: item.roles?.first.role != TaskRolesType.viewing &&
                  item.roles?.first.role != TaskRolesType.observer,
              status: item.status ?? TaskStatusType.draft,
              onTapStatus: (value) {
                context.read<TaskListBloc>().add(
                      TaskListEvent.updateTask(
                        index,
                        item.copyWith(status: value),
                      ),
                    );
              },
            ),
          ),
        ),

        // My Role
        DataCell(
          TaskMyRoles(
            roles: item.roles ?? [],
          ),
        ),

        // Performers
        DataCell(
          TaskPerformers(
            performers: item.members?.executors ?? [],
            id: item.id,
            index: index,
            role: item.roles?.first,
            onSelectGroup: (users) {
              context.read<TaskListBloc>().add(
                    TaskListEvent.updatePerformers(
                      item,
                      users,
                      index,
                    ),
                  );
            },
          ),
        ),

        // Deadline
        DataCell(
          TaskDeadline(
            date: item.expiredAt,
            duration: item.duration,
            index: index,
            id: item.id,
            role: item.roles?.first,
            selectDate: (value) {
              context.read<TaskListBloc>().add(
                    TaskListEvent.updateTask(
                      index,
                      item.copyWith(expiredAt: value),
                    ),
                  );
            },
          ),
        ),

        // // Tags
        DataCell(
          TaskTag(items: item.tags ?? []),
        ),

        // icons
        DataCell(
          TaskMenuIcons(
            id: item.id,
            deleteTask: () {
              context.read<TaskListBloc>().add(
                    TaskListEvent.delete(item.id, index),
                  );
            },
          ),
        ),
      ],
    );
  }
}
