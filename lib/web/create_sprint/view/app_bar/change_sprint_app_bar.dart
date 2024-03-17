import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/create_sprint/create_sprint.dart';
import 'package:dls_one/web/sprints/sprints.dart';
import 'package:dls_one/web/tasks/view/web/task_list_body/row_buttons/task_performers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api/rest_api.dart';

class ChangeSprintAppBar extends StatelessWidget {
  const ChangeSprintAppBar({required this.state, super.key});

  final SprintAuthorState state;

  @override
  Widget build(BuildContext context) {
    final sprint = state.model.sprint;
    if (sprint == null) {
      return const SizedBox();
    }
    return Container(
      height: 56,
      color: context.c_grey_grey,
      child: Row(
        children: [
          if (state.loading)
            DlsPadding.only(
              left: 16.w,
              child: DLSPreloader(
                size: Size(30.w, 30.h),
              ),
            ),
          SizedBox(width: 16.w),
          SprintStatusButton(
            status: state.model.status,
            onChanged: (s) {
              final bloc = context.read<SprintAuthorBloc>();
              if (s == null) {
                return;
              }
              if (s == SprintStatus.finished) {
                bloc.add(const SprintAuthorEvent.finish());
                return;
              }
              bloc.add(
                SprintAuthorEvent.updateModel(state.model.copyWith(status: s)),
              );
            },
          ),
          if (sprint.startAt != null && sprint.expiredAt != null)
            DlsPadding.only(
              left: 16.w,
              child: SprintDatePeriodView(
                start: sprint.startAt!,
                end: sprint.expiredAt!,
              ),
            ),
          DlsPadding.only(
            left: 16.w,
            child: SprintWeeksPeriodView(sprint: sprint),
          ),
          SizedBox(width: 16.w),
          SprintStoryPointCounter(sprint: sprint),
          SizedBox(width: 16.w),
          SprintTaskFinishedView(sprint: sprint),
          SizedBox(width: 16.w),
          SprintPerformers(performers: sprint.performers?.executors ?? []),
        ],
      ),
    );
  }
}
