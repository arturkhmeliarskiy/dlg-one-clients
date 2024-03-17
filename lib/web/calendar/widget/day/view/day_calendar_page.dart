import 'package:auto_route/auto_route.dart';
import 'package:dls_calendar/dls_calendar.dart';
import 'package:dls_one/app/router/app_router.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/utils/utils.dart';
import 'package:dls_one/web/calendar/bloc/calendar_bloc.dart';
import 'package:dls_one/web/calendar/calendar.dart';
import 'package:dls_one/web/calendar/utils/formatters.dart';
import 'package:dls_one/web/calendar/widget/common/app_bar/calendar_page_app_bar_wrapper.dart';
import 'package:dls_one/web/calendar/widget/common/mixin/calendar_item_model_mixin.dart';
import 'package:dls_one/web/calendar/widget/common/time_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api/rest_api.dart';

@RoutePage()
class DayCalendarPage extends StatefulWidget {
  DayCalendarPage({
    @pathParam required this.dayId,
  }) : super(key: ValueKey(dayId));

  final String dayId;

  @override
  State<DayCalendarPage> createState() => _DayCalendarPageState();
}

class _DayCalendarPageState extends State<DayCalendarPage>
    with ListCalendarItemModelMixin {
  @override
  void initState() {
    super.initState();
    context.read<CalendarBloc>().add(
          CalendarEvent.setDateAndViewType(
            date: parseDateFromDateMonthYearNoDots(widget.dayId),
            viewType: CalendarViewType.day,
          ),
        );
  }

  final bool _isNarrow =
      DLSLayoutItemBuilder.values(wide: false, narrow: true)();

  /// Кратность взаимодействия с тасками на календарной сетке
  final _gridGranularity = const Duration(minutes: 15);

  /// Сколько в пикселях на сетке календаря занимает один час
  double get _hourRowHeight {
    return _isNarrow ? 107 : 60;
  }

  /// Ширина колонки с временем на сетке календаря
  double get _hoursColumnWidth {
    return _isNarrow ? 48 : 58;
  }

  /// Высота тайтла над колонками дней
  final _headerHeight = 0.0;

  /// Начало рабочего дня
  final _startOfWorkDay = const HourMinute(hour: 8);

  /// Конец рабочего дня
  final _endOfWorkDay = const HourMinute(hour: 20);

  /// Выходные дни недели
  final List<int> _holidays = [6, 7];

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<CalendarBloc>();
    return BlocBuilder<CalendarBloc, CalendarState>(
      builder: (context, state) {
        return CalendarPageAppBarWrapper(
          key: ValueKey('${state.model.date} ${state.model.viewType}'),
          child: MouseRegion(
            onExit: (event) {
              bloc.add(const CalendarEvent.removeMenu());
            },
            child: DayView(
              holidays: _holidays,
              startOfWorkDay: _startOfWorkDay,
              endOfWorkDay: _endOfWorkDay,
              // Стиль колонки с временем слева от календаря
              hoursColumnStyle: HoursColumnStyle(
                width: _hoursColumnWidth.w,
                color: context.c_white_background,
                textStyle: context.ts_s12h14w400.copyWith(
                  color: context.c_placeholder,
                ),
                textAlignment: _isNarrow
                    ? const Alignment(0.2, 0)
                    : const Alignment(0.4, 0),
                decoration: BoxDecoration(
                  border: Border(
                    right: BorderSide(
                      color: context.c_grey_stoke,
                    ),
                  ),
                ),
              ),

              currentDayViewTimeIndicatorBuilder: (
                dayViewStyle,
                topOffsetCalculator,
                hoursColumnWidth,
                isRtl,
              ) {
                return TimeIndicator(
                  dayViewStyle: dayViewStyle,
                  topOffsetCalculator: topOffsetCalculator,
                  hoursColumnWidth: hoursColumnWidth,
                  isRtl: isRtl,
                );
              },
              date: state.model.date,
              events: mapItemsToUIItemsForDayCalendar(
                state.model.items,
                bloc,
                state.model.date,
              ),
              userZoomable: false,

              style: DayViewStyle(
                offHoursColor: context.c_grey_grey,
                backgroundRulesColor: context.c_grey_stoke,
                backgroundColor: context.c_white_background,
                headerSize: _headerHeight.h,
                hourRowHeight: _hourRowHeight.h,
                currentTimeRuleColor: context.c_blue,
                currentTimeCircleColor: context.c_blue,
                currentTimeCirclePosition: CurrentTimeCirclePosition.left,
                currentTimeCircleRadius: 3.5.r,
                currentTimeRuleHeight: 1.h,
              ),
              // Логика перетягивания дел с панели дел справа
              dragAndDropOptions: DragAndDropOptions(
                onEventDragged: (event, DateTime newStartTime) {
                  final roundedTime = roundTimeToFitGrid(
                    newStartTime,
                    gridGranularity: _gridGranularity,
                  );

                  if (roundedTime.subtract(_gridGranularity).isBefore(
                            getDateTimeFromHourMinute(
                              roundedTime,
                              _startOfWorkDay,
                            ),
                          ) ||
                      (roundedTime
                          .add(_gridGranularity)
                          .add(event.end.difference(event.start))
                          .isAfter(
                            getDateTimeFromHourMinute(
                              roundedTime,
                              _endOfWorkDay,
                            ),
                          )) ||
                      _holidays.contains(roundedTime.weekday)) {
                    return;
                  }

                  event.shiftEventTo(roundedTime);
                  bloc.add(
                    CalendarEvent.changeCalendarItemTime(
                      event.id,
                      event.calendarItemType,
                      event.start,
                      event.end,
                      event.restModel,
                    ),
                  );
                },
              ),
              onBackgroundHover: _isNarrow
                  ? null
                  : (date) {
                      final roundedTime = roundTimeToFitGrid(
                        date,
                        gridGranularity: _gridGranularity,
                      );

                      if (roundedTime.subtract(_gridGranularity).isBefore(
                                getDateTimeFromHourMinute(
                                  roundedTime,
                                  _startOfWorkDay,
                                ),
                              ) ||
                          (roundedTime.add(_gridGranularity).isAfter(
                                    getDateTimeFromHourMinute(
                                      roundedTime,
                                      _endOfWorkDay,
                                    ),
                                  ) ||
                              _holidays.contains(roundedTime.weekday))) {
                        bloc.add(const CalendarEvent.removeMenu());
                        return;
                      }

                      bloc.add(
                        CalendarEvent.manageMenu(roundedTime),
                      );
                    },

              onBackgroundTappedDown: _isNarrow
                  ? (date) async {
                      final roundedTime = roundTimeToFitGrid(
                        date,
                        gridGranularity: _gridGranularity,
                      );

                      if (roundedTime.subtract(_gridGranularity).isBefore(
                                getDateTimeFromHourMinute(
                                  roundedTime,
                                  _startOfWorkDay,
                                ),
                              ) ||
                          (roundedTime.add(_gridGranularity).isAfter(
                                    getDateTimeFromHourMinute(
                                      roundedTime,
                                      _endOfWorkDay,
                                    ),
                                  ) ||
                              _holidays.contains(roundedTime.weekday))) {
                        return;
                      }

                      await context.router.push<TaskEventModel>(
                        CreateEventRoute(
                          popOnSuccess: true,
                          startAt: roundedTime,
                          endAt: roundedTime.add(const Duration(hours: 1)),
                        ),
                      );
                      bloc.add(const CalendarEvent.fetch());
                    }
                  : null,
              resizeEventOptions: ResizeEventOptions(
                minimumEventDuration: const Duration(minutes: 30),
                snapToGridGranularity: _gridGranularity,
                onEventResized: (event, DateTime newEndTime) {
                  final roundedTime = roundTimeToFitGrid(
                    newEndTime,
                    gridGranularity: _gridGranularity,
                  );

                  if (roundedTime.isAfter(
                        getDateTimeFromHourMinute(newEndTime, _endOfWorkDay),
                      ) ||
                      _holidays.contains(roundedTime.weekday)) {
                    return;
                  }
                  bloc.add(
                    CalendarEvent.changeCalendarItemTime(
                      event.id,
                      event.calendarItemType,
                      event.start,
                      newEndTime,
                      event.restModel,
                    ),
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
