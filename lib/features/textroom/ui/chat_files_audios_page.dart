import 'package:auto_route/auto_route.dart';
import 'package:dls_matrix_client/dls_matrix_client.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/textroom/ui/components/attachment_audio_widget.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ChatFilesAudiosPage extends StatelessWidget {
  ///
  const ChatFilesAudiosPage({
    super.key,
    required this.audios,
    required this.title,
  });

  final List<DlsChatMessageAttachment> audios;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.c_appbar,
      appBar: OldDlsAppBar(
        title: title,
        subtitleWidget: Text(
          '${audios.length} ${audios.length.audiofilePlural()}',
          style: context.ts_s14h16_4w400.copyWith(color: context.c_text_grey),
        ),
        height: 60.h,
      ),
      // TODO(alexsh): исправить SingleChildScrollView(Column)
      body: SingleChildScrollView(
        padding: EdgeInsets.all(12.r),
        child: Column(
          children: List.generate(
            audios.length,
            (index) {
              return AttachmentAudioWidget(attachment: audios[index]);
            },
          ),
        ),
      ),
    );
  }
}
