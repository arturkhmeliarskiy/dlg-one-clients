import 'package:dls_one/web/tasks/bloc/task_list_bloc/task_list_bloc.dart';
import 'package:dls_one/web/tasks/view/mobile/kanban/mobille_kanban_at_work.dart';
import 'package:dls_one/web/tasks/view/mobile/kanban/mobille_kanban_completed.dart';
import 'package:dls_one/web/tasks/view/mobile/kanban/mobille_kanban_in_the_queue.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api/rest_api.dart';

class MobileKanbanBody extends StatefulWidget {
  const MobileKanbanBody({super.key});

  @override
  State<MobileKanbanBody> createState() => _MobileKanbanBodyState();
}

class _MobileKanbanBodyState extends State<MobileKanbanBody> {
  final ScrollController _horizontal = ScrollController(),
      _vertical = ScrollController();
  bool _isActiveTaskInTheQueue = false;
  bool _isActiveTaskAtWork = false;
  bool _isActiveTaskCompleted = false;
  int _indexTaskInTheQueue = -1;
  int _indexTaskAtWork = -1;
  int _indexTaskCompleted = -1;

  TaskStatusType _statusType = TaskStatusType.unknown;
  int _indexTask = -1;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: 500,
      width: width,
      child: BlocBuilder<TaskListBloc, TaskListState>(
        builder: (context, state) {
          return state.maybeMap(
            loading: (value) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
            preloadData: (initState) {
              return Scrollbar(
                controller: _vertical,
                thumbVisibility: true,
                trackVisibility: true,
                child: Scrollbar(
                  controller: _horizontal,
                  thumbVisibility: true,
                  trackVisibility: true,
                  notificationPredicate: (notif) => notif.depth == 1,
                  child: SingleChildScrollView(
                    controller: _vertical,
                    child: SingleChildScrollView(
                      controller: _horizontal,
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MobileKanbanInTheQueue(
                            onAccept: (index) {
                              setState(() {
                                _indexTaskInTheQueue = index;
                              });
                            },
                            onWillAccept: (index) {
                              setState(() {
                                _indexTaskInTheQueue = index;
                                _isActiveTaskInTheQueue = true;
                                _statusType = TaskStatusType.inTheQueue;
                                _indexTask = index;
                              });
                            },
                            onDragEnd: (value, index, listTaskInTheQueue,
                                listTaskAtWork, listTaskCompleted, tasks) {
                              if (_isActiveTaskInTheQueue) {
                                if (_indexTask >= 2) {
                                  setState(() {
                                    _indexTask++;
                                  });
                                }

                                context.read<TaskListBloc>().add(
                                      TaskListEvent.updateTaskKanban(
                                        listTaskInTheQueue[index].copyWith(
                                          status: _statusType,
                                        ),
                                        _indexTask,
                                        index,
                                        _statusType,
                                        TaskStatusType.inTheQueue,
                                      ),
                                    );
                              }
                            },
                            onDragStarted: () {
                              setState(() {
                                _indexTaskInTheQueue = -1;
                                _isActiveTaskInTheQueue = true;
                              });
                            },
                            onDraggableCanceled: () {
                              setState(() {
                                _isActiveTaskAtWork = false;
                                _isActiveTaskCompleted = false;
                                _isActiveTaskInTheQueue = false;
                                _indexTaskInTheQueue = -1;
                                _indexTaskAtWork = -1;
                                _indexTaskCompleted = -1;
                              });
                            },
                            onDragUpdate: (value) {},
                            indexTaskInTheQueue: _indexTaskInTheQueue,
                            isActiveTaskInTheQueue: _isActiveTaskInTheQueue,
                            quantity: initState.model.listTaskInTheQueue.length,
                          ),
                          MobileKanbanAtWork(
                            onAccept: (index) {
                              setState(() {
                                _indexTaskAtWork = index;
                              });
                            },
                            onWillAccept: (index) {
                              setState(() {
                                _indexTaskAtWork = index;
                                _isActiveTaskAtWork = true;
                                _statusType = TaskStatusType.atWork;
                                _indexTask = index;
                              });
                            },
                            onDragEnd: (
                              value,
                              index,
                              listTaskInTheQueue,
                              listTaskAtWork,
                              listTaskCompleted,
                              tasks,
                            ) {
                              if (_isActiveTaskAtWork) {
                                if (_indexTask >= 2) {
                                  setState(() {
                                    _indexTask++;
                                  });
                                }

                                context.read<TaskListBloc>().add(
                                      TaskListEvent.updateTaskKanban(
                                        listTaskAtWork[index].copyWith(
                                          status: _statusType,
                                        ),
                                        _indexTask,
                                        index,
                                        _statusType,
                                        TaskStatusType.atWork,
                                      ),
                                    );
                              }
                            },
                            onDragStarted: () {
                              setState(() {
                                _indexTaskAtWork = -1;
                                _isActiveTaskAtWork = true;
                              });
                            },
                            onDragUpdate: (value) {},
                            onDraggableCanceled: () {
                              setState(() {
                                _isActiveTaskInTheQueue = false;
                                _isActiveTaskAtWork = false;
                                _isActiveTaskCompleted = false;
                                _indexTaskAtWork = -1;
                                _indexTaskInTheQueue = -1;
                                _indexTaskCompleted = -1;
                              });
                            },
                            indexTaskAtWork: _indexTaskAtWork,
                            isActiveTaskAtWork: _isActiveTaskAtWork,
                            quantity: initState.model.listTaskAtWork.length,
                          ),
                          MobileKanbanCompleted(
                            onAccept: (index) {
                              setState(() {
                                _indexTaskCompleted = index;
                              });
                            },
                            onWillAccept: (index) {
                              setState(() {
                                _indexTaskCompleted = index;
                                _isActiveTaskCompleted = true;
                                _statusType = TaskStatusType.completed;
                                _indexTask = index;
                              });
                            },
                            onDragEnd: (
                              value,
                              index,
                              listTaskInTheQueue,
                              listTaskAtWork,
                              listTaskCompleted,
                              tasks,
                            ) {
                              if (_isActiveTaskCompleted) {
                                if (_indexTask >= 2) {
                                  setState(() {
                                    _indexTask = _indexTask + 1;
                                  });
                                }

                                context.read<TaskListBloc>().add(
                                      TaskListEvent.updateTaskKanban(
                                        listTaskCompleted[index].copyWith(
                                          status: _statusType,
                                        ),
                                        _indexTask,
                                        index,
                                        _statusType,
                                        TaskStatusType.completed,
                                      ),
                                    );
                              }
                            },
                            onDragStarted: () {
                              setState(() {
                                _indexTaskCompleted = -1;
                                _isActiveTaskCompleted = true;
                              });
                            },
                            onDragUpdate: (value) {},
                            onDraggableCanceled: () {
                              setState(() {
                                _isActiveTaskInTheQueue = false;
                                _isActiveTaskCompleted = false;
                                _isActiveTaskAtWork = false;
                                _indexTaskCompleted = -1;
                                _indexTaskInTheQueue = -1;
                                _indexTaskAtWork = -1;
                              });
                            },
                            indexTaskCompleted: _indexTaskCompleted,
                            isActiveTaskCompleted: _isActiveTaskCompleted,
                            quantity: initState.model.listTaskCompleted.length,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
            orElse: () => const SizedBox(),
          );
        },
      ),
    );
  }
}
