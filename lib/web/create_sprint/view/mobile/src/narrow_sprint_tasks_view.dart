import 'package:auto_route/auto_route.dart';
import 'package:dls_one/app/router/app_router.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/create_sprint/create_sprint.dart';
import 'package:dls_one/web/create_task/create_task.dart';
import 'package:dls_one/web/sprints/sprints.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api/rest_api.dart';

class NarrowSprintTasksView extends StatelessWidget {
  const NarrowSprintTasksView({
    required this.model,
    this.backlog = true,
    super.key,
  });

  final bool backlog;
  final SprintAuthorModel model;


  Future<void> _onAddPressed(BuildContext context) async {
    final bloc = context.read<SprintAuthorBloc>();
    final result = await context.router.push<DlsTasks>(
      NewTaskSprintRoute(
        popOnSuccess: true,
        status: TaskStatusType.inTheQueue,
      ),
    );
    if (result == null) {
      return;
    }
    final backlog = {...model.backlogSubtasks};
    backlog[result.status!] = (backlog[result.status!] ?? []).toList()
      ..add(result);
    bloc.add(
      SprintAuthorEvent.updateModel(
        model.copyWith(backlogSubtasks: backlog),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final tasks = backlog ? model.backlogSubtasks : model.sprintSubtasks;
    return DlsPadding.only(
      right: 16.w,
      child: Column(
        children: [
          // TODO config by ui
          if (backlog)
            SizedBox(
              height: 56.h,
              child: Row(
                children: [
                  Text(
                    S.current.backlog,
                    style: context.ts_s14h16_4w500,
                  ),
                  SizedBox(width: 8.w),
                  DlsCircleAddButton(
                    onTap: () => _onAddPressed(context),
                  ),
                  const Spacer(),
                  Assets.icons.search1.svg(color: context.c_text_grey),
                  SizedBox(width: 8.w),
                  FilterButton(onTapFilter: () {}),
                ],
              ),
            )
          else
            SizedBox(
              height: 56.h,
              child: Row(
                children: [
                  Text(
                    S.current.sprint,
                    style: context.ts_s14h16_4w500,
                  ),
                  const SizedBox(width: 8),
                  Assets.icons.storyPoints.svg(
                    colorFilter: context.c_text_grey_color_filter,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 5.5.w, bottom: 2.h),
                    child: Text(
                      (model.sprint?.storyPointPlan ?? 0).toString(),
                      style: context.ts_s14h22_4w400.copyWith(
                        color: context.c_text_grey,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ...tasks.keys.map((status) {
            final items = tasks[status] ?? [];
            return Column(
              children: [
                DlsTableHeader(
                  color: status.backgroundColor(context),
                  iconColor: status.color(context),
                  text: status.text,
                  onPressed: () {},
                  open: true,
                ),
                SizedBox(height: 16.h),
                ...items.map((item) {
                  final index = items.indexOf(item);
                  return DlsPadding.only(
                    bottom: 16.h,
                    child: NarrowCreateSprintTaskItem(
                      task: item,
                      backlog: backlog,
                      // TODO config draggable
                      onTap: () async {
                        // TODO config updating after pop()
                        await context.router
                            .push(NewTaskSprintRoute(task: item));
                      },
                      onMoveTap: () {
                        context.read<SprintAuthorBloc>().add(
                              SprintAuthorEvent.updateSubtask(
                                index: index,
                                status: status,
                                item: item,
                                backlog: backlog,
                              ),
                            );
                      },
                    ),
                  );
                }),
              ],
            );
          }),
        ],
      ),
    );
  }
}
