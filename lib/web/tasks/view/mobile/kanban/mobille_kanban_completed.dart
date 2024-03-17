import 'package:auto_route/auto_route.dart';
import 'package:dls_one/app/router/app_router.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/sprints/bloc/sprints/sprints_bloc.dart';
import 'package:dls_one/web/tasks/bloc/task_list_bloc/task_list_bloc.dart';
import 'package:dls_one/web/tasks/view/mobile/kanban/mobile_kanban_card.dart';
import 'package:dls_one/web/tasks/view/mobile/kanban/mobile_kanban_item_taks.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api/rest_api.dart';

class MobileKanbanCompleted extends StatefulWidget {
  const MobileKanbanCompleted({
    required this.isActiveTaskCompleted,
    required this.indexTaskCompleted,
    required this.onDraggableCanceled,
    required this.onAccept,
    required this.onWillAccept,
    required this.onDragStarted,
    required this.onDragUpdate,
    required this.onDragEnd,
    required this.quantity,
    super.key,
  });

  final int quantity;
  final bool isActiveTaskCompleted;
  final int indexTaskCompleted;
  final ValueChanged<int> onAccept;
  final ValueChanged<int> onWillAccept;
  final ValueChanged<DragUpdateDetails> onDragUpdate;
  final VoidCallback onDragStarted;
  final VoidCallback onDraggableCanceled;
  final void Function(
    DraggableDetails,
    int,
    List<DlsTasks>,
    List<DlsTasks>,
    List<DlsTasks>,
    List<DlsTasks>,
  ) onDragEnd;

  @override
  State<MobileKanbanCompleted> createState() => _MobileKanbanCompletedState();
}

class _MobileKanbanCompletedState extends State<MobileKanbanCompleted> {
  bool _isActiveTaskCompleted = false;
  int _indexTaskCompleted = -1;

  @override
  void didChangeDependencies() {
    _isActiveTaskCompleted = widget.isActiveTaskCompleted;
    _indexTaskCompleted = widget.indexTaskCompleted;
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant MobileKanbanCompleted oldWidget) {
    _isActiveTaskCompleted = widget.isActiveTaskCompleted;
    _indexTaskCompleted = widget.indexTaskCompleted;
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.w,
      ),
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Container(
            height: 32.h,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: context.c_grey_light,
              borderRadius: BorderRadius.circular(4.r),
            ),
            margin: EdgeInsets.only(
              top: 16.h,
            ),
            padding: EdgeInsets.only(
              left: 8.w,
              top: 2.h,
            ),
            child: Text(
              S.current.completed(
                widget.quantity,
              ),
              style: context.ts_s14h22_4w400.copyWith(
                color: context.c_green,
              ),
            ),
          ),
          BlocBuilder<TaskListBloc, TaskListState>(
            builder: (context, state) {
              if (_isActiveTaskCompleted &&
                  state.model.listTaskCompleted.isEmpty) {
                return Container(
                  margin: EdgeInsets.only(
                    bottom: 10.h,
                  ),
                  height: 106.h,
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
          SizedBox(
            height: 10.h,
          ),
          BlocBuilder<TaskListBloc, TaskListState>(
            builder: (context, state) {
              return Column(
                children: List.generate(state.model.listTaskCompleted.length,
                    (index) {
                  return ListView(
                    shrinkWrap: true,
                    reverse: _indexTaskCompleted <= 1,
                    children: [
                      if (state.model.listTaskCompleted[index].roles?.first
                              .name !=
                          S.current.observer)
                        MobileKanbanItemTasks(
                          index: index,
                          task: state.model.listTaskCompleted[index],
                          openTask: () async {
                            final bloc = context.read<TaskListBloc>();
                            await context.router.push(
                              NewTaskSprintRoute(
                                task: state.model.listTaskCompleted[index],
                                status: TaskStatusType.completed,
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
                          isActive: _indexTaskCompleted == index,
                          onAccept: (data) {
                            if (data != null) {
                              widget.onAccept(index);
                            }
                          },
                          onWillAccept: (data) {
                            widget.onWillAccept(index);
                            return true;
                          },
                          onTapPriority: (value) {},
                          onDragCompleted: () {},
                          onDragEnd: (value) {
                            widget.onDragEnd(
                              value,
                              index,
                              state.model.listTaskInTheQueue,
                              state.model.listTaskAtWork,
                              state.model.listTaskCompleted,
                              state.model.tasks,
                            );
                          },
                          onDragStarted: widget.onDragStarted,
                          onDraggableCanceled: widget.onDraggableCanceled,
                          onDragUpdate: widget.onDragUpdate,
                        )
                      else
                        MobileKanbanCard(
                          index: index,
                          task: state.model.listTaskCompleted[index],
                        ),
                      if (_indexTaskCompleted == index)
                        Container(
                          margin: EdgeInsets.only(
                            bottom: 10.h,
                          ),
                          height: 106.h,
                          child: DottedBorder(
                            strokeWidth: 2.w,
                            color: context.c_blue,
                            dashPattern: const <double>[2, 2],
                            padding: const EdgeInsets.all(1),
                            radius: Radius.circular(4.r),
                            child: Row(),
                          ),
                        ),
                    ],
                  );
                }),
              );
            },
          ),
        ],
      ),
    );
  }
}
