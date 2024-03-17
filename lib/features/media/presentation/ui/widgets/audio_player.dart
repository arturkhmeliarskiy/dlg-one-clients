import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/media/media_player/media_player_controller.dart';
import 'package:dls_one/features/media/media_player/media_player_scope.dart';
import 'package:dls_one/features/media/presentation/ui/widgets/std_player_widget.dart';
import 'package:flutter/material.dart';

@immutable
class AudioData {
  const AudioData({
    required this.id,
    required this.fileName,
    required this.url,
    required this.mimeType,
  });

  final String id;
  final String fileName;
  final Uri url;
  final String mimeType;
}

class AudioPlayer extends StatefulWidget {
  const AudioPlayer({
    required this.data,
    this.onDelete,
    this.width,
    super.key,
  });

  final double? width;
  final AudioData data;
  final VoidCallback? onDelete;

  @override
  State<AudioPlayer> createState() => _AudioPlayerState();
}

class _AudioPlayerState extends State<AudioPlayer>
    with AutomaticKeepAliveClientMixin {
  late final MediaPlayerController controller;

  AudioData get data => widget.data;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();

    controller = MediaPlayerScope.of(context).configureController(
      data.id,
      MediaSource.url(
        data.fileName,
        data.url,
        data.mimeType,
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    controller.stop();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return ValueListenableBuilder<PlayerState>(
      valueListenable: controller,
      builder: (context, state, child) {
        // if (kIsWeb) {
        return Row(
          children: [
            Expanded(
              child: PlayerWidget(
                state: state,
                onPause: controller.pause,
                onPlay: controller.play,
                onSeek: controller.seek,
              ),
            ),
            if (widget.onDelete != null)
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: widget.onDelete,
                  child: Padding(
                    padding: EdgeInsets.only(right: 12.w, left: 6.w),
                    child: Assets.icons.times1.svg(
                      width: 18.w,
                      height: 18.h,
                      color: context.c_text_grey,
                    ),
                  ),
                ),
              ),
          ],
        );
        // TODO: вейвформы для мобилок отложили, код нужен для доработок
        //   } else {
        //     return Container(
        //       height: 44.h,
        //       decoration: BoxDecoration(
        //         color: Colors.transparent,
        //         border: Border.all(
        //           width: 1.r,
        //           color: context.c_grey_hover,
        //         ),
        //         borderRadius: BorderRadius.all(
        //           Radius.circular(5.r),
        //         ),
        //       ),
        //       child: Row(
        //         children: [
        //           Container(
        //             width: 36.r,
        //             height: 36.r,
        //             decoration: BoxDecoration(
        //               color: context.c_green,
        //               borderRadius: BorderRadius.all(
        //                 Radius.circular(5.r),
        //               ),
        //             ),
        //             child: Center(
        //               child: (state.isPlaying)
        //                   ? Assets.icons.pause1.svg(
        //                       width: 18.w,
        //                       height: 18.h,
        //                       color: context.c_white_text,
        //                     )
        //                   : Assets.icons.play1.svg(
        //                       width: 18.w,
        //                       height: 18.h,
        //                       color: context.c_white_text,
        //                     ),
        //             ),
        //           ).gestureDetector(
        //             onTap: () {
        //               if (state.isPlaying) {
        //                 controller.pause();
        //               } else {
        //                 controller.play();
        //               }
        //             },
        //           ).paddingOnly(left: 4.w, right: 7.w),
        //           FutureBuilder(
        //             future: context
        //                 .read<FileManager>()
        //                 .fetchFile(data.fileName, data.url)
        //                 .then((file) => file.readAsBytes())
        //                 .then(
        //                   (value) =>
        //                       value.toList().map((e) => e.toDouble()).toList(),
        //                 ),
        //             builder: (context, snapshot) {
        //               final spec = snapshot.data;

        //               if (spec == null) {
        //                 return const Text('err');
        //               }
        //               return LayoutBuilder(
        //                 builder: (context, wh) {
        //                   if (state.position.inMilliseconds == 0 &&
        //                       state.duration?.inMilliseconds == 0) {
        //                     return const SizedBox.shrink();
        //                   }

        //                   // if (state.maxDuration?.inMilliseconds == 0) return Text('${formatTimeHHMMSSmm(state.curPos ?? const Duration(seconds: 0))}');
        //                   return SquigglyWaveform(
        //                     samples: spec,
        //                     height: 31.h,
        //                     width: wh.maxWidth,
        //                     maxDuration: ((state.duration?.inMilliseconds ??
        //                                 0) <
        //                             (state.position.inMilliseconds))
        //                         ? Duration(
        //                             milliseconds:
        //                                 (state.position.inMilliseconds) + 10,
        //                           )
        //                         : state.duration,
        //                     elapsedDuration: state.position,
        //                   );
        //                 },
        //               ).expanded();
        //             },
        //           ),
        //           // Text(
        //           //   '${formatTimeHHMMSSmm(state.position)} \\ ${formatTimeHHMMSSmm(state.duration ?? Duration.zero)}',
        //           //   textAlign: TextAlign.center,
        //           //   style:
        //           //       context.ts_s12h12w400.copyWith(color: context.c_text_grey),
        //           // ).paddingSymmetric(horizontal: 8.w),
        //           if (widget.onDelete != null && (state.isPlaying))
        //             Assets.icons.times1
        //                 .svg(
        //                   width: 18.w,
        //                   height: 18.h,
        //                   color: context.c_text_grey,
        //                 )
        //                 .gestureDetector(
        //                   onTap: () => widget.onDelete!(),
        //                 )
        //                 .paddingOnly(right: 12.w, left: 6.w),
        //         ],
        //       ),
        //     );
        //   }
      },
    );
  }
}
