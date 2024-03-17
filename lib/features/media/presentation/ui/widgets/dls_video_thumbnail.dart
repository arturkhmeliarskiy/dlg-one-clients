// import 'package:dls_one/core/widgets.dart';
// import 'package:dls_one/utils/utils.dart';
// import 'package:flutter/material.dart';
// import 'package:dls_one/core/core.dart';
// import 'package:video_player/video_player.dart';
//
// import 'dls_play_time.dart';
//
// class DlsVideoThumbnail extends StatelessWidget {
//   const DlsVideoThumbnail({
//     super.key,
//     required this.controller,
//     this.deleteVideo,
//     this.openVideo,
//     this.maxWidth,
//     this.isUrl,
//     this.maxHeight,
//   });
//
//   final VideoPlayerController controller;
//   final VoidCallback? deleteVideo;
//   final VoidCallback? openVideo;
//   final int? maxWidth;
//   final int? maxHeight;
//   final bool? isUrl;
//
//   @override
//   Widget build(BuildContext context) {
//     return ClipRRect(
//       borderRadius: BorderRadius.circular(5.r),
//       child: Stack(
//         children: [
//           controller.value.isInitialized
//               ? Stack(
//                   children: [
//                     Container(
//                       alignment: Alignment.center,
//                       color: context.c_grey_hover,
//                       height: controller.value.size.height > (maxHeight ?? 44.r).toDouble()
//                           ? (maxHeight ?? 44.r).toDouble() / controller.value.aspectRatio
//                           : controller.value.size.height,
//                       width: controller.value.size.width < (maxWidth ?? 92.r).toDouble()
//                           ? (maxWidth ?? 92.r).toDouble() * controller.value.aspectRatio
//                           : controller.value.size.width,
//                       child: VideoPlayer(controller),
//                     ),
//                     Positioned(left: 2.w, bottom: 2.h, child: DlsPlayTime(recordDuration: formatTimeHHMMSS(controller.value.duration))),
//                   ],
//                 ).gestureDetector(onTap: openVideo)
//               : Container(
//                   height: (maxHeight ?? 44.r).toDouble(),
//                   width: (maxWidth ?? 92.r).toDouble(),
//                   color: context.c_grey_hover,
//                   child: DlsPreloader(size: Size(25.r, 25.r)),
//                 ),
//           if (deleteVideo != null)
//             controller.value.isInitialized
//                 ? Positioned(
//                     right: 2.r,
//                     top: 2.r,
//                     child: Container(
//                       height: 18.r,
//                       width: 18.r,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(5.r),
//                         color: context.c_calls_background,
//                       ),
//                       child: Center(
//                         child: Icon(
//                           Icons.close,
//                           color: context.c_white_text,
//                           size: 12.h,
//                         ),
//                       ),
//                     ).gestureDetector(onTap: deleteVideo),
//                   )
//                 : Container()
//         ],
//       ),
//     );
//   }
// }
import 'package:dls_matrix_client/dls_matrix_client.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/media/media_player/media_player_controller.dart';
import 'package:dls_one/features/media/media_player/media_player_scope.dart';
import 'package:dls_one/features/media/media_player/video_player_controller.dart';
import 'package:dls_one/utils/utils.dart';
import 'package:flutter/material.dart';

class DlsVideoThumbnail extends StatefulWidget {
  const DlsVideoThumbnail({
    required this.attachment,
    this.deleteVideo,
    this.openVideo,
    this.maxWidth,
    this.maxHeight,
    super.key,
  });

  final DlsChatMessageAttachment attachment;
  final VoidCallback? deleteVideo;
  final VoidCallback? openVideo;
  final double? maxWidth;
  final double? maxHeight;

  @override
  State<DlsVideoThumbnail> createState() => _DlsVideoThumbnailState();
}

class _DlsVideoThumbnailState extends State<DlsVideoThumbnail> {
  late final VideoPlayerController controller;

  @override
  void initState() {
    super.initState();

    final attachment = widget.attachment;
    controller = MediaPlayerScope.of(context).configureVideoController(
      attachment.eventId,
      MediaSource.url(
        attachment.fileName,
        attachment.url,
        attachment.mimeType,
      ),
    );
    WidgetsBinding.instance.addPostFrameCallback((_) {
      controller.initialize();
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: controller,
      builder: (context, value, child) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(5.r),
          child: Stack(
            children: [
              if (value.processingState != ProcessingState.loading)
                FittedBox(
                  fit: BoxFit.cover,
                  child: Container(
                    color: context.c_grey_stoke,
                    alignment: Alignment.center,
                    width: widget.maxWidth ?? 500,
                    height: widget.maxHeight ?? 200,
                    child: GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      onTap: () {
                        widget.openVideo?.call();
                      },
                      child: controller.makeVideoViewer(),
                    ),
                  ),
                )
              else
                Container(
                  height: 92.h,
                  width: 92.w,
                  decoration: BoxDecoration(
                    color: context.c_grey_grey,
                    borderRadius: BorderRadius.circular(5.r),
                  ),
                ),
              if (widget.deleteVideo != null)
                Positioned(
                  right: 2.r,
                  top: 2.r,
                  child: GestureDetector(
                    onTap: () {
                      controller.stop();
                      widget.deleteVideo?.call();
                    },
                    child: Container(
                      height: 18.r,
                      width: 18.r,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.r),
                        color: context.c_calls_background,
                      ),
                      child: Center(
                        child: Icon(
                          Icons.close,
                          color: context.c_white_text,
                          size: 12.h,
                        ),
                      ),
                    ),
                  ),
                ),
              Positioned(
                left: 2.w,
                bottom: 2.h,
                child: GestureDetector(
                  onTap: widget.openVideo,
                  child: DlsPlayTime(
                    recordDuration: formatTimeHHMMSS(
                      value.duration ?? Duration.zero,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
