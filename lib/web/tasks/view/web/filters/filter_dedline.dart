import 'package:dls_one/core/core.dart';
import 'package:dls_one/core/widgets/src/dls_calendar_dialog.dart';
import 'package:dls_one/utils/utils.dart';
import 'package:dls_one/web/tasks/bloc/task_list_bloc/task_list_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FilterDeadline extends StatefulWidget {
  const FilterDeadline({
    required this.onChangeDeadline,
    required this.removeDate,
    this.isTaskList = false,
    super.key,
  });

  final void Function(DateTime) onChangeDeadline;
  final VoidCallback removeDate;
  final bool isTaskList;

  @override
  State<FilterDeadline> createState() => _FilterDeadlineState();
}

class _FilterDeadlineState extends State<FilterDeadline> {
  final GlobalKey _widgetKey = GlobalKey();
  String _title = S.current.deadline;
  final DateTime _date = DateTime.now();
  bool _isMenuOpen = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      key: _widgetKey,
      radius: 5,
      borderRadius: BorderRadius.circular(5),
      onHover: (value) {},
      hoverColor: context.c_grey_grey,
      onTap: () {
        setState(() {
          _isMenuOpen = true;
        });
        showDialog<void>(
          barrierColor: Colors.transparent,
          context: context,
          builder: (context) {
            return DLSCalendarDialog(
              parentKey: _widgetKey,
              onSelectionChanged: (date) {
                if (date.value != null) {
                  setState(() {
                    _title = formatDateMonthYear(
                      DateTime.parse(date.value.toString()),
                    );
                    _isMenuOpen = false;
                  });
                  widget
                      .onChangeDeadline(DateTime.parse(date.value.toString()));
                }
              },
              removeDate: () {
                setState(() {
                  _title = S.current.deadline;
                  _isMenuOpen = false;
                });

                widget.removeDate();
              },
              initialSelectedDate: _date,
              shift: const Offset(
                -0.65,
                -0.85,
              ),
            );
          },
        );
      },
      child: BlocBuilder<TaskListBloc, TaskListState>(
        builder: (context, state) {
          return state.maybeMap(
            preloadData: (initState) {
              final filters = widget.isTaskList
                  ? initState.model.filters
                  : initState.model.filtersKanban;
              if (filters.isEmpty) {
                _title = S.current.deadline;
              }
              return Container(
                decoration: _title != S.current.deadline
                    ? BoxDecoration(
                        color: context.c_grey_hover,
                        borderRadius: BorderRadius.circular(5),
                      )
                    : const BoxDecoration(),
                height: 28.h,
                padding: EdgeInsets.only(
                  left: 8.w,
                  right: 4.w,
                  top: 3.h,
                  bottom: 3.h,
                ),
                child: Row(
                  children: [
                    Text(
                      _title,
                      style: context.ts_s14h22_4w400.copyWith(
                        color: _title != S.current.deadline
                            ? context.c_text
                            : context.c_text_grey,
                      ),
                    ),
                    SizedBox(width: 7.w),
                    WebDropdownMenuIcon(
                      isIconUp: true,
                      isMenuOpen: !_isMenuOpen,
                    ),
                  ],
                ),
              );
            },
            orElse: () => Container(
              decoration: _title != S.current.deadline
                  ? BoxDecoration(
                      color: context.c_grey_hover,
                      borderRadius: BorderRadius.circular(5),
                    )
                  : const BoxDecoration(),
              height: 28.h,
              padding: EdgeInsets.only(
                left: 8.w,
                right: 4.w,
                top: 3.h,
                bottom: 3.h,
              ),
              child: Row(
                children: [
                  Text(
                    _title,
                    style: context.ts_s14h22_4w400.copyWith(
                      color: _title != S.current.deadline
                          ? context.c_text
                          : context.c_text_grey,
                    ),
                  ),
                  SizedBox(width: 7.w),
                  WebDropdownMenuIcon(
                    isIconUp: true,
                    isMenuOpen: !_isMenuOpen,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
