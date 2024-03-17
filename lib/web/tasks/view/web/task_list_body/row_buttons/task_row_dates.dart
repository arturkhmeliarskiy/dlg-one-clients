import 'package:dls_one/core/core.dart';
import 'package:dls_one/core/widgets/src/dls_calendar_dialog.dart';
import 'package:dls_one/utils/utils.dart';
import 'package:dls_one/web/tasks/bloc/hover_task_bloc/hover_task_bloc.dart';
import 'package:dls_one/web/tasks/view/web/task_list_body/row_buttons/task_build_add_button.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api/rest_api.dart';
import 'package:rest_api/src/models/tasks_models/dls_tasks_role.dart';

class TaskDeadline extends StatelessWidget {
  TaskDeadline({
    required this.date,
    required this.duration,
    required this.selectDate,
    this.index = 0,
    this.id = 0,
    this.role,
    super.key,
  });

  final DateTime? date;
  final int? duration;
  DateTime _date = DateTime.now();
  final _now = DateTime.now();
  var _isLate = false;
  int index;
  int id;
  final GlobalKey _widgetKey = GlobalKey();
  final DlsTasksRole? role;
  final void Function(DateTime) selectDate;

  @override
  Widget build(BuildContext context) {
    if (date != null && duration != null) {
      _date = DateTime(date!.year, date!.month, date!.day);
      if (_date.compareTo(_now) < 0) {
        _isLate = true;
      }
    }

    final item = DLSCalendarDialog(
      parentKey: _widgetKey,
      onSelectionChanged: (date) {
        if (date.value != null) {
          selectDate(date.value as DateTime);
          Navigator.of(context).pop();
        }
      },
      initialSelectedDate: _date,
      shift: Offset(
        0.025,
        -0.85 +
            (0.03 * index), // расчет положения календаря по отношению к кнопке
      ),
      removeDate: () {
        Navigator.of(context).pop();
      },
    );

    return date != null
        ? DropdownButton2<Widget>(
            customButton: DecoratedBox(
              key: _widgetKey,
              decoration: BoxDecoration(
                color: role?.name == S.current.viewing
                    ? Colors.transparent
                    : _isLate
                        ? context.c_white_text
                        : context.c_grey_stoke,
                borderRadius: BorderRadius.circular(5.r),
                border: _isLate && role?.name != S.current.viewing
                    ? Border.all(
                        color: context.c_red,
                        width: 1.h,
                      )
                    : null,
              ),
              child: Text(
                formatDateMonth(_date),
                style: context.ts_s12h14w400.apply(
                  color: role?.name == S.current.viewing
                      ? context.c_grey_calendar_task_isFinished
                      : _isLate
                          ? context.c_red
                          : context.c_text,
                ),
              ).paddingSymmetric(
                horizontal: 4.w,
                vertical: 1.h,
              ),
            ),
            items: role?.name == S.current.viewing
                ? null
                : [item].map<DropdownMenuItem<Widget>>((Widget value) {
                    return DropdownMenuItem<Widget>(
                      value: value,
                      child: value,
                    );
                  }).toList(),
            dropdownWidth: 283,
            itemHeight: 280,
            itemPadding: EdgeInsets.zero,
            buttonPadding: EdgeInsets.zero,
            dropdownPadding: EdgeInsets.zero,
            onChanged: (value) {},
          )
        : BlocBuilder<HoverTaskBloc, HoverTaskState>(
            builder: (context, state) {
              return state.maybeMap(
                preloadData: (initState) {
                  if (initState.idTask == id &&
                      role?.role != TaskRolesType.viewing) {
                    return DLSPlusIconButton(
                      key: _widgetKey,
                      tooltip: S.current.add_deadline,
                      onTap: () {
                        showDialog<void>(
                          barrierColor: Colors.transparent,
                          context: context,
                          builder: (context) {
                            return DLSCalendarDialog(
                              parentKey: _widgetKey,
                              onSelectionChanged: (date) {
                                if (date.value != null) {
                                  selectDate(date.value as DateTime);
                                  Navigator.of(context).pop();
                                }
                              },
                              initialSelectedDate: DateTime.now(),
                              shift: Offset(
                                0.025,
                                -0.85 +
                                    (0.03 *
                                        index), // расчет положения календаря по отношению к кнопке
                              ),
                              removeDate: () {
                                Navigator.of(context).pop();
                              },
                            );
                          },
                        );
                      },
                    );
                  } else {
                    return const SizedBox();
                  }
                },
                orElse: () => const SizedBox(),
              );
            },
          );
  }
}
