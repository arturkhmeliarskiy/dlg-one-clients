import 'package:flutter/material.dart';
import 'package:rest_api/rest_api.dart';

class SprintTaskDragTarget extends StatelessWidget {
  const SprintTaskDragTarget({
    required this.child,
    this.onWillAccept,
    this.onLeave,
    this.onAccept,
    super.key,
  });

  final Widget child;
  final bool Function(DlsTasks data)? onWillAccept;
  final ValueChanged<DlsTasks>? onLeave;
  final ValueChanged<DlsTasks>? onAccept;

  @override
  Widget build(BuildContext context) {
    return DragTarget<DlsTasks>(
      builder: (context, candidateData, rejectData) => child,
      onWillAccept: (data) {
        if (data != null && onWillAccept != null) {
          return onWillAccept!(data);
        }
        return true;
      },
      onLeave: (data) {
        if (data == null) {
          return;
        }
        onLeave?.call(data);
      },
      onAccept: (data) {
        onAccept?.call(data);
      },
    );
  }
}