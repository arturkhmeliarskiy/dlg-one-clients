import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

class Tag extends StatefulWidget {
  const Tag({
    required this.delete,
    this.title = '',
    super.key,
  });

  final String title;
  final void Function()? delete;

  @override
  State<Tag> createState() => _TagState();
}

class _TagState extends State<Tag> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24,
      child: InputChip(
        padding: EdgeInsets.only(bottom: 8.h, left: 8.w, right: 8.w),
        label: Text(
          widget.title,
          style: context.ts_s12h14w400.copyWith(
            color: context.c_text_grey,
          ),
        ),
        selected: _isSelected,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(4.r)),
        ),
        backgroundColor: context.c_grey_stoke,
        deleteIcon: Assets.icons.times1.svg(
          height: 15.0.h,
          colorFilter: context.c_text_grey_color_filter,
        ),
        onDeleted: widget.delete,
      ),
    );
  }
}
