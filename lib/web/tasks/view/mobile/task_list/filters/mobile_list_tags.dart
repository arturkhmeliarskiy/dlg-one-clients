import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

class MobileListTags {
  static Widget listTags(
    List<String> selectedItems,
    BuildContext context, {
    int count = 2,
  }) {
    Widget result = const SizedBox();
    for (var i = 0; i < selectedItems.length; i++) {
      if (selectedItems.length == 1) {
        result = Container(
          height: 24.h,
          padding: EdgeInsets.only(
            left: 8.w,
            right: 8.w,
            top: 5.h,
            bottom: 5.h,
          ),
          decoration: BoxDecoration(
            color: context.c_grey_stoke,
            borderRadius: BorderRadius.circular(5.r),
          ),
          child: Text(selectedItems[i]),
        );
      } else if (i < count && selectedItems.length != 1) {
        result = Row(
          children: [
            result,
            Container(
              height: 24.h,
              padding: EdgeInsets.only(
                left: 8.w,
                right: 8.w,
                top: 5.h,
                bottom: 5.h,
              ),
              margin: EdgeInsets.only(left: 6.w),
              decoration: BoxDecoration(
                color: context.c_grey_stoke,
                borderRadius: BorderRadius.circular(5.r),
              ),
              child: Text(selectedItems[i]),
            ),
          ],
        );
      }
    }
    if (selectedItems.length > count) {
      result = Row(
        children: [
          result,
          Container(
            height: 24.h,
            padding: EdgeInsets.only(
              left: 8.w,
              right: 8.w,
              top: 5.h,
              bottom: 5.h,
            ),
            margin: EdgeInsets.only(left: 6.w),
            decoration: BoxDecoration(
              color: context.c_grey_stoke,
              borderRadius: BorderRadius.circular(5.r),
            ),
            child: Text('+${selectedItems.length - 1}'),
          ),
        ],
      );
    }
    return result;
  }
}
