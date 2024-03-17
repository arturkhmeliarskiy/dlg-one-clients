import 'package:dls_one/core/core.dart';
import 'package:dls_one/core/widgets/src/dls_calendar_dialog.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateSelectPicker extends StatefulWidget {
  const DateSelectPicker({
    required this.onSelectDate,
    this.isActiveDate = false,
    this.dateTime,
    this.enabled = true,
    super.key,
  });

  final bool isActiveDate;
  final ValueSetter<DateTime> onSelectDate;
  final DateTime? dateTime;
  final bool enabled;

  @override
  State<DateSelectPicker> createState() => _DateSelectPickerState();
}

class _DateSelectPickerState extends State<DateSelectPicker> {
  DateTime dateTime = DateTime.now();
  final GlobalKey _widgetKey = GlobalKey();
  bool isActiveDate = false;

  @override
  void initState() {
    super.initState();
    isActiveDate = widget.isActiveDate;
    final date = widget.dateTime;
    if (date == null) {
      return;
    }
    dateTime = date;
  }

  @override
  void didUpdateWidget(covariant DateSelectPicker oldWidget) {
    isActiveDate = widget.isActiveDate;
    dateTime = widget.dateTime ?? DateTime.now();
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        key: _widgetKey,
        hoverColor: context.c_grey_hover,
        borderRadius: BorderRadius.all(Radius.circular(4.r)),
        onTap: () {
          showDialog<void>(
            barrierColor: Colors.transparent,
            context: context,
            builder: (context) {
              return DLSCalendarDialog(
                parentKey: _widgetKey,
                initialSelectedDate: dateTime,
                shift: const Offset(0.025, -0.5),
                onSelectionChanged: (date) {
                  final value = date.value;
                  if (value is DateTime) {
                    setState(() {
                      dateTime = value;
                      widget.onSelectDate(dateTime);
                      isActiveDate = true;
                    });
                  }
                },
                removeDate: () {},
              );
            },
          );
        },
        child: Container(
          width: 158.w,
          height: 32.h,
          decoration: BoxDecoration(
            color:
                !widget.enabled ? context.c_grey_hover : context.c_white_text,
            borderRadius: BorderRadius.all(Radius.circular(4.r)),
            border: Border.all(color: context.c_grey_stoke),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 9.5.w,
                  ),
                  Assets.icons.calender.svg(
                    width: 15.w,
                    height: 15.h,
                    color: isActiveDate
                        ? context.c_text_grey
                        : context.c_placeholder,
                  ),
                  SizedBox(
                    width: 5.5.w,
                  ),
                  if (isActiveDate)
                    Transform.translate(
                      offset: const Offset(0, -1),
                      child: Text(
                        DateFormat('dd.MM.yyyy').format(dateTime),
                        style: context.ts_s14h22_4w400
                            .apply(color: context.c_text),
                      ),
                    )
                  else
                    Transform.translate(
                      offset: const Offset(0, -1),
                      child: Text(
                        S.current.not_selected,
                        style: context.ts_s14h22_4w400.apply(
                          color: context.c_placeholder,
                        ),
                      ),
                    )
                ],
              ),
              Container(
                height: 24.h,
                width: 24.h,
                margin: EdgeInsets.only(right: 10.w),
                padding: EdgeInsets.all(3.r),
                child: Assets.icons.angleDown1.svg(
                  height: 12.h,
                  color: context.c_text_grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
