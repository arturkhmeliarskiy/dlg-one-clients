import 'package:auto_route/auto_route.dart';
import 'package:dls_one/app/router/app_router.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/sprints/model/sprint_item.dart';
import 'package:dls_one/web/sprints/sprints.dart';
import 'package:dls_one/web/tasks/bloc/task_list_bloc/task_list_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api/rest_api.dart';

class SprintTable extends StatelessWidget {
  const SprintTable({
    required this.list,
    required this.status,
    this.open = false,
    super.key,
  });

  final List<DlsTasks> list;

  final TaskStatusType status;
  final bool open;

  @override
  Widget build(BuildContext context) {
    final statusText = '${text(status)} (${list.length})';
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          child: DlsDataTable(
            headingRowHeight: 32.h,
            columns: _createColumns(context),
            rows: _createRows(context),
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: DlsTableHeader(
            color: backgroundColor(context, status),
            iconColor: textColor(context, status),
            text: statusText,
            open: open,
            onPressed: () {
              context.read<SprintsBloc>().add(SprintsEvent.statusClick(status));
            },
          ),
        )
      ],
    );
  }

  List<DataColumn> _createColumns(BuildContext context) {
    DataColumn emptyColumn() => const DataColumn(label: SizedBox());
    if (!open) {
      return List.generate(7, (index) => emptyColumn());
    }
    DataColumn labelColumn(String text) => DataColumn(label: Text(text));
    return [
      emptyColumn(),
      emptyColumn(),
      emptyColumn(),
      labelColumn(S.current.my_role),
      labelColumn(S.current.performer),
      labelColumn(S.current.deadline),
      labelColumn(S.current.tags),
    ];
  }

  List<DataRow> _createRows(BuildContext context) {
    if (!open) {
      return [];
    }
    return List.generate(list.length, (index) {
      final task = list[index];
      return SprintItem.createRows(
        context,
        item: task,
        index: index,
        id: task.id,
        onTap: () {
          context.router.push(
            NewTaskSprintRoute(
              task: task,
              onTaskSaved: (task) {
                // TODO config Sprint update logic
                context.read<SprintsBloc>().add(
                      const SprintsEvent.getSprints(withLoading: false),
                    );
                context
                    .read<TaskListBloc>()
                    // index is null, because current index not from TaskListState
                    .add(const TaskListEvent.refresh());
              },
              status: TaskStatusType.inTheQueue,
            ),
          );
        },
      );
    });
  }

  // TODO refactor it to extension
  /// Copied from [StatusButton]
  String text(TaskStatusType value) {
    switch (value) {
      case TaskStatusType.draft:
        return S.current.draft;
      case TaskStatusType.inTheQueue:
        return S.current.status_todo;
      case TaskStatusType.atWork:
        return S.current.status_in_progress;
      case TaskStatusType.completed:
        return S.current.status_done;
      case TaskStatusType.unknown:
        return S.current.unknown;
    }
  }

  Color backgroundColor(BuildContext context, TaskStatusType value) {
    switch (value) {
      case TaskStatusType.draft:
        return context.c_text_grey;
      case TaskStatusType.inTheQueue:
        return context.c_blue_container;
      case TaskStatusType.atWork:
        return context.c_orange_border;
      case TaskStatusType.completed:
        return context.c_grey_light;
      case TaskStatusType.unknown:
        return context.c_tiffany_background;
    }
  }

  Color textColor(BuildContext context, TaskStatusType value) {
    switch (value) {
      case TaskStatusType.draft:
        return context.c_text_grey.withOpacity(0.1);
      case TaskStatusType.inTheQueue:
        return context.c_blue;
      case TaskStatusType.atWork:
        return context.c_orange;
      case TaskStatusType.completed:
        return context.c_green;
      case TaskStatusType.unknown:
        return context.c_tiffany;
    }
  }
}
