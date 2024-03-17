import 'package:auto_route/auto_route.dart';
import 'package:calendar_view/calendar_view.dart';
import 'package:dls_one/app/router/app_router.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/utils/utils.dart';
import 'package:dls_one/web/calendar/bloc/calendar_bloc.dart';
import 'package:dls_one/web/calendar/calendar.dart';
import 'package:dls_one/web/calendar/widget/common/app_bar/calendar_page_app_bar_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class MonthCalendarPage extends StatefulWidget {
  MonthCalendarPage({
    @pathParam required this.dayId,
  }) : super(key: ValueKey(dayId));

  final String dayId;

  @override
  State<MonthCalendarPage> createState() => _MonthCalendarPageState();
}

class _MonthCalendarPageState extends State<MonthCalendarPage> {
  final _eventController = EventController();

  final Map<DateTime, List<CalendarItemModel>> _tasks = {};

  @override
  void initState() {
    super.initState();
    context.read<CalendarBloc>().add(
          CalendarEvent.setDateAndViewType(
            date: parseDateFromDateMonthYearNoDots(widget.dayId),
            viewType: CalendarViewType.month,
          ),
        );
    // TODO(Stas): это временное решение до появление Темирлана, завтра с ним созвонюсь и порешаем как лучше быть
    // проблема в том что тут приходит неправильная модель, у которой
    // может быть неверный день
    _checkEvents(context.read<CalendarBloc>().state.model.copyWith(
          date: parseDateFromDateMonthYearNoDots(widget.dayId),
        ));
  }

  void _checkEvents(CalendarModel model) {
    _tasks.clear();
    for (final i in model.items) {
      final day = i.startDateTime?.byDay() ?? DateTime(0);
      final list = (_tasks[day] ?? [])..add(i);
      _tasks[day] = list;
    }
  }

  @override
  void didUpdateWidget(covariant MonthCalendarPage oldWidget) {
    super.didUpdateWidget(oldWidget);
    _checkEvents(context.read<CalendarBloc>().state.model);
  }

  void _updateDragDate(DateTime? date, CalendarModel model) {
    context.read<CalendarBloc>().add(
          CalendarEvent.updateModel(model.copyWith(dragDate: date)),
        );
  }

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<CalendarBloc>();
    return BlocBuilder<CalendarBloc, CalendarState>(
      builder: (context, state) {
        return CalendarPageAppBarWrapper(
          key: ValueKey('${state.model.date} ${state.model.viewType}'),
          child: MonthView(
            key: ObjectKey(state.model.date),
            controller: _eventController,
            initialMonth: state.model.date,
            cellAspectRatio: 1,
            showBorder: false,
            headerBuilder: (date) {
              return const SizedBox();
            },
            onPageChange: (date, _) {
              context
                  .read<CalendarBloc>()
                  .add(CalendarEvent.setDateAndViewType(date: date));
            },
            weekDayBuilder: (day) {
              return Container(
                height: 32.h,
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                color: context.c_grey_grey,
                alignment: Alignment.centerLeft,
                child: Text(
                  txt(formatWeekNumber(day), upperCaseFistSymbol: true),
                  style: context.ts_s12h12w400
                      .copyWith(color: context.c_text_grey),
                ),
              );
            },
            cellBuilder: (date, event, isToday, isInMonth) {
              final day = date.day;
              final month = date.month;
              final now = DateTime.now().byDay();
              final items = _tasks[date] ?? [];

              final dragDate = state.model.dragDate;
              return MonthCalendarDragTarget(
                onWillAccept: (data) {
                  final start = data.startDateTime?.byDay() ?? DateTime(0);
                  if (date.compareTo(start) == 0) {
                    return false;
                  }
                  _updateDragDate(date, state.model);
                  return true;
                },
                onLeave: (data) {
                  if (state.model.dragDate != date) {
                    return;
                  }
                  _updateDragDate(null, state.model);
                },
                onAccept: (data) {
                  bloc.add(
                    CalendarEvent.moveEventTime(date, data),
                  );
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 4.w),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: context.c_grey_stoke),
                      top: now.compareTo(date) == 0
                          ? BorderSide(color: context.c_blue, width: 2.h)
                          : BorderSide.none,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        day.toString(),
                        style: context.ts_s14h22_4w400.copyWith(
                          color: month != state.model.date.month
                              ? context.c_text.withOpacity(0.2)
                              : context.c_text_grey,
                        ),
                      ),
                      SizedBox(height: 4.h),
                      Expanded(
                        child: Column(
                          children: [
                            if (dragDate != null &&
                                date.compareTo(dragDate) == 0)
                              const MonthCalendarDragPlaceholder(),
                            Expanded(
                              child: MonthCalendarDayItems(
                                items: items,
                                onItemTap: (item) async {
                                  final event = item.mapOrNull(
                                      event: (item) => item.model);
                                  if (event != null) {
                                    await context.router.push(
                                      CreateEventRoute(
                                        event: event,
                                      ),
                                    );
                                    bloc.add(
                                      const CalendarEvent.fetch(
                                        // TODO add date
                                        withLoading: false,
                                      ),
                                    );
                                  }
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
