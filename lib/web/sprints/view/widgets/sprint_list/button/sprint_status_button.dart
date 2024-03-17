import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/sprints/sprints.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rest_api/rest_api.dart';

class SprintStatusButton extends StatelessWidget {
  const SprintStatusButton({
    required this.status,
    this.onChanged,
    this.height,
    super.key,
  });

  final ValueChanged<SprintStatus?>? onChanged;
  final SprintStatus status;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return DlsDropDownButton(
      items: SprintStatus.values,
      value: status,
      onChanged: onChanged,
      dropdownWidth: 150.w,
      button: Container(
        height: height ?? 32.h,
        padding: EdgeInsets.symmetric(horizontal: 8.w),
        decoration: BoxDecoration(
          border: Border.all(color: status.iconColor(context), width: 1.w),
          borderRadius: BorderRadius.circular(4.r),
        ),
        child: Center(
          child: Text(
            status.text(),
            style: context.ts_s14h14w400.copyWith(
              color: status.iconColor(context),
            ),
          ),
        ),
      ),
      itemBuilder: (status){
        return Container(
          height: 24.w,
          padding: EdgeInsets.symmetric(horizontal: 8.w),
          child: Row(
            children: [
              SvgPicture.asset(status.asset()),
              SizedBox(width: 4.w),
              Text(
                status.text(),
                style: context.ts_s12h14w400.copyWith(
                  color: status.iconColor(context),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
