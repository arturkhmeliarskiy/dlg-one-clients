import 'package:common/common.dart';
import 'package:dls_one/core/core.dart';
import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:flutter/material.dart';

/// виджет эмодзи
class EmojiPickerWidget extends StatelessWidget {
  /// виджет эмодзи
  const EmojiPickerWidget({
    required this.onEmojiSelected,
    super.key,
  });

  /// обработчик выбора смайла
  final ValueChanged<String> onEmojiSelected;

  @override
  Widget build(BuildContext context) {
    final iconSize =
        DlsPlatform.dlsPlatform == DlsPlatformType.mobile ? 22.0 : 26.0;
    return LayoutBuilder(
      builder: (context, constrains) {
        final colDiff =
            DlsPlatform.dlsPlatform == DlsPlatformType.mobile ? 2 : 1;
        final cols = (constrains.maxWidth ~/ iconSize) - colDiff;
        return EmojiPicker(
          onEmojiSelected: (category, emoji) {
            onEmojiSelected(emoji.emoji);
          },
          config: Config(
            columns: cols,
            emojiSizeMax: iconSize,
            bgColor: context.c_white_text,
            showRecentsTab: false,
          ),
        );
      },
    );
  }
}
