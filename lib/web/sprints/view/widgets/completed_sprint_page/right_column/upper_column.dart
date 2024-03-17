import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/sprints/view/widgets/completed_sprint_page/appbar/app_bar_sprint_durability.dart';
import 'package:dls_one/web/sprints/view/widgets/completed_sprint_page/appbar/app_bar_sprint_period.dart';
import 'package:flutter/material.dart';

class UpperColumn extends StatelessWidget {
  const UpperColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 12.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 16.h),
          Text(
            S.current.period,
            style: context.ts_s14h22_4w400.copyWith(
              color: context.c_text_grey,
            ),
          ),
          SizedBox(
            height: 8.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [AppbarSprintPeriod(), SizedBox.shrink()],
          ),
          SizedBox(
            height: 12.h,
          ),
          Text(
            S.current.durability,
            style: context.ts_s14h22_4w400.copyWith(
              color: context.c_text_grey,
            ),
          ),
          SizedBox(
            height: 8.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [AppbarSprintDurability(), SizedBox.shrink()],
          ),
        ],
      ),
    );
  }
}
