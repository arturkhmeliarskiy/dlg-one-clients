import 'package:dls_one/core/core.dart';
import 'package:dls_one/utils/utils.dart';
import 'package:flutter/material.dart';

/// headers
class DLSHeaders extends StatelessWidget {
  /// constr
  const DLSHeaders(
    this.text,
    this.type, {
    super.key,
    this.color,
    this.maxLines,
  });

  /// заголовок 1 уровня
  factory DLSHeaders.h1(
    String? text, {
    Color? color,
    int? maxLines,
  }) =>
      DLSHeaders(
        text,
        DLSHeaderType.h1,
        color: color,
        maxLines: maxLines,
      );

  /// заголовок 2 уровня
  factory DLSHeaders.h2(
    String? text, {
    Color? color,
    int? maxLines,
  }) =>
      DLSHeaders(
        text,
        DLSHeaderType.h2,
        color: color,
        maxLines: maxLines,
      );

  /// заголовок 3 уровня
  factory DLSHeaders.h3(
    String? text, {
    Color? color,
    int? maxLines,
  }) =>
      DLSHeaders(
        text,
        DLSHeaderType.h3,
        color: color,
        maxLines: maxLines,
      );

  /// header text
  final String? text;
  final Color? color;
  final int? maxLines;

  /// тип заголовка
  final DLSHeaderType type;

  @override
  Widget build(BuildContext context) {
    TextStyle? style;
    switch (type) {
      case DLSHeaderType.h1:
        style = context.ts_s18h21w500.copyWith(color: color ?? context.c_text);
        break;
      case DLSHeaderType.h2:
        style = context.ts_s18h21w500.copyWith(color: color ?? context.c_text);
        break;
      case DLSHeaderType.h3:
        style = context.ts_s14h16_4w500.copyWith(color: color ?? context.c_text);
        break;
    }
    return Text(
      txt(text),
      style: style,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      textHeightBehavior:
          const TextHeightBehavior(applyHeightToFirstAscent: false),
    );
  }
}

enum DLSHeaderType { h1, h2, h3 }
