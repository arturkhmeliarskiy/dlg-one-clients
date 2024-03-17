// ignore_for_file: public_member_api_docs

import 'package:dls_one/core/core.dart';
import 'package:dls_one/core/widgets/src/positioned_dialog.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

// можно использовать стандартный CalendarDatePicker
// но с большими оговорками:
// - стиль выделенного и вообще выделение дня поменять нельзя,
// - нельзя отобразить дни месяца которые не входят в отображаемый месяц

class DLSCalendarDialog extends StatelessWidget {
  const DLSCalendarDialog({
    required this.parentKey,
    required this.removeDate,
    required this.shift,
    this.initialSelectedDate,
    this.onSelectionChanged,
    this.isDeleteDate = true,
    super.key,
  });

  // для показа диалога рядом с кнопкой вызывающий этот календарь
  final GlobalKey parentKey;
  final DateTime? initialSelectedDate;
  final ValueChanged<DateRangePickerSelectionChangedArgs>? onSelectionChanged;
  final Offset shift;
  final VoidCallback removeDate;
  final bool isDeleteDate;

  @override
  Widget build(BuildContext context) {
    return PositionedDialog(
      shift: shift,
      parentKey: parentKey,
      child: SizedBox(
        height: isDeleteDate ? 290.h : 250.h,
        width: 250.w,
        child: Card(
          margin: EdgeInsets.zero,
          elevation: 0,
          child: Column(
            children: [
              SizedBox(
                height: 250.h,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.0.w,
                    vertical: 10.0.h,
                  ),
                  child: SfDateRangePicker(
                    initialSelectedDate: initialSelectedDate,
                    initialDisplayDate: initialSelectedDate,
                    showNavigationArrow: true,
                    selectionRadius: 23.w,
                    toggleDaySelection: true,
                    viewSpacing: 20.h,
                    headerStyle: DateRangePickerHeaderStyle(
                      textStyle: context.ts_s14h22_4w400.copyWith(
                        color: context.c_text,
                      ),
                    ),
                    monthCellStyle: DateRangePickerMonthCellStyle(
                      weekendTextStyle: context.ts_s12h14w400.copyWith(
                        color: context.c_text_grey,
                      ),
                      todayCellDecoration: const BoxDecoration(),
                    ),
                    monthViewSettings: DateRangePickerMonthViewSettings(
                      firstDayOfWeek: 1,
                      enableSwipeSelection: false,
                      showTrailingAndLeadingDates: true,
                      weekNumberStyle: DateRangePickerWeekNumberStyle(
                        textStyle: context.ts_s12h14w400.copyWith(
                          color: context.c_text,
                        ),
                      ),
                      viewHeaderStyle: DateRangePickerViewHeaderStyle(
                        textStyle: context.ts_s12h14w400.copyWith(
                          color: context.c_placeholder,
                        ),
                      ),
                    ),
                    backgroundColor: Colors.transparent,
                    selectionShape: DateRangePickerSelectionShape.rectangle,
                    onSelectionChanged: onSelectionChanged,
                  ),
                ),
              ),
              if (isDeleteDate)
                GestureDetector(
                  onTap: removeDate,
                  child: Text(
                    S.current.delete_date,
                    style: context.ts_s12h14w400.copyWith(
                      color: context.c_blue,
                    ),
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}
