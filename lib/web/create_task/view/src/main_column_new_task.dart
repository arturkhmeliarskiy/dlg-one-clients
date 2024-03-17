import 'package:auto_route/auto_route.dart';
import 'package:dls_one/app/router/app_router.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/create_task/create_task.dart';
import 'package:dls_one/web/sprints/sprints.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api/rest_api.dart';

class MainColumnNewTask extends StatefulWidget {
  const MainColumnNewTask({
    required this.state,
    required this.onChangeTitle,
    required this.onChangeDescription,
    required this.onActive,
    required this.onCreateEvent,
    this.task,
    super.key,
  });

  final ValueChanged<String> onChangeTitle;
  final ValueChanged<String> onChangeDescription;
  final VoidCallback onCreateEvent;
  final VoidCallback onActive;
  final DlsTasks? task;
  final TaskState state;

  @override
  State<MainColumnNewTask> createState() => _MainColumnNewTaskState();
}

class _MainColumnNewTaskState extends State<MainColumnNewTask> {
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();
  bool _subtaskOpen = false;
  bool _blockingDependsOpen = false;

  @override
  void initState() {
    super.initState();
    _titleController.text = widget.state.model.title;
    _descriptionController.text = widget.state.model.description;
  }

  @override
  void didUpdateWidget(covariant MainColumnNewTask oldWidget) {
    super.didUpdateWidget(oldWidget);
    _titleController.updateIfNotEqual(widget.state.model.title);
    _descriptionController.updateIfNotEqual(widget.state.model.description);
  }

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  Future<DlsTasks?> _createTask() => context.router.push<DlsTasks>(
        NewTaskSprintRoute(
          popOnSuccess: true,
          parentTask: widget.state.model.currentTask,
        ),
      );

