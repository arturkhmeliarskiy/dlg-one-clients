import 'package:common/common.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/features.dart';
import 'package:flutter/material.dart';

class MessageActionsBuilder extends StatelessWidget {
  const MessageActionsBuilder({
    required this.isSelected,
    required this.isSelectMode,
    this.onOpenComments,
    this.onBeforeOpenMenu,
    this.onOpenMenu,
    this.onOpenReaction,
    this.onFavorite,
    this.onSelectMessage,
    this.onCreateTask,
    super.key,
  });

  final bool isSelected;
  final bool isSelectMode;
  final VoidCallback? onOpenComments;
  final ValueChanged<TapDownDetails>? onBeforeOpenMenu;
  final VoidCallback? onCreateTask;
  final VoidCallback? onOpenMenu;
  final VoidCallback? onOpenReaction;
  final VoidCallback? onFavorite;
  final ValueChanged<bool>? onSelectMessage;

  @override
  Widget build(BuildContext context) {
    final isMobile = DlsPlatform.dlsPlatform == DlsPlatformType.mobile;
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (isSelectMode && onSelectMessage != null)
          MessageActionCheckbox(
            value: isSelected,
            onChanged: (value) {
              onSelectMessage?.call(true == value);
            },
          ),
        if (!isSelectMode && onOpenReaction != null && !isMobile)
          WebButtonIconWithTooltip(
            icon: Assets.icons.commentLines12.path,
            iconColor: context.c_text_grey,
            onTap: onOpenReaction,
          ),
        if (!isSelectMode && !isMobile)
          WebButtonIconWithTooltip(
            icon: Assets.icons.plus1.path,
            onTap: onCreateTask,
            onTapDown: onBeforeOpenMenu,
            iconColor: context.c_text_grey,
          ),
        if (!isSelectMode && onOpenComments != null && !isMobile)
          WebButtonIconWithTooltip(
            icon: Assets.icons.commentLines2.path,
            onTap: onOpenComments,
            iconColor: context.c_text_grey,
          ),
        if (!isSelectMode && onOpenMenu != null && !isMobile)
          WebButtonIconWithTooltip(
            icon: Assets.icons.ellipsisV2.path,
            onTapDown: onBeforeOpenMenu,
            onTap: onOpenMenu,
            iconColor: context.c_text_grey,
          ),
        if (!isSelectMode && onFavorite != null && !isMobile)
          WebButtonIconWithTooltip(
            icon: Assets.icons.star4.path,
            iconColor: context.c_text_grey,
            onTap: onFavorite,
          ),
      ],
    );
  }
}
