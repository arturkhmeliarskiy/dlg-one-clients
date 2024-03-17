import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:dls_one/app/router/app_router.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/sprints/bloc/sprints/sprints_bloc.dart';
import 'package:dls_one/web/tasks/bloc/task_list_bloc/task_list_bloc.dart';
import 'package:dls_one/web/tasks/view/mobile/kanban/mobile_kanban_body.dart';
import 'package:dls_one/web/tasks/view/mobile/app_bar/task_search.dart';
import 'package:dls_one/web/tasks/view/mobile/task_list/mobile_task_list.dart';
import 'package:dls_one/web/tasks/view/web/app_bar/task_app_bar_title.dart';
import 'package:dls_one/web/tasks/view/web/app_bar/tasks_appbar_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api/rest_api.dart';

@RoutePage()
class MobileTasksGeneralPage extends StatefulWidget {
  const MobileTasksGeneralPage({super.key});

  @override
  State<MobileTasksGeneralPage> createState() => _MobileTasksGeneralPageState();
}

class _MobileTasksGeneralPageState extends State<MobileTasksGeneralPage> {
  int _selectedTabBar = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 60.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(width: 16.w),
                    TaskAppBarTitle(
                      title: S.current.tasks,
                      isMobile: true,
                    ),
                    SizedBox(width: 4.w),
                    AppBarMenuDropDown(
                      onTasksViewChanged: (value) {},
                      tasks: true,
                      isMobile: true,
                    ),
                  ],
                ),
                Row(
                  children: [
                    MobileTaskSearch(
                      onSearchTask: (value) {
                        if (_selectedTabBar != 0) {
                          context.read<TaskListBloc>().add(
                                TaskListEvent.searchTaskKanban(
                                  value,
                                ),
                              );
                        } else {
                          context.read<TaskListBloc>().add(
                                TaskListEvent.searchTask(
                                  value,
                                ),
                              );
                        }
                      },
                    ),
                    SizedBox(width: 16.w),
                    GestureDetector(
                      onTap: () {
                        context.router.push(
                          MobileTaskFiltersRoute(
                            selectedTabBar: _selectedTabBar,
                          ),
                        );
                      },
                      child: Assets.icons.angleDown5.svg(
                        color: context.c_text_grey,
                        height: 18.h,
                        width: 18.w,
                      ),
                    ),
                    SizedBox(width: 16.w),
                  ],
                )
              ],
            ),
          ),
          DefaultTabController(
            length: 2,
            child: Column(
              children: [
                Divider(
                  height: 1.h,
                  color: context.c_grey_stoke,
                ),
                SizedBox(
                  height: 38.h,
                  child: TabBar(
                    onTap: (index) {
                      setState(() {
                        _selectedTabBar = index;
                      });
                    },
                    tabs: [
                      Tab(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Assets.icons.listUl2.svg(),
                            SizedBox(
                              width: 4.w,
                            ),
                            Text(
                              S.current.list,
                            ),
                          ],
                        ),
                      ),
                      Tab(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Assets.icons.listUl3.svg(),
                            SizedBox(
                              width: 4.w,
                            ),
                            Text(
                              S.current.kanban,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  height: 1.h,
                  color: context.c_grey_stoke,
                ),
              ],
            ),
          ),
          Expanded(
            child: _selectedTabBar == 0
                ? const MobileTaskList()
                : const MobileKanbanBody(),
          ),
        ],
      ),
      floatingActionButton: BlocBuilder<TaskListBloc, TaskListState>(
        builder: (context, state) {
          final task = state.model.listTask.firstOrNull;
          if (task == null) {
            return const SizedBox.shrink();
          }
          return FloatingActionButton(
            onPressed: () async {
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
            child: Assets.icons.add.svg(
              colorFilter: context.c_white_text_color_filter,
              width: 18.w,
            ),
          );
        },
      ),
    );
  }
}