  Future<DlsTasks?> _pickTask() =>
      context.router.push<DlsTasks>(const PickTaskDialogRoute());

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<TaskBloc>();
    final model = widget.state.model;
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 19, left: 20),
          child: SprintTask(
            isActiveIcon: true,
            path: model.title.isEmpty && model.currentTask == null
                ? S.current.new_task
                : model.title,
            globalPath: model.parentTask?.title ?? '',
          ),
        ),
        SizedBox(height: 12.h),
        DlsPadding.symmetric(
          horizontal: 20.w,
          child: WebDlsHintField(
            controller: _titleController,
            hintText: S.current.enter_name_task,
            validation: model.title.isEmpty,
            maxLines: null,
            onEditingComplete: () {
              widget.onChangeTitle(_titleController.text);
            },
          ),
        ),
        SizedBox(height: 12.h),
        DlsPadding.symmetric(
          horizontal: 20.w,
          child: WebDlsHintField(
            controller: _descriptionController,
            style: context.ts_s14h22_4w400,
            hintText: S.current.enter_description_task,
            hintStyle: context.ts_s14h22_4w400.apply(
              color: context.c_placeholder,
            ),
            maxLines: null,
            onEditingComplete: () {
              widget.onChangeDescription(_descriptionController.text);
            },
          ),
        ),
        SizedBox(height: 24.h),
        DlsPadding.symmetric(
          horizontal: 20.w,
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
          MainColumnSubtaskInfo(
            task: model.parentTask!,
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
            onDelete: () => bloc
                .add(TaskEvent.updateModel(model.copyWith(parentTask: null))),
          ),
        SizedBox(height: 24.h),
        DlsPadding.symmetric(
          horizontal: 8.w,
          child: FileButton(
            draggingFiles: (file, fileName) => bloc.add(
              TaskEvent.addFile(
                isDoc: false,
                name: fileName,
                file: file,
              ),
            ),
            onTapFile: () => bloc.add(const TaskEvent.addFile(isDoc: false)),
            onTapFileDoc: () => bloc.add(const TaskEvent.addFile(isDoc: true)),
          ),
        ),
        Container(
          height: ((widget.state.model.listFile.length) / 2).round() * 50.h >=
                  50.h
              ? (widget.state.model.listFile.length) < 3
                  ? ((widget.state.model.listFile.length) / 2).round() * 50.h
                  : 100.h
              : 0,
          alignment: Alignment.topLeft,
          child: SizedBox(
            width: 600.w,
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 6,
              ),
              itemCount: widget.state.model.listFile.length,
              itemBuilder: (context, index) {
                return FileWidget(
                  title: widget.state.model.listFile[index].name ?? '',
                  size:
                      (widget.state.model.listFile[index].size ?? 0).toString(),
                  type: widget.state.model.listFile[index].extension ?? '',
                  onTap: () {},
                  deleteFile: () {
                    bloc.add(
                      TaskEvent.deleteFile(
                        index,
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ),
        SizedBox(height: 24.h),
        DlsPadding.symmetric(
          horizontal: 20.w,
          child: WebDlsLabelField(
            icon: Assets.icons.calender.path,
            label: S.current.events,
            actions: [
              Tooltip(
                message:
                    model.currentTask == null ? S.current.createTaskFirst : '',
                child: DlsCircleAddButton(
                  onTap: () {
                    if (model.currentTask == null) {
                      return;
                    }
                    widget.onCreateEvent();
                  },
                ),
              ),
            ],
          ),
        ),
        if (model.events.isNotEmpty) SizedBox(height: 8.h),
        ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            final event = model.events[index];
            return DlsPadding.only(
              left: 44.w,
              right: 20.w,
              child: SprintEventItem(
                event: event,
                onTap: () {
                  context.router.push(
                    CreateEventRoute(
                      event: event,
                      onDelete: () {
                        final events = model.events.toList()..remove(event);
                        final stateModel = model.copyWith(events: events);
                        bloc
                          ..add(TaskEvent.updateModel(stateModel))
                          ..add(
                            TaskEvent.updateTask(
                              DlsTask(
                                events: stateModel.toRequest().events,
                              ),
                            ),
                          );
                      },
                    ),
                  );
                },
                onDelete: () {
                  final events = model.events.toList()..removeAt(index);
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
            );
          },
          separatorBuilder: (_, __) => SizedBox(height: 8.h),
          itemCount: model.events.length,
        ),
        SizedBox(height: 24.h),
        DlsPadding.symmetric(
          horizontal: 20.w,
          child: WebDlsLabelField(
            icon: Assets.icons.subtract.path,
            label: S.current.sprints,
            actions: [
              Tooltip(
                message:
                    model.currentTask == null ? S.current.createTaskFirst : '',
                child: DlsCircleAddButton(
                  onTap: () {
                    if (model.currentTask == null) {
                      return;
                    }
                    widget.onActive();
                  },
                ),
              ),
            ],
          ),
        ),
        if (model.sprints.isNotEmpty) SizedBox(height: 12.h),
        DlsPadding.symmetric(
          horizontal: 20.w,
          child: ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: model.sprints.length,
            separatorBuilder: (_, __) => SizedBox(height: 12.h),
            itemBuilder: (context, index) {
              final item = model.sprints[index];
              return SprintHorizontalItem(
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
                              DlsTask(
                                sprints: stateModel.toRequest().sprints,
                              ),
                            ),
                          );
                      },
                    ),
                  );
                },
              );
            },
          ),
        ),
        SizedBox(height: 24.h),
        DlsPadding.symmetric(
          horizontal: 20.w,
          child: CheckList(
            addItem: (title) {
              if (title.isEmpty) {
                return;
              }
              bloc.add(TaskEvent.addRecord(title));
            },
          ),
        ),
        if (model.unsavedCheckList.isNotEmpty)
          DlsPadding.only(
            top: 12.h,
            left: 20.w,
            child: ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: model.unsavedCheckList.length,
              itemBuilder: (context, index) {
                final item = model.unsavedCheckList[index];
                return TaskCheckListView(
                  key: ObjectKey(item),
                  title: item.name,
                  checked: item.isChecked,
                  onUpdate: (title, isActive) => bloc.add(
                    TaskEvent.updateRecord(
                      index,
                      isActive: isActive,
                      name: title,
                    ),
                  ),
                  onDelete: () => bloc.add(TaskEvent.deleteRecord(index)),
                );
              },
            ),
          ),
        if (model.checkList.isNotEmpty)
          DlsPadding.only(
            top: 12.h,
            left: 20.w,
            child: ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: model.checkList.length,
              itemBuilder: (context, index) {
                final item = model.checkList[index];
                return TaskCheckListView(
                  key: ValueKey(item.id),
                  title: item.name,
                  checked: item.isChecked,
                  onUpdate: (title, isActive) => bloc.add(
                    TaskEvent.updateRecord(
                      index,
                      isActive: isActive,
                      name: title,
                    ),
                  ),
                  onDelete: () => bloc.add(TaskEvent.deleteRecord(index)),
                );
              },
            ),
          ),
        SizedBox(height: 24.h),
        DlsPadding.symmetric(
          horizontal: 20.w,
          child: Row(
            children: [
              Expanded(
                child: WebDlsLabelField(
                  icon: Assets.icons.hierarchy.path,
                  label: S.current.subtasks,
                  actions: [
                    DlsDropDownButton<bool>(
                      value: false,
                      items: const [false, true],
                      onFormat: (val) {
                        if (val == null) {
                          return '';
                        }
                        return val
                            ? S.current.createTask
                            : S.current.chooseTask;
                      },
                      dropdownWidth: 200.w,
                      button: const DlsCircleAddButton(),
                      onChanged: (val) async {
                        if (val == null) {
                          return;
                        }
                        DlsTasks? task;
                        if (val) {
                          task = await _createTask();
                        } else {
                          task = await _pickTask();
                        }
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
                                subTasks: stateModel.toRequest().subTasks,
                              ),
                            ),
                          );
                      },
                    ),
                  ],
                ),
              ),
              if (model.subtasks.length > 2)
                ShowHideButton(
                  show: !_subtaskOpen,
                  onTap: () {
                    _subtaskOpen = !_subtaskOpen;
                    setState(() {});
                  },
                ),
            ],
          ),
        ),
        SizedBox(height: 8.h),
        MainColumnSubtasksList(
          tasks: model.subtasks,
          open: _subtaskOpen,
          onOpenTap: () {
            _subtaskOpen = !_subtaskOpen;
            setState(() {});
          },
          onDelete: (subtask) {
            final stateModel = model.copyWith(
              subtasks: widget.state.model.subtasks.toList()..remove(subtask),
            );
            bloc
              ..add(TaskEvent.updateModel(stateModel))
              ..add(
                TaskEvent.updateTask(
                  DlsTask(
                    subTasks: stateModel.toRequest().subTasks,
                  ),
                ),
              );
          },
        ),
        SizedBox(height: 40.h),
        const Divider(),
        SizedBox(height: 20.h),
        Container(
          alignment: Alignment.topLeft,
          margin: EdgeInsets.symmetric(horizontal: 20.w),
          child: Row(
            children: [
              InkWell(
                hoverColor: context.c_grey_hover,
                borderRadius: BorderRadius.circular(5.r),
                onTap: () {
                  setState(() {
                    _blockingDependsOpen = !_blockingDependsOpen;
                  });
                },
                child: Container(
                  width: 24.w,
                  height: 24.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.r),
                  ),
                  child: Center(
                    child: WebDropdownMenuIcon(
                      isMenuOpen: _blockingDependsOpen,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 8.w),
              Text(
                S.current.dependencies_and_locks,
                style: context.ts_s14h16_4w500.apply(color: context.c_text),
              ),
            ],
          ),
        ),
        SizedBox(height: 16.h),
        if (_blockingDependsOpen) ...[
          DlsPadding.only(
            left: 46.w,
            right: 20.w,
            child: WebDlsLabelField(
              icon: Assets.icons.linkH1.path,
              label: S.current.dependsFrom,
              actions: [
                DlsDropDownButton<bool>(
                  value: false,
                  items: const [false, true],
                  onFormat: (val) {
                    if (val == null) {
                      return '';
                    }
                    return val ? S.current.createTask : S.current.chooseTask;
                  },
                  dropdownWidth: 200.w,
                  button: const DlsCircleAddButton(),
                  onChanged: (val) async {
                    if (val == null) {
                      return;
                    }
                    DlsTasks? task;
                    if (val) {
                      task = await _createTask();
                    } else {
                      task = await _pickTask();
                    }
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
          if (model.dependingTasks.isNotEmpty) ...[
            SizedBox(height: 16.h),
            MainColumnSubtasksList(
              tasks: model.dependingTasks,
              onDelete: (subtask) {
                final stateModel = model.copyWith(
                  dependingTasks: widget.state.model.dependingTasks.toList()
                    ..remove(subtask),
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
          SizedBox(height: 24.h),
          DlsPadding.only(
            left: 46.w,
            right: 20.w,
            child: WebDlsLabelField(
              icon: Assets.icons.padlock1.path,
              label: S.current.blocking,
              actions: [
                DlsDropDownButton<bool>(
                  value: false,
                  items: const [false, true],
                  onFormat: (val) {
                    if (val == null) {
                      return '';
                    }
                    return val ? S.current.createTask : S.current.chooseTask;
                  },
                  dropdownWidth: 200.w,
                  button: const DlsCircleAddButton(),
                  onChanged: (val) async {
                    if (val == null) {
                      return;
                    }
                    DlsTasks? task;
                    if (val) {
                      task = await _createTask();
                    } else {
                      task = await _pickTask();
                    }
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
          if (model.blockingTasks.isNotEmpty) ...[
            SizedBox(height: 16.h),
            MainColumnSubtasksList(
              tasks: model.blockingTasks,
              onDelete: (subtask) {
                final stateModel = model.copyWith(
                  blockingTasks: widget.state.model.blockingTasks.toList()
                    ..remove(subtask),
                );
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
          SizedBox(height: 16.h),
        ]
      ],
    );
  }
}
