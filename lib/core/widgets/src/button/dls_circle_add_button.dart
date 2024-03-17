import 'package:dls_one/core/core.dart';
import 'package:dls_one/core/widgets/dls_layout_item_builder.dart';
import 'package:flutter/material.dart';

class DlsCircleAddButton extends StatelessWidget {
  const DlsCircleAddButton({this.onTap, super.key, this.icon});

  final VoidCallback? onTap;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24.h,
      width: 24.w,
      child: DLSPlusIconButton(
        backgroundColor: Colors.transparent,
        borderColor: context.c_grey_stoke,
        icon: icon,
        onTap: onTap,
        horizontalPad:
            DLSLayoutItemBuilder<double>.values(wide: 6, narrow: 0)(),
        verticalPad: DLSLayoutItemBuilder<double>.values(wide: 6, narrow: 0)(),
      ),
    );
  }
}
