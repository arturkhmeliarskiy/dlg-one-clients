import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

class DepartmentPositionCard extends StatelessWidget {
  const DepartmentPositionCard({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4.r),
      decoration: BoxDecoration(
        color: context.c_grey_grey,
        borderRadius: BorderRadius.all(Radius.circular(4.r)),
        border: Border.all(
          width: 1.r,
          color: context.c_grey_stoke,
        ),
      ),
      child: child,
    );
  }
}
