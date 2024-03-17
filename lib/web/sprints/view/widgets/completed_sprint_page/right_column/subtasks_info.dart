import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/sprints/view/widgets/completed_sprint_page/right_column/subtask_info.dart';
import 'package:flutter/material.dart';
import 'package:rest_api/rest_api.dart';

class SubtasksInfo extends StatelessWidget {
  const SubtasksInfo({
    required this.text,
    required this.onDragEnd,
    required this.onDraggableCanceled,
    required this.onDragStarted,
    required this.onDragCompleted,
    this.data,
    this.onDelete,
    this.onTap,
    this.isDraggable = false,
    this.margin = EdgeInsets.zero,
    this.isEdit = false,
    this.children = const [],
    this.leftChildren = const [],
    super.key,
  });

  final DlsTasks? data;
  final String text;
  final bool isDraggable;
  final EdgeInsets margin;
  final bool isEdit;
  final List<Widget> children;
  final List<Widget> leftChildren;
  final void Function(DraggableDetails) onDragEnd;
  final VoidCallback onDraggableCanceled;
  final VoidCallback onDragStarted;
  final VoidCallback onDragCompleted;
  final VoidCallback? onDelete;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final child = InkWell(
      onTap: onTap,
      child: SubtaskInfo(
        text: text,
        margin: margin,
        isEdit: isEdit,
        isDraggable: isDraggable,
        leftChildren: leftChildren,
        onDelete: onDelete,
        children: [
          ...children,
          if (onDelete != null)
            DlsPadding.symmetric(
              horizontal: 12.w,
              child: DlsRemoveButton(
                onTap: onDelete!,
              ),
            ),
        ],
      ),
    );
    if (!isDraggable) {
      return child;
    }
    return Draggable(
      data: data,
      onDragStarted: onDragStarted,
      onDragCompleted: onDragCompleted,
      onDraggableCanceled: (value1, value2) {
        onDraggableCanceled();
      },
      onDragEnd: onDragEnd,
      feedback: child,
      childWhenDragging: Container(
        margin: EdgeInsets.only(
          top: margin.top,
          left: margin.left,
          right: margin.right,
          bottom: margin.bottom,
        ),
        height: 40.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(4.r),
          ),
          color: context.c_grey_grey,
        ),
      ),
      child: child,
    );
  }
}
