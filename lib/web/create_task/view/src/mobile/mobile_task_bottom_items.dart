import 'package:auto_route/auto_route.dart';
import 'package:dls_one/app/router/app_router.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/create_task/create_task.dart';
import 'package:dls_one/web/sprints/sprints.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api/rest_api.dart';

class MobileTaskBottomItems extends StatelessWidget {
  const MobileTaskBottomItems({
    required this.model,
    required this.subtaskOpen,
    required this.onSubtaskOpen,
    super.key,
  });

  final SaveTaskModel model;
  final bool subtaskOpen;
  final VoidCallback onSubtaskOpen;

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<TaskBloc>();
    return Column(
      children: [
        SizedBox(
          height: 24.h,
          child: WebDlsLabelField(
            icon: Assets.icons.hierarchyRotated.path,
            label: S.current.the_task,
            actions: [
              DLSPlusIconButton(
                backgroundColor: Colors.transparent,
                borderColor: context.c_grey_stoke,
                onTap: () async {
                  final task = await context.router.push<DlsTasks>(
                    const PickTaskDialogRoute(),
                  );
                  if (task == null) {
                    return;
                  }
                  bloc
                    ..add(
                      TaskEvent.updateModel(model.copyWith(parentTask: task)),
                    )
                    ..add(TaskEvent.updateTask(DlsTask(parentId: task.id)));
                },
                icon:
                    model.parentTask == null ? null : Assets.icons.sync1.svg(),
              ),
            ],
          ),
        ),
        if (model.parentTask != null)
          DlsPadding.only(
            top: 12.h,
            child: SubtaskMobileInfo(
              task: model.parentTask!,
              onDelete: () => bloc.add(
                TaskEvent.updateModel(model.copyWith(parentTask: null)),
              ),
              onTap: () async {
                final result = await context.router.push<DlsTasks>(
                  NewTaskSprintRoute(
                    task: model.parentTask,
                    status: TaskStatusType.inTheQueue,
                  ),
                );
                if (result == null) {
                  return;
                }
                bloc
                  ..add(
                    TaskEvent.updateModel(model.copyWith(parentTask: result)),
                  )
                  ..add(TaskEvent.updateTask(DlsTask(parentId: result.id)));
              },
            ),
          ),
        SizedBox(height: 16.h),
        if (model.listFile.isNotEmpty) ...[
          SizedBox(
            height: 24.h,
            child: Row(
              children: [
                Expanded(
                  child: WebDlsLabelField(
                    icon: Assets.icons.filePin.path,
                    label: S.current.files_title,
                    actions: [
                      DLSPlusIconButton(
                        backgroundColor: Colors.transparent,
                        borderColor: context.c_grey_stoke,
                        onTap: () => bloc.add(const TaskEvent.addFile()),
                      ),
                    ],
                  ),
                ),
                if (model.listFile.length > 2)
                  ShowHideButton(
                    // TODO config show files
                    show: true,
                    color: context.c_blue,
                    onTap: () {},
                  ),
              ],
            ),
          ),
          SizedBox(height: 12.h),
          ...List.generate(model.listFile.length, (index) {
            final length = model.listFile.length;
            final file = model.listFile[index];
            return DlsPadding.only(
              bottom: index == length - 1 ? 0 : 8.h,
              child: FileWidget(
                title: file.name ?? '',
                size: (file.size ?? 0).toString(),
                type: file.extension ?? '',
                onTap: () {},
                deleteFile: () => bloc.add(TaskEvent.deleteFile(index)),
              ),
            );
          }),
          SizedBox(height: 16.h),
        ],
        SizedBox(
          height: 24.h,
          child: Row(
            children: [
              Expanded(
                child: WebDlsLabelField(
                  icon: Assets.icons.hierarchy.path,
                  label: S.current.subtasks,
                  actions: [
                    DlsCircleAddButton(
                      onTap: () async {
                        final task = await context.router.push<DlsTasks>(
                          const PickTaskDialogRoute(),
                        );
                        if (task == null) {
                          return;
                        }
                        final list = model.subtasks.toList()..add(task);
                        final stateModel = model.copyWith(subtasks: list);
                        bloc
                          ..add(TaskEvent.updateModel(stateModel))
                          ..add(
                            TaskEvent.updateTask(
                              DlsTask(
                                  subTasks: stateModel.toRequest().subTasks),
                            ),
                          );
                      },
                    ),
                  ],
                ),
              ),
              if (model.subtasks.length > 2)
                ShowHideButton(
                  show: !subtaskOpen,
                  color: context.c_blue,
                  onTap: onSubtaskOpen,
                ),
            ],
          ),
        ),
        if (model.subtasks.isNotEmpty)
          MainColumnSubtasksList(
            tasks: model.subtasks,
            open: subtaskOpen,
            onOpenTap: onSubtaskOpen,
            onDelete: (subtask) {
              final stateModel = model.copyWith(
                subtasks: model.subtasks.toList()..remove(subtask),
              );
              bloc
                ..add(TaskEvent.updateModel(stateModel))
                ..add(
                  TaskEvent.updateTask(
                    DlsTask(members: stateModel.toRequest().members),
                  ),
                );
            },
          ),
        SizedBox(height: 16.h),
        SizedBox(
          height: 24.h,
          child: WebDlsLabelField(
            icon: Assets.icons.calender.path,
            label: S.current.events,
            actions: [
              DlsCircleAddButton(
                onTap: () async {
                  if (model.currentTask == null) {
                    return;
                  }
                  final event = await context.router.push<TaskEventModel>(
                    CreateEventRoute(
                      popOnSuccess: true,
                      task: model.currentTask,
                    ),
                  );
                  if (event == null) {
                    return;
                  }
                  final events = model.events.toList()..add(event);
                  final stateModel = model.copyWith(events: events);
                  bloc
                    ..add(TaskEvent.updateModel(stateModel))
                    ..add(
                      TaskEvent.updateTask(
                        DlsTask(events: stateModel.toRequest().events),
                      ),
                    );
                },
              ),
            ],
          ),
        ),
        if (model.events.isNotEmpty)
          DlsPadding.only(
            top: 16.h,
            child: CreateTaskMobileEventsList(
              events: model.events,
              onTap: (event) {
                // TODO config updating data after changing event
                context.router.push(CreateEventRoute(event: event));
              },
            ),
          ),
        if (model.sprints.isNotEmpty) ...[
          SizedBox(height: 16.h),
          SizedBox(
            height: 24.h,
            child: WebDlsLabelField(
              icon: Assets.icons.subtract.path,
              label: S.current.sprints,
              actions: [
                DlsCircleAddButton(
                  onTap: () async {
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
              ],
            ),
          ),
          SizedBox(height: 8.h),
          ...List.generate(model.sprints.length, (index) {
            final item = model.sprints[index];
            return DlsPadding.only(
              bottom: index < model.sprints.length - 1 ? 12.h : 0,
              // TODO config ui for mobile after UI answer
              child: MobileCreateTaskSprintItem(
                sprint: item,
                onTap: () async {
                  await context.router.push(
                    NewSprintRoute(
                      sprint: item,
                      parentTitle: model.title,
                      onSprintSaved: (sprint) {
                        final index = model.sprints.indexOf(item);
                        final sprints = model.sprints.toList();
                        sprints[index] = sprint;
                        final stateModel = model.copyWith(sprints: sprints);
                        bloc
                          ..add(TaskEvent.updateModel(stateModel))
                          ..add(
                            TaskEvent.updateTask(
                              DlsTask(sprints: stateModel.toRequest().sprints),
                            ),
                          );
                      },
                    ),
                  );
                },
              ),
            );
          }),
        ],
        if (model.dependingTasks.isNotEmpty) ...[
          SizedBox(height: 16.h),
          SizedBox(
            height: 24.h,
            child: WebDlsLabelField(
              icon: Assets.icons.linkH1.path,
              label: S.current.dependsFrom,
              actions: [
                DlsCircleAddButton(
                  onTap: () async {
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
              ],
            ),
          ),
          MainColumnSubtasksList(
            tasks: model.dependingTasks,
            onDelete: (task) {
              final stateModel = model.copyWith(
                dependingTasks: model.dependingTasks.toList()..remove(task),
              );
              bloc
                ..add(TaskEvent.updateModel(stateModel))
                ..add(
                  TaskEvent.updateTask(
                    DlsTask(depends: stateModel.toRequest().depends),
                  ),
                );
            },
          ),
        ],
        if (model.blockingTasks.isNotEmpty) ...[
          SizedBox(height: 16.h),
          SizedBox(
            height: 24.h,
            child: WebDlsLabelField(
              icon: Assets.icons.padlock1.path,
              label: S.current.blocking,
              actions: [
                DlsCircleAddButton(
                  onTap: () async {
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
              ],
            ),
          ),
          MainColumnSubtasksList(
            tasks: model.blockingTasks,
            onDelete: (task) {
              final stateModel = model.copyWith(
                  blockingTasks: model.blockingTasks.toList()..remove(task));
              bloc
                ..add(TaskEvent.updateModel(stateModel))
                ..add(
                  TaskEvent.updateTask(
                    DlsTask(blocks: stateModel.toRequest().blocks),
                  ),
                );
            },
          ),
        ],
        if (model.checkList.isNotEmpty) ...[
          SizedBox(height: 16.h),
          SizedBox(
            height: 24.h,
            child: WebDlsLabelField(
              icon: Assets.icons.checkSquare.path,
              label: S.current.checklist,
              actions: [
                DlsCircleAddButton(
                  onTap: () async {
                    final result =
                        await MobileEnterTextSheet.show(context) ?? '';
                    if (result.isEmpty) {
                      return;
                    }
                    bloc.add(TaskEvent.addRecord(result));
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 12.h),
          ...List.generate(model.unsavedCheckList.length, (index) {
            final item = model.unsavedCheckList[index];
            return TaskCheckListView(
              key: ObjectKey(item),
              title: item.name,
              checked: item.isChecked,
              onUpdate: (title, isActive) => bloc.add(
                TaskEvent.updateRecord(index, isActive: isActive),
              ),
              onDelete: () => bloc.add(TaskEvent.deleteRecord(index)),
            );
          }),
          ...List.generate(model.checkList.length, (index) {
            final item = model.checkList[index];
            return TaskCheckListView(
              key: ValueKey(item.id),
              title: item.name,
              checked: item.isChecked,
              onUpdate: (title, isActive) => bloc.add(
                TaskEvent.updateRecord(index, isActive: isActive),
              ),
              onDelete: () => bloc.add(TaskEvent.deleteRecord(index)),
            );
          }),
        ],
        SizedBox(height: 16.h),
      ],
    );
  }
}
