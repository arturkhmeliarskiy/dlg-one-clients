import 'package:auto_route/auto_route.dart';
import 'package:dls_one/app/router/app_router.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/sprints/sprints.dart';
import 'package:dls_one/web/sprints/view/widgets/sprint_list/button/go_to_sprint_button.dart';
import 'package:dls_one/web/tasks/view/web/task_list_body/row_buttons/task_performers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SprintAppBar extends StatelessWidget {
  const SprintAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.h,
      color: context.c_grey_grey,
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: BlocBuilder<SprintsBloc, SprintsState>(
        builder: (context, state) {
          final loading = state.maybeMap(
            null,
            orElse: () => false,
            loading: (_) => true,
          );
          final currentSprint = state.model.currentSprint;
          if (loading && currentSprint == null) {
            return DLSPreloader(
              size: Size(30.w, 30.h),
            );
          }
          if (currentSprint == null) {
            return const SizedBox.expand();
          }
          return Row(
            children: [
              SprintDropDownButton(
                sprints: state.model.data,
                currentSprint: currentSprint,
                onChanged: (v) {
                  if (v == null) {
                    return;
                  }
                  context
                      .read<SprintsBloc>()
                      .add(SprintsEvent.setCurrentSprint(v));
                },
              ),
              SizedBox(width: 16.w),
              SprintStatusButton(
                status: currentSprint.status,
                // TODO config if widget clickable
                // onChanged: (v) {},
              ),
              if (currentSprint.startAt != null &&
                  currentSprint.expiredAt != null)
                DlsPadding.only(
                  left: 16.w,
                  child: SprintDatePeriodView(
                    start: currentSprint.startAt!,
                    end: currentSprint.expiredAt!,
                  ),
                ),
              DlsPadding.only(
                left: 16.w,
                child: SprintWeeksPeriodView(sprint: currentSprint),
              ),
              SizedBox(width: 16.w),
              SprintStoryPointCounter(sprint: currentSprint),
              SizedBox(width: 16.w),
              SprintTaskFinishedView(sprint: currentSprint),
              SizedBox(width: 16.w),
              SprintPerformers(
                performers: currentSprint.performers?.executors ?? [],
              ),
              const Spacer(),
              GoToSprintButton(
                onTap: () async {
                  await context.router.push(
                    NewSprintRoute(
                      sprint: currentSprint,
                      onSprintSaved: (sprint) {
                        context
                            .read<SprintsBloc>()
                            .add(SprintsEvent.updateSprint(sprint));
                      },
                    ),
                  );
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
