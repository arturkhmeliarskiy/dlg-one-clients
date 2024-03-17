import 'package:dls_one/core/core.dart';
import 'package:dls_one/utils/src/formatters.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class MobileFilerDeadlineContent extends StatefulWidget {
  const MobileFilerDeadlineContent({
    required this.onChangeDeadline,
    super.key,
  });

  final void Function(DateTime, DateTime) onChangeDeadline;

  @override
  State<MobileFilerDeadlineContent> createState() =>
      _MobileFilerDeadlineContentState();
}

class _MobileFilerDeadlineContentState
    extends State<MobileFilerDeadlineContent> {
  DateTime startDate = DateTime(0);
  DateTime endDate = DateTime(0);

  UniqueKey key = UniqueKey();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Container(
      color: Colors.white,
      height: height * 0.8,
      child: Column(
        children: [
          SizedBox(
            height: 52.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Row(
                    children: [
                      SizedBox(
                        width: 16.w,
                      ),
                      Assets.icons.angleLeft.svg(
                        color: context.c_text_grey,
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Text(
                        S.current.deadline,
                        style: context.ts_s14h16_4w500,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 16.w),
                  child: GestureDetector(
                    onTap: () {
                      widget.onChangeDeadline(startDate, endDate);
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      S.current.apply,
                      style: context.ts_s14h22_4w400.copyWith(
                        color: context.c_blue,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(
                          left: 16.w,
                          right: 4.w,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              S.current.start_date,
                              style: context.ts_s14h22_4w400.copyWith(
                                color: context.c_text_grey,
                              ),
                            ),
                            SizedBox(
                              height: 8.h,
                            ),
                            Container(
                              height: 32.h,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: context.c_grey_stoke,
                                ),
                                borderRadius: BorderRadius.circular(5.r),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 8.w,
                                    ),
                                    child: Text(
                                      startDate != DateTime(0)
                                          ? formatDateMonthYear(startDate)
                                          : '',
                                      style: context.ts_s14h22_4w400,
                                    ),
                                  ),
                                  if (startDate != DateTime(0))
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          startDate = DateTime(0);
                                          key = UniqueKey();
                                        });
                                      },
                                      child: Padding(
                                        padding: EdgeInsets.all(8.r),
                                        child: Assets.icons.times1.svg(),
                                      ),
                                    )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(
                          right: 16.w,
                          left: 4.w,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              S.current.end_date,
                              style: context.ts_s14h22_4w400.copyWith(
                                color: context.c_text_grey,
                              ),
                            ),
                            SizedBox(
                              height: 8.h,
                            ),
                            Container(
                              height: 32.h,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: context.c_grey_stoke,
                                ),
                                borderRadius: BorderRadius.circular(5.r),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 8.w),
                                    child: Text(
                                      endDate != DateTime(0)
                                          ? formatDateMonthYear(endDate)
                                          : '',
                                      style: context.ts_s14h22_4w400,
                                    ),
                                  ),
                                  if (endDate != DateTime(0))
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          endDate = DateTime(0);
                                          key = UniqueKey();
                                        });
                                      },
                                      child: Padding(
                                        padding: EdgeInsets.all(8.r),
                                        child: Assets.icons.times1.svg(),
                                      ),
                                    )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Expanded(
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      return Container(
                        height: constraints.maxHeight,
                        margin: EdgeInsets.symmetric(
                          horizontal: 16.5.w,
                        ),
                        child: SfDateRangePicker(
                          key: key,
                          viewSpacing: 50.h,
                          initialSelectedDates: [startDate, endDate],
                          initialSelectedRange:
                              PickerDateRange(startDate, endDate),
                          enableMultiView: true,
                          headerStyle: const DateRangePickerHeaderStyle(
                            backgroundColor: Colors.transparent,
                          ),
                          navigationDirection:
                              DateRangePickerNavigationDirection.vertical,
                          selectionMode: DateRangePickerSelectionMode.range,
                          monthViewSettings:
                              const DateRangePickerMonthViewSettings(
                            enableSwipeSelection: false,
                          ),
                          selectionShape:
                              DateRangePickerSelectionShape.rectangle,
                          showNavigationArrow: true,
                          selectionRadius: 4.r,
                          onSelectionChanged: (dateSelect) {
                            if (dateSelect.value is PickerDateRange) {
                              setState(() {
                                startDate =
                                    (dateSelect.value as PickerDateRange)
                                            .startDate ??
                                        DateTime(0);
                                endDate = (dateSelect.value as PickerDateRange)
                                        .endDate ??
                                    DateTime(0);
                              });
                            }
                          },
                          navigationMode: DateRangePickerNavigationMode.scroll,
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
