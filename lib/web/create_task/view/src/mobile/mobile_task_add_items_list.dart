import 'package:auto_route/auto_route.dart';
import 'package:dls_one/app/router/app_router.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/task_tags/task_tags.dart';
import 'package:dls_one/web/create_task/create_task.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api/rest_api.dart';

class MobileAddItemsList extends StatelessWidget {
  const MobileAddItemsList({
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
        if (model.observers.isEmpty)
          DlsPadding.only(
            right: 6.w,
            child: Center(
              child: MobileAddItemButton(
                text: S.current.observer,
                onPressed: () async {
                  final users = await context.router.push<List<DLSUser>>(
                    MobileSelectUsersRoute(
                      users: model.observers,
                      title: S.current.observers,
                    ),
                  );
                  if (users == null) {
                    return;
                  }
                  final stateModel = model.copyWith(observers: users);
                  bloc
                    ..add(TaskEvent.updateModel(stateModel))
                    ..add(
                      TaskEvent.updateTask(
                        DlsTask(members: stateModel.toRequest().members),
                      ),
                    );
                },
              ),
            ),
          ),
        if (model.tags.isEmpty)
          DlsPadding.only(
            right: 6.w,
            child: Center(
              child: MobileAddItemButton(
                text: S.current.tags,
                onPressed: () async {
                  final result = await TaskTagsSheet.show(
                    context,
                    pickedTags: model.tags,
                  );
                  if (result == null) {
                    return;
                  }
                  final stateModel = model.copyWith(tags: result);
                  bloc
                    ..add(TaskEvent.updateModel(stateModel))
                    ..add(
                      TaskEvent.updateTask(
                        DlsTask(tags: stateModel.toRequest().tags),
                      ),
                    );
                },
              ),
            ),
          ),
        if (model.daysCount == null)
          DlsPadding.only(
            right: 6.w,
            child: Center(
              child: MobileAddItemButton(
                text: S.current.durability,
                onPressed: () {
                  final stateModel = model.copyWith(daysCount: 1);
                  bloc
                    ..add(TaskEvent.updateModel(stateModel))
                    ..add(const TaskEvent.updateTask(DlsTask(duration: 1)));
                },
              ),
            ),
          ),
        if (model.storyPoints == null)
          DlsPadding.only(
            right: 6.w,
            child: Center(
              child: MobileAddItemButton(
                text: S.current.story_points,
                onPressed: () {
                  final stateModel = model.copyWith(storyPoints: 1);
                  bloc
                    ..add(TaskEvent.updateModel(stateModel))
                    ..add(
                      TaskEvent.updateTask(
                        DlsTask(
                          storyPoints: stateModel.toRequest().storyPoints,
                        ),
                      ),
                    );
                },
              ),
            ),
          ),
        SizedBox(width: 10.w),
      ],
    );
  }
}
