import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/features.dart';
import 'package:dls_one/web/chat/chat_manager/models/simple_group.dart';
import 'package:dls_one/web/chat/chat_manager/view/desktop/group_select_users_dialog.dart';
import 'package:dls_one/web/create_task/create_task.dart';
import 'package:dls_one/web/create_task/view/src/task_horizontal_avatar_user.dart';
import 'package:dls_one/web/sprints/view/widgets/completed_sprint_page/main_column/tag.dart';
import 'package:dls_one/web/sprints/view/widgets/completed_sprint_page/main_column/tags_button.dart';
import 'package:dls_one/web/sprints/view/widgets/completed_sprint_page/right_column/comments.dart';
import 'package:dls_one/web/sprints/view/widgets/completed_sprint_page/right_column/date_select_picker.dart';
import 'package:dls_one/web/sprints/view/widgets/completed_sprint_page/right_column/label_button.dart';
import 'package:dls_one/web/sprints/view/widgets/completed_sprint_page/right_column/sprint_tab_bar_navigation.dart';
import 'package:dls_one/web/sprints/view/widgets/completed_sprint_page/right_column/switch_days.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api/rest_api.dart';

class RightColumnNewTask extends StatefulWidget {
  const RightColumnNewTask({
    required this.onChangeStartAt,
    required this.onChangeExpiredAt,
    required this.onChangeDuration,
    required this.onChangeStoryPoints,
    required this.state,
    this.task,
    super.key,
  });

  final ValueChanged<DateTime> onChangeStartAt;
  final ValueChanged<DateTime> onChangeExpiredAt;
  final ValueChanged<int> onChangeDuration;
  final ValueChanged<int> onChangeStoryPoints;
  final TaskState state;
  final DlsTasks? task;

  @override
  State<RightColumnNewTask> createState() => _RightColumnNewTaskState();
}

