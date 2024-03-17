import 'dart:io';

import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/media/media_player/dart_vlc_video_controller.dart';
import 'package:dls_one/features/media/media_player/file_loader_video_controller_wrapper.dart';
import 'package:dls_one/features/media/media_player/media_player_controller.dart';
import 'package:dls_one/features/media/media_player/preload_video_player.dart';
import 'package:dls_one/features/media/media_player/video_player_controller.dart';
import 'package:dls_one/features/media/media_player/vlc_video_controller.dart';
import 'package:dls_one/features/media/media_player/vp_video_controller.dart';

VideoPlayerController makeController(
  String id,
  MediaSource source,
  FileManager fileManager,
) {
  if (Platform.isAndroid || Platform.isWindows) {
    return VPVideoController(
      id: id,
      source: source,
    );
  } else if (Platform.isIOS) {
    return PreloadVideoPlayerWrapper(
      subject: VLCVideoController(
        id: id,
        mediaSource: source,
      ),
    );
  } else if (Platform.isLinux) {
    return DartVlcVideoController(
      id: id,
      source: source,
    );
  } else if (Platform.isMacOS) {
    return FileLoaderVideoControllerWrapper(
      fileManager: fileManager,
      subjectBuilder: (file) => VPVideoController(
        source: MediaSource.file(file),
        id: id,
      ),
      source: source,
      id: id,
    );
  } else {
    throw UnimplementedError('Unknows platform: ${Platform.operatingSystem}');
  }
}
