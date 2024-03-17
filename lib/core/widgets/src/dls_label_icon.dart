import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

class DLSLabelIcon extends StatelessWidget {
  const DLSLabelIcon({
    super.key,
    this.label,
    this.labelIcon,
    this.tooltip,
  });

  final String? label;
  final String? tooltip;
  final Widget? labelIcon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        DLSHeaders.h3(label).paddingOnly(right: 8.w),
        if (labelIcon != null)
          Tooltip(
            message: tooltip,
            child: labelIcon,
          ),
      ],
    );
  }
}
