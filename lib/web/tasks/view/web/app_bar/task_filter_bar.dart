import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/tasks/tasks.dart';
import 'package:dls_one/web/tasks/view/web/app_bar/task_search.dart';
import 'package:dls_one/web/tasks/view/web/filters/filter_dedline.dart';
import 'package:dls_one/web/tasks/view/web/filters/filter_files.dart';
import 'package:dls_one/web/tasks/view/web/filters/filter_performers.dart';
import 'package:dls_one/web/tasks/view/web/filters/filter_priority.dart';
import 'package:dls_one/web/tasks/view/web/filters/filter_reset.dart';
import 'package:dls_one/web/tasks/view/web/filters/filter_roles.dart';
import 'package:dls_one/web/tasks/view/web/filters/filter_status.dart';
import 'package:dls_one/web/tasks/view/web/filters/filter_tags.dart';
import 'package:dls_one/web/tasks/view/web/filters/filter_type.dart';
import 'package:dls_one/web/tasks/view/web/task_list_body/row_buttons/hierarchy_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TaskFilterBar extends StatefulWidget {
  const TaskFilterBar({
    super.key,
    this.index = 0,
    this.filters = const {},
    this.tasks = true,
    this.onClearFilters,
  });

  final int index;
  final Map<FilterTypes, Object> filters;
  final bool tasks;
  final VoidCallback? onClearFilters;

  @override
  State<TaskFilterBar> createState() => _TaskFilterBarState();
}

