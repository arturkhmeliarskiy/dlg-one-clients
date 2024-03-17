import 'package:dls_calendar/dls_calendar.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/utils/src/formatters.dart';
import 'package:dls_one/web/calendar/model/calendar_item_model.dart';
import 'package:dls_one/web/calendar/widget/common/calendar_checkbox.dart';
import 'package:flutter/material.dart';
import 'package:rest_api/rest_api.dart';

// TODO(Stas): разбить на разные виджеты https://gitlab.shvetsov.tech/dls-one/dlg-one-clients/-/issues/416
class TodoOrEvent extends StatefulWidget {
  const TodoOrEvent({
    required this.onCheckboxTodoChanged,
    required this.calendarItemModel,
    required this.onMouseHoverEnter,
    required this.onTap,
    super.key,
  });

  final void Function(bool?)? onCheckboxTodoChanged;
  final VoidCallback onTap;
  final CalendarItemModel calendarItemModel;
  final VoidCallback onMouseHoverEnter;

  @override
  State<TodoOrEvent> createState() => _TodoOrEventState();
}

class _TodoOrEventState extends State<TodoOrEvent> {
  final DateTime _dateTimeNow = DateTime.now();

  final bool _isNarrow =
      DLSLayoutItemBuilder.values(wide: false, narrow: true)();

  late final bool _isOverdue = _dateTimeNow
      .isAfter(widget.calendarItemModel.endDateTime ?? DateTime.now());
  late final bool _isFinished =
      widget.calendarItemModel.todoStatus == TodoStatus.completed;
  late final bool _hasRepeat = widget.calendarItemModel.hasRepeat ?? false;

  late final bool _isTodo =
      widget.calendarItemModel.calendarItemType == CalendarItemType.todo;

  late final bool _isOnline =
      widget.calendarItemModel.taskEventType == TaskEventType.online;

  Color get _getBorderColor {
    return _isNarrow ? _getNarrowBorderColor : _getWideBorderColor;
  }

  Color get _getNarrowBorderColor {
    final Color result;
    if (_isTodo) {
      result = _isOverdue ? context.c_red : context.c_grey_stoke;
    } else {
      result = _isOnline
          ? context.c_blue_calendar_online_event_border
          : context.c_green_calendar_offline_event_border;
    }
    return result;
  }

  Color get _getWideBorderColor {
    final Color result;
    if (_isTodo) {
      result = _isOverdue ? context.c_red : context.c_grey_stoke;
    } else {
      result = Colors.transparent;
    }
    return result;
  }

  double get _getBorderWidth {
    return _isNarrow
        ? 1.w
        : _isTodo
            ? 1.w
            : 0;
  }

  Color get _getBackgroundColor {
    return _isNarrow ? _getNarrowBackgroundColor : _getWideBackgroundColor;
  }

  Color get _getWideBackgroundColor {
    Color result;
    if (_isTodo) {
      result = context.c_white_background;
    } else {
      result = _isOnline
          ? context.c_purple_background
          : context.c_tiffany_background;
    }
    return result;
  }

  Color get _getNarrowBackgroundColor {
    Color result;
    if (_isTodo) {
      result = context.c_white_background;
    } else {
      result = _isOnline
          ? context.c_blue_calendar_menu_button_background_online
          : context.c_green_calendar_menu_button_background_offline;
    }
    return result;
  }

  Color _getTextColor(bool isTitle) {
    return _isNarrow
        ? _getNarrowTextColor(isTitle)
        : _getWideTextColor(isTitle);
  }

  Color _getNarrowTextColor(bool isTitle) {
    Color result;
    if (_isTodo) {
      result = isTitle ? context.c_text : context.c_text_grey;
    } else {
      result = _isOnline
          ? result = isTitle
              ? context.c_purple_event_title_online
              : context.c_purple_event_time_online
          : result = isTitle
              ? context.c_green_calendar_event_title_offline
              : context.c_green_calendar_event_date_offline;
    }
    return result;
  }

  Color _getWideTextColor(bool isTitle) {
    Color result;
    if (_isTodo) {
      result = isTitle ? context.c_text : context.c_text_grey;
    } else {
      result = _isOnline
          ? result =
              isTitle ? context.c_purple : context.c_purple.withOpacity(0.5)
          : result =
              isTitle ? context.c_tiffany : context.c_tiffany.withOpacity(0.5);
    }
    return result;
  }

