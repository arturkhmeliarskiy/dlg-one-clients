import 'package:dls_one/features/media/media_player/media_player_controller.dart';
import 'package:dls_one/features/media/media_player/media_player_scope.dart';
import 'package:flutter/material.dart';

abstract class VideoPlayerController extends MediaPlayerController {
  VideoPlayerController({
    required super.id,
    super.initialValue,
  });

  Future<void> initialize();

  // TODO: подумать над выносом в UI сборки виджета.
  Widget makeVideoViewer();
}

class UnfocusPlaySecurityVideoPlayer extends UnfocusPlaySecurityPlayer
    implements VideoPlayerController {
  UnfocusPlaySecurityVideoPlayer({
    required super.requestFocus,
    required super.rejectFocus,
    required this.subject,
  }) : super(subject: subject);

  @override
  final VideoPlayerController subject;

  @override
  Future<void> initialize() => subject.initialize();

  @override
  Widget makeVideoViewer() => subject.makeVideoViewer();
}
