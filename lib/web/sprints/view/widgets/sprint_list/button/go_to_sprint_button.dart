import 'package:dls_one/common/gen/assets/assets.gen.dart';
import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

class GoToSprintButton extends StatelessWidget {
  const GoToSprintButton({super.key, required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          Assets.icons.arrowCorner.svg(),
          SizedBox(width: 4.w),
          Text(
            S.current.goToSprint,
            style: context.ts_s14h14w400.copyWith(color: context.c_blue),
          )
        ],
      ),
    );
  }
}
