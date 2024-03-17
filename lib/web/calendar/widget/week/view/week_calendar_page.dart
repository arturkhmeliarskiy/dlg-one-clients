import 'package:auto_route/auto_route.dart';
import 'package:dls_calendar/dls_calendar.dart';
import 'package:dls_one/app/router/app_router.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/utils/utils.dart';
import 'package:dls_one/web/calendar/bloc/calendar_bloc.dart';
import 'package:dls_one/web/calendar/model/model.dart';
import 'package:dls_one/web/calendar/utils/formatters.dart';
import 'package:dls_one/web/calendar/widget/common/app_bar/calendar_page_app_bar_wrapper.dart';
import 'package:dls_one/web/calendar/widget/common/mixin/calendar_item_model_mixin.dart';
import 'package:dls_one/web/calendar/widget/common/time_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api/rest_api.dart';

@RoutePage()
class WeekCalendarPage extends StatefulWidget {
  WeekCalendarPage({
    @pathParam required this.dayId,
  }) : super(key: ValueKey(dayId));

  final String dayId;

  @override
  State<StatefulWidget> createState() => _WeekCalendarPageState();
}

class _WeekCalendarPageState extends State<WeekCalendarPage>
    with ListCalendarItemModelMixin {
  @override
  void initState() {
    super.initState();
    context.read<CalendarBloc>().add(
          CalendarEvent.setDateAndViewType(
            date: parseDateFromDateMonthYearNoDots(widget.dayId),
            viewType: CalendarViewType.week,
          ),
        );
  }

  final bool _isNarrow =
      DLSLayoutItemBuilder.values(wide: false, narrow: true)();

  /// Кратность взаимодействия с тасками на календарной сетке
  final _gridGranularity = const Duration(minutes: 15);

  /// Кратность шага попап меню
  final _menuGridGranularity = const Duration(minutes: 30);

  /// Кратность шага попап меню
  final _menuHalfDuration = const Duration(minutes: 30);

  /// Сколько в пикселях на сетке календаря занимает один час
  double get _hourRowHeight {
    return _isNarrow ? 75 : 60;
  }

  /// высота тайтла над колонками дней
  double get _headerHeight {
    return _isNarrow ? 48 : 32;
  }

  /// Ширина колонки с временем на сетке календаря
  double get _hoursColumnWidth {
    return _isNarrow ? 48 : 58;
  }

  /// начало рабочего дня
  final _startOfWorkDay = const HourMinute(hour: 8);

  /// конец рабочего дня
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
            onExit: (event) => bloc.add(const CalendarEvent.removeMenu()),
            child: LayoutBuilder(
              builder: (context, constraints) => WeekView(
                holidays: _holidays,
                startOfWorkDay: const HourMinute(hour: 8),
                endOfWorkDay: const HourMinute(hour: 20),
                // стиль колонок со временем слева от календаря
                hoursColumnStyle: HoursColumnStyle(
                  width: _hoursColumnWidth.w,
                  color: context.c_white_background,
                  textStyle: context.ts_s12h14w400.copyWith(
                    color: context.c_placeholder,
                  ),
                  textAlignment: const Alignment(0.4, 0),
                  decoration: BoxDecoration(
                    border: Border(
                      right: BorderSide(
                        color: context.c_grey_stoke,
                      ),
                    ),
                  ),
                ),

                // даты с понедельника по воскресенье, строящиеся на недельном календаре
                dates: state.model.date.getWeekDates(),

                // стиль сетки календаря
                dayViewStyleBuilder: (date) => DayViewStyle(
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

                // индикатор текущего времени недельного календаря
                currentWeekViewTimeIndicatorBuilder: (
                  dayViewStyle,
                  topOffsetCalculator,
                  hoursColumnWidth,
                  isRtl,
                ) =>
                    TimeIndicator(
                  dayViewStyle: dayViewStyle,
                  topOffsetCalculator: topOffsetCalculator,
                  hoursColumnWidth: hoursColumnWidth,
                  isRtl: isRtl,
                ),

                // индикатор текущего времени дневного календаря в недельном календаре
                // не должен отображаться поэтому возвращает null
                currentDayViewTimeIndicatorBuilder: (
                  _,
                  __,
                  ___,
                  ____,
                ) {
                  return null;
                },
                // айтемы календаря которые отображаются на сетке
                events: mapItemsToUIItemsForWeekCalendar(
                  state.model.items,
                  bloc,
                ),
                // билдер тайтла над календарем с датами
                dayBarStyleBuilder: (date) {
                  final isSelectedDay = state.model.date.isSameDayWith(date);
                  return DayBarStyle(
                    dateFormatter: _isNarrow
                        ? formatDateToWeekdayDay
                        : formatDateTodMMMMEEE,
                    color: context.c_grey_grey,
                    decoration: BoxDecoration(
                      color: context.c_grey_grey,
                      border: _isNarrow
                          ? null
                          : isSelectedDay
                              ? Border(
                                  bottom: BorderSide(
                                    color: context.c_blue,
                                    width: 2.w,
                                  ),
                                )
                              : null,
                    ),
                    textStyle: context.ts_s12h14w400.copyWith(
                      color:
                          isSelectedDay ? context.c_blue : context.c_text_grey,
                      overflow: TextOverflow.ellipsis,
                      fontWeight:
                          isSelectedDay ? FontWeight.w500 : FontWeight.w400,
                    ),
                  );
                },
                userZoomable: false,

                style: WeekViewStyle(
                  dayViewSeparatorColor: context.c_grey_stoke,
                  dayViewSeparatorWidth: 1,
                  dayViewWidth:
                      (constraints.maxWidth - _hoursColumnWidth.w - 6) / 7,
                  headerSize: _headerHeight.h,
                ),

                // Логика перетягивания дел с панели дел справа
                dragAndDropOptions: DragAndDropOptions(
                  allowOnlyVerticalDrag: false,
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
                          gridGranularity: _menuGridGranularity,
                        );

                        if (roundedTime.subtract(_menuHalfDuration).isBefore(
                                  getDateTimeFromHourMinute(
                                    roundedTime,
                                    _startOfWorkDay,
                                  ),
                                ) ||
                            (roundedTime.add(_menuHalfDuration).isAfter(
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
                                ))) {
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
              ),
            ),
          ),
        );
      },
    );
  }
}
