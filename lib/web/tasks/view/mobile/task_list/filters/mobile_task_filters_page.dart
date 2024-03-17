import 'package:auto_route/auto_route.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/tasks/bloc/task_list_bloc/task_list_bloc.dart';
import 'package:dls_one/web/tasks/const/enums.dart';
import 'package:dls_one/web/tasks/view/mobile/task_list/filters/mobile_filter_deadline.dart';
import 'package:dls_one/web/tasks/view/mobile/task_list/filters/mobile_filter_files.dart';
import 'package:dls_one/web/tasks/view/mobile/task_list/filters/mobile_filter_performers.dart';
import 'package:dls_one/web/tasks/view/mobile/task_list/filters/mobile_filter_priority.dart';
import 'package:dls_one/web/tasks/view/mobile/task_list/filters/mobile_filter_role.dart';
import 'package:dls_one/web/tasks/view/mobile/task_list/filters/mobile_filter_status.dart';
import 'package:dls_one/web/tasks/view/mobile/task_list/filters/mobile_filter_storypoints.dart';
import 'package:dls_one/web/tasks/view/mobile/task_list/filters/mobile_filter_tags.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api/rest_api.dart';

@RoutePage()
class MobileTaskFiltersPage extends StatefulWidget {
  const MobileTaskFiltersPage({
    required this.selectedTabBar,
    super.key,
  });

  final int selectedTabBar;

  @override
  State<MobileTaskFiltersPage> createState() => _MobileTaskFiltersPageState();
}

class _MobileTaskFiltersPageState extends State<MobileTaskFiltersPage> {
  Map<FilterTypes, Object> filters = {};

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            SizedBox(
              height: 60.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      FocusScope.of(context).unfocus();
                      Navigator.of(context).pop();
                    },
                    child: Row(
                      children: [
                        SizedBox(
                          width: 21.w,
                        ),
                        Assets.icons.angleLeft.svg(
                          color: context.c_text_grey,
                        ),
                        SizedBox(
                          width: 13.w,
                        ),
                        Text(
                          S.current.filters,
                          style: context.ts_s14h16_4w500,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 8.w),
                    child: GestureDetector(
                      onTap: () {
                        if (widget.selectedTabBar != 0) {
                          context.read<TaskListBloc>().add(
                                TaskListEvent.filterTaskKanban(
                                  listFilter: filters,
                                ),
                              );
                        } else {
                          context.read<TaskListBloc>().add(
                                TaskListEvent.filterTaskList(
                                  listFilter: filters,
                                ),
                              );
                        }
                        FocusScope.of(context).unfocus();
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        S.current.apply,
                        style: context.ts_s14h22_4w400.copyWith(
                          color: filters.isEmpty
                              ? context.c_grey_calendar_task_isFinished
                              : context.c_blue,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              height: 2,
              color: context.c_grey_stoke,
            ),
            MobileFilterRole(
              onChangeRole: (value) {
                setState(() {
                  if (!value.contains(TaskRolesType.unknown)) {
                    filters[FilterTypes.myRole] = value;
                  } else {
                    filters.remove(FilterTypes.myRole);
                  }
                });
              },
              filters: filters,
            ),
            Divider(
              height: 2,
              color: context.c_grey_stoke,
            ),
            MobileFilterPriority(
              onChangePriority: (value) {
                setState(() {
                  if (!value.contains(TaskPriorityType.unknown)) {
                    filters[FilterTypes.priority] = value;
                  } else {
                    filters.remove(FilterTypes.priority);
                  }
                });
              },
              filters: filters,
            ),
            Divider(
              height: 2,
              color: context.c_grey_stoke,
            ),
            MobileFilterStatus(
              onChangeStatus: (value) {
                setState(() {
                  if (!value.contains(TaskStatusType.unknown)) {
                    filters[FilterTypes.status] = value;
                  } else {
                    filters.remove(FilterTypes.status);
                  }
                });
              },
              filters: filters,
            ),
            Divider(
              height: 2,
              color: context.c_grey_stoke,
            ),
            MobileFilterDeadline(
              onChangeDeadline: (startDate, endDate) {
                setState(() {
                  if (startDate != DateTime(0) || endDate != DateTime(0)) {
                    filters[FilterTypes.deadline] = [startDate, endDate];
                  } else {
                    filters.remove(FilterTypes.deadline);
                  }
                });
              },
              filters: filters,
            ),
            Divider(
              height: 2,
              color: context.c_grey_stoke,
            ),
            MobileFilterStorypoints(
              onChangeStorypoints: (value) {
                setState(() {
                  if (value != DlsStorypointsEnum.unknown) {
                    filters[FilterTypes.storypoints] = value;
                  } else {
                    filters.remove(FilterTypes.storypoints);
                  }
                });
              },
              filters: filters,
            ),
            Divider(
              height: 2,
              color: context.c_grey_stoke,
            ),
            MobileFilterTags(
              onChangeTags: (value) {
                setState(() {
                  if (value.isNotEmpty) {
                    filters[FilterTypes.tags] = value;
                  } else {
                    filters.remove(FilterTypes.tags);
                  }
                });
              },
              filters: filters,
            ),
            Divider(
              height: 2,
              color: context.c_grey_stoke,
            ),
            MobileFilterPerformers(
              selectedTabBar: widget.selectedTabBar,
              onChangePerformers: (value) {
                setState(() {
                  if (value.isNotEmpty) {
                    filters[FilterTypes.performers] = value;
                  } else {
                    filters.remove(FilterTypes.performers);
                  }
                });
              },
              filters: filters,
            ),
            Divider(
              height: 2.h,
              color: context.c_grey_stoke,
            ),
            MobileFilterFiles(
              onChangeFiles: (value) {
                setState(() {
                  if (value != 0) {
                    filters[FilterTypes.files] = value;
                  } else {
                    filters.remove(FilterTypes.files);
                  }
                });
              },
              filters: filters,
            ),
            Divider(
              height: 2,
              color: context.c_grey_stoke,
            ),
          ],
        ),
        if (filters.isNotEmpty)
          GestureDetector(
            onTap: () {
              setState(() {
                filters = {};
              });
            },
            child: Container(
              height: 32.h,
              decoration: BoxDecoration(
                border: Border.all(
                  color: context.c_blue,
                ),
                borderRadius: BorderRadius.circular(
                  4.r,
                ),
              ),
              margin: EdgeInsets.all(16.r),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    S.current.clear(filters.values.length),
                    style: context.ts_s14h16_4w400.copyWith(
                      color: context.c_blue,
                    ),
                  ),
                ],
              ),
            ),
          )
      ],
    );
  }
}
