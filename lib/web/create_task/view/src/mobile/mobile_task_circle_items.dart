import 'package:auto_route/auto_route.dart';
import 'package:dls_one/app/router/app_router.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/create_task/create_task.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api/rest_api.dart';

class MobileTaskCircleItems extends StatelessWidget {
  const MobileTaskCircleItems({
    required this.model,
    super.key,
  });

  final SaveTaskModel model;

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<TaskBloc>();
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        SizedBox(width: 16.w),
        if (model.listFile.isEmpty)
          DlsPadding.only(
            right: 16.w,
            child: MobileCircleAddButton(
              text: S.current.files_title,
              asset: Assets.icons.filePin.path,
              onPressed: () {
                bloc.add(const TaskEvent.addFile());
              },
            ),
          ),
        if (model.checkList.isEmpty)
          DlsPadding.only(
            right: 16.w,
            child: MobileCircleAddButton(
              text: S.current.checklist,
              asset: Assets.icons.checkSquare.path,
              onPressed: () async {
                final result = await MobileEnterTextSheet.show(context) ?? '';
                if (result.isEmpty) {
                  return;
                }
                bloc.add(TaskEvent.addRecord(result));
              },
            ),
          ),
        if (model.sprints.isEmpty)
          DlsPadding.only(
            right: 16.w,
            child: MobileCircleAddButton(
              text: S.current.sprints,
              asset: Assets.icons.sprint.path,
              onPressed: () async {
                if (model.currentTask == null) {
                  return;
                }
                final result = await context.router.push<DlsSprintModel>(
                  NewSprintRoute(
                    popOnSuccess: true,
                    parentTitle: model.title,
                    backlog: model.subtasks,
                    superTask: model.currentTask,
                  ),
                );
                if (result == null) {
                  return;
                }
                final list = model.sprints.toList()..add(result);
                final stateModel = model.copyWith(sprints: list);
                bloc
                  ..add(TaskEvent.updateModel(stateModel))
                  ..add(
                    TaskEvent.updateTask(
                      DlsTask(sprints: stateModel.toRequest().sprints),
                    ),
                  );
              },
            ),
          ),
        if (model.dependingTasks.isEmpty)
          DlsPadding.only(
            right: 16.w,
            child: MobileCircleAddButton(
              text: S.current.depends,
              asset: Assets.icons.linkH1.path,
              onPressed: () async {
                final task = await context.router.push<DlsTasks>(
                  const PickTaskDialogRoute(),
                );
                if (task == null) {
                  return;
                }
                final list = model.dependingTasks.toList()..add(task);
                final stateModel = model.copyWith(dependingTasks: list);
                bloc
                  ..add(TaskEvent.updateModel(stateModel))
                  ..add(
                    TaskEvent.updateTask(
                      DlsTask(depends: stateModel.toRequest().depends),
                    ),
                  );
              },
            ),
          ),
        if (model.blockingTasks.isEmpty)
          DlsPadding.only(
            right: 16.w,
            child: MobileCircleAddButton(
              text: S.current.blocks,
              asset: Assets.icons.padlock1.path,
              onPressed: () async {
                final task = await context.router.push<DlsTasks>(
                  const PickTaskDialogRoute(),
                );
                if (task == null) {
                  return;
                }
                final list = model.blockingTasks.toList()..add(task);
                final stateModel = model.copyWith(blockingTasks: list);
                bloc
                  ..add(TaskEvent.updateModel(stateModel))
                  ..add(
                    TaskEvent.updateTask(
                      DlsTask(blocks: stateModel.toRequest().blocks),
                    ),
                  );
              },
            ),
          ),
      ],
    );
  }
}
