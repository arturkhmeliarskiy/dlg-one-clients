import 'package:auto_route/auto_route.dart';
import 'package:dls_one/app/router/app_router.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/utils/utils.dart';
import 'package:dls_one/web/create_sprint/create_sprint.dart';
import 'package:dls_one/web/create_sprint/view/main_column/sprint_status_tasks_view.dart';
import 'package:dls_one/web/create_sprint/view/main_column/sprint_task_drag_target.dart';
import 'package:dls_one/web/sprints/sprints.dart';
import 'package:dls_one/web/sprints/view/widgets/completed_sprint_page/right_column/info_widget.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api/rest_api.dart';

// TODO config with Screen Utils
class MainColumnSprint extends StatefulWidget {
  const MainColumnSprint({required this.model, super.key});

  final SprintAuthorModel model;

  @override
  State<MainColumnSprint> createState() => _MainColumnSprintState();
}

class _MainColumnSprintState extends State<MainColumnSprint> {
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();
  late final _bloc = context.read<SprintAuthorBloc>();

  TaskStatusType? _backlogMove;
  TaskStatusType? _sprintMove;
  bool isActiveFilter = false;

  @override
  void initState() {
    super.initState();
    _titleController.updateIfNotEqual(widget.model.title);
    _descriptionController.updateIfNotEqual(widget.model.description);
  }

  @override
  void didUpdateWidget(covariant MainColumnSprint oldWidget) {
    super.didUpdateWidget(oldWidget);
    _titleController.updateIfNotEqual(widget.model.title);
    _descriptionController.updateIfNotEqual(widget.model.description);
  }

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  Future<void> _onTapTask(DlsTasks task) async {
    await context.router.push(NewTaskSprintRoute(task: task));
  }

