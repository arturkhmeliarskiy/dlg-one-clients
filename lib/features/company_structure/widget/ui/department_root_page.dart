import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

@RoutePage()
class DepartmentRootPage extends StatelessWidget {
  const DepartmentRootPage({
    @PathParam('id') required this.departmentId,
    super.key,
  });

  final int departmentId;

  @override
  Widget build(BuildContext context) {
    // Wrap by Blocprovider with DepartmentBLoC.
    return AutoRouter(
      placeholder: (_) => const SizedBox.expand(),
    );
  }
}

// TODO: вынести в общий виджет с кастомизацией размеров и стороны.
class OverlayBuilder extends StatelessWidget {
  const OverlayBuilder({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: context.c_shadow.withOpacity(0.4),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final minWidth = min(400.w, constraints.maxWidth);
          final initialFraction = minWidth / constraints.maxWidth;
          final maxSize = max(minWidth, constraints.maxWidth / 2);

          return SplitView(
            axis: Axis.horizontal,
            initialFractions: [initialFraction, 1 - initialFraction],
            defaultSplitter: DlsVerticalBackgroundSplitter(),
            minSizes: [constraints.maxWidth - maxSize, minWidth],
            children: [
              GestureDetector(
                onTap: context.router.pop,
                behavior: HitTestBehavior.opaque,
                child: const SizedBox.expand(),
              ),
              child,
            ],
          );
        },
      ),
    );
  }
}
