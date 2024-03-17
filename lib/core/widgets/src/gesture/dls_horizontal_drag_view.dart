import 'package:flutter/material.dart';

class DlsHorizontalDragView extends StatefulWidget {
  const DlsHorizontalDragView({
    required this.child,
    required this.onMove,
    this.itemWidth = 0,
    this.onMoveEnd,
    super.key,
  });

  final Widget child;
  final double itemWidth;
  final ValueChanged<double> onMove;
  final VoidCallback? onMoveEnd;

  @override
  State<DlsHorizontalDragView> createState() => _DlsHorizontalDragViewState();
}

class _DlsHorizontalDragViewState extends State<DlsHorizontalDragView> {
  double _delta = 0;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onHorizontalDragStart: (details) {
        _delta = 0;
      },
      onHorizontalDragUpdate: (details) {
        _delta += details.primaryDelta ?? 0;
        widget.onMove(_delta);
        _delta = 0;
      },
      onHorizontalDragEnd: (details) {
        widget.onMoveEnd?.call();
      },
      onHorizontalDragCancel: (){
        widget.onMoveEnd?.call();
      },
      child: widget.child,
    );
  }
}
