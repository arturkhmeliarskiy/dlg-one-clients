import 'package:auto_route/auto_route.dart';
import 'package:dls_matrix_client/dls_matrix_client.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/media/media_player/media_player_controller.dart';
import 'package:dls_one/features/media/media_player/media_player_scope.dart';
import 'package:dls_one/features/media/media_player/video_player_controller.dart';
import 'package:dls_one/features/media/presentation/ui/widgets/gallery_app_bar_delegate.dart';
import 'package:dls_one/utils/utils.dart';
import 'package:flutter/material.dart';

@RoutePage()
class VideoPlayerPage extends StatelessWidget {
  const VideoPlayerPage({
    @pathParam required this.name,
    required this.attachment,
    super.key,
  });

  final DlsChatMessageAttachment? attachment;
  final String name;

  @override
  Widget build(BuildContext context) {
    final attachment = this.attachment;
    if (attachment == null) {
      return const Placeholder();
    } else {
      return _VideoPlayerLayout(
        name: name,
        attachment: attachment,
      );
    }
  }
}

/// Stateful widget to fetch and then display video content.
class _VideoPlayerLayout extends StatefulWidget {
  /// Constructor
  const _VideoPlayerLayout({
    @pathParam required this.name,
    @queryParam required this.attachment,
  });

  final DlsChatMessageAttachment attachment;
  final String name;

  @override
  _VideoPlayerLayoutState createState() => _VideoPlayerLayoutState();
}

class _VideoPlayerLayoutState extends State<_VideoPlayerLayout> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    final attachment = widget.attachment;
    _controller = MediaPlayerScope.of(context).configureVideoController(
      attachment.eventId,
      MediaSource.url(
        attachment.fileName,
        attachment.url,
        attachment.mimeType,
      ),
    );

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _controller
        ..initialize()
        ..play();
    });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.c_calls_background,
      body: GestureDetector(
        onVerticalDragEnd: (details) => context.popRoute(),
        child: ValueListenableBuilder(
          valueListenable: _controller,
          builder: (context, value, child) {
            return SafeArea(
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  GestureDetector(
                    onTap: () {
                      value.isPlaying
                          ? _controller.pause()
                          : _controller.play();
                    },
                    child: Center(
                      child: _controller.makeVideoViewer(),
                    ),
                  ),
                  if (value.processingState == ProcessingState.loading ||
                      value.processingState == ProcessingState.buffering)
                    const Center(
                      child: CircularProgressIndicator(),
                    ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 58.h,
                        alignment: Alignment.center,
                        color: context.c_calls_background.withOpacity(0.8),
                        child: DlsPadding.symmetric(
                          horizontal: 16.w,
                          vertical: 18.h,
                          child: CustomMultiChildLayout(
                            delegate: GalleryAppBarDelegate(),
                            children: [
                              LayoutId(
                                id: 1,
                                child: DlsBackButton(
                                  onTap: () => context.popRoute(),
                                ),
                              ),
                              LayoutId(
                                id: 2,
                                child: Text(
                                  txt(widget.name),
                                  style: context.ts_s14h14w500.copyWith(
                                    color: context.c_white_text,
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      DlsPadding.only(
                        bottom: 7.h,
                        child: SizedBox(
                          height: 44.h,
                          child: Row(
                            children: [
                              DlsPadding.only(
                                left: 11.w,
                                right: 7.w,
                                child: GestureDetector(
                                  onTap: () {
                                    value.isPlaying
                                        ? _controller.pause()
                                        : _controller.play();
                                  },
                                  child: Container(
                                    width: 28.r,
                                    height: 28.r,
                                    color: Colors.transparent,
                                    child: Center(
                                      child: value.isPlaying
                                          ? Assets.icons.pause1.svg(
                                              width: 18.w,
                                              height: 18.h,
                                              color: context.c_white_text,
                                            )
                                          : Assets.icons.play1.svg(
                                              width: 18.w,
                                              height: 18.h,
                                              color: context.c_white_text,
                                            ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: DlsPadding.only(
                                  bottom: 4.h,
                                  right: 12.w,
                                  child: _videoProgressController(),
                                ),
                              ),
                              DlsPadding.only(
                                right: 16.w,
                                child: Row(
                                  children: [
                                    Text(
                                      formatTimeHHMMSS(value.position),
                                      textAlign: TextAlign.center,
                                      style: context.ts_s12h12w400.copyWith(
                                        color: context.c_white_text,
                                      ),
                                    ),
                                    Text(
                                      ' \\ ${formatTimeHHMMSS(value.duration ?? Duration.zero)}',
                                      textAlign: TextAlign.center,
                                      style: context.ts_s12h12w400.copyWith(
                                        color: context.c_placeholder,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _videoProgressController() {
    // if (_controller == null) {
    return const SizedBox();
    // } else {
    //   return VideoProgressIndicator(
    //     _controller,
    //     allowScrubbing: true,
    //     colors: VideoProgressColors(
    //       backgroundColor: context.c_text_grey,
    //       bufferedColor: context.c_text_grey,
    //       playedColor: context.c_white_text,
    //     ),
    //   );
    // }
  }
}
