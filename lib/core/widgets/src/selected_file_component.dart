import 'package:dls_one/core/core.dart';
import 'package:dls_one/utils/utils.dart';
import 'package:flutter/material.dart';

class SelectedFileComponent extends StatelessWidget {
  const SelectedFileComponent({
    required this.color,
    required this.fileName,
    required this.fileSize,
    this.onTapRightWidget,
    this.rightWidget,
    super.key,
  });

  /// цвет для иконки файла
  final Color color;

  /// file name
  final String fileName;

  /// file size
  final String fileSize;

  /// file extension
  String get fileExtension => fileName.split('.').last.toUpperCase();

  /// callback func
  final VoidCallback? onTapRightWidget;

  /// правый виджет вместо крестика 🤪
  final Widget? rightWidget;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44.r,
      decoration: BoxDecoration(
        color: context.c_white_text,
        border: Border.all(
          color: context.c_grey_stoke,
          width: 1.w,
        ),
        borderRadius: BorderRadius.all(Radius.circular(5.r)),
      ),
      child: Row(
        children: [
          Container(
            height: 36.r,
            width: 36.r,
            margin: EdgeInsets.only(left: 4.w, top: 4.h, bottom: 4.h),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.all(Radius.circular(3.5.r)),
            ),
            child: Text(
              fileExtension,
              style: context.ts_s10h11_7w600.copyWith(
                color: context.c_white_text,
              ),
              maxLines: 1,
              //overflow: TextOverflow.fade,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 12.w),
              child: Text(
                txt(fileName),
                style: context.ts_s14h14w400,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 12.w),
            child: Text(
              fileSize,
              style: context.ts_s14h14w400.copyWith(color: context.c_text_grey),
            ),
          ),
          if (onTapRightWidget != null)
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: onTapRightWidget,
                child: rightWidget ??
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.w),
                      child: Icon(
                        Icons.close,
                        size: 18.w,
                        color: context.c_text_grey,
                      ),
                    ),
              ),
            )
          else
            SizedBox(width: 4.w),
        ],
      ),
    );
  }
}
