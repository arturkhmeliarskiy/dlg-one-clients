import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/sprints/sprints.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api/rest_api.dart';

class SprintsView extends StatelessWidget {
  const SprintsView({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: context.c_white_text,
        border: Border(top: BorderSide(color: context.c_grey_grey, width: 1.h)),
      ),
      child: BlocBuilder<SprintsBloc, SprintsState>(
        builder: (context, state) {
          if (state.maybeMap(null, orElse: () => false, loading: (_) => true)) {
            return const DLSPreloader();
          }
          final currentSprint = state.model.currentSprint;
          if (currentSprint == null) {
            return const SizedBox();
          }
          final tasksMap = <TaskStatusType, List<DlsTasks>>{};
          for (final task in currentSprint.tasks) {
            final status = task.status;
            if (status == null) {
              continue;
            }
            final list = (tasksMap[status] ?? [])..add(task);
            tasksMap[status] = list;
          }
          final keys = tasksMap.keys.toList();
          return ListView(
            children: [
              SizedBox(height: 8.h),
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  final key = keys[index];
                  final tasks = tasksMap[key] ?? [];
                  return DlsPadding.symmetric(
                    horizontal: 8.w,
                    child: SprintTable(
                      list: tasks,
                      status: key,
                      open: state.model.openStatuses.contains(key),
                    ),
                  );
                },
                separatorBuilder: (_, __) => SizedBox(height: 24.h),
                itemCount: keys.length,
              ),
              SizedBox(height: 20.h),
            ],
          );
        },
      ),
    );
  }
}
