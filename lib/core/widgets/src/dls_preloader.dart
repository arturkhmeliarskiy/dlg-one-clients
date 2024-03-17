// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';

/// прелоадер
class DLSPreloader extends StatelessWidget {
  /// конструктор прелоадера
  const DLSPreloader({
    super.key,
    this.size = const Size(50, 50),
    this.strokeWidth = 1,
    this.color,
    this.isCentered = true,
  });

  final Size size;
  final double strokeWidth;
  final Color? color;
  final bool isCentered;

  @override
  Widget build(BuildContext context) {
    Widget result = SizedBox(
      width: size.width,
      height: size.height,
      child: CircularProgressIndicator(strokeWidth: strokeWidth, color: color),
    );

    if (isCentered) {
      result = Center(
        child: result,
      );
    }
    return result;
  }

  /// вернет новый экземпляр своего класса
  static Widget get newDLS => const DLSPreloader();

  static Widget get notCenter => const DLSPreloader(isCentered: false);
}
