import 'package:dls_one/core/core.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class EmployeeSectionControlPanel extends StatelessWidget {
  const EmployeeSectionControlPanel({
    required this.onSelectTap,
    required this.onCreateTap,
    super.key,
  });

  final VoidCallback onSelectTap;
  final VoidCallback onCreateTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: DottedBorder(
            strokeWidth: 2.r,
            color: context.c_blue,
            dashPattern: const <double>[2, 2],
            padding: EdgeInsets.all(1.r),
            radius: Radius.circular(4.r),
            borderType: BorderType.RRect,
            child: TextButton(
              onPressed: onSelectTap,
              style: TextButton.styleFrom(
                padding: EdgeInsets.all(12.r),
                textStyle: context.ts_s14h16_4w400,
              ),
              child: Center(
                child: Text(
                  '+ ${S.current.addExisted}',
                ),
              ),
            ),
          ),
        ),
        SizedBox(width: 10.w),
        Expanded(
          child: DottedBorder(
            strokeWidth: 2.r,
            color: context.c_blue,
            dashPattern: const <double>[2, 2],
            borderType: BorderType.RRect,
            padding: EdgeInsets.all(1.r),
            radius: Radius.circular(4.r),
            child: TextButton(
              onPressed: onCreateTap,
              style: TextButton.styleFrom(
                padding: EdgeInsets.all(12.r),
                textStyle: context.ts_s14h16_4w400,
              ),
              child: Center(
                child: Text(
                  '+ ${S.current.addNew}',
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
