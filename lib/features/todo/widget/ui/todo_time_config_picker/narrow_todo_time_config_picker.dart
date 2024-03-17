import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/todo/model/repeat.dart';
import 'package:dls_one/features/todo/model/todo_time_config.dart';
import 'package:dls_one/features/todo/widget/ui/todo_item/edit/todo_time_config_card.dart';
import 'package:dls_one/features/todo/widget/ui/todo_time_config_picker/repeat_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

/// Return [TodoTimeConfig] on [Navigator.pop].
class NarrowTodoTimeConfigPicker extends StatefulWidget {
  const NarrowTodoTimeConfigPicker({
    required this.initialConfig,
    super.key,
  });

  final TodoTimeConfig initialConfig;

  @override
  State<NarrowTodoTimeConfigPicker> createState() =>
      _NarrowTodoTimeConfigPickerState();
}

class _NarrowTodoTimeConfigPickerState
    extends State<NarrowTodoTimeConfigPicker> {
  late TodoTimeConfig _config = widget.initialConfig;

  TodoTimeConfig get config => _config;

  set config(TodoTimeConfig value) {
    setState(() {
      _config = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: 16.w) + EdgeInsets.only(top: 21.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Assets.icons.back.svg(
                    width: 18.w,
                    height: 18.h,
                  ),
                ),
                SizedBox(width: 14.w),
                Text(
                  S.current.dateAndTime,
                  style: AppBarTheme.of(context).titleTextStyle,
                ),
                const Spacer(),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(config);
                  },
                  child: Text(S.current.save),
                )
              ],
            ),
            SizedBox(
              height: 250.h,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 10.0.h,
                ),
                child: SfDateRangePicker(
                  initialSelectedDate: config.startTime,
                  initialDisplayDate: config.startTime,
                  minDate: DateTime.now(),
                  showNavigationArrow: true,
                  selectionRadius: 23.w,
                  toggleDaySelection: true,
                  viewSpacing: 20.h,
                  headerStyle: DateRangePickerHeaderStyle(
                    textStyle: context.ts_s14h22_4w400.apply(
                      color: context.c_text,
                    ),
                  ),
                  monthCellStyle: DateRangePickerMonthCellStyle(
                    weekendTextStyle: context.ts_s12h14w400.apply(
                      color: context.c_text_grey,
                    ),
                    todayCellDecoration: const BoxDecoration(),
                  ),
                  monthViewSettings: DateRangePickerMonthViewSettings(
                    firstDayOfWeek: 1,
                    enableSwipeSelection: false,
                    showTrailingAndLeadingDates: true,
                    weekNumberStyle: DateRangePickerWeekNumberStyle(
                      textStyle: context.ts_s12h14w400.apply(
                        color: context.c_text,
                      ),
                    ),
                    viewHeaderStyle: DateRangePickerViewHeaderStyle(
                      textStyle: context.ts_s12h14w400.apply(
                        color: context.c_placeholder,
                      ),
                    ),
                  ),
                  backgroundColor: Colors.transparent,
                  selectionShape: DateRangePickerSelectionShape.rectangle,
                  onSelectionChanged: (args) {
                    final value = args.value;
                    if (value is DateTime) {
                      config = config.copyWith(
                        startTime: config.startTime.applyDay(value),
                        expireTime: config.expireTime.applyDay(value),
                      );
                    }
                  },
                ),
              ),
            ),
            SizedBox(height: 16.h),
            _ConfigSettingsButton(
              onSave: (value) {
                if (value == null) {
                  config = config.copyWith(
                    isFullDay: true,
                  );
                } else {
                  config = config.copyWith(
                    isFullDay: false,
                    startTime: config.startTime.applyTime(value.start),
                    expireTime: config.startTime.applyTime(value.end),
                  );
                }
              },
              value: config.isFullDay
                  ? null
                  : TimeOfDayRange(
                      config.startTime.timeOfDay(),
                      config.expireTime.timeOfDay(),
                    ),
              getNewValue: (currentValue) async {
                final start = await showTimePicker(
                  context: context,
                  initialTime: config.startTime.timeOfDay(),
                  initialEntryMode: TimePickerEntryMode.dialOnly,
                  cancelText: S.current.cancel,
                  confirmText: S.current.next,
                  helpText: S.current.startTime,
                );

                if (start == null || !context.mounted) {
                  return currentValue;
                }

                final end = await showTimePicker(
                  context: context,
                  initialTime: config.expireTime.timeOfDay(),
                  initialEntryMode: TimePickerEntryMode.dialOnly,
                  cancelText: S.current.cancel,
                  confirmText: S.current.save,
                  helpText: S.current.endTime,
                );

                if (end == null) {
                  return currentValue;
                }

                return TimeOfDayRange(start, end);
              },
              buildLabel: (value) => value.timeLabel(),
              title: S.current.addTime,
              asset: Assets.icons.clockEight.path,
            ),
            SizedBox(height: 12.h),
            _ConfigSettingsButton<Repeat>(
              onSave: (value) {
                config = config.applyRepeat(value);
              },
              value: config.repeat,
              getNewValue: (currentValue) => showRepeatModalSheet(
                context: context,
                initialValue: currentValue,
              ).then((value) => value?.normalized),
              buildLabel: (value) => value.label,
              title: S.current.addRepeat,
              asset: Assets.icons.sync1.path,
            ),
          ],
        ),
      ),
    );
  }
}

extension on Repeat {
  Repeat? get normalized => map(
        daily: (value) => value,
        weekly: (value) => value.dayNumbers.isEmpty ? null : value,
        monthly: (value) => value,
      );
}

extension on Repeat {
  static final _dayNames = [
    S.current.monday,
    S.current.tuesday,
    S.current.wednesday,
    S.current.thursday,
    S.current.friday,
    S.current.saturday,
    S.current.sunday,
  ];

  String get label => when(
        daily: () => S.current.daily,
        weekly: (days) => days.map((e) => _dayNames[e]).join(', '),
        monthly: (month, day) =>
            S.current.monthlyDescription(month, _dayNames[day - 1]),
      );
}

class TimeOfDayRange {
  TimeOfDayRange(this.start, this.end);

  final TimeOfDay start;
  final TimeOfDay end;

  String timeLabel({bool needPad = true}) {
    return '${start.formatted(needPad: needPad)} - ${end.formatted(needPad: needPad)}';
  }
}

class _ConfigSettingsButton<T extends Object> extends StatelessWidget {
  const _ConfigSettingsButton({
    required this.onSave,
    required this.getNewValue,
    required this.buildLabel,
    required this.title,
    required this.asset,
    this.value,
    super.key,
  });

  final ValueSetter<T?> onSave;
  final Future<T?> Function(T?) getNewValue;
  final T? value;
  final String Function(T value) buildLabel;
  final String title;
  final String asset;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () async {
        final newValue = await getNewValue(value);

        onSave(newValue);
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            asset,
            width: 18.r,
            height: 18.r,
            color: context.c_blue,
          ),
          SizedBox(width: 7.w),
          if (value != null)
            Expanded(child: Text(buildLabel(value!)))
          else
            Text(title),
          if (value != null)
            GestureDetector(
              onTap: () {
                onSave(null);
              },
              child: Assets.icons.close.svg(width: 16.w, height: 16.h),
            ),
        ],
      ),
    );
  }
}
