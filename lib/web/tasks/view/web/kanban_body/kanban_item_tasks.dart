import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/tasks/view/web/kanban_body/kanban_item_task.dart';
import 'package:flutter/material.dart';
import 'package:rest_api/rest_api.dart';

class KanbanItemTasks extends StatefulWidget {
  const KanbanItemTasks({
    required this.onDragEnd,
    required this.onDragUpdate,
    required this.onDraggableCanceled,
    required this.onDragStarted,
    required this.onDragCompleted,
    required this.openTask,
    required this.task,
    required this.index,
    required this.isActive,
    this.onWillAccept,
    this.onAccept,
    super.key,
  });

  final ValueChanged<DraggableDetails> onDragEnd;
  final ValueChanged<DragUpdateDetails> onDragUpdate;
  final VoidCallback onDraggableCanceled;
  final VoidCallback onDragStarted;
  final VoidCallback onDragCompleted;
  final VoidCallback openTask;
  final bool Function(int?)? onWillAccept;
  final ValueChanged<int?>? onAccept;
  final bool isActive;
  final DlsTasks task;
  final int index;

  @override
  State<KanbanItemTasks> createState() => _KanbanItemTasksState();
}

class _KanbanItemTasksState extends State<KanbanItemTasks> {
  bool isActive = false;

  @override
  void didChangeDependencies() {
    isActive = widget.isActive;
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant KanbanItemTasks oldWidget) {
    isActive = widget.isActive;
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.openTask,
      child: Draggable(
        onDragStarted: widget.onDragStarted,
        onDragCompleted: widget.onDragCompleted,
        onDraggableCanceled: (value1, value2) {
          widget.onDraggableCanceled();
        },
        onDragUpdate: widget.onDragUpdate,
        onDragEnd: widget.onDragEnd,
        feedback: Container(
          margin: EdgeInsets.only(
            left: 20.w,
            right: 20.w,
          ),
          width: MediaQuery.of(context).size.width / 3,
          child: KanbanItemTask(
            index: widget.index,
            task: widget.task,
          ),
        ),
        childWhenDragging: Container(
          margin: EdgeInsets.only(
            left: 20.w,
            right: 20.w,
            bottom: 20.h,
          ),
          height: 185.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(4.r),
            ),
            color: context.c_grey_grey,
          ),
        ),
        child: widget.isActive
            ? KanbanItemTask(
                index: widget.index,
                task: widget.task,
              )
            : DragTarget<int>(
                onAccept: widget.onAccept,
                onWillAccept: widget.onWillAccept,
                builder: (
                  BuildContext context,
                  List<dynamic> accepted,
                  List<dynamic> rejected,
                ) {
                  return KanbanItemTask(
                    index: widget.index,
                    task: widget.task,
                  );
                },
              ),
      ),
    );
  }
}
