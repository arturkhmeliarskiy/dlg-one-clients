import 'package:dls_one/core/core.dart';
import 'package:dls_one/utils/utils.dart';
import 'package:dls_one/web/chat/chat.dart';
import 'package:dls_one/web/create_sprint/create_sprint.dart';
import 'package:dls_one/web/sprints/sprints.dart';
import 'package:dls_one/web/sprints/view/widgets/completed_sprint_page/right_column/date_select_picker.dart';
import 'package:dls_one/web/sprints/view/widgets/completed_sprint_page/right_column/dropdown_time.dart';
import 'package:dls_one/web/sprints/view/widgets/completed_sprint_page/right_column/sprint_tab_bar_navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api/rest_api.dart';

class RightColumnSprint extends StatelessWidget {
  const RightColumnSprint({required this.model, super.key});

  final SprintAuthorModel model;

  @override
  Widget build(BuildContext context) {
    final sprint = model.sprint;
    return SprintTabBarNavigation(
      firstListWidgets: ListView(
        children: [
          if (sprint == null) ...[
            Container(
              margin: EdgeInsets.only(top: 16.h, left: 16.w),
              alignment: Alignment.topLeft,
              child: Text(
                S.current.start_date,
                style: context.ts_s14h22_4w400.copyWith(
                  color: context.c_text_grey,
                ),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(top: 8.h, left: 16.w),
              child: DateSelectPicker(
                isActiveDate: true,
                onSelectDate: (value) {
                  context.read<SprintAuthorBloc>().add(
                        SprintAuthorEvent.updateModel(
                          model.copyWith(date: value),
                        ),
                      );
                },
                dateTime: model.date,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 12.h, left: 16.w),
              alignment: Alignment.topLeft,
              child: Text(
                S.current.durability,
                style: context.ts_s14h22_4w400.copyWith(
                  color: context.c_text_grey,
                ),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(top: 8.h, left: 16.w),
              child: DropdownTime(
                duration: model.duration,
                onChanged: (duration) => context
                    .read<SprintAuthorBloc>()
                    .add(SprintAuthorEvent.updateDuration(duration: duration)),
              ),
            ),
            DlsPadding.only(
              top: 8.h,
              left: 16.w,
              right: 16.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    S.current.end_date,
                    style: context.ts_s14h22_4w400.copyWith(
                      color: context.c_placeholder,
                    ),
                  ),
                  if (model.duration != SprintDurationType.custom)
                    Text(
                      model.endDate == null
                          ? ''
                          : formatDateMonthYear(model.endDate!),
                      style: context.ts_s14h22_4w400.copyWith(
                        color: context.c_placeholder,
                      ),
                    )
                  else
                    DateSelectPicker(
                      isActiveDate: true,
                      onSelectDate: (value) {
                        context.read<SprintAuthorBloc>().add(
                              SprintAuthorEvent.updateDuration(
                                duration: model.duration,
                                endDate: value,
                              ),
                            );
                      },
                      dateTime: model.endDate,
                    ),
                ],
              ),
            ),
          ],
          if (sprint != null) ...[
            SizedBox(height: 16.h),
            DlsPadding.symmetric(
              horizontal: 16.w,
              child: Text(
                S.current.period,
                style: context.ts_s14h22_4w400.copyWith(
                  color: context.c_text_grey,
                ),
              ),
            ),
            if (sprint.startAt != null && sprint.expiredAt != null)
              DlsPadding.only(
                left: 16.w,
                right: 16.w,
                top: 8.h,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: SprintDatePeriodView(
                    start: sprint.startAt!,
                    end: sprint.expiredAt!,
                  ),
                ),
              ),
            SizedBox(height: 12.h),
            DlsPadding.symmetric(
              horizontal: 16.w,
              child: Text(
                S.current.durability,
                style: context.ts_s14h22_4w400.copyWith(
                  color: context.c_text_grey,
                ),
              ),
            ),
            SizedBox(height: 8.h),
            DlsPadding.symmetric(
              horizontal: 16.w,
              child: Align(
                alignment: Alignment.centerLeft,
                child: SprintWeeksPeriodView(sprint: sprint),
              ),
            ),
          ],
          DlsPadding.only(
            top: 20.h,
            child: Divider(
              height: 1,
              color: context.c_grey_hover,
            ),
          ),
          SizedBox(height: 20.h),
          DlsPadding.symmetric(
            horizontal: 16.w,
            child: Text(
              S.current.author,
              style: context.ts_s14h22_4w400.copyWith(
                color: context.c_text_grey,
                height: 1,
              ),
            ),
          ),
          SizedBox(height: 5.h),
          if (model.author != null)
            DlsPadding.symmetric(
              horizontal: 16.w,
              child: DlsUserSmallItem(
                user: model.author!,
                // TODO config isMe
                isMe: true,
                style: context.ts_s14h16_4w400.copyWith(
                  color: context.c_text,
                ),
              ),
            ),
          SizedBox(height: 12.h),
          DlsPadding.symmetric(
            horizontal: 16.w,
            child: Text(
              S.current.performer,
              style: context.ts_s14h22_4w400.copyWith(
                color: context.c_text_grey,
              ),
            ),
          ),
          SizedBox(height: 5.h),
          DlsPadding.symmetric(
            horizontal: 16.w,
            child: SizedBox(
              height: 24.h,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  if (index == model.executors.length) {
                    return DlsCircleAddButton(
                      onTap: () {
                        groupSelectUsersDialog(
                          context,
                          SimpleGroup(
                            name: '',
                            users: model.executors,
                          ),
                          onSelectGroup: (value) {
                            context.read<SprintAuthorBloc>().add(
                                  SprintAuthorEvent.updateModel(
                                    model.copyWith(executors: value.users),
                                  ),
                                );
                          },
                          title: S.current.executor,
                        );
                      },
                    );
                  }
                  final user = model.executors[index];
                  return DLSAvatar(
                    username: user.nameSurname ?? user.name,
                    imageUrl: user.avatar ?? '',
                    size: 24.r,
                  );
                },
                separatorBuilder: (_, __) => SizedBox(width: 4.w),
                itemCount: model.executors.length + 1,
              ),
            ),
          ),
          DlsPadding.symmetric(
            horizontal: 16.w,
            child: Text(
              S.current.responsible,
              style: context.ts_s14h22_4w400.copyWith(
                color: context.c_text_grey,
              ),
            ),
          ),
          SizedBox(height: 5.h),
          DlsPadding.symmetric(
            horizontal: 16.w,
            child: SizedBox(
              height: 24.h,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  if (index == model.responsible.length) {
                    return DlsCircleAddButton(
                      onTap: () {
                        groupSelectUsersDialog(
                          context,
                          SimpleGroup(
                            name: '',
                            users: model.responsible,
                          ),
                          onSelectGroup: (value) {
                            context.read<SprintAuthorBloc>().add(
                                  SprintAuthorEvent.updateModel(
                                    model.copyWith(responsible: value.users),
                                  ),
                                );
                          },
                          title: S.current.responsible,
                        );
                      },
                    );
                  }
                  final user = model.responsible[index];
                  return DLSAvatar(
                    username: user.nameSurname ?? user.name,
                    imageUrl: user.avatar ?? '',
                    size: 24.r,
                  );
                },
                separatorBuilder: (_, __) => SizedBox(width: 4.w),
                itemCount: model.responsible.length + 1,
              ),
            ),
          ),
          SizedBox(height: 5.h),
          DlsPadding.symmetric(
            horizontal: 16.w,
            child: Text(
              S.current.observer,
              style: context.ts_s14h22_4w400.copyWith(color: context.c_text_grey),
            ),
          ),
          SizedBox(height: 5.h),
          DlsPadding.symmetric(
            horizontal: 16.w,
            child: SizedBox(
              height: 24.h,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  if (index == model.observers.length) {
                    return DlsCircleAddButton(
                      onTap: () {
                        groupSelectUsersDialog(
                          context,
                          SimpleGroup(name: '', users: model.observers),
                          onSelectGroup: (value) {
                            context.read<SprintAuthorBloc>().add(
                                  SprintAuthorEvent.updateModel(
                                    model.copyWith(observers: value.users),
                                  ),
                                );
                          },
                          title: S.current.observers,
                        );
                      },
                    );
                  }
                  final user = model.observers[index];
                  return DLSAvatar(
                    username: user.nameSurname ?? user.name,
                    imageUrl: user.avatar ?? '',
                    size: 24.r,
                  );
                },
                separatorBuilder: (_, __) => SizedBox(width: 4.w),
                itemCount: model.observers.length + 1,
              ),
            ),
          ),
        ],
      ),
      secondListWidgets: const SizedBox(),
    );
  }
}
