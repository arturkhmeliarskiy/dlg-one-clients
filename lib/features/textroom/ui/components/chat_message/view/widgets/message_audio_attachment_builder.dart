import 'package:dls_matrix_client/dls_matrix_client.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/textroom/ui/components/attachment_audio_widget.dart';
import 'package:flutter/material.dart';

class MessageAudioAttachmentBuilder extends StatelessWidget {
  const MessageAudioAttachmentBuilder({
    required this.attachments,
    super.key,
  });

  final List<DlsChatMessageAttachment> attachments;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(
        attachments.length,
        (index) {
          return Padding(
            padding: EdgeInsets.only(
              left: attachments[index].forwarded ? 2.w : 0,
            ),
            child: AttachmentAudioWidget(
              attachment: attachments[index],
            ),
          );
        },
      ),
    );
  }
}
