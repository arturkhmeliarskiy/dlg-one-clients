import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/sprints/view/widgets/completed_sprint_page/right_column/subtasks_info.dart';
import 'package:flutter/material.dart';
import 'package:rest_api/rest_api.dart';

class NewSprintTaskStatusItem extends StatelessWidget {
  const NewSprintTaskStatusItem({
    required this.tasks,
    required this.onDragEnd,
    required this.onDraggableCanceled,
    required this.onDragStarted,
    required this.onDragCompleted,
    this.isDraggable = true,
    this.onTap,
    super.key,
  });

  final List<DlsTasks> tasks;
  final void Function(DraggableDetails, int index, DlsTasks item) onDragEnd;
  final VoidCallback onDraggableCanceled;
  final VoidCallback onDragStarted;
  final VoidCallback onDragCompleted;
  final ValueSetter<DlsTasks>? onTap;
  final bool isDraggable;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(tasks.length, (index) {
        final item = tasks[index];
        return SubtasksInfo(
          data: item,
          isDraggable: isDraggable,
          text: item.title,
          margin: const EdgeInsets.only(
            top: 6,
            left: 20,
            right: 20,
            bottom: 6,
          ),
          onTap: () => onTap?.call(item),
          onDragEnd: (v) {
            onDragEnd(v, index, item);
          },
          onDragStarted: onDragStarted,
          onDraggableCanceled: onDraggableCanceled,
          onDragCompleted: onDragCompleted,
          children: [
            DLSAvatar(
              imageUrl: item.user?.avatar ?? '',
              username: item.user?.nameSurname,
              size: 24.r,
            ),
            SizedBox(width: 4.w),
            Assets.icons.hierarchy.svg(
              height: 18.0.h,
              color: context.c_text_grey,
            ),
            Container(
              margin: EdgeInsets.only(
                left: 5.5.w,
                right: 12.w,
                bottom: 2.h,
              ),
              child: Text(
                (item.countSubTasks ?? 0).toString(),
                style: context.ts_s14h22_4w400.copyWith(
                  color: context.c_text_grey,
                ),
              ),
            ),
            Assets.icons.paperclip1.svg(
              height: 18.0.h,
              color: context.c_text_grey,
            ),
            Container(
              margin: EdgeInsets.only(
                left: 5.5.w,
                right: 12.w,
                bottom: 2.h,
              ),
              child: Text(
                (item.countFiles ?? 0).toString(),
                style: context.ts_s14h22_4w400.copyWith(
                  color: context.c_text_grey,
                ),
              ),
            ),
          ],
        );
      }),
    );
  }
}
