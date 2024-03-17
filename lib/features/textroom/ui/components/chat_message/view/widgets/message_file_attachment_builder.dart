import 'package:dls_matrix_client/dls_matrix_client.dart';
import 'package:dls_one/features/textroom/ui/components/attachment_file_widget.dart';
import 'package:flutter/material.dart';

class MessageFileAttachmentBuilder extends StatelessWidget {
  const MessageFileAttachmentBuilder({
    required this.attachments,
    super.key,
  });

  final List<DlsChatMessageAttachment> attachments;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        attachments.length,
        (index) {
          return AttachmentFileWidget(
            attachment: attachments[index],
            index: index,
          );
        },
      ),
    );
  }
}
