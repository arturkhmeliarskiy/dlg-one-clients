import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/sprints/sprints.dart';
import 'package:flutter/material.dart';
import 'package:rest_api/rest_api.dart';

class MobileCreateTaskSprintItem extends StatelessWidget {
  const MobileCreateTaskSprintItem({
    required this.sprint,
    this.onTap,
    super.key,
  });

  final DlsSprintModel sprint;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      style: TextButton.styleFrom(
        padding: EdgeInsets.all(12.r),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(4.r)),
        ),
        side: BorderSide(color: context.c_grey_hover),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Assets.icons.subtract.svg(
                height: 15.0.h,
                color: context.c_text_grey,
              ),
              SizedBox(width: 8.w),
              Expanded(
                child: Text(
                  sprint.title,
                  style: context.ts_s14h22_4w400.copyWith(
                    color: context.c_text,
                    height: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
              SizedBox(width: 4.w),
              Assets.icons.ellipsisV1.svg(
                colorFilter: context.c_text_grey_color_filter,
              )
            ],
          ),
          SizedBox(height: 8.h),
          SizedBox(
            height: 24.h,
            child: Row(
              children: [
                SprintStatusButton(status: sprint.status),
                if (sprint.startAt != null && sprint.expiredAt != null)
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: SprintDatePeriodView(
                        start: sprint.startAt!,
                        end: sprint.expiredAt!,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
