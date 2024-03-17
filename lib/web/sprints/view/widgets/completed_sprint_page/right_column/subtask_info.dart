import 'package:auto_route/auto_route.dart';
import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

class SubtaskInfo extends StatelessWidget {
  const SubtaskInfo({
    required this.text,
    required this.margin,
    required this.isEdit,
    required this.children,
    required this.isDraggable,
    required this.leftChildren,
    this.onDelete,
    this.status = 1,
    super.key,
  });

  final String text;
  final int status;
  final EdgeInsets margin;
  final bool isEdit;
  final List<Widget> children;
  final List<Widget> leftChildren;
  final bool isDraggable;
  final VoidCallback? onDelete;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      height: 40.h,
      width: isDraggable ? 400.w : null,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(4.r),
        ),
        color: context.c_white_text,
        border: Border.all(
          color: context.c_grey_hover,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Row(
              children: [
                SizedBox(
                  width: 13.5.w,
                ),
                Assets.icons.issue.svg(
                  height: 15.0.h,
                  color: context.c_text_grey,
                ),
                SizedBox(
                  width: 9.5.w,
                ),
                Expanded(
                  child: Tooltip(
                    message: text,
                    child: Text(
                      text,
                      style: context.ts_s14h22_4w400.copyWith(
                        color: context.c_text,
                        height: 1.1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ),
                ...leftChildren,
              ],
            ),
          ),
          Row(
            children: [
              Row(
                children: children,
              ),
              if (isEdit)
                Container(
                  margin: EdgeInsets.only(right: 19.5.w),
                  child: Assets.icons.ellipsisV2.svg(),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