  ColorFilter get _getRecurringIconColorFilter {
    return _isNarrow
        ? _getNarrowRecurringIconColorFilter
        : _getWideRecurringIconColorFilter;
  }

  ColorFilter get _getWideRecurringIconColorFilter {
    ColorFilter result;
    if (_isTodo) {
      result = context.c_text_grey_color_filter;
    } else {
      result = _isOnline
          ? context.c_purple_color_with_opacity_05_filter
          : context.c_tiffany_with_opacity_05_color_filter;
    }
    return result;
  }

  ColorFilter get _getNarrowRecurringIconColorFilter {
    ColorFilter result;
    if (_isTodo) {
      result = context.c_text_grey_color_filter;
    } else {
      result = _isOnline
          ? context.c_purple_event_time_color_filter
          : context.c_green_event_time_color_filter;
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => widget.onMouseHoverEnter.call(),
      child: GestureDetector(
        onTap: widget.onTap,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(3),
            border: Border.all(
              width: _getBorderWidth,
              color: _getBorderColor,
            ),
            color: _getBackgroundColor,
          ),
          margin: EdgeInsets.all(2.h),
          padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 4.h),
          child: LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxHeight < 30.h) {
                // в одну строку
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Row(
                        children: [
                          if (_isTodo && constraints.maxWidth > 140.w)
                            Padding(
                              padding: EdgeInsets.only(
                                right: _isNarrow ? 6.w : 4.w,
                              ),
                              child: CalendarCheckbox(
                                isFinished: _isFinished,
                                onChanged: (value) {
                                  if (value != null) {
                                    widget.onCheckboxTodoChanged?.call(value);
                                  }
                                },
                              ),
                            ),
                          Flexible(
                            child: Text(
                              widget.calendarItemModel.title,
                              overflow: TextOverflow.ellipsis,
                              style: _isNarrow
                                  ? context.ts_s12h12w400.copyWith(
                                      color: _getTextColor(true),
                                    )
                                  : context.ts_s12h14w500.copyWith(
                                      color: _getTextColor(true),
                                    ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        if (_hasRepeat && constraints.maxWidth > 140.w)
                          Padding(
                            padding: EdgeInsets.only(right: 6.w),
                            child: Assets.icons.recurred.svg(
                              colorFilter: _getRecurringIconColorFilter,
                            ),
                          ),
                        if (constraints.maxWidth > 140.w)
                          Text(
                            '${formatTimeHHmm(
                              widget.calendarItemModel.startDateTime ??
                                  _dateTimeNow,
                            )} - ${formatTimeHHmm(
                              widget.calendarItemModel.endDateTime ??
                                  _dateTimeNow,
                            )}',
                            style: context.ts_s12h12w400.copyWith(
                              color: _getTextColor(false),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                      ],
                    ),
                  ],
                );
              } else {
                // вариант верстки в несколько строк
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (_isTodo && constraints.maxWidth > 100.w)
                      Padding(
                        padding: EdgeInsets.only(
                          right: _isNarrow ? 6.w : 4.w,
                        ),
                        child: CalendarCheckbox(
                          isFinished: _isFinished,
                          onChanged: (value) {
                            if (value != null) {
                              widget.onCheckboxTodoChanged?.call(value);
                            }
                          },
                        ),
                      ),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Flexible(
                            child: Text(
                              widget.calendarItemModel.title,
                              style: context.ts_s12h14w500.copyWith(
                                color: _getTextColor(true),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: _isNarrow ? 4.h : 2.h,
                          ),
                          Row(
                            children: [
                              if (_hasRepeat &&
                                  constraints.maxWidth > 80.w) ...[
                                Assets.icons.recurred.svg(
                                  colorFilter: _getRecurringIconColorFilter,
                                ),
                                SizedBox(
                                  width: _isNarrow ? 4.w : 2.w,
                                ),
                              ],
                              Flexible(
                                child: Text(
                                  '${formatTimeHHmm(
                                    widget.calendarItemModel.startDateTime ??
                                        _dateTimeNow,
                                  )} - ${formatTimeHHmm(
                                    widget.calendarItemModel.endDateTime ??
                                        _dateTimeNow,
                                  )}',
                                  style: context.ts_s12h12w400.copyWith(
                                    color: _getTextColor(false),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
