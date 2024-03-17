import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

/// раскрашенная safearea
class DLSSafeArea extends StatelessWidget {
  /// конструктор
  const DLSSafeArea({
    super.key,
    required this.child,
    this.color,
  });

  /// внутренний виджет
  final Widget child;

  /// цвет
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: color ?? context.c_white_text,
      child: SafeArea(child: child),
    );
  }
}
