import 'package:dls_matrix_client/dls_matrix_client.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/utils/utils.dart';
import 'package:flutter/material.dart';

class MessageEditPanel extends StatelessWidget {
  const MessageEditPanel({
    required this.markedEditMessage,
    this.onCancelEditMessage,
    super.key,
  });

  final DlsChatMessage markedEditMessage;
  final VoidCallback? onCancelEditMessage;

  @override
  Widget build(BuildContext context) {
    final editingMessage =
        markedEditMessage.safeCast<DlsChatMessageText>()?.plainText ?? '';
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Assets.icons.share2.svg(
          width: 18,
          height: 18,
          color: context.c_text_grey,
        ),
        SizedBox(width: 8.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      S.of(context).chatMessageEdit,
                      style: context.ts_s14h16_4w400.copyWith(
                        color: context.c_text,
                      ),
                    ),
                  ),
                  if (onCancelEditMessage != null)
                    GestureDetector(
                      behavior: HitTestBehavior.translucent,
                      onTap: onCancelEditMessage,
                      child: Assets.icons.times14.svg(
                        width: 18,
                        height: 18,
                        color: context.c_text_grey,
                      ),
                    ),
                ],
              ),
              Text(
                QuillEditorHelper.buildDocument(editingMessage).toPlainText(),
                maxLines: 1,
                style: context.ts_s14h22_4w400.copyWith(
                  color: context.c_text_grey,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