class _RightColumnNewTaskState extends State<RightColumnNewTask> {
  String startAt = '';
  String expiredAt = '';
  int duration = 0;
  int storyPoints = 0;

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<TaskBloc>();
    final model = widget.state.model;
    final author = model.author;
    return SizedBox(
      width: 340.w,
      child: SprintTabBarNavigation(
        firstListWidgets: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(
                top: 20.h,
                left: 17.w,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      S.current.status,
                      style: context.ts_s14h22_4w400.copyWith(
                        color: context.c_text_grey,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  StatusButton(
                    status: model.status,
                    onTapStatus: (value) {
                      bloc
                        ..add(
                          TaskEvent.updateModel(model.copyWith(status: value)),
                        )
                        ..add(TaskEvent.updateTask(DlsTask(status: value)));
                    },
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 16.h),
                    alignment: Alignment.topLeft,
                    child: Text(
                      S.current.priority,
                      style: context.ts_s14h22_4w400.copyWith(
                        color: context.c_text_grey,
                      ),
                    ),
                  ),
                  SizedBox(height: 8.h),
                  PriorityButton(
                    priority: model.priority,
                    onTapPriority: (value) {
                      bloc
                        ..add(
                          TaskEvent.updateModel(
                              model.copyWith(priority: value)),
                        )
                        ..add(TaskEvent.updateTask(DlsTask(priority: value)));
                    },
                  ),
                  TagsButton(
                    addItem: (text) => bloc.add(TaskEvent.addTag(text)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 8.h, right: 17.w),
                    child: Wrap(
                      spacing: 10.w,
                      runSpacing: 10.h,
                      children: List.generate(
                        model.tags.length,
                        (index) {
                          final item = model.tags[index];
                          return Tag(
                            title: item.title,
                            delete: () {
                              final stateModel = model.copyWith(
                                tags: model.tags.toList()..removeAt(index),
                              );
                              bloc
                                ..add(TaskEvent.updateModel(stateModel))
                                ..add(
                                  TaskEvent.updateTask(
                                    DlsTask(tags: stateModel.toRequest().tags),
                                  ),
                                );
                            },
                          );
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20.h),
            Divider(height: 1.h, color: context.c_grey_hover),
            LabelButton(title: S.current.author),
            if (author != null)
              DlsPadding.only(
                left: 16.w,
                top: 4.h,
                child: DlsUserSmallItem(
                  user: author,
                  isMe: model.currentUser != null &&
                      author.id == model.currentUser?.id,
                ),
              ),
            LabelButton(
              title: S.current.executor,
              onTap: () {
                groupSelectUsersDialog(
                  context,
                  SimpleGroup(
                    name: S.current.executor,
                    users: model.performers,
                  ),
                  onSelectGroup: (value) {
                    final stateModel = model.copyWith(performers: value.users);
                    bloc
                      ..add(TaskEvent.updateModel(stateModel))
                      ..add(
                        TaskEvent.updateTask(
                          DlsTask(members: stateModel.toRequest().members),
                        ),
                      );
                  },
                  title: S.current.performer,
                );
              },
            ),
            Container(
              margin: EdgeInsets.only(top: 8.h, left: 17.w),
              height: model.performers.isNotEmpty ? 24.h : 0,
              alignment: Alignment.topLeft,
              child: Stack(
                children: List.generate(model.performers.length, (index) {
                  final item = model.performers[index];
                  return InkWell(
                    onTap: () {
                      // TODO navigate to profile
                    },
                    child: Container(
                      height: 24.h,
                      width: 24.w,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 2),
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      margin: EdgeInsets.only(left: index * 20.w),
                      child: Tooltip(
                        message: item.nameSurname ?? item.name,
                        child: DLSAvatar(
                          size: 24.r,
                          imageUrl: item.avatar ?? '',
                          username: item.name ?? item.nameSurname,
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ),
            LabelButton(
              title: S.current.responsible,
              onTap: () {
                groupSelectUsersDialog(
                  context,
                  SimpleGroup(
                    name: S.current.responsible,
                    users: model.responsible,
                  ),
                  onSelectGroup: (value) {
                    final stateModel = model.copyWith(responsible: value.users);
                    bloc
                      ..add(TaskEvent.updateModel(stateModel))
                      ..add(
                        TaskEvent.updateTask(
                          DlsTask(members: stateModel.toRequest().members),
                        ),
                      );
                  },
                  title: S.current.responsible2,
                );
              },
            ),
            Container(
              margin: EdgeInsets.only(top: 8.h, left: 17.w),
              height: model.responsible.isNotEmpty ? 24.h : 0,
              alignment: Alignment.topLeft,
              child: Stack(
                children: List.generate(model.responsible.length, (index) {
                  final item = model.responsible[index];
                  return InkWell(
                    onTap: () {
                      // TODO navigate to profile
                    },
                    child: Padding(
                      padding: EdgeInsets.only(left: index * 20),
                      child: TaskHorizontalAvatarUser(user: item),
                    ),
                  );
                }),
              ),
            ),
            LabelButton(
              title: S.current.observer,
              onTap: () {
                groupSelectUsersDialog(
                  context,
                  SimpleGroup(
                    name: S.current.observer,
                    users: model.observers,
                  ),
                  onSelectGroup: (value) {
                    final stateModel = model.copyWith(observers: value.users);
                    bloc
                      ..add(TaskEvent.updateModel(stateModel))
                      ..add(
                        TaskEvent.updateTask(
                          DlsTask(members: stateModel.toRequest().members),
                        ),
                      );
                  },
                  title: S.current.observers,
                );
              },
            ),
            Container(
              margin: EdgeInsets.only(top: 8.h, left: 17.w),
              height: model.observers.isNotEmpty ? 24.h : 0,
              alignment: Alignment.topLeft,
              child: Stack(
                children: List.generate(model.observers.length, (index) {
                  final item = model.observers[index];
                  return InkWell(
                    onTap: () {
                      // TODO navigate to profile
                    },
                    child: Padding(
                      padding: EdgeInsets.only(left: index * 20.w),
                      child: TaskHorizontalAvatarUser(user: item),
                    ),
                  );
                }),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 18.h),
              child: Divider(
                height: 1.h,
                color: context.c_grey_hover,
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 20.h,
                left: 17.w,
              ),
              alignment: Alignment.topLeft,
              child: Text(
                S.current.start_date,
                style: context.ts_s14h22_4w400.copyWith(
                  color: context.c_text_grey,
                ),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(top: 8.h, left: 16.w),
              child: DateSelectPicker(
                isActiveDate: true,
                dateTime: model.startAt,
                onSelectDate: (value) => widget.onChangeStartAt(value),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 12.h, left: 17.w),
              alignment: Alignment.topLeft,
              child: Text(
                S.current.durability,
                style: context.ts_s14h22_4w400.copyWith(
                  color: context.c_text_grey,
                ),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(
                top: 8.h,
                left: 16.w,
              ),
              child: Row(
                children: [
                  SwitchDays(
                    count: model.daysCount ?? 0,
                    onCount: (value) {
                      duration = value;
                      widget.onChangeDuration(duration);
                    },
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: 8.w,
                      bottom: 8.h,
                    ),
                    child: Text(
                      S.current.days,
                      style: context.ts_s14h22_4w400.copyWith(
                        color: context.c_text_grey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 12.h,
                left: 17.w,
              ),
              alignment: Alignment.topLeft,
              child: Text(
                S.current.deadline,
                style: context.ts_s14h22_4w400.copyWith(
                  color: context.c_text_grey,
                ),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(
                top: 8.h,
                left: 16.w,
              ),
              child: DateSelectPicker(
                isActiveDate: true,
                dateTime: model.expiredAt,
                onSelectDate: (value) => widget.onChangeExpiredAt(value),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 12.h, left: 17.w),
              alignment: Alignment.topLeft,
              child: Text(
                S.current.story_points,
                style: context.ts_s14h22_4w400.copyWith(
                  color: context.c_text_grey,
                ),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(top: 8.h, left: 16.w),
              child: SwitchDays(
                count: model.storyPoints ?? 0,
                onCount: (value) => widget.onChangeStoryPoints(value),
              ),
            ),
            SizedBox(height: 20.h),
          ],
        ),
        secondListWidgets: Comments(chatId: model.matrixRoom),
      ),
    );
  }
}
