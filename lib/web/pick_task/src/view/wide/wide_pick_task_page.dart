import 'package:auto_route/auto_route.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/core/widgets/dls_loader/dls_loader_scope.dart';
import 'package:dls_one/web/pick_task/pick_task.dart';
import 'package:dls_one/web/tasks/tasks.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WidePickTaskPage extends StatelessWidget with NotificationsMixin {
  const WidePickTaskPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: context.c_shadow.withOpacity(0.4),
      child: DlsWebDialogFrame(
        title: S.current.chooseTask,
        child: Column(
          children: [
            SizedBox(height: 12.h),
            DlsPadding.only(
              left: 10.w,
              right: 20.w,
              child: const PickTaskFilterBar(),
            ),
            const Divider(),
            Expanded(
              child: SizedBox(
                width: double.infinity,
                child: DLSLoaderScope(
                  child: BlocConsumer<TaskListBloc, TaskListState>(
                    listener: (context, state) {
                      state.whenOrNull(
                        loading: (_) {
                          DLSLoaderScope.showLoaderOf(
                            context,
                            future:
                                context.read<TaskListBloc>().stream.firstWhere(
                                      (element) => !element.loading,
                                    ),
                          );
                        },
                        error: (message, __) =>
                            showDLSSnackBar(context, message),
                      );
                    },
                    builder: (context, state) {
                      return SizedBox(
                        width: double.infinity,
                        child: SingleChildScrollView(
                          child: DlsPadding.only(
                            bottom: 40.h,
                            child: DlsDataTable(
                              rows: _createRows(context, state),
                              columns: _createColumns(),
                              headingRowHeight: 0,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  List<DataColumn> _createColumns() {
    // used for the columns without header but with values in rows
    DataColumn emptyColumn() {
      return const DataColumn(
        label: Text(''),
      );
    }

    return List.generate(5, (index) => emptyColumn());
  }

  List<DataRow> _createRows(
    BuildContext context,
    TaskListState state,
  ) {
    final items = state.model.tasks;
    return List<DataRow>.generate(items.length, (index) {
      final item = items[index];
      return PickTaskItem.createRows(
        context,
        item: item,
        index: index,
        id: item.id,
        hierarchyView: state.model.hierarchyView,
        onTap: () {
          context.popRoute(item);
        },
      );
    });
  }
}
