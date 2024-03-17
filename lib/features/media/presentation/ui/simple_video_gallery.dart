import 'package:auto_route/auto_route.dart';
import 'package:dls_matrix_client/dls_matrix_client.dart';
import 'package:dls_one/app/router/app_router.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/media/presentation/ui/widgets/dls_video_thumbnail.dart';
import 'package:flutter/material.dart';

class SimpleVideoGallery extends StatelessWidget {
  const SimpleVideoGallery({
    super.key,
    required this.videos,
  });

  final List<DlsChatMessageAttachment> videos;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Wrap(
        spacing: 4.r,
        runSpacing: 4.r,
        children: List.generate(
          videos.length,
          (index) => Builder(
            builder: (context) {
              final video = videos[index];
              return DlsVideoThumbnail(
                attachment: video,
                maxHeight: 92.h,
                maxWidth: 92.w,
                openVideo: () {
                  context.pushRoute(
                    VideoPlayerRoute(
                      name: video.url.path.split('/').last,
                      attachment: video,
                    ),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
