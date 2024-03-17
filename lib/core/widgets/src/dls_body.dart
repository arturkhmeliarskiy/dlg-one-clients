import 'package:dls_one/core/core.dart';
import 'package:dls_one/utils/utils.dart';
import 'package:flutter/material.dart';

/// body
class DLSBody extends StatelessWidget {
  /// constr
  DLSBody(
    this.text,
    this.type, {
    super.key,
    this.color,
    this.maxLines,
    this.overflow,
  });

  /// текст тела уведомления
  factory DLSBody.notification(
    String? text, {
    Color? color,
    int? maxLines,
    bool? overflow,
  }) =>
      DLSBody(
        text,
        DLSBodyType.notification,
        color: color,
        maxLines: maxLines,
        overflow: overflow,
      );

  factory DLSBody.s12(
    String? text, {
    Color? color,
    int? maxLines,
    bool? overflow,
  }) =>
      DLSBody(
        text,
        DLSBodyType.s12,
        color: color,
        maxLines: maxLines,
        overflow: overflow,
      );

  factory DLSBody.s14(
    String? text, {
    Color? color,
    int? maxLines,
    bool? overflow,
  }) =>
      DLSBody(
        text,
        DLSBodyType.s14,
        color: color,
        maxLines: maxLines,
        overflow: overflow,
      );

  factory DLSBody.s1421(
    String? text, {
    Color? color,
    int? maxLines,
    bool? overflow,
  }) =>
      DLSBody(
        text,
        DLSBodyType.s1421,
        color: color,
        maxLines: maxLines,
        overflow: overflow,
      );

  /// минимальный размер
  factory DLSBody.smallest(
    String? text, {
    Color? color,
    int? maxLines,
    bool? overflow,
  }) =>
      DLSBody(
        text,
        DLSBodyType.smallest,
        color: color,
        maxLines: maxLines,
        overflow: overflow,
      );

  /// header text
  final String? text;
  final Color? color;
  final int? maxLines;
  final bool? overflow;

  /// тип
  final DLSBodyType type;

  @override
  Widget build(BuildContext context) {
    TextStyle? style;
    switch (type) {
      case DLSBodyType.notification:
        style = context.ts_s14h16_4w400.copyWith(color: color ?? context.c_text);
        break;
      case DLSBodyType.smallest:
        style = context.ts_s12h12w400.copyWith(color: color ?? context.c_text);
        break;
      case DLSBodyType.s14:
        style = context.ts_s14h14w400.copyWith(color: color ?? context.c_text);
        break;
      case DLSBodyType.s1421:
        style = context.ts_s14h22_4w400.copyWith(color: color ?? context.c_text);
        break;
      case DLSBodyType.s12:
        style = context.ts_s12h12w500.copyWith(color: color ?? context.c_text);
        break;
    }
    return Text(
      txt(text),
      style: style,
      maxLines: maxLines,
      overflow: overflow ?? false ? TextOverflow.ellipsis : null,
      textHeightBehavior:
          const TextHeightBehavior(applyHeightToFirstAscent: false),
    );
  }
}

enum DLSBodyType { notification, smallest, s14, s12, s1421 }
