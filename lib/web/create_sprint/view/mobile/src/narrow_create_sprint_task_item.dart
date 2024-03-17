import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';
import 'package:rest_api/rest_api.dart';

class NarrowCreateSprintTaskItem extends StatelessWidget {
  const NarrowCreateSprintTaskItem({
    required this.task,
    required this.onTap,
    required this.onMoveTap,
    this.backlog = true,
    super.key,
  });

  final DlsTasks task;
  final VoidCallback onTap;
  final VoidCallback onMoveTap;
  final bool backlog;

  @override
  Widget build(BuildContext context) {
    var asset = Assets.icons.cornerUpRight;
    var text = S.current.toSprint;
    if(!backlog){
      asset = Assets.icons.cornerUpLeft;
      text = S.current.toBacklog;
    }
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
              // TODO confiug type
              Assets.icons.issue.svg(
                height: 15.0.h,
                color: context.c_text_grey,
              ),
              SizedBox(width: 8.w),
              Expanded(
                child: Text(
                  task.title,
                  style: context.ts_s14h22_4w400.copyWith(
                    color: context.c_text,
                    height: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
              SizedBox(width: 8.w),
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
                PriorityButton(
                  priority: task.priority ?? TaskPriorityType.unknown,
                  onTapPriority: (v) {
                    // TODO set callback or make nullable
                  },
                  isFullButton: false,
                  isBackgroundColor: true,
                  width: 24.w,
                  margin: EdgeInsets.zero,
                ),
                SizedBox(width: 8.w),
                Assets.icons.storyPoints.svg(
                  colorFilter: context.c_text_grey_color_filter,
                ),
                SizedBox(width: 4.w),
                Text(
                  task.storyPoints?.toString() ?? '0',
                  style: context.ts_s14h22_4w400.copyWith(
                    height: 1.2,
                    color: context.c_text_grey,
                  ),
                ),
                const Spacer(),
                TextButton(
                  onPressed: onMoveTap,
                  child: Row(
                    children: [
                      asset.svg(),
                      SizedBox(width: 4.w),
                      Text(
                        text,
                        style: context.ts_s12h14w400,
                      ),
                    ],
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
