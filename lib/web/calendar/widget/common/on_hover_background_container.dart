import 'package:flutter/material.dart';

class OnHoverBackgroundTappableContainer extends StatefulWidget {
  const OnHoverBackgroundTappableContainer({
    required this.backgroundColor,
    required this.padding,
    required this.child,
    required this.borderRadius,
    required this.onTap,
    this.parentKey,
    super.key,
  });

  final GlobalKey? parentKey;
  final Color backgroundColor;
  final EdgeInsets padding;
  final Widget child;
  final BorderRadius borderRadius;
  final void Function(BuildContext) onTap;

  @override
  State<OnHoverBackgroundTappableContainer> createState() =>
      _OnHoverBackgroundTappableContainerState();
}

class _OnHoverBackgroundTappableContainerState
    extends State<OnHoverBackgroundTappableContainer> {
  bool _onHover = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      key: widget.parentKey,
      onTap: () {
        widget.onTap(context);
      },
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        onEnter: (_) => setState(() => _onHover = true),
        onExit: (_) => setState(() => _onHover = false),
        child: Container(
          decoration: BoxDecoration(
            color: _onHover ? widget.backgroundColor : Colors.transparent,
            borderRadius: widget.borderRadius,
          ),
          padding: widget.padding,
          child: widget.child,
        ),
      ),
    );
  }
}
