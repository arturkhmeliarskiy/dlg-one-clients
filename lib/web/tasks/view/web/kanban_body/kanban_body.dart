import 'package:dls_one/core/core.dart';
import 'package:dls_one/core/widgets/dls_loader/dls_loader_scope.dart';
import 'package:dls_one/web/tasks/bloc/task_list_bloc/task_list_bloc.dart';
import 'package:dls_one/web/tasks/view/web/kanban_body/kanban_at_work_status.dart';
import 'package:dls_one/web/tasks/view/web/kanban_body/kanban_completed_status.dart';
import 'package:dls_one/web/tasks/view/web/kanban_body/kanban_in_the_queue_status.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api/rest_api.dart';

class KanbanBody extends StatefulWidget {
  const KanbanBody({super.key});

  @override
  State<KanbanBody> createState() => _KanbanBodyState();
}

class _KanbanBodyState extends State<KanbanBody> {
  bool _isActiveTaskInTheQueue = false;
  bool _isActiveTaskAtWork = false;
  bool _isActiveTaskCompleted = false;
  int _indexTaskInTheQueue = -1;
  int _indexTaskAtWork = -1;
  int _indexTaskCompleted = -1;
  OverlayEntry? overlayEntry;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return BlocBuilder<TaskListBloc, TaskListState>(
      builder: (context, state) {
        return Row(
          children: [
            Expanded(
              child: DLSLoaderScope(
                child: BlocListener<TaskListBloc, TaskListState>(
                  listenWhen: (prev, current) =>
                      current.model.inTheQueueLoading,
                  listener: (context, state) {
                    DLSLoaderScope.showLoaderOf(
                      context,
                      future: context.read<TaskListBloc>().stream.firstWhere(
                            (state) => !state.model.inTheQueueLoading,
                          ),
                    );
                  },
                  child: KanbanInTheQueueStatus(
                    onDragStart: (value) {
                      OverlayState? overlayState = Overlay.of(context);
                      overlayEntry = _createOverlay(context);
                      overlayState.insert(overlayEntry!);
                    },
                    onAccept: (index) {
                      setState(() {
                        _indexTaskInTheQueue = index;
                      });
                    },
                    onWillAccept: (index) {
                      setState(() {
                        _indexTaskInTheQueue = index;
                        _isActiveTaskInTheQueue = false;
                      });
                    },
                    onDragEnd: (
                      value,
                      index,
                      listTaskInTheQueue,
                      listTaskAtWork,
                      listTaskCompleted,
                    ) {
                      onDragEndInTheQueue(
                        value,
                        index,
                        listTaskInTheQueue,
                        listTaskAtWork,
                        listTaskCompleted,
                        width,
                        height,
                      );
                    },
                    onDragStarted: () {
                      setState(() {
                        _indexTaskInTheQueue = -1;
                        _isActiveTaskInTheQueue = false;
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
                    onDragUpdate: (value) {
                      onDragUpdateInTheQueue(value, width, height);
                    },
                    indexTaskInTheQueue: _indexTaskInTheQueue,
                    isActiveTaskInTheQueue: _isActiveTaskInTheQueue,
                  ),
                ),
              ),
            ),
            VerticalDivider(
              width: 1,
              color: context.c_grey_stoke,
            ),
            Expanded(
              child: DLSLoaderScope(
                child: BlocListener<TaskListBloc, TaskListState>(
                  listenWhen: (prev, current) => current.model.atWorkLoading,
                  listener: (context, state) {
                    DLSLoaderScope.showLoaderOf(
                      context,
                      future: context
                          .read<TaskListBloc>()
                          .stream
                          .firstWhere((state) => !state.model.atWorkLoading),
                    );
                  },
                  child: KanbanAtWorkStatus(
                    onDragStart: (value) {
                      OverlayState? overlayState = Overlay.of(context);
                      overlayEntry = _createOverlay(context);
                      overlayState.insert(overlayEntry!);
                    },
                    onAccept: (index) {
                      setState(() {
                        _indexTaskAtWork = index;
                      });
                    },
                    onWillAccept: (index) {
                      setState(() {
                        _indexTaskAtWork = index;
                        _isActiveTaskAtWork = false;
                      });
                    },
                    onDragEnd: (
                      value,
                      index,
                      listTaskInTheQueue,
                      listTaskAtWork,
                      listTaskCompleted,
                    ) {
                      onDragEndAtWork(
                        value,
                        index,
                        listTaskInTheQueue,
                        listTaskAtWork,
                        listTaskCompleted,
                        width,
                        height,
                      );
                    },
                    onDragStarted: () {
                      setState(() {
                        _indexTaskAtWork = -1;
                        _isActiveTaskAtWork = false;
                      });
                    },
                    onDragUpdate: (value) {
                      onDragUpdateAtWork(value, width, height);
                    },
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
                  ),
                ),
              ),
            ),
            VerticalDivider(
              width: 1.w,
              color: context.c_grey_stoke,
            ),
            Expanded(
              child: DLSLoaderScope(
                child: BlocListener<TaskListBloc, TaskListState>(
                  listenWhen: (prev, current) => current.model.completedLoading,
                  listener: (context, state) {
                    DLSLoaderScope.showLoaderOf(
                      context,
                      future: context
                          .read<TaskListBloc>()
                          .stream
                          .firstWhere((state) => !state.model.completedLoading),
                    );
                  },
                  child: KanbanCompletedStatus(
                    onDragStart: (value) {
                      OverlayState? overlayState = Overlay.of(context);
                      overlayEntry = _createOverlay(context);
                      overlayState.insert(overlayEntry!);
                    },
                    onAccept: (index) {
                      setState(() {
                        _indexTaskCompleted = index;
                      });
                    },
                    onWillAccept: (index) {
                      setState(() {
                        _indexTaskCompleted = index;
                        _isActiveTaskCompleted = false;
                      });
                    },
                    onDragEnd: (
                      value,
                      index,
                      listTaskInTheQueue,
                      listTaskAtWork,
                      listTaskCompleted,
                    ) {
                      onDragCompleted(
                        value,
                        index,
                        listTaskInTheQueue,
                        listTaskAtWork,
                        listTaskCompleted,
                        width,
                        height,
                      );
                    },
                    onDragStarted: () {
                      setState(() {
                        _indexTaskCompleted = -1;
                        _isActiveTaskCompleted = false;
                      });
                    },
                    onDragUpdate: (value) {
                      onDragUpdateCompleted(value, width, height);
                    },
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
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  void onDragEndInTheQueue(
    DraggableDetails value,
    int index,
    List<DlsTasks> listTaskInTheQueue,
    List<DlsTasks> listTaskAtWork,
    List<DlsTasks> listTaskCompleted,
    double width,
    double height,
  ) {
    if (value.offset.dx < width * 0.3 && value.offset.dy > height * 0.1) {
      if (_indexTaskInTheQueue >= 2 &&
          _indexTaskInTheQueue != listTaskInTheQueue.length) {
        setState(() {
          _indexTaskInTheQueue = _indexTaskInTheQueue + 1;
        });
      }

      if (listTaskInTheQueue.isEmpty) {
        setState(() {
          _indexTaskInTheQueue = 0;
        });
      }

      context.read<TaskListBloc>().add(
            TaskListEvent.updateTaskKanban(
              listTaskInTheQueue[index].copyWith(
                status: TaskStatusType.inTheQueue,
              ),
              _indexTaskInTheQueue,
              index,
              TaskStatusType.inTheQueue,
              TaskStatusType.inTheQueue,
            ),
          );
      setState(() {
        _isActiveTaskInTheQueue = false;
        _indexTaskInTheQueue = -1;
      });
    }

    if (value.offset.dx > width * 0.3 &&
        value.offset.dx < width * 0.6 &&
        value.offset.dy > height * 0.1) {
      if (_indexTaskAtWork >= 2 && _indexTaskAtWork != listTaskAtWork.length) {
        setState(() {
          _indexTaskAtWork = _indexTaskAtWork + 1;
        });
      }

      if (listTaskAtWork.isEmpty) {
        setState(() {
          _indexTaskAtWork = 0;
        });
      }

      context.read<TaskListBloc>().add(
            TaskListEvent.updateTaskKanban(
              listTaskInTheQueue[index].copyWith(
                status: TaskStatusType.atWork,
              ),
              _indexTaskAtWork,
              index,
              TaskStatusType.atWork,
              TaskStatusType.inTheQueue,
            ),
          );
      setState(() {
        _isActiveTaskAtWork = false;
        _indexTaskAtWork = -1;
      });
    }

    if (value.offset.dx > width * 0.6 && value.offset.dy > height * 0.1) {
      if (_indexTaskCompleted >= 2 &&
          _indexTaskCompleted != listTaskCompleted.length) {
        setState(() {
          _indexTaskCompleted = _indexTaskCompleted + 1;
        });
      }

      if (listTaskCompleted.isEmpty) {
        setState(() {
          _indexTaskCompleted = 0;
        });
      }

      context.read<TaskListBloc>().add(
            TaskListEvent.updateTaskKanban(
              listTaskInTheQueue[index].copyWith(
                status: TaskStatusType.atWork,
              ),
              _indexTaskCompleted,
              index,
              TaskStatusType.completed,
              TaskStatusType.inTheQueue,
            ),
          );

      setState(() {
        _isActiveTaskCompleted = false;
        _indexTaskCompleted = -1;
      });
    }
  }

  void onDragEndAtWork(
    DraggableDetails value,
    int index,
    List<DlsTasks> listTaskInTheQueue,
    List<DlsTasks> listTaskAtWork,
    List<DlsTasks> listTaskCompleted,
    double width,
    double height,
  ) {
    if (value.offset.dx < width * 0.25 && value.offset.dy > height * 0.1) {
      if (_indexTaskInTheQueue >= 2 &&
          _indexTaskInTheQueue != listTaskInTheQueue.length) {
        setState(() {
          _indexTaskInTheQueue = _indexTaskInTheQueue + 1;
        });
      }

      if (listTaskInTheQueue.isEmpty) {
        setState(() {
          _indexTaskInTheQueue = 0;
        });
      }

      context.read<TaskListBloc>().add(
            TaskListEvent.updateTaskKanban(
              listTaskAtWork[index].copyWith(
                status: TaskStatusType.inTheQueue,
              ),
              _indexTaskInTheQueue,
              index,
              TaskStatusType.inTheQueue,
              TaskStatusType.atWork,
            ),
          );
      setState(() {
        _isActiveTaskInTheQueue = false;
        _indexTaskInTheQueue = -1;
      });
    }

    if (value.offset.dx > width * 0.3 &&
        value.offset.dx < width * 0.6 &&
        value.offset.dy > height * 0.1) {
      if (_indexTaskAtWork >= 2 && _indexTaskAtWork != listTaskAtWork.length) {
        setState(() {
          _indexTaskAtWork = _indexTaskAtWork + 1;
        });
      }

      if (listTaskAtWork.isEmpty) {
        setState(() {
          _indexTaskAtWork = 0;
        });
      }

      context.read<TaskListBloc>().add(
            TaskListEvent.updateTaskKanban(
              listTaskAtWork[index].copyWith(
                status: TaskStatusType.atWork,
              ),
              _indexTaskAtWork,
              index,
              TaskStatusType.atWork,
              TaskStatusType.atWork,
            ),
          );
      setState(() {
        _isActiveTaskAtWork = false;
        _indexTaskAtWork = -1;
      });
    }

    if (value.offset.dx > width * 0.6 && value.offset.dy > height * 0.1) {
      if (_indexTaskCompleted >= 2 &&
          _indexTaskCompleted != listTaskCompleted.length) {
        setState(() {
          _indexTaskCompleted = _indexTaskCompleted + 1;
        });
      }

      if (listTaskCompleted.isEmpty) {
        setState(() {
          _indexTaskCompleted = 0;
        });
      }

      context.read<TaskListBloc>().add(
            TaskListEvent.updateTaskKanban(
              listTaskAtWork[index].copyWith(
                status: TaskStatusType.completed,
              ),
              _indexTaskCompleted,
              index,
              TaskStatusType.completed,
              TaskStatusType.atWork,
            ),
          );
      setState(() {
        _isActiveTaskCompleted = false;
        _indexTaskCompleted = -1;
      });
    }
  }

  void onDragCompleted(
    DraggableDetails value,
    int index,
    List<DlsTasks> listTaskInTheQueue,
    List<DlsTasks> listTaskAtWork,
    List<DlsTasks> listTaskCompleted,
    double width,
    double height,
  ) {
    if (value.offset.dx < width * 0.25 && value.offset.dy > height * 0.1) {
      if (_indexTaskInTheQueue >= 2 &&
          _indexTaskInTheQueue != listTaskInTheQueue.length) {
        setState(() {
          _indexTaskInTheQueue = _indexTaskInTheQueue + 1;
        });
      }

      if (listTaskInTheQueue.isEmpty) {
        setState(() {
          _indexTaskInTheQueue = 0;
        });
      }

      context.read<TaskListBloc>().add(
            TaskListEvent.updateTaskKanban(
              listTaskCompleted[index].copyWith(
                status: TaskStatusType.inTheQueue,
              ),
              _indexTaskInTheQueue,
              index,
              TaskStatusType.inTheQueue,
              TaskStatusType.completed,
            ),
          );
      setState(() {
        _isActiveTaskInTheQueue = false;
        _indexTaskInTheQueue = -1;
      });
    }

    if (value.offset.dx < width * 0.6 &&
        value.offset.dx > width * 0.25 &&
        value.offset.dy > height * 0.1) {
      if (_indexTaskAtWork >= 2 && _indexTaskAtWork != listTaskAtWork.length) {
        setState(() {
          _indexTaskAtWork = _indexTaskAtWork + 1;
        });
      }

      if (listTaskAtWork.isEmpty) {
        setState(() {
          _indexTaskAtWork = 0;
        });
      }

      context.read<TaskListBloc>().add(
            TaskListEvent.updateTaskKanban(
              listTaskCompleted[index].copyWith(
                status: TaskStatusType.atWork,
              ),
              _indexTaskAtWork,
              index,
              TaskStatusType.atWork,
              TaskStatusType.completed,
            ),
          );
      setState(() {
        _isActiveTaskAtWork = false;
        _indexTaskAtWork = -1;
      });
    }

    if (value.offset.dx > width * 0.6 && value.offset.dy > height * 0.1) {
      if (_indexTaskCompleted >= 2 &&
          _indexTaskCompleted != listTaskCompleted.length) {
        setState(() {
          _indexTaskCompleted = _indexTaskCompleted + 1;
        });
      }

      if (listTaskCompleted.isEmpty) {
        setState(() {
          _indexTaskCompleted = 0;
        });
      }

      context.read<TaskListBloc>().add(
            TaskListEvent.updateTaskKanban(
              listTaskCompleted[index].copyWith(
                status: TaskStatusType.completed,
              ),
              _indexTaskCompleted,
              index,
              TaskStatusType.completed,
              TaskStatusType.completed,
            ),
          );
      setState(() {
        _isActiveTaskCompleted = false;
        _indexTaskCompleted = -1;
      });
    }
  }

  void onDragUpdateInTheQueue(
    DragUpdateDetails value,
    double width,
    double height,
  ) {
    if (value.globalPosition.dx > width * 0.3 &&
        value.globalPosition.dx < width * 0.6 &&
        value.globalPosition.dy > height * 0.1) {
      setState(() {
        _isActiveTaskAtWork = true;
      });
    } else {
      setState(() {
        _isActiveTaskAtWork = false;
        if (value.globalPosition.dx > width * 0.7 &&
            value.globalPosition.dy > height * 0.1) {
          _indexTaskAtWork = -1;
        }
      });
    }

    if (value.globalPosition.dx > width * 0.6 &&
        value.globalPosition.dy > height * 0.1) {
      setState(() {
        _isActiveTaskCompleted = true;
      });
    } else {
      setState(() {
        _isActiveTaskCompleted = false;
      });
    }
  }

  void onDragUpdateAtWork(
    DragUpdateDetails value,
    double width,
    double height,
  ) {
    if (value.globalPosition.dx < width * 0.4 &&
        value.globalPosition.dy > height * 0.1) {
      setState(() {
        _isActiveTaskInTheQueue = true;
      });
    } else {
      setState(() {
        _isActiveTaskInTheQueue = false;
        _indexTaskInTheQueue = -1;
      });
    }

    if (value.globalPosition.dx > width * 0.6 &&
        value.globalPosition.dy > height * 0.1) {
      setState(() {
        _isActiveTaskCompleted = true;
      });
    } else {
      setState(() {
        _isActiveTaskCompleted = false;
        _indexTaskCompleted = -1;
      });
    }
  }

  void onDragUpdateCompleted(
    DragUpdateDetails value,
    double width,
    double height,
  ) {
    if (value.globalPosition.dx < width * 0.4 &&
        value.globalPosition.dy > height * 0.1) {
      setState(() {
        _isActiveTaskInTheQueue = true;
      });
    } else {
      setState(() {
        _isActiveTaskInTheQueue = false;
      });
    }

    if (value.globalPosition.dx < width * 0.65 &&
        value.globalPosition.dx > width * 0.25 &&
        value.globalPosition.dy > height * 0.1) {
      setState(() {
        _isActiveTaskAtWork = true;
      });
    } else {
      setState(() {
        _isActiveTaskAtWork = false;
      });
    }
  }

  OverlayEntry _createOverlay(BuildContext context) {
    return OverlayEntry(
      builder: (context) => Positioned(
        bottom: 8.h,
        right: 8.w,
        child: Container(
          height: 44.h,
          width: 445.w,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: context.c_calls_background,
            borderRadius: BorderRadius.circular(
              5.r,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 12.w),
                child: Assets.icons.fileCheck11.svg(
                  height: 18.h,
                  width: 18.w,
                  color: context.c_placeholder,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 4.h),
                child: Text(
                  S.current.not_available_to_observer_2,
                  style: context.ts_s14h22_4w400.copyWith(
                    color: context.c_white_text,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 12.w),
                child: GestureDetector(
                  onTap: () {
                    overlayEntry?.remove();
                  },
                  child: Assets.icons.fileCheck12.svg(
                    color: context.c_placeholder,
                    height: 18.h,
                    width: 18.w,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