class _TaskFilterBarState extends State<TaskFilterBar> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 52.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              if (widget.index != 0)
                FilterRoles(
                  filters: widget.filters,
                  onChangeRole: (value) {
                    context.read<TaskListBloc>().add(
                          TaskListEvent.filterTaskKanban(
                            type: FilterTypes.myRole,
                            value: value,
                          ),
                        );
                  },
                )
              else
                FilterRoles(
                  isTaskList: true,
                  filters: widget.filters,
                  onChangeRole: (value) {
                    context.read<TaskListBloc>().add(
                          TaskListEvent.filterTaskList(
                            type: FilterTypes.myRole,
                            value: value,
                          ),
                        );
                  },
                ),
              SizedBox(width: 20.w),
              if (widget.index != 0)
                FilterType(
                  onChangeType: (value) {
                    context.read<TaskListBloc>().add(
                          TaskListEvent.filterTaskKanban(
                            type: FilterTypes.type,
                            value: value,
                          ),
                        );
                  },
                )
              else
                FilterType(
                  onChangeType: (value) {
                    context.read<TaskListBloc>().add(
                          TaskListEvent.filterTaskList(
                            type: FilterTypes.type,
                            value: value,
                          ),
                        );
                  },
                ),
              SizedBox(width: 20.w),
              if (widget.index != 0)
                FilterStatus(
                  filters: widget.filters,
                  onChangeStatus: (value) {
                    context.read<TaskListBloc>().add(
                          TaskListEvent.filterTaskKanban(
                            type: FilterTypes.status,
                            value: value,
                          ),
                        );
                  },
                )
              else
                FilterStatus(
                  filters: widget.filters,
                  isTaskList: true,
                  onChangeStatus: (value) {
                    context.read<TaskListBloc>().add(
                          TaskListEvent.filterTaskList(
                            type: FilterTypes.status,
                            value: value,
                          ),
                        );
                  },
                ),
              SizedBox(width: 20.w),
              if (widget.index != 0)
                FilterPriority(
                  filters: widget.filters,
                  onChangePriority: (value) {
                    context.read<TaskListBloc>().add(
                          TaskListEvent.filterTaskKanban(
                            type: FilterTypes.priority,
                            value: value,
                          ),
                        );
                  },
                )
              else
                FilterPriority(
                  filters: widget.filters,
                  isTaskList: true,
                  onChangePriority: (value) {
                    context.read<TaskListBloc>().add(
                          TaskListEvent.filterTaskList(
                            type: FilterTypes.priority,
                            value: value,
                          ),
                        );
                  },
                ),
              SizedBox(width: 20.w),
              FilterDeadline(
                isTaskList: widget.index == 0,
                onChangeDeadline: (value) {
                  if (widget.index != 0) {
                    context.read<TaskListBloc>().add(
                          TaskListEvent.filterTaskKanban(
                            type: FilterTypes.deadline,
                            value: value,
                          ),
                        );
                  } else {
                    context.read<TaskListBloc>().add(
                          TaskListEvent.filterTaskList(
                            type: FilterTypes.deadline,
                            value: value,
                          ),
                        );
                  }
                },
                removeDate: () {
                  context.read<TaskListBloc>().add(
                        TaskListEvent.filterTaskList(
                          type: FilterTypes.deadline,
                          value: DateTime(0),
                        ),
                      );
                },
              ),
              SizedBox(width: 20.w),
              if (widget.index != 0)
                Padding(
                  padding: EdgeInsets.only(right: 20.w),
                  child: FilterFiles(
                    onTapFile: (value) {
                      context.read<TaskListBloc>().add(
                            TaskListEvent.filterTaskKanban(
                              type: FilterTypes.files,
                              value: value,
                            ),
                          );
                    },
                  ),
                )
              else
                Padding(
                  padding: EdgeInsets.only(right: 20.w),
                  child: FilterFiles(
                    onTapFile: (value) {
                      context.read<TaskListBloc>().add(
                            TaskListEvent.filterTaskList(
                              type: FilterTypes.files,
                              value: value,
                            ),
                          );
                    },
                  ),
                ),
              if (widget.index != 0)
                FilterTags(
                  filters: widget.filters,
                  onChangeTags: (value) {
                    context.read<TaskListBloc>().add(
                          TaskListEvent.filterTaskKanban(
                            type: FilterTypes.tags,
                            value: value,
                          ),
                        );
                  },
                )
              else
                FilterTags(
                  filters: widget.filters,
                  onChangeTags: (value) {
                    context.read<TaskListBloc>().add(
                          TaskListEvent.filterTaskList(
                            type: FilterTypes.tags,
                            value: value,
                          ),
                        );
                  },
                  isTaskList: true,
                ),
              SizedBox(width: 20.w),
              if (widget.index != 0)
                FilterPerformers(
                  filters: widget.filters,
                  onChangePerformers: (value) {
                    context.read<TaskListBloc>().add(
                          TaskListEvent.filterTaskKanban(
                            type: FilterTypes.performers,
                            value: value,
                          ),
                        );
                  },
                )
              else
                FilterPerformers(
                  filters: widget.filters,
                  onChangePerformers: (value) {
                    context.read<TaskListBloc>().add(
                          TaskListEvent.filterTaskList(
                            type: FilterTypes.performers,
                            value: value,
                          ),
                        );
                  },
                  isTaskList: true,
                ),
              SizedBox(width: 20.w),
              if (widget.index != 0)
                TaskSearch(
                  filters: widget.filters,
                  onSearchTask: (value) {
                    context.read<TaskListBloc>().add(
                          TaskListEvent.searchTaskKanban(
                            value,
                          ),
                        );
                  },
                )
              else
                TaskSearch(
                  filters: widget.filters,
                  onSearchTask: (value) {
                    context.read<TaskListBloc>().add(
                          TaskListEvent.searchTask(
                            value,
                          ),
                        );
                  },
                ),
              SizedBox(width: 10.w),
              BlocBuilder<TaskListBloc, TaskListState>(
                  builder: (context, state) {
                if (widget.index != 0 && state.model.isResetEverything) {
                  return FilterReset(
                    onResetFilters: () {
                      context.read<TaskListBloc>().add(
                            const TaskListEvent.resetFiltersKanban(),
                          );
                      widget.onClearFilters?.call();
                    },
                  );
                } else if (state.model.isResetEverything) {
                  return FilterReset(
                    onResetFilters: () {
                      context.read<TaskListBloc>().add(
                            const TaskListEvent.resetFilters(),
                          );
                      widget.onClearFilters?.call();
                    },
                  );
                } else {
                  return const SizedBox();
                }
              })
            ],
          ),
          if (widget.tasks && widget.index == 0) const HierarchySwitch(),
        ],
      ),
    );
  }
}
