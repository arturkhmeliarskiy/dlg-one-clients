import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

/// простая карточка
/// с тенью и закругленными углами
class DLSCard extends StatelessWidget {
  /// constructor
  const DLSCard({
    super.key,
    required this.child,
    this.width,
    this.height,
    this.isShadowEnabled = true,
  });

  /// внутренний виджет
  final Widget child;

  /// ширина
  final double? width;

  /// высота
  final double? height;

  /// включена ли тень
  final bool isShadowEnabled;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        boxShadow: isShadowEnabled ? context.shadow : null,
        color: context.c_white_text,
        borderRadius: BorderRadius.circular(5.r),
      ),
      child: child,
    );
  }
}
