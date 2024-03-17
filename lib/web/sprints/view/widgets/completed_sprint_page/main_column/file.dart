import 'package:dls_one/core/core.dart';
import 'package:dls_one/core/widgets/dls_page_builder.dart';
import 'package:flutter/material.dart';

class FileWidget extends StatefulWidget {
  // TODO extract to core/widgets, to make it reusable
  const FileWidget({
    super.key,
    this.type = '',
    this.title = '',
    this.size = '',
    required this.onTap,
    required this.deleteFile,
  });

  final VoidCallback onTap;
  final VoidCallback deleteFile;
  final String type;
  final String title;
  final String size;

  @override
  State<FileWidget> createState() => _FileWidgetState();
}

class _FileWidgetState extends State<FileWidget> {
  @override
  Widget build(BuildContext context) {
    final child = InkWell(
      onHover: (value) {
        widget.onTap();
      },
      borderRadius: BorderRadius.all(Radius.circular(5.r)),
      hoverColor: context.c_grey_hover,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 36.r,
                height: 36.r,
                margin: EdgeInsets.only(
                  top: 4.r,
                  left: 4.r,
                  bottom: 4.r,
                ),
                decoration: BoxDecoration(
                  color: colorFile(widget.type),
                  borderRadius: BorderRadius.all(Radius.circular(5.r)),
                ),
                alignment: Alignment.center,
                child: Text(
                  widget.type.toUpperCase(),
                  style: context.ts_s10h12w600.copyWith(
                    color: context.c_white_text,
                  ),
                ),
              ),
              SizedBox(
                width: 8.w,
              ),
              SizedBox(
                width: 139.w,
                child: Text(
                  widget.title,
                  overflow: TextOverflow.ellipsis,
                ),
              )
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 55.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Flexible(
                      child: Text(
                        widget.size,
                        style: context.ts_s14h22_4w400.copyWith(
                          color: context.c_text_grey,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                    ),
                    Text(
                      ' KB',
                      style: context.ts_s14h22_4w400.copyWith(
                        color: context.c_text_grey,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 12.w),
              GestureDetector(
                onTap: () {
                  widget.deleteFile();
                },
                child: Assets.icons.times1.svg(
                  height: 15.0.h,
                  color: context.c_text_grey,
                ),
              ),
              SizedBox(width: 16.w),
            ],
          )
        ],
      ),
    );
    return DLSPageBuilder(
      wide: Container(
        margin: EdgeInsets.only(top: 8.h, left: 10.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5.r)),
          border: Border.all(color: context.c_grey_stoke),
        ),
        width: 280.w,
        child: child,
      ),
      narrow: DecoratedBox(
        decoration: BoxDecoration(
          border: Border.all(color: context.c_grey_hover),
          borderRadius: BorderRadius.circular(4.r),
        ),
        child: child,
      ),
    );
  }

  Color colorFile(String type) {
    var color = context.c_green;
    switch (type) {
      case 'doc':
      case 'docx':
        color = context.c_blue;
        break;
      case 'xls':
      case 'xlsx':
        color = context.c_green;
        break;
      case 'pdf':
        color = context.c_red;
        break;
      case 'zip':
      case 'flv':
      case 'epub':
      case 'txt':
        color = context.c_placeholder;
        break;
      case 'pptx':
        color = context.c_orange;
        break;
      default:
        color = context.c_green;
    }
    return color;
  }
}
