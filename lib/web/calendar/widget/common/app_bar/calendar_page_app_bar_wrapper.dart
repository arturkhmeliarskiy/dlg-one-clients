import 'package:auto_route/auto_route.dart';
import 'package:dls_one/app/router/app_router.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/core/widgets/dls_loader/dls_loader_scope.dart';
import 'package:dls_one/core/widgets/src/dls_calendar_dialog.dart';
import 'package:dls_one/utils/utils.dart';
import 'package:dls_one/web/calendar/bloc/calendar_bloc.dart';
import 'package:dls_one/web/calendar/calendar.dart';
import 'package:dls_one/web/calendar/widget/common/app_bar/app_bar_with_nav_panel.dart';
import 'package:dls_one/web/calendar/widget/common/floating_action_button_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api/rest_api.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class CalendarPageAppBarWrapper extends StatefulWidget {
  const CalendarPageAppBarWrapper({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  State<CalendarPageAppBarWrapper> createState() =>
      _CalendarPageAppBarWrapperState();
}

class _CalendarPageAppBarWrapperState extends State<CalendarPageAppBarWrapper>
    with NotificationsMixin {
  final GlobalKey _widgetKey = GlobalKey();
  final bool _isMobile =
      DLSLayoutItemBuilder.values(wide: false, narrow: true)();
  late final CalendarBloc _bloc = context.read<CalendarBloc>();

  Future<void> _replaceNewRouteWithDate(DateTime newDay) async {
    if (_bloc.state.model.viewType == CalendarViewType.day) {
      await context.replaceRoute(
        DayCalendarRoute(
          dayId: formatDateMonthYearNoDots(
            newDay,
          ),
        ),
      );
    } else if (_bloc.state.model.viewType == CalendarViewType.week) {
      await context.replaceRoute(
        WeekCalendarRoute(
          dayId: formatDateMonthYearNoDots(
            newDay,
          ),
        ),
      );
    } else {
      await context.replaceRoute(
        MonthCalendarRoute(
          dayId: formatDateMonthYearNoDots(
            newDay,
          ),
        ),
      );
    }
  }

  Future<void> _replaceNewRouteViewType(CalendarViewType viewType) async {
    if (viewType == _bloc.state.model.viewType) {
      return;
    }
    final currentDay = _bloc.state.model.date;
    if (viewType == CalendarViewType.day) {
      await context.replaceRoute(
        DayCalendarRoute(
          dayId: formatDateMonthYearNoDots(
            currentDay,
          ),
        ),
      );
    } else if (viewType == CalendarViewType.week) {
      await context.replaceRoute(
        WeekCalendarRoute(
          dayId: formatDateMonthYearNoDots(
            currentDay,
          ),
        ),
      );
    } else {
      await context.replaceRoute(
        MonthCalendarRoute(
          dayId: formatDateMonthYearNoDots(
            currentDay,
          ),
        ),
      );
    }
  }

  Future<void> _onLeftAngelTapOfCalendarNavPanel(
    DateTime selectedDay,
  ) async {
    final newDay = selectedDay.subtract(const Duration(days: 1)).byDay();
    await _replaceNewRouteWithDate(newDay);
  }

  Future<void> _onRightAngelTapOfCalendarNavPanel(
    DateTime selectedDay,
  ) async {
    final newDay = selectedDay.add(const Duration(days: 1)).byDay();
    await _replaceNewRouteWithDate(newDay);
  }

  Future<void> _onTodayButtonTap() async {
    final newDay = DateTime.now();
    await _replaceNewRouteWithDate(newDay);
  }

  void _onWideSmallCalendarTap(DateTime selectedDay) {
    showDialog<void>(
      barrierColor: Colors.transparent,
      context: context,
      builder: (context) {
        return DLSCalendarDialog(
          parentKey: _widgetKey,
          initialSelectedDate: selectedDay,
          // TODO(Stas): решить с правильным отображением маленького календаря
          shift: const Offset(-0.873, -0.83),
          onSelectionChanged: (date) async {
            await context.popRoute();
            final newDay = date.value;
            if (newDay is DateTime) {
              await _replaceNewRouteWithDate(newDay);
            }
          },
          removeDate: () {},
        );
      },
    );
  }

  void _onNarrowSmallCalendarTap(DateTime selectedDay) {
    showModalBottomSheet<void>(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(8.r),
        ),
      ),
      isScrollControlled: true,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      builder: (context) {
        return SfDateRangePicker(
          key: UniqueKey(),
          viewSpacing: 50.h,
          initialSelectedDates: [selectedDay],
          enableMultiView: true,
          headerStyle: const DateRangePickerHeaderStyle(
            backgroundColor: Colors.transparent,
          ),
          navigationDirection: DateRangePickerNavigationDirection.vertical,
          monthViewSettings: const DateRangePickerMonthViewSettings(
            enableSwipeSelection: false,
          ),
          selectionShape: DateRangePickerSelectionShape.rectangle,
          showNavigationArrow: true,
          selectionRadius: 4.r,
          onSelectionChanged: (dateSelect) async {
            Navigator.of(context).pop();
            final newDay = dateSelect.value;
            if (newDay is DateTime) {
              await _replaceNewRouteWithDate(newDay);
            }
          },
          navigationMode: DateRangePickerNavigationMode.scroll,
        );
      },
    );
  }

  Future<void> _onWideTaskEventSelected(DateTime selectedDay) async {
    await context.router.push<TaskEventModel>(
      CreateEventRoute(
        popOnSuccess: true,
        startAt: selectedDay.byDay(),
      ),
    );
    _bloc.add(const CalendarEvent.fetch());
  }

  void _onFloatingActionButtonTap(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(8.r),
        ),
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      isScrollControlled: true,
      builder: (context) {
        return FloatingActionButtonMenu(
          onCreateTaskEventTap: () async {
            await context.router.push<TaskEventModel>(
              CreateEventRoute(
                popOnSuccess: true,
              ),
            );
          },
          onCreateTodoTap: () {
            /// TODO: Добавить создание TODO
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CalendarBloc, CalendarState>(
      builder: (context, state) {
        final selectedDay = state.model.date;
        return Scaffold(
          floatingActionButton: _isMobile
              ? FloatingActionButton(
                  child: const Icon(Icons.add),
                  onPressed: () {
                    _onFloatingActionButtonTap(context);
                  },
                )
              : null,
          appBar: AppBarWithNavPanel(
            onWideTaskEventSelected: () async {
              await _onWideTaskEventSelected(selectedDay);
            },
            onWideTodoSelected: () {
              // TODO: реализовать создание Todo
            },
            onNarrowTodayButtonTap: _onTodayButtonTap,
            onMobileTodoButtonTap: () {},
            onViewTypeChanged: (viewType) async => _replaceNewRouteViewType(
              viewType,
            ),
            selectedViewTypeIndex:
                CalendarViewType.values.indexOf(state.model.viewType),
            isMobile: _isMobile,
            parentKey: _widgetKey,
            onLeftAngleTap: () {
              _onLeftAngelTapOfCalendarNavPanel(selectedDay);
            },
            onRightAngleTap: () {
              _onRightAngelTapOfCalendarNavPanel(selectedDay);
            },
            onSmallCalendarTap: (context) => _isMobile
                ? _onNarrowSmallCalendarTap(selectedDay)
                : _onWideSmallCalendarTap(selectedDay),
            currentDay: selectedDay,
          ),
          body: DLSLoaderScope(
            child: BlocListener<CalendarBloc, CalendarState>(
              listener: (context, state) {
                state.maybeWhen(
                  orElse: () {},
                  error: (message, _) {
                    showDLSSnackBar(context, message);
                  },
                  loading: (model) {
                    DLSLoaderScope.showLoaderOf(
                      context,
                      future: _bloc.stream.firstWhere(
                        (element) => element.maybeMap(
                          orElse: () => true,
                          loading: (_) => false,
                        ),
                      ),
                    );
                  },
                );
              },
              child: widget.child,
            ),
          ),
        );
      },
    );
  }
}
