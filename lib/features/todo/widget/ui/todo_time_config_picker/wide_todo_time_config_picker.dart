import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/todo/model/todo_time_config.dart';
import 'package:dls_one/features/todo/widget/ui/todo_item/edit/repeat_picker.dart';
import 'package:dls_one/features/todo/widget/ui/todo_item/edit/time_picker.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

/// Return [TodoTimeConfig] on [Navigator.pop].
class WideTodoTimeConfigPicker extends StatefulWidget {
  const WideTodoTimeConfigPicker({
    required this.initialConfig,
    super.key,
  });

  final TodoTimeConfig initialConfig;

  @override
  State<WideTodoTimeConfigPicker> createState() => _WideTodoTimeConfigPickerState();
}

class _WideTodoTimeConfigPickerState extends State<WideTodoTimeConfigPicker> {
  late TodoTimeConfig _config = widget.initialConfig;

  TodoTimeConfig get config => _config;

  set config(TodoTimeConfig value) {
    setState(() {
      _config = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: SizedBox(
        width: 300.w,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 14.w),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
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
              SizedBox(height: 10.h),
              TimePicker(
                config: config,
                onChanged: (value) {
                  config = value;
                },
              ),
              SizedBox(height: 20.h),
              RepeatPicker(
                value: config.repeat,
                onChanged: (value) {
                  config = config.copyWith(repeat: value);
                },
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10.w,
                  vertical: 20.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      style: ElevatedButtonTheme.of(context).style?.copyWith(
                            padding: MaterialStatePropertyAll(
                              EdgeInsets.symmetric(
                                vertical: 8.h,
                                horizontal: 12.h,
                              ),
                            ),
                          ),
                      onPressed: () {
                        Navigator.of(context).pop(config);
                      },
                      child: Text(S.current.save),
                    ),
                    OutlinedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text(S.current.cancel),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
