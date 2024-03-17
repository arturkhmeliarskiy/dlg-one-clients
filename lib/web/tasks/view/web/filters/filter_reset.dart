import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

class FilterReset extends StatelessWidget {
  const FilterReset({
    required this.onResetFilters,
    super.key,
  });

  final VoidCallback onResetFilters;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onResetFilters,
      child: Container(
        padding: EdgeInsets.only(left: 8.w, right: 8.w),
        height: 32.h,
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Assets.icons.angleDown2.svg(
              height: 18.h,
              width: 18.w,
            ),
            SizedBox(
              width: 4.w,
            ),
            SizedBox(
              height: 28.h,
              child: Text(
                S.current.reset_everything,
                style: context.ts_s14h22_4w400.copyWith(
                  color: context.c_blue,
                ),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
