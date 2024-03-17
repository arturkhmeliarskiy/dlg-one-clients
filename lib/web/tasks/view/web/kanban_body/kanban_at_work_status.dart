import 'package:auto_route/auto_route.dart';
import 'package:dls_one/app/router/app_router.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/core/widgets/dls_loader/dls_loader_scope.dart';
import 'package:dls_one/web/sprints/bloc/sprints/sprints_bloc.dart';
import 'package:dls_one/web/tasks/bloc/task_list_bloc/task_list_bloc.dart';
import 'package:dls_one/web/tasks/view/web/kanban_body/kanban_item_task.dart';
import 'package:dls_one/web/tasks/view/web/kanban_body/kanban_item_tasks.dart';
import 'package:dls_one/web/tasks/view/web/kanban_body/kanban_status_info.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api/rest_api.dart';

class KanbanAtWorkStatus extends StatefulWidget {
  const KanbanAtWorkStatus({
    required this.isActiveTaskAtWork,
    required this.indexTaskAtWork,
    required this.onDraggableCanceled,
    required this.onAccept,
    required this.onWillAccept,
    required this.onDragStarted,
    required this.onDragUpdate,
    required this.onDragEnd,
    required this.onDragStart,
    super.key,
  });

  final bool isActiveTaskAtWork;
  final int indexTaskAtWork;
  final ValueChanged<int> onAccept;
  final ValueChanged<int> onWillAccept;
  final ValueChanged<DragUpdateDetails> onDragUpdate;
  final ValueChanged<DragStartDetails>? onDragStart;
  final VoidCallback onDragStarted;
  final VoidCallback onDraggableCanceled;
  final void Function(
    DraggableDetails,
    int,
    List<DlsTasks>,
    List<DlsTasks>,
    List<DlsTasks>,
  ) onDragEnd;

  @override
  State<KanbanAtWorkStatus> createState() => _KanbanAtWorkStatusState();
}

class _KanbanAtWorkStatusState extends State<KanbanAtWorkStatus> {
  bool _isActiveTaskAtWork = false;
  int _indexTaskAtWork = -1;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      final taskListBloc = context.read<TaskListBloc>();
      if (taskListBloc.state.model.atWorkLoading) {
        DLSLoaderScope.showLoaderOf(
          context,
          future: taskListBloc.stream.firstWhere(
                (state) => !state.model.atWorkLoading,
              ),
        );
      }
    });
  }

  @override
  void didChangeDependencies() {
    _isActiveTaskAtWork = widget.isActiveTaskAtWork;
    _indexTaskAtWork = widget.indexTaskAtWork;
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant KanbanAtWorkStatus oldWidget) {
    _isActiveTaskAtWork = widget.isActiveTaskAtWork;
    _indexTaskAtWork = widget.indexTaskAtWork;
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: context.c_white_text,
      child: Column(
        children: [
          Divider(
            height: 1.h,
            color: context.c_grey_stoke,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 24.h,
              left: 20.w,
              right: 20.w,
              bottom: 20.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const KanbanStatusInfo(
                  statusesType: TaskStatusType.atWork,
                ),
                DLSPlusIconButton(
                  tooltip: S.current.tooltip_add_task,
                  onTap: () async {
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
                        status: TaskStatusType.atWork,
                      ),
                    );
                    bloc.add(const TaskListEvent.refresh());
                  },
                ),
              ],
            ),
          ),
          BlocBuilder<TaskListBloc, TaskListState>(
            builder: (context, state) {
              if (_isActiveTaskAtWork && state.model.listTaskAtWork.isEmpty) {
                return Container(
                  margin: EdgeInsets.only(
                    left: 20.w,
                    right: 20.w,
                    bottom: 20.h,
                  ),
                  height: 190.h,
                  child: DottedBorder(
                    strokeWidth: 2.w,
                    color: context.c_blue,
                    dashPattern: const <double>[2, 2],
                    padding: const EdgeInsets.all(1),
                    radius: const Radius.circular(4),
                    child: Row(),
                  ),
                );
              } else {
                return const SizedBox();
              }
            },
          ),
          BlocBuilder<TaskListBloc, TaskListState>(
            builder: (context, state) {
              final model = state.model;
              return Expanded(
                child: ListView.builder(
                  itemCount: model.listTaskAtWork.length,
                  itemBuilder: (context, index) {
                    return ListView(
                      shrinkWrap: true,
                      reverse: _indexTaskAtWork <= 1,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        if (model.listTaskAtWork[index].roles?.first.name !=
                            S.current.observer)
                          KanbanItemTasks(
                            openTask: () async {
                              final bloc = context.read<TaskListBloc>();
                              await context.router.push(
                                NewTaskSprintRoute(
                                  task: model.listTaskAtWork[index],
                                  status: TaskStatusType.atWork,
                                  onTaskSaved: (task) {
                                    context.read<SprintsBloc>().add(
                                          const SprintsEvent.getSprints(
                                            withLoading: false,
                                          ),
                                        );
                                    bloc.add(const TaskListEvent.refresh());
                                  },
                                ),
                              );
                              bloc.add(const TaskListEvent.refresh());
                            },
                            isActive: _indexTaskAtWork == index,
                            onAccept: (data) {
                              if (data != null) {
                                widget.onAccept(index);
                              }
                            },
                            onWillAccept: (data) {
                              widget.onWillAccept(index);
                              return true;
                            },
                            task: model.listTaskAtWork[index],
                            index: index,
                            onDragCompleted: () {},
                            onDragEnd: (value) {
                              widget.onDragEnd(
                                value,
                                index,
                                model.listTaskInTheQueue,
                                model.listTaskAtWork,
                                model.listTaskCompleted,
                              );
                            },
                            onDragStarted: widget.onDragStarted,
                            onDraggableCanceled: widget.onDraggableCanceled,
                            onDragUpdate: widget.onDragUpdate,
                          )
                        else
                          GestureDetector(
                            onHorizontalDragStart: widget.onDragStart,
                            child: KanbanItemTask(
                              index: index,
                              task: model.listTaskAtWork[index],
                            ),
                          ),
                        if (_indexTaskAtWork == index)
                          Container(
                            margin: EdgeInsets.only(
                              left: 20.w,
                              right: 20.w,
                              bottom: 20.h,
                            ),
                            height: 190.h,
                            child: DottedBorder(
                              strokeWidth: 2.w,
                              color: context.c_blue,
                              dashPattern: const <double>[2, 2],
                              padding: EdgeInsets.all(1.r),
                              radius: Radius.circular(4.r),
                              child: const SizedBox.expand(),
                            ),
                          ),
                      ],
                    );
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
