import 'package:flutter/material.dart';

class DayScheduleModel<T> {
  const DayScheduleModel({
    this.data,
    this.start,
    this.end,
    this.color,
    this.onTap,
    this.borderColor,
    this.onStartChanged,
    this.onEndChanged,
    this.onMove,
    this.onMoveEnd,
  });

  final T? data;
  final TimeOfDay? start;
  final TimeOfDay? end;
  final Color? color;
  final Color? borderColor;
  final VoidCallback? onTap;
  final ValueChanged<TimeOfDay>? onStartChanged;
  final ValueChanged<TimeOfDay>? onEndChanged;
  final ValueChanged<TimeOfDay>? onMove;
  final VoidCallback? onMoveEnd;
}
