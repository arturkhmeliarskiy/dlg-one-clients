import 'package:auto_route/auto_route.dart';
import 'package:dls_one/app/router/app_router.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/core/widgets/dls_loader/dls_loader_scope.dart';
import 'package:dls_one/web/sprints/bloc/sprints/sprints_bloc.dart';
import 'package:dls_one/web/tasks/bloc/task_list_bloc/task_list_bloc.dart';
import 'package:dls_one/web/tasks/view/mobile/task_list/mobile_task_list_item.dart';
import 'package:dls_one/web/tasks/view/web/task_list_body/row_buttons/task_hierchy_files.dart';
import 'package:dls_one/web/tasks/view/web/task_list_body/row_buttons/task_title/task_check_sprint.dart';
import 'package:dls_one/web/tasks/view/web/task_list_body/row_buttons/task_title/task_title_text.dart';
import 'package:dls_one/web/tasks/view/web/task_list_body/row_buttons/task_title/task_type_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api/rest_api.dart';

class MobileTaskList extends StatelessWidget {
  const MobileTaskList({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<TaskListBloc>();
    return DLSLoaderScope(
      child: BlocConsumer<TaskListBloc, TaskListState>(
        listener: (context, state) {
          state.whenOrNull(
            loading: (_) {
              DLSLoaderScope.showLoaderOf(
                context,
                future: bloc.stream.firstWhere((element) => !element.loading),
              );
            },
          );
        },
        builder: (context, state) {
          final tasks = state.model.tasks;
          return ListView(
            children: List.generate(
              tasks.length,
              (index) {
                return MobileTaskListItem(
                  task: tasks[index],
                  onTap: () async {
                    await context.router.push(
                      NewTaskSprintRoute(
                        task: tasks[index],
                        onTaskSaved: (task) async {
                          context.read<SprintsBloc>().add(
                                const SprintsEvent.getSprints(
                                  withLoading: false,
                                ),
                              );
                          bloc.add(const TaskListEvent.refresh());
                        },
                        status: TaskStatusType.inTheQueue,
                      ),
                    );
                    bloc.add(const TaskListEvent.refresh());
                  },
                  onStatusChanged: (status) {
                    bloc.add(
                      TaskListEvent.updateTask(
                        index,
                        tasks[index].copyWith(status: status),
                      ),
                    );
                  },
                  onPriorityChanged: (priority) {
                    bloc.add(
                      TaskListEvent.updateTask(
                        index,
                        tasks[index].copyWith(priority: priority),
                      ),
                    );
                  },
                );
              },
            ),
          );
          // TODO remove
        },
      ),
    );
  }

  Color _backgroundColor(TaskPriorityType value, BuildContext context) {
    switch (value) {
      case TaskPriorityType.unknown:
        return context.c_text_grey;
      case TaskPriorityType.veryHigh:
        return context.c_red.withOpacity(0.1);
      case TaskPriorityType.high:
        return context.c_orange_border;
      case TaskPriorityType.mid:
        return context.c_grey_grey;
      case TaskPriorityType.low:
        return context.c_grey_light;
      case TaskPriorityType.veryLow:
        return context.c_blue_container;
    }
  }
}
