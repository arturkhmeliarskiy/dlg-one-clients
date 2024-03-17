import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

class DayScheduleItem<T> extends StatelessWidget {
  final DayScheduleModel<T> model;
  final Widget Function(Widget)? onMove;
  final Widget Function(Widget)? onChangeStart;
  final Widget Function(Widget)? onChangeEnd;

  const DayScheduleItem({
    super.key,
    required this.model,
    this.onMove,
    this.onChangeStart,
    this.onChangeEnd,
  });

  @override
  Widget build(BuildContext context) {
    final borderColor = model.borderColor;
    final child = Container(color: model.color ?? context.c_blue_disabled);
    if (borderColor == null) return child;
    final border = Container(width: 2, color: borderColor);
    final left = DlsPadding.only(right: 12.w, child: border);
    final right = DlsPadding.only(left: 12.w, child: border);
    return Stack(
      clipBehavior: Clip.none,
      children: [
        onMove?.call(child) ?? child,
        Positioned(
          left: 0,
          bottom: -2.h,
          top: -2.h,
          child: onChangeStart?.call(left) ?? left,
        ),
        Positioned(
          right: 0,
          bottom: -2,
          top: -2,
          child: onChangeEnd?.call(right) ?? right,
        ),
      ],
    );
  }
}
