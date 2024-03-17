import 'package:auto_route/auto_route.dart';
import 'package:dls_one/app/router/app_router.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/task_tags/task_tags.dart';
import 'package:dls_one/web/create_task/create_task.dart';
import 'package:dls_one/web/create_task/view/src/task_horizontal_avatar_user.dart';
import 'package:dls_one/web/sprints/sprints.dart';
import 'package:dls_one/web/sprints/view/widgets/completed_sprint_page/right_column/date_select_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api/rest_api.dart';

class MobileTaskTopItems extends StatelessWidget {
  const MobileTaskTopItems({
    required this.model,
    required this.onChangeStartAt,
    required this.onChangeExpiredAt,
    super.key,
  });

  final SaveTaskModel model;
  final ValueChanged<DateTime> onChangeStartAt;
  final ValueChanged<DateTime> onChangeExpiredAt;

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<TaskBloc>();
    return Column(
      children: [
        SizedBox(
          height: 48.h,
          child: Row(
            children: [
              Expanded(
                child: Text(
                  S.current.status,
                  style: context.ts_s14h22_4w400
                      .copyWith(color: context.c_text_grey),
                ),
              ),
              SizedBox(width: 4.w),
              StatusButton(
                status: model.status,
                border: true,
                onTapStatus: (value) {
                  bloc
                    ..add(TaskEvent.updateModel(model.copyWith(status: value)))
                    ..add(TaskEvent.updateTask(DlsTask(status: value)));
                },
              ),
            ],
          ),
        ),
        SizedBox(
          height: 48.h,
          child: Row(
            children: [
              Expanded(
                child: Text(
                  S.current.priority,
                  style: context.ts_s14h22_4w400
                      .copyWith(color: context.c_text_grey),
                ),
              ),
              SizedBox(width: 4.w),
              PriorityButton(
                priority: model.priority,
                border: true,
                onTapPriority: (value) {
                  bloc
                    ..add(
                      TaskEvent.updateModel(model.copyWith(priority: value)),
                    )
                    ..add(TaskEvent.updateTask(DlsTask(priority: value)));
                },
              ),
            ],
          ),
        ),
        if (model.tags.isNotEmpty)
          SizedBox(
            height: 48.h,
            child: Row(
              children: [
                Text(
                  S.current.tags,
                  style: context.ts_s14h22_4w400
                      .copyWith(color: context.c_text_grey),
                ),
                SizedBox(width: 8.w),
                Expanded(child: MobileTaskTagsRow(tags: model.tags)),
                SizedBox(width: 8.w),
                DLSPlusIconButton(
                  backgroundColor: Colors.transparent,
                  borderColor: context.c_grey_stoke,
                  onTap: () async {
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
              ],
            ),
          ),
        SizedBox(
          height: 48.h,
          child: Row(
            children: [
              Expanded(
                child: Text(
                  S.current.responsible,
                  style: context.ts_s14h22_4w400
                      .copyWith(color: context.c_text_grey),
                ),
              ),
              SizedBox(width: 4.w),
              Expanded(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Stack(
                    children: List.generate(
                      model.responsible.length,
                      (index) {
                        final item = model.responsible[index];
                        return GestureDetector(
                          onTap: () {
                            final stateModel = model.copyWith(
                                responsible: model.responsible.toList());
                            bloc
                              ..add(TaskEvent.updateModel(stateModel))
                              ..add(
                                TaskEvent.updateTask(
                                  DlsTask(
                                    members: stateModel.toRequest().members,
                                  ),
                                ),
                              );
                          },
                          child: Padding(
                            padding: EdgeInsets.only(left: index * 20),
                            child: TaskHorizontalAvatarUser(user: item),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
              SizedBox(width: 8.w),
              DLSPlusIconButton(
                backgroundColor: Colors.transparent,
                borderColor: context.c_grey_stoke,
                onTap: () async {
                  final users = await context.router.push<List<DLSUser>>(
                    MobileSelectUsersRoute(
                      users: model.responsible,
                      title: S.current.responsible,
                    ),
                  );
                  if (users == null) {
                    return;
                  }
                  final stateModel = model.copyWith(responsible: users);
                  bloc
                    ..add(TaskEvent.updateModel(stateModel))
                    ..add(
                      TaskEvent.updateTask(
                        DlsTask(members: stateModel.toRequest().members),
                      ),
                    );
                },
              ),
            ],
          ),
        ),
        SizedBox(
          height: 48.h,
          child: Row(
            children: [
              Expanded(
                child: Text(
                  S.current.performer,
                  style: context.ts_s14h22_4w400
                      .copyWith(color: context.c_text_grey),
                ),
              ),
              SizedBox(width: 4.w),
              Expanded(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Stack(
                    children: List.generate(
                      model.performers.length,
                      (index) {
                        final item = model.performers[index];
                        return GestureDetector(
                          onTap: () {
                            final stateModel = model.copyWith(
                              performers: model.performers.toList()
                                ..removeAt(index),
                            );
                            bloc
                              ..add(TaskEvent.updateModel(stateModel))
                              ..add(
                                TaskEvent.updateTask(
                                  DlsTask(
                                    members: stateModel.toRequest().members,
                                  ),
                                ),
                              );
                          },
                          child: Padding(
                            padding: EdgeInsets.only(left: index * 20),
                            child: TaskHorizontalAvatarUser(user: item),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
              SizedBox(width: 8.w),
              DLSPlusIconButton(
                backgroundColor: Colors.transparent,
                borderColor: context.c_grey_stoke,
                onTap: () async {
                  final users = await context.router.push<List<DLSUser>>(
                    MobileSelectUsersRoute(
                      users: model.performers,
                      title: S.current.performer,
                    ),
                  );
                  if (users == null) {
                    return;
                  }
                  final stateModel = model.copyWith(performers: users);
                  bloc
                    ..add(TaskEvent.updateModel(stateModel))
                    ..add(
                      TaskEvent.updateTask(
                        DlsTask(members: stateModel.toRequest().members),
                      ),
                    );
                },
              ),
            ],
          ),
        ),
        if (model.observers.isNotEmpty)
          SizedBox(
            height: 48.h,
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    S.current.observers,
                    style: context.ts_s14h22_4w400
                        .copyWith(color: context.c_text_grey),
                  ),
                ),
                SizedBox(width: 4.w),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Stack(
                      children: List.generate(
                        model.observers.length,
                        (index) {
                          final item = model.observers[index];
                          return GestureDetector(
                            onTap: () {
                              final stateModel = model.copyWith(
                                observers: model.observers.toList()
                                  ..removeAt(index),
                              );
                              bloc
                                ..add(TaskEvent.updateModel(stateModel))
                                ..add(
                                  TaskEvent.updateTask(
                                    DlsTask(
                                      members: stateModel.toRequest().members,
                                    ),
                                  ),
                                );
                            },
                            child: Padding(
                              padding: EdgeInsets.only(left: index * 20),
                              child: TaskHorizontalAvatarUser(user: item),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 8.w),
                DLSPlusIconButton(
                  backgroundColor: Colors.transparent,
                  borderColor: context.c_grey_stoke,
                  onTap: () async {
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
              ],
            ),
          ),
        SizedBox(
          height: 48.h,
          child: Row(
            children: [
              Expanded(
                child: Text(
                  S.current.start_date,
                  style: context.ts_s14h22_4w400
                      .copyWith(color: context.c_text_grey),
                ),
              ),
              SizedBox(width: 4.w),
              DateSelectPicker(
                isActiveDate: true,
                dateTime: model.startAt,
                onSelectDate: onChangeStartAt,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 48.h,
          child: Row(
            children: [
              Expanded(
                child: Text(
                  S.current.deadline,
                  style: context.ts_s14h22_4w400
                      .copyWith(color: context.c_text_grey),
                ),
              ),
              SizedBox(width: 4.w),
              DateSelectPicker(
                isActiveDate: true,
                dateTime: model.expiredAt,
                onSelectDate: onChangeExpiredAt,
              ),
            ],
          ),
        ),
        if (model.daysCount != null)
          SizedBox(
            height: 48.h,
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    S.current.durability,
                    style: context.ts_s14h22_4w400
                        .copyWith(color: context.c_text_grey),
                  ),
                ),
                SizedBox(width: 4.w),
                MobileCountField(
                  count: model.daysCount ?? 0,
                  onParse: (value) => S.current.daysPlural(value),
                  onCount: (value) {
                    bloc
                      ..add(
                        TaskEvent.updateModel(model.copyWith(daysCount: value)),
                      )
                      ..add(TaskEvent.updateTask(DlsTask(duration: value)));
                  },
                  onClose: () {
                    bloc.add(
                      TaskEvent.updateModel(model.copyWith(daysCount: null)),
                    );
                  },
                )
              ],
            ),
          ),
        if (model.storyPoints != null)
          SizedBox(
            height: 48.h,
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    S.current.story_points,
                    style: context.ts_s14h22_4w400
                        .copyWith(color: context.c_text_grey),
                  ),
                ),
                SizedBox(width: 4.w),
                MobileCountField(
                  count: model.storyPoints ?? 0,
                  onCount: (value) {
                    bloc
                      ..add(
                        TaskEvent.updateModel(
                          model.copyWith(storyPoints: value),
                        ),
                      )
                      ..add(TaskEvent.updateTask(DlsTask(storyPoints: value)));
                  },
                  onClose: () {
                    bloc.add(
                      TaskEvent.updateModel(model.copyWith(storyPoints: null)),
                    );
                  },
                )
              ],
            ),
          ),
      ],
    );
  }
}
