import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/todo/widget/ui/week_calendart.dart/month_picker.dart';
import 'package:dls_one/features/todo/widget/ui/week_calendart.dart/week_carousel.dart';
import 'package:flutter/material.dart';

class WeekCalendar extends StatefulWidget {
  const WeekCalendar({
    required this.controller,
    required this.hasEvents,
    required this.startDate,
    this.carouselPadding = const EdgeInsets.symmetric(horizontal: 20),
    this.controlPanelPadding = const EdgeInsets.symmetric(horizontal: 15),
    super.key,
  });

  final EdgeInsets carouselPadding;
  final EdgeInsets controlPanelPadding;
  final ValueNotifier<DateTime> controller;
  final bool Function(DateTime) hasEvents;
  final DateTime startDate;

  @override
  State<WeekCalendar> createState() => _WeekCalendarState();
}

class _WeekCalendarState extends State<WeekCalendar> {
  ValueNotifier<DateTime> get _dayNotifier => widget.controller;

  final ValueNotifier<int> _weekShiftNotifier = ValueNotifier<int>(0);

  @override
  void dispose() {
    _weekShiftNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: SizedBox(
            height: 1.h,
            child: const ColoredBox(color: Colors.grey),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: widget.controlPanelPadding,
              child: Row(
                children: [
                  WeekCalendarMonthPicker(
                    weekShift: _weekShiftNotifier,
                    startDate: widget.startDate,
                  ),
                  const Spacer(),
                  SizedBox.square(
                    dimension: 28.h,
                    child: ValueListenableBuilder(
                      valueListenable: _weekShiftNotifier,
                      builder: (context, value, child) => InkWell(
                        borderRadius: BorderRadius.circular(5.r),
                        onTap: value > 0
                            ? () {
                                _weekShiftNotifier.value -= 1;
                              }
                            : null,
                        child: Center(
                          child: Assets.icons.arrowLeft.svg(
                            width: 18.r,
                            height: 18.r,
                            colorFilter: ColorFilter.mode(
                              context.c_text_grey
                                  .withOpacity(value > 0 ? 1.0 : 0.5),
                              BlendMode.srcIn,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox.square(
                    dimension: 28.h,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(5.r),
                      onTap: () {
                        _weekShiftNotifier.value += 1;
                      },
                      child: Center(
                        child: Assets.icons.arrowRight.svg(
                          width: 18.r,
                          height: 18.r,
                          colorFilter: ColorFilter.mode(
                            context.c_text_grey,
                            BlendMode.srcIn,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 5.h),
            Padding(
              padding: widget.carouselPadding,
              child: WeekCarousel(
                startDate: widget.startDate,
                selectedDate: _dayNotifier,
                controller: _weekShiftNotifier,
                hasEvents: widget.hasEvents,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
