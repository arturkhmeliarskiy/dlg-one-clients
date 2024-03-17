import 'package:auto_route/auto_route.dart';
import 'package:dls_one/app/router/app_router.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/utils/utils.dart';
import 'package:dls_one/web/create_sprint/create_sprint.dart';
import 'package:dls_one/web/create_task/view/src/task_horizontal_avatar_user.dart';
import 'package:dls_one/web/create_task/view/src/task_horizontal_users_list.dart';
import 'package:dls_one/web/sprints/sprints.dart';
import 'package:dls_one/web/sprints/view/widgets/completed_sprint_page/right_column/date_select_picker.dart';
import 'package:dls_one/web/sprints/view/widgets/completed_sprint_page/right_column/dropdown_time.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api/rest_api.dart';

class NarrowCreateSprintTopItems extends StatelessWidget {
  const NarrowCreateSprintTopItems({required this.model, super.key});

  final SprintAuthorModel model;

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<SprintAuthorBloc>();
    return Column(
      children: [
        SizedBox(
          height: 48.h,
          child: Row(
            children: [
              Expanded(
                child: Text(
                  S.current.status,
                  style: context.ts_s14h22_4w400
                      .copyWith(color: context.c_text_grey),
                ),
              ),
              SizedBox(width: 4.w),
              SprintStatusButton(
                status: model.status,
                onChanged: (s) {
                  if (s == null) {
                    return;
                  }
                  if (s == SprintStatus.finished) {
                    bloc.add(const SprintAuthorEvent.finish());
                    if (model.sprint != null) {
                      return;
                    }
                  }
                  bloc.add(
                    SprintAuthorEvent.updateModel(model.copyWith(status: s)),
                  );
                },
              ),
            ],
          ),
        ),
        SizedBox(
          height: 48.h,
          child: Row(
            children: [
              Expanded(
                child: Text(
                  S.current.executor,
                  style: context.ts_s14h22_4w400
                      .copyWith(color: context.c_text_grey),
                ),
              ),
              SizedBox(width: 4.w),
              Expanded(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: TaskHorizontalUsersList(
                    users: model.executors,
                    onTap: (user) {
                      final index = model.executors.indexOf(user);
                      bloc.add(
                        SprintAuthorEvent.updateModel(
                          model.copyWith(
                            executors: model.executors.toList()
                              ..removeAt(index),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              SizedBox(width: 8.w),
              DLSPlusIconButton(
                backgroundColor: Colors.transparent,
                borderColor: context.c_grey_stoke,
                onTap: () async {
                  final users = await context.router.push<List<DLSUser>>(
                    MobileSelectUsersRoute(
                      users: model.executors,
                      title: S.current.performer,
                    ),
                  );
                  if (users == null) {
                    return;
                  }
                  bloc.add(
                    SprintAuthorEvent.updateModel(
                      model.copyWith(executors: users),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
        SizedBox(
          height: 48.h,
          child: Row(
            children: [
              Expanded(
                child: Text(
                  S.current.responsible,
                  style: context.ts_s14h22_4w400
                      .copyWith(color: context.c_text_grey),
                ),
              ),
              SizedBox(width: 4.w),
              Expanded(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: TaskHorizontalUsersList(
                    users: model.responsible,
                    onTap: (user) {
                      final index = model.responsible.indexOf(user);
                      bloc.add(
                        SprintAuthorEvent.updateModel(
                          model.copyWith(
                            executors: model.responsible.toList()
                              ..removeAt(index),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              SizedBox(width: 8.w),
              DLSPlusIconButton(
                backgroundColor: Colors.transparent,
                borderColor: context.c_grey_stoke,
                onTap: () async {
                  final users = await context.router.push<List<DLSUser>>(
                    MobileSelectUsersRoute(
                      users: model.responsible,
                      title: S.current.responsible,
                    ),
                  );
                  if (users == null) {
                    return;
                  }
                  bloc.add(
                    SprintAuthorEvent.updateModel(
                      model.copyWith(responsible: users),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
        SizedBox(
          height: 48.h,
          child: Row(
            children: [
              Expanded(
                child: Text(
                  S.current.observers,
                  style: context.ts_s14h22_4w400
                      .copyWith(color: context.c_text_grey),
                ),
              ),
              SizedBox(width: 4.w),
              Expanded(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: TaskHorizontalUsersList(
                    users: model.observers,
                    onTap: (user) {
                      final index = model.observers.indexOf(user);
                      bloc.add(
                        SprintAuthorEvent.updateModel(
                          model.copyWith(
                            executors: model.observers.toList()
                              ..removeAt(index),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              SizedBox(width: 8.w),
              DLSPlusIconButton(
                backgroundColor: Colors.transparent,
                borderColor: context.c_grey_stoke,
                onTap: () async {
                  final users = await context.router.push<List<DLSUser>>(
                    MobileSelectUsersRoute(
                      users: model.observers,
                      title: S.current.observers,
                    ),
                  );
                  if (users == null) {
                    return;
                  }
                  bloc.add(
                    SprintAuthorEvent.updateModel(
                      model.copyWith(observers: users),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
        SizedBox(
          height: 48.h,
          child: Row(
            children: [
              Expanded(
                child: Text(
                  S.current.start_date,
                  style: context.ts_s14h22_4w400
                      .copyWith(color: context.c_text_grey),
                ),
              ),
              SizedBox(width: 4.w),
              DateSelectPicker(
                isActiveDate: true,
                dateTime: model.date,
                onSelectDate: (v) => bloc.add(
                    SprintAuthorEvent.updateModel(model.copyWith(date: v))),
              ),
            ],
          ),
        ),
        SizedBox(height: 4.h),
        SizedBox(
          height: 32.h,
          child: Row(
            children: [
              Expanded(
                child: Text(
                  S.current.durability,
                  style: context.ts_s14h22_4w400
                      .copyWith(color: context.c_text_grey),
                ),
              ),
              SizedBox(width: 4.w),
              DropdownTime(
                duration: model.duration,
                onChanged: (duration) => bloc
                    .add(SprintAuthorEvent.updateDuration(duration: duration)),
              ),
            ],
          ),
        ),
        SizedBox(height: 8.h),
        if (model.endDate != null)
          SizedBox(
            width: double.infinity,
            child: Text(
              '${S.current.estimatedEndDate}: ${formatDateMonthYear(model.endDate!)}',
              style: context.ts_s12h14w400.copyWith(color: context.c_text_grey),
              textAlign: TextAlign.end,
            ),
          ),
      ],
    );
  }
}
