import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/tasks/view/mobile/kanban/mobile_kanban_card.dart';
import 'package:flutter/material.dart';
import 'package:rest_api/rest_api.dart';

class MobileKanbanItemTasks extends StatefulWidget {
  const MobileKanbanItemTasks({
    required this.onDragEnd,
    required this.onDragUpdate,
    required this.onDraggableCanceled,
    required this.onDragStarted,
    required this.onDragCompleted,
    required this.onTapPriority,
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
  final ValueChanged<int> onTapPriority;
  final bool Function(int?)? onWillAccept;
  final ValueChanged<int?>? onAccept;
  final bool isActive;
  final DlsTasks task;
  final int index;

  @override
  State<MobileKanbanItemTasks> createState() => _KanbanItemTasksState();
}

class _KanbanItemTasksState extends State<MobileKanbanItemTasks> {
  bool _isActive = false;

  @override
  void didChangeDependencies() {
    _isActive = widget.isActive;
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant MobileKanbanItemTasks oldWidget) {
    _isActive = widget.isActive;
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
        feedback: SizedBox(
          width: MediaQuery.of(context).size.width - 32.w,
          child: MobileKanbanCard(
            index: widget.index,
            task: widget.task,
          ),
        ),
        childWhenDragging: Container(
          margin: EdgeInsets.only(
            bottom: 10.h,
          ),
          height: 106.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(4.r),
            ),
            color: context.c_grey_grey,
          ),
        ),
        child: _isActive
            ? MobileKanbanCard(
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
                  return MobileKanbanCard(
                    index: widget.index,
                    task: widget.task,
                  );
                },
              ),
      ),
    );
  }
}
