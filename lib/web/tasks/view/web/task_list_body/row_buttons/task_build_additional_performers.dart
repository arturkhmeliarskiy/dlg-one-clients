import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

class TaskBuildAdditionalPerformers extends StatelessWidget {
  const TaskBuildAdditionalPerformers({
    super.key,
    required this.count,
  });

  final int count;

  @override
  Widget build(BuildContext context) {
    if (count > 2) {
      return Align(
        alignment: Alignment.centerLeft,
        child: Container(
          height: 24.h,
          width: 24.w,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100.r),
            color: context.c_grey_hover,
          ),
          child: Text(
            count - 2 > 9 ? '+9' : '+${count - 2}',
            style: context.ts_s10h11_7w400.copyWith(color: context.c_text_grey),
          ),
        ).paddingOnly(left: 16.w * 2),
      );
    }
    return Container();
  }
}
