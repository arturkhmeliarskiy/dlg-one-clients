import 'package:auto_route/auto_route.dart';
import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

class WebSideView extends StatelessWidget {
  const WebSideView({
    required this.mainChild,
    this.rightChild,
    this.topChild,
    this.overlayBuilder,
    super.key,
  });

  final Widget mainChild;
  final Widget? rightChild;
  final Widget? topChild;
  final Widget Function(Widget child)? overlayBuilder;

  double get maxWidth {
    return 1036;
  }

  @override
  Widget build(BuildContext context) {
    return _buildSides(context);
  }

  Widget _buildSides(BuildContext context) {
    return ColoredBox(
      color: context.c_shadow.withOpacity(0.4),
      child: LayoutBuilder(
        builder: (context, constraints) {
          const maxWidth = 280 * 2.0;
          return SplitView(
            axis: Axis.horizontal,
            initialFractions: const [0.3, 0.7],
            minSizes: const [0, maxWidth],
            splitters:
                constraints.maxWidth <= maxWidth ? [const SizedBox()] : null,
            defaultSplitter: DlsVerticalBackgroundSplitter(),
            children: [
              GestureDetector(
                onTap: context.router.pop,
                behavior: HitTestBehavior.opaque,
                child: const SizedBox.expand(),
              ),
              ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: maxWidth),
                child: ColoredBox(
                  color: context.c_appbar,
                  child: _buildContent(context),
                ),
              )
            ],
          );
        },
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    final content = Column(
      children: [
        if (topChild != null) topChild!,
        Expanded(
          child: SplitView(
            axis: Axis.horizontal,
            initialFractions: const [0.7, 0.3],
            minSizes: const [280, 280],
            defaultSplitter: DlsVerticalPanelSplitter(),
            children: [mainChild, if (rightChild != null) rightChild!],
          ),
        ),
      ],
    );
    return overlayBuilder?.call(content) ?? content;
  }
}
