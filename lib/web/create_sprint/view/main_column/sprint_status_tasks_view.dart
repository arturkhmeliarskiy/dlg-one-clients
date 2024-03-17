import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/create_sprint/create_sprint.dart';
import 'package:dls_one/web/create_task/create_task.dart';
import 'package:dls_one/web/sprints/view/widgets/completed_sprint_page/right_column/info_widget.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:rest_api/rest_api.dart';

class SprintStatusTasksView extends StatelessWidget {
  const SprintStatusTasksView({
    required this.status,
    required this.tasks,
    required this.onTapTask,
    required this.onMove,
    required this.onMoveCancel,
    this.isDragging = false,
    super.key,
  });

  final TaskStatusType status;
  final List<DlsTasks> tasks;
  final ValueSetter<DlsTasks> onTapTask;
  final VoidCallback onMove;
  final VoidCallback onMoveCancel;
  final bool isDragging;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InfoWidget(
          marginTop: 16.h,
          backgroundColor: status.backgroundColor(context),
          colorDetails: status.color(context),
          // TODO use plural
          title: '${status.text} (${tasks.length})',
        ),
        SizedBox(height: 6.h),
        NewSprintTaskStatusItem(
          tasks: tasks,
          onTap: onTapTask,
          onDragEnd: (value, index, item) {
            onMoveCancel();
          },
          onDragStarted: onMove,
          onDraggableCanceled: onMoveCancel,
          onDragCompleted: onMoveCancel,
        ),
        if (isDragging)
          Container(
            margin: EdgeInsets.only(top: 12.h, left: 20.w, right: 20.w),
            height: 40.h,
            child: DottedBorder(
              strokeWidth: 2.w,
              color: context.c_blue,
              dashPattern: const <double>[2, 2],
              padding: const EdgeInsets.all(1),
              radius: Radius.circular(4.r),
              child: const SizedBox.expand(),
            ),
          ),
      ],
    );
  }
}
