import 'package:auto_route/auto_route.dart';
import 'package:dls_one/app/router/app_router.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/sprints/bloc/bloc.dart';
import 'package:dls_one/web/tasks/bloc/bloc.dart';
import 'package:dls_one/web/tasks/view/web/app_bar/task_app_bar.dart';
import 'package:dls_one/web/tasks/view/web/task_list_body/tab_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api/rest_api.dart';

@RoutePage()
class TasksGeneralPage extends StatefulWidget {
  const TasksGeneralPage({super.key});

  @override
  State<TasksGeneralPage> createState() => _TasksGeneralPageState();
}

class _TasksGeneralPageState extends State<TasksGeneralPage> {
  late var _tasks = true;

  void _setTasks(bool tasks) {
    _tasks = tasks;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: () {},
          child: DefaultTabController(
            length: 2,
            child: Scaffold(
              backgroundColor: Colors.transparent,
              appBar: AppBar(
                title: TaskAppBar(
                  tasks: _tasks,
                  onTasksViewChanged: _setTasks,
                  onNewTask: (task) async {
                    final bloc = context.read<TaskListBloc>();
                    await context.router.push(
                      NewTaskSprintRoute(
                        onTaskSaved: (task) {
                          context.read<SprintsBloc>().add(
                                const SprintsEvent.getSprints(
                                  withLoading: false,
                                ),
                              );
                          bloc.add(const TaskListEvent.refresh());
                        },
                        status: TaskStatusType.inTheQueue,
                        parentTask: task,
                      ),
                    );
                    bloc.add(const TaskListEvent.refresh());
                  },
                ),
                centerTitle: false,
                titleSpacing: 0,
                backgroundColor: context.c_appbar,
                elevation: 0,
                toolbarHeight: _tasks ? 104.h : 160.h,
              ),
              body: TabBody(tasks: _tasks),
            ),
          ),
        ),
      ],
    );
  }
}
