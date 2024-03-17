import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

@immutable
class WeekCarousel extends StatelessWidget {
  const WeekCarousel({
    required this.controller,
    required this.hasEvents,
    required this.selectedDate,
    required this.startDate,
    super.key,
  });

  static const pageSize = 7;

  final ValueNotifier<int> controller;
  final bool Function(DateTime) hasEvents;
  final DateTime startDate;
  final ValueNotifier<DateTime> selectedDate;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final itemWidth = constraints.maxWidth / pageSize;

        return _Carousel(
          controller: controller,
          startDate: startDate,
          itemSize: Size(itemWidth, 50.h),
          selectedDate: selectedDate,
          hasEvents: hasEvents,
        );
      },
    );
  }
}

@immutable
class _Carousel extends StatefulWidget {
  const _Carousel({
    required this.controller,
    required this.itemSize,
    required this.startDate,
    required this.selectedDate,
    required this.hasEvents,
  });

  final ValueNotifier<int> controller;
  final ValueNotifier<DateTime> selectedDate;
  final bool Function(DateTime) hasEvents;
  final Size itemSize;
  final DateTime startDate;

  @override
  State<_Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<_Carousel> {
  final PageController controller = PageController();

  ValueNotifier<int> get _weekShifts => widget.controller;

  void _shiftListener() {
    controller.animateToPage(
      _weekShifts.value,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeIn,
    );
  }

  @override
  void initState() {
    super.initState();
    _weekShifts.addListener(_shiftListener);
  }

  @override
  void dispose() {
    controller.dispose();
    _weekShifts.removeListener(_shiftListener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.itemSize.height,
      child: ValueListenableBuilder(
        valueListenable: widget.selectedDate,
        builder: (context, value, child) => PageView.builder(
          controller: controller,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, weekIndex) {
            return Row(
              children: List.generate(
                WeekCarousel.pageSize,
                (index) {
                  final date = widget.startDate.add(
                    Duration(
                      days: weekIndex * WeekCarousel.pageSize + index,
                    ),
                  );
                  return SizedBox(
                    width: widget.itemSize.width,
                    child: _DayWidget(
                      isSelected: date.isSameDayWith(widget.selectedDate.value),
                      hasEvents: widget.hasEvents(date),
                      date: date,
                      onTap: () {
                        widget.selectedDate.value = date;
                      },
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}

@immutable
class _DayWidget extends StatelessWidget {
  const _DayWidget({
    required this.isSelected,
    required this.date,
    required this.hasEvents,
    required this.onTap,
  });

  final DateTime date;
  final bool isSelected;
  final bool hasEvents;
  final VoidCallback onTap;

  String get _dayName =>
      DateFormat(DateFormat.ABBR_WEEKDAY).format(date).capitalize();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(5.r),
      ),
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Spacer(flex: 4),
          Center(
            child: Text(
              _dayName,
              style: context.ts_s12h14w400.copyWith(
                color: context.c_text_grey,
              ),
            ),
          ),
          const Spacer(flex: 4),
          Center(
            child: Column(
              children: [
                SizedBox(height: 3.h),
                Text(
                  date.day.toString(),
                  style: context.ts_s14h14w400.copyWith(
                    height: 1,
                    color: isSelected ? context.c_blue : null,
                  ),
                ),
                SizedBox.square(
                  dimension: 3.h,
                  child: hasEvents
                      ? DecoratedBox(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: isSelected
                                ? context.c_blue
                                : context.c_text_grey,
                          ),
                        )
                      : null,
                )
              ],
            ),
          ),
          const Spacer(flex: 7),
          SizedBox(
            height: 2.h,
            child: isSelected ? ColoredBox(color: context.c_blue) : null,
          ),
        ],
      ),
    );
  }
}
