import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

class TaskBuildEditButton extends StatelessWidget {
  const TaskBuildEditButton({
    super.key,
    required this.onEdit,
  });

  final VoidCallback onEdit;

  @override
  Widget build(BuildContext context) {
    return DLSPlusIconButton(
      icon: Assets.icons.webTaskPenGrey.svg(),
      tooltip: S.current.rename,
      horizontalPad: 3.w,
      verticalPad: 3.h,
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.r),
        ),
      ),
      onTap: onEdit,
    ).paddingOnly(left: 9.w);
  }
}
