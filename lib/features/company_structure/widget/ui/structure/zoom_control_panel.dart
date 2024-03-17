import 'dart:math';

import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

class ZoomControlPanel extends StatelessWidget {
  const ZoomControlPanel({
    super.key,
  });

  static const minZoom = 0.1;
  static const maxZoom = 1.5;
  static const defaultZoom = 1.0;
  static const zoomStep = 0.1;

  @override
  Widget build(BuildContext context) {
    final notifier = ScaleFactorNotifier.of(context);
    return Row(
      children: [
        Center(
          child: InkWell(
            onTap: () {
              if (notifier == null) {
                return;
              }

              final updatedValue = notifier.value - ZoomControlPanel.zoomStep;

              notifier.value = max(updatedValue, ZoomControlPanel.minZoom);
            },
            child: Padding(
              padding: EdgeInsets.all(8.r),
              child: Assets.icons.minus.svg(),
            ),
          ),
        ),
        Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            child: InkWell(
              onTap: () {
                notifier?.value = ZoomControlPanel.defaultZoom;
              },
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 8.r,
                  horizontal: 12.r,
                ),
                child: Center(
                  child: Text(
                    '100%',
                    style: context.ts_s14h16_4w400
                        .copyWith(color: context.c_text_grey),
                  ),
                ),
              ),
            ),
          ),
        ),
        Center(
          child: InkWell(
            onTap: () {
              if (notifier == null) {
                return;
              }

              final updatedValue = notifier.value + ZoomControlPanel.zoomStep;

              notifier.value = min(updatedValue, ZoomControlPanel.maxZoom);
            },
            child: Padding(
              padding: EdgeInsets.all(8.r),
              child: Assets.icons.plus.svg(),
            ),
          ),
        ),
      ],
    );
  }
}

class ScaleFactorNotifier extends InheritedNotifier<ValueNotifier<double>> {
  const ScaleFactorNotifier({
    required super.child,
    required super.notifier,
    super.key,
  });

  static ValueNotifier<double>? of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<ScaleFactorNotifier>()
        ?.notifier;
  }
}
