import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/sprints/sprints.dart';
import 'package:flutter/material.dart';
import 'package:rest_api/rest_api.dart';

class DropdownTime extends StatelessWidget {
  const DropdownTime({
    required this.duration,
    required this.onChanged,
    super.key,
  });

  final SprintDurationType duration;
  final ValueChanged<SprintDurationType> onChanged;

  @override
  Widget build(BuildContext context) {
    return DlsDropDownButton<SprintDurationType>(
      items: SprintDurationType.values,
      value: duration,
      onFormat: (v) => v?.text(),
      onChanged: (v) {
        if (v == null) {
          return;
        }
        onChanged(v);
      },
      button: Container(
        width: 164.w,
        height: 32.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(4.r)),
          border: Border.all(color: context.c_grey_stoke),
        ),
        child: Row(
          children: [
            SizedBox(width: 8.w),
            Text(
              duration.text(),
              style: context.ts_s14h22_4w400.copyWith(
                color: context.c_text,
                height: 1,
              ),
            ),
            const Spacer(),
            Assets.icons.angleDown1.svg(
              height: 18.h,
              color: context.c_text_grey,
            ),
            SizedBox(width: 8.w),
          ],
        ),
      ),
    );
  }
}
