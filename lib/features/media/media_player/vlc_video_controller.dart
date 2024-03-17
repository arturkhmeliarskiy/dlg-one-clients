import 'dart:async';
import 'dart:io';

import 'package:dls_one/features/media/media_player/media_player_controller.dart';
import 'package:dls_one/features/media/media_player/video_player_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vlc_player/flutter_vlc_player.dart';

class VLCVideoController extends VideoPlayerController {
  VLCVideoController({
    required MediaSource mediaSource,
    required super.id,
  }) : controller = mediaSource.makeController() {
    controller.addListener(_listener);
  }

  final VlcPlayerController controller;

  void _listener() {
    value = controller.value.makeState();
  }

  @override
  Future<void> initialize() async {}

  @override
  Future<void> pause() => controller.pause();

  @override
  Future<void> play() async {
    if (controller.value.isInitialized) {
      await controller.play();
    } else {
      controller.addOnInitListener(controller.play);
    }
  }

  @override
  Future<void> seek(Duration duration) => controller.seekTo(duration);

  @override
  Future<void> stop() => controller.stop();

  @override
  Future<void> dispose() async {
    await controller.stop();
    controller.removeListener(_listener);
    await controller.dispose();
    super.dispose();
  }

  @override
  Widget makeVideoViewer() => VlcPlayer(
        controller: controller,
        aspectRatio: controller.value.aspectRatio,
      );
}

extension on MediaSource {
  VlcPlayerController makeController() {
    return when(
      asset: (asset) => VlcPlayerController.asset(asset, autoPlay: false),
      url: (name, uri, mimeType) =>
          VlcPlayerController.network(uri.toString(), autoPlay: false),
      file: (xFile) =>
          VlcPlayerController.file(File(xFile.path), autoPlay: false),
    );
  }
}

extension on VlcPlayerValue {
  PlayerState makeState() {
    final ProcessingState state;
    switch (playingState) {
      case PlayingState.initializing:
        state = ProcessingState.loading;
        break;
      case PlayingState.initialized:
        state = ProcessingState.idle;
        break;
      case PlayingState.stopped:
      case PlayingState.paused:
      case PlayingState.playing:
      case PlayingState.recording:
        state = ProcessingState.ready;
        break;
      case PlayingState.ended:
        state = ProcessingState.completed;
        break;
      case PlayingState.buffering:
        state = ProcessingState.buffering;
        break;
      case PlayingState.error:
        state = ProcessingState.error;
        break;
    }

    return PlayerState(
      position: position,
      duration: duration,
      processingState: state,
      isPlaying: isPlaying,
    );
  }
}
