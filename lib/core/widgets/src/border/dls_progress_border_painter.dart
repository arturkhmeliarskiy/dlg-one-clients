import 'dart:math';

import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

class DlsProgressBorderPainter extends CustomPainter {
  const DlsProgressBorderPainter({
    required this.progress,
    required this.color,
  });

  final double progress;
  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    if(progress == 0) {
      return;
    }
    final strokeWidth = 2.r;
    final radius = 4.r;
    final paint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;

    final halfStrokeWidth = strokeWidth / 2;
    final left = halfStrokeWidth;
    final top = halfStrokeWidth;
    final right = size.width - halfStrokeWidth;
    final bottom = size.height - halfStrokeWidth;

    final progressTop = top;
    final progressRight = max(left + (right - left) * progress, left + radius);
    final progressBottom = bottom;

    final progressPath = Path();
    if (progress == 1) {
      progressPath.moveTo(progressRight - radius, progressBottom);
    } else {
      progressPath.moveTo(progressRight, progressBottom);
    }
    progressPath
      ..lineTo(left + radius, progressBottom)
      ..arcToPoint(
        Offset(left, progressBottom - radius),
        radius: Radius.circular(radius),
      )
      ..lineTo(left, progressTop + radius)
      ..arcToPoint(
        Offset(left + radius, progressTop),
        radius: Radius.circular(radius),
      );
    if (progress == 1) {
      progressPath
        ..lineTo(progressRight - radius, progressTop)
        ..arcToPoint(
          Offset(progressRight, progressTop + radius),
          radius: Radius.circular(radius),
        )
        ..lineTo(progressRight, progressBottom - radius)
        ..arcToPoint(
          Offset(progressRight - radius, progressBottom),
          radius: Radius.circular(radius),
        );
    } else {
      progressPath.lineTo(progressRight, progressTop);
    }

    canvas.drawPath(progressPath, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}