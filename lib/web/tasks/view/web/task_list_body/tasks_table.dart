import 'package:dls_one/core/core.dart';
import 'package:dls_one/core/widgets/dls_loader/dls_loader_scope.dart';
import 'package:dls_one/web/tasks/bloc/task_list_bloc/task_list_bloc.dart';
import 'package:dls_one/web/tasks/tasks.dart';
import 'package:dls_one/web/tasks/view/web/task_list_body/task_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TaskTable extends StatefulWidget {
  const TaskTable({super.key});

  @override
  State<TaskTable> createState() => _TaskTableState();
}

class _TaskTableState extends State<TaskTable> {
  final GlobalKey _widgetKey = GlobalKey();
  int? indexHover;
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        dividerColor: Colors.transparent,
      ),
      child: DLSLoaderScope(
        child: BlocConsumer<TaskListBloc, TaskListState>(
          listener: (context, state) {
            state.whenOrNull(
              loading: (_) {
                DLSLoaderScope.showLoaderOf(
                  context,
                  future: context.read<TaskListBloc>().stream.firstWhere(
                        (state) => !state.loading,
                      ),
                );
              },
            );
          },
          builder: (context, state) {
            final tasks = state.model.tasks;
            return SingleChildScrollView(
              child: SizedBox(
                width: double.infinity,
                child: DlsDataTable(
                  key: _widgetKey,
                  headingRowHeight: 32.h,
                  columns: _createColumns(),
                  rows: List<DataRow>.generate(tasks.length, (index) {
                    return TaskItem.createRows(
                      item: tasks[index],
                      id: state.model.idTask,
                      context: context,
                      index: index,
                      hierarchyView: state.model.hierarchyView,
                    );
                  }),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  // static Table Headers
  List<DataColumn> _createColumns() {
    // used for the columns without header but with values in rows
    DataColumn emptyColumn() {
      return const DataColumn(
        label: Text(''),
      );
    }

    return [
      // Title & Type
      // Hierchy & files will be shown at the end of the title
      DataColumn(
        label: Padding(
          padding: EdgeInsets.only(left: 46.w),
          child: Text(S.current.title),
        ),
      ),

      // Hierchy & Files
      emptyColumn(),

      // Priority
      emptyColumn(),

      // Status
      DataColumn(label: Text(S.current.status_hint)),

      // Role
      DataColumn(label: Text(S.current.my_role)),

      // Auther
      DataColumn(label: Text(S.current.executor)),

      // Deadline
      DataColumn(label: Text(S.current.deadline)),

      // Tags
      DataColumn(label: Text(S.current.tags)),

      // Icons
      emptyColumn(),
    ];
  }
}
