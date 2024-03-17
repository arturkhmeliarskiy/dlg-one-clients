import 'package:auto_route/auto_route.dart';
import 'package:dls_matrix_client/dls_matrix_client.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/media/media.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ChatFilesVideosPage extends StatelessWidget {
  const ChatFilesVideosPage({
    super.key,
    required this.videos,
    required this.title,
  });

  final List<DlsChatMessageAttachment> videos;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.c_appbar,
      appBar: OldDlsAppBar(
        title: title,
        subtitleWidget: Text(
          '${videos.length} ${S.current.video}',
          style: context.ts_s14h16_4w400.copyWith(color: context.c_text_grey),
        ),
        height: 60.h,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(12.r),
        child: SimpleVideoGallery(videos: videos),
      ),
    );
  }
}
