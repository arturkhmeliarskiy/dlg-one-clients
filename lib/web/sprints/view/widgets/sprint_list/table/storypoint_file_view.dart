import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

class StoryPointFileView extends StatelessWidget {
  final int countFiles;
  final int countStoryPoints;
  final bool showIfZero;

  const StoryPointFileView({
    super.key,
    required this.countFiles,
    required this.countStoryPoints,
    this.showIfZero = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (countFiles > 0 || showIfZero)
          _buildItem(
            context: context,
            count: countFiles,
            icon: Assets.icons.webTaskPaperclip.svg(),
          ),
        SizedBox(width: 8.w),
        if (countStoryPoints > 0 || showIfZero)
          _buildItem(
            context: context,
            count: countStoryPoints,
            icon: Assets.icons.storyPoints.svg(),
          ),
      ],
    );
  }

  /// Copied from [TaskHierchyFiles]
  Widget _buildItem({
    required BuildContext context,
    required int? count,
    required Widget icon,
  }) {
    if (count == null) {
      return Container();
    }
    return Row(
      children: [
        icon,
        SizedBox(
          width: 4.w,
        ),
        Text(
          count.toString(),
          style: context.ts_s14h16_4w500.copyWith(
            color: context.c_text_grey,
          ),
        ),
      ],
    );
  }
}
