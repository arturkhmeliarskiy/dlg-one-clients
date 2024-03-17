import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

class TaskTabItem extends StatelessWidget {
  const TaskTabItem({
    required this.asset,
    required this.label,
    super.key,
  });

  final Widget asset;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 8.0.w, right: 8.0.w),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          asset,
          SizedBox(width: 5.5.w),
          Text(label),
        ],
      ),
    );
  }
}
