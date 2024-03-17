import 'dart:async';
import 'dart:io';

import 'package:dls_one/features/media/media_player/media_player_controller.dart';
import 'package:dls_one/features/media/media_player/video_player_controller.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart' as vp;

class VPVideoController extends VideoPlayerController {
  VPVideoController({
    required MediaSource source,
    required super.id,
  }) : controller = make(source) {
    controller.addListener(_updateValue);
  }

  final vp.VideoPlayerController controller;

  static vp.VideoPlayerController make(MediaSource source) => source.when(
        asset: vp.VideoPlayerController.asset,
        url: (name, uri, mimeType) => vp.VideoPlayerController.network(
          uri.toString(),
        ),
        file: (file) => vp.VideoPlayerController.file(File(file.path)),
      );

  void _updateValue() {
    value = controller.value.makeState();
  }

  @override
  Future<void> initialize() => controller.initialize();

  @override
  Future<void> pause() => controller.pause();

  @override
  Future<void> play() => controller.play();

  @override
  Future<void> seek(Duration duration) => controller.seekTo(duration);

  @override
  Future<void> stop() => controller.pause();

  @override
  Widget makeVideoViewer() => AspectRatio(
        aspectRatio: controller.value.aspectRatio,
        child: vp.VideoPlayer(controller),
      );

  @override
  void dispose() {
    super.dispose();
    controller
      ..dispose()
      ..removeListener(_updateValue);
  }
}

extension on vp.VideoPlayerValue {
  PlayerState makeState() {
    final ProcessingState state;

    if (hasError) {
      state = ProcessingState.error;
    } else if (isBuffering) {
      state = ProcessingState.buffering;
    } else if (position == duration) {
      state = ProcessingState.completed;
    } else if (isInitialized) {
      state = ProcessingState.ready;
    } else {
      state = ProcessingState.loading;
    }

    return PlayerState(
      position: position,
      duration: duration,
      processingState: state,
      isPlaying: isPlaying,
    );
  }
}
