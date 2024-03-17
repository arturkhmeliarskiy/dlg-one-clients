import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/tasks/tasks.dart';
import 'package:dls_one/web/tasks/view/web/app_bar/task_search.dart';
import 'package:dls_one/web/tasks/view/web/filters/filter_dedline.dart';
import 'package:dls_one/web/tasks/view/web/filters/filter_priority.dart';
import 'package:dls_one/web/tasks/view/web/filters/filter_reset.dart';
import 'package:dls_one/web/tasks/view/web/filters/filter_roles.dart';
import 'package:dls_one/web/tasks/view/web/filters/filter_status.dart';
import 'package:dls_one/web/tasks/view/web/filters/filter_type.dart';
import 'package:dls_one/web/tasks/view/web/task_list_body/row_buttons/hierarchy_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PickTaskFilterBar extends StatelessWidget {
  const PickTaskFilterBar({
    super.key,
    this.filters = const {},
    this.onClearFilters,
  });

  final Map<FilterTypes, Object> filters;
  final VoidCallback? onClearFilters;

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<TaskListBloc>();
    return SizedBox(
      height: 52.h,
      child: Row(
        children: [
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                TaskSearch(
                  filters: filters,
                  onSearchTask: (value) {
                    bloc.add(TaskListEvent.searchTask(value));
                  },
                ),
                SizedBox(width: 16.w),
                FilterRoles(
                  isTaskList: true,
                  filters: filters,
                  onChangeRole: (value) {
                    bloc.add(
                      TaskListEvent.filterTaskList(
                        type: FilterTypes.myRole,
                        value: value,
                      ),
                    );
                  },
                ),
                SizedBox(width: 16.w),
                FilterType(
                  onChangeType: (value) {
                    bloc.add(
                      TaskListEvent.filterTaskList(
                        type: FilterTypes.type,
                        value: value,
                      ),
                    );
                  },
                ),
                SizedBox(width: 16.w),
                FilterStatus(
                  filters: filters,
                  isTaskList: true,
                  onChangeStatus: (value) {
                    bloc.add(
                      TaskListEvent.filterTaskList(
                        type: FilterTypes.status,
                        value: value,
                      ),
                    );
                  },
                ),
                SizedBox(width: 16.w),
                FilterPriority(
                  filters: filters,
                  isTaskList: true,
                  onChangePriority: (value) {
                    bloc.add(
                      TaskListEvent.filterTaskList(
                        type: FilterTypes.priority,
                        value: value,
                      ),
                    );
                  },
                ),
                SizedBox(width: 16.w),
                FilterDeadline(
                  isTaskList: true,
                  onChangeDeadline: (value) {
                    bloc.add(
                      TaskListEvent.filterTaskList(
                        type: FilterTypes.deadline,
                        value: value,
                      ),
                    );
                  },
                  removeDate: () {
                    bloc.add(
                      TaskListEvent.filterTaskList(
                        type: FilterTypes.deadline,
                        value: DateTime(0),
                      ),
                    );
                  },
                ),
                SizedBox(width: 16.w),
                BlocBuilder<TaskListBloc, TaskListState>(
                    builder: (context, state) {
                  if (state.model.isResetEverything) {
                    return FilterReset(
                      onResetFilters: () {
                        bloc.add(
                          const TaskListEvent.resetFilters(),
                        );
                        onClearFilters?.call();
                      },
                    );
                  } else {
                    return const SizedBox();
                  }
                }),
              ],
            ),
          ),
          const HierarchySwitch(detailed: false),
        ],
      ),
    );
  }
}