  Future<void> _onAddEvent([String? title]) async {
    final event = await context.router.push<TaskEventModel>(
      CreateEventRoute(popOnSuccess: true, title: title),
    );
    if (event == null) {
      return;
    }
    final events = widget.model.events.toList()..add(event);
    _bloc.add(
      SprintAuthorEvent.updateModel(widget.model.copyWith(events: events)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(height: 16.h),
        SprintTask(
          isGlobalArrow: false,
          globalPath: widget.model.parentTitle,
          path: widget.model.title,
        ),
        SizedBox(height: 12.h),
        DlsPadding.symmetric(
          horizontal: 20.w,
          child: WebDlsHintField(
            controller: _titleController,
            hintText: S.current.enter_name_task,
            validation: widget.model.title.isEmpty,
            onEditingComplete: () {
              _bloc.add(
                SprintAuthorEvent.updateModel(
                  widget.model.copyWith(title: _titleController.text),
                ),
              );
            },
          ),
        ),
        SizedBox(height: 12.h),
        DlsPadding.symmetric(
          horizontal: 20.w,
          child: WebDlsHintField(
            controller: _descriptionController,
            hintText: S.current.enter_description_task,
            validation: widget.model.description.isEmpty,
            style: context.ts_s14h22_4w400,
            hintStyle: context.ts_s14h22_4w400.copyWith(
              color: context.c_placeholder,
            ),
            onEditingComplete: () {
              _bloc.add(
                SprintAuthorEvent.updateModel(
                  widget.model
                      .copyWith(description: _descriptionController.text),
                ),
              );
            },
          ),
        ),
        SizedBox(height: 20.h),
        DlsPadding.symmetric(
          horizontal: 20.w,
          child: WebDlsLabelField(
            icon: Assets.icons.calender.path,
            label: '${S.current.events}(${widget.model.events.length})',
            actions: [DlsCircleAddButton(onTap: _onAddEvent)],
          ),
        ),
        SizedBox(height: 10.h),
        if (widget.model.events.isEmpty)
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: EdgeInsets.only(left: 48.w, right: 20.w),
              constraints: BoxConstraints(maxWidth: 572.w),
              child: Row(
                children: [
                  Expanded(
                    child: AddEventDottedButton(
                      onPressed: () {
                        _onAddEvent(
                          '${S.current.planning} ${widget.model.title}',
                        );
                      },
                      title: S.current.add_planning,
                    ),
                  ),
                  SizedBox(width: 12.w),
                  Expanded(
                    child: AddEventDottedButton(
                      onPressed: () {
                        _onAddEvent(
                          '${S.current.review} ${widget.model.title}',
                        );
                      },
                      title: S.current.add_review,
                    ),
                  ),
                ],
              ),
            ),
          )
        else
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              final event = widget.model.events[index];
              return DlsPadding.only(
                left: 44.w,
                right: 20.w,
                child: SprintEventItem(
                  event: event,
                  onTap: () {
                    context.router.push(CreateEventRoute(event: event));
                  },
                  onDelete: () {
                    final events = widget.model.events.toList()
                      ..removeAt(index);
                    _bloc.add(
                      SprintAuthorEvent.updateModel(
                        widget.model.copyWith(events: events),
                      ),
                    );
                  },
                ),
              );
            },
            separatorBuilder: (_, __) => SizedBox(height: 8.h),
            itemCount: widget.model.events.length,
          ),
        SizedBox(height: 20.h),
        Divider(
          height: 1.h,
          color: context.c_grey_hover,
        ),
        Builder(
          builder: (context) {
            final isBacklog = widget.model.sprint == null ||
                widget.model.status == SprintStatus.newSprint;
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (isBacklog) ...[
                  Expanded(
                    child: SprintTaskDragTarget(
                      onAccept: (task) {
                        final status = task.status;
                        final index =
                            widget.model.sprintSubtasks[status]?.indexOf(task);
                        if (index == null || status == null) {
                          return;
                        }
                        _bloc.add(
                          SprintAuthorEvent.updateSubtask(
                            index: index,
                            status: status,
                            item: task,
                            backlog: false,
                          ),
                        );
                      },
                      child: Column(
                        children: [
                          DlsPadding.only(
                            top: 16,
                            left: 20,
                            right: 17,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      S.current.backlog,
                                      style: context.ts_s18h21w500.copyWith(
                                        color: context.c_text,
                                      ),
                                    ),
                                    SizedBox(width: 8.w),
                                    DlsCircleAddButton(
                                      onTap: () async {
                                        final result =
                                            await context.router.push<DlsTasks>(
                                          NewTaskSprintRoute(
                                            popOnSuccess: true,
                                            status: TaskStatusType.inTheQueue,
                                          ),
                                        );
                                        if (result == null) {
                                          return;
                                        }
                                        final backlog = {
                                          ...widget.model.backlogSubtasks
                                        };
                                        backlog[result.status!] =
                                            (backlog[result.status!] ?? [])
                                                .toList()
                                              ..add(result);
                                        _bloc.add(
                                          SprintAuthorEvent.updateModel(
                                            widget.model.copyWith(
                                              backlogSubtasks: backlog,
                                            ),
                                          ),
                                        );
                                      },
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Assets.icons.search1.svg(
                                      height: 15.0.h,
                                      color: context.c_text_grey,
                                    ),
                                    SizedBox(width: 8.w),
                                    FilterButton(
                                      onTapFilter: () {
                                        setState(() {
                                          isActiveFilter = !isActiveFilter;
                                        });
                                      },
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          if (isActiveFilter)
                            Container(
                              alignment: Alignment.topLeft,
                              margin: EdgeInsets.only(left: 20.w, top: 16.h),
                              child: SizedBox(
                                height: 22.h,
                                width: 314.w,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          S.current.my_role,
                                          style:
                                              context.ts_s14h22_4w400.copyWith(
                                            color: context.c_text_grey,
                                          ),
                                        ),
                                        const IconAngleDown(),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          S.current.types_hint,
                                          style:
                                              context.ts_s14h22_4w400.copyWith(
                                            color: context.c_text_grey,
                                          ),
                                        ),
                                        const IconAngleDown(),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          S.current.priortiet,
                                          style:
                                              context.ts_s14h22_4w400.copyWith(
                                            color: context.c_text_grey,
                                          ),
                                        ),
                                        const IconAngleDown(),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          S.current.still,
                                          style:
                                              context.ts_s14h22_4w400.copyWith(
                                            color: context.c_text_grey,
                                          ),
                                        ),
                                        const IconAngleDown(),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ...widget.model.backlogSubtasks.keys.map((e) {
                            final tasks = widget.model.backlogSubtasks[e] ?? [];
                            return SprintStatusTasksView(
                              status: e,
                              tasks: tasks,
                              onTapTask: _onTapTask,
                              onMove: () {
                                _backlogMove = e;
                                setState(() {});
                              },
                              onMoveCancel: () {
                                _backlogMove = null;
                                setState(() {});
                              },
                              isDragging: _sprintMove == e,
                            );
                          }),
                        ],
                      ),
                    ),
                  ),
                  // TODO fix problem with height
                  VerticalDivider(color: context.c_grey_hover),
                ],
                Expanded(
                  child: SprintTaskDragTarget(
                    onAccept: (task) {
                      final status = task.status;
                      final index =
                          widget.model.backlogSubtasks[status]?.indexOf(task);
                      if (index == null || status == null) {
                        return;
                      }
                      _bloc.add(
                        SprintAuthorEvent.updateSubtask(
                          index: index,
                          status: status,
                          item: task,
                          backlog: true,
                        ),
                      );
                    },
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 20,
                            left: 16,
                            right: 17,
                          ),
                          child: Row(
                            children: [
                              Text(
                                S.current.sprint,
                                style: context.ts_s18h21w500.copyWith(
                                  color: context.c_text,
                                ),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Assets.icons.storyPoints.svg(
                                height: 18.0.h,
                                color: context.c_text_grey,
                              ),
                              Container(
                                margin:
                                    EdgeInsets.only(left: 5.5.w, bottom: 2.h),
                                child: Text(
                                  (widget.model.sprint?.storyPointPlan ?? 0)
                                      .toString(),
                                  style: context.ts_s14h22_4w400.copyWith(
                                    color: context.c_text_grey,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        ...widget.model.sprintSubtasks.keys.map((e) {
                          final tasks = widget.model.sprintSubtasks[e] ?? [];
                          return SprintStatusTasksView(
                            status: e,
                            tasks: tasks,
                            onTapTask: _onTapTask,
                            onMove: () {
                              _sprintMove = e;
                              setState(() {});
                            },
                            onMoveCancel: () {
                              _sprintMove = null;
                              setState(() {});
                            },
                            isDragging: _backlogMove == e,
                          );
                        }),
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        ),
        SizedBox(height: 40.h),
      ],
    );
  }
}
