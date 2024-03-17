import 'package:dls_one/core/file_manager/file_manager.dart';
import 'package:dls_one/features/media/media_player/media_player_controller.dart';
import 'package:dls_one/features/media/media_player/video_player_controller.dart';
import 'package:dls_one/features/media/media_player/vp_video_controller.dart';

VideoPlayerController makeController(
  String id,
  MediaSource source,
  FileManager fileManager,
) =>
    VPVideoController(
      id: id,
      source: source,
    );
