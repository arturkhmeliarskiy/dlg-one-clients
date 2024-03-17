import 'package:auto_route/auto_route.dart';
import 'package:dls_one/app/router/app_router.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/core/widgets/dls_page_builder.dart';
import 'package:dls_one/web/create_task/create_task.dart';
import 'package:flutter/material.dart';
import 'package:rest_api/rest_api.dart';

class MainColumnSubtasksList extends StatelessWidget {
  const MainColumnSubtasksList({
    required this.tasks,
    this.open = true,
    this.onOpenTap,
    this.onDelete,
    super.key,
  });

  final List<DlsTasks> tasks;
  final bool open;
  final VoidCallback? onOpenTap;
  final ValueSetter<DlsTasks>? onDelete;

  void _onTap(BuildContext context, DlsTasks task) async {
    final result = await context.router.push<DlsTasks>(
      NewTaskSprintRoute(
        task: task,
        status: TaskStatusType.inTheQueue,
      ),
    );
    // TODO update task
  }

  @override
  Widget build(BuildContext context) {
    var length = tasks.length;
    if (length > 2 && !open) {
      length = 3;
    }
    return ListView.builder(
      itemCount: length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        if (open || index < 2) {
          final subtask = tasks[index];

          return DLSPageBuilder(
            wide: MainColumnSubtaskInfo(
              task: subtask,
              onTap: () => _onTap(context, subtask),
              onDelete: () {
                onDelete?.call(subtask);
              },
            ),
            narrow: DlsPadding.only(
              top: 8.h,
              child: SubtaskMobileInfo(
                task: subtask,
                onTap: () => _onTap(context, subtask),
                onDelete: () {
                  onDelete?.call(subtask);
                },
              ),
            ),
          );
        }

        final button = Container(
          height: 32.h,
          margin: EdgeInsets.only(top: 8.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: context.c_grey_grey,
          ),
          alignment: Alignment.center,
          child: Text(
            S.current.more_subtasks(tasks.length - 2),
            style: context.ts_s14h22_4w400.apply(color: context.c_text_grey),
          ),
        );
        return InkWell(
          onTap: onOpenTap,
          child: DLSPageBuilder(
            wide: DlsPadding.only(
              left: 46.w,
              right: 20.w,
              child: button,
            ),
            narrow: button,
          ),
        );
      },
    );
  }
}
