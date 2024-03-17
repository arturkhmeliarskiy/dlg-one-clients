import 'dart:async';
import 'dart:io';

import 'package:dart_vlc/dart_vlc.dart' as vlc;
import 'package:dls_one/features/media/media_player/media_player_controller.dart';
import 'package:dls_one/features/media/media_player/video_player_controller.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class DartVlcVideoController extends VideoPlayerController {
  DartVlcVideoController({
    required super.id,
    required MediaSource source,
  })  : _player = vlc.Player(id: id.hashCode),
        _media = source.makeMedia() {
    _sub = Rx.combineLatest2(
      _player.positionStream,
      _player.playbackStream,
      (position, playback) {
        final ProcessingState state;

        if (playback.isCompleted) {
          state = ProcessingState.completed;
        } else if (_player.error.isNotEmpty) {
          state = ProcessingState.error;
        } else {
          state = ProcessingState.ready;
        }
        return PlayerState(
          position: position.position ?? Duration.zero,
          duration: position.duration,
          processingState: state,
          isPlaying: playback.isPlaying,
        );
      },
    ).listen((state) {
      value = state;
    });
  }

  final vlc.Player _player;
  final vlc.Media _media;

  late final StreamSubscription<PlayerState> _sub;

  @override
  Future<void> initialize() async {
    _player.open(_media, autoStart: false);
  }

  @override
  Future<void> dispose() async {
    await _sub.cancel();
    _player.dispose();
    super.dispose();
  }

  @override
  Future<void> pause() async {
    _player.pause();
  }

  @override
  Future<void> play() async {
    _player.play();
  }

  @override
  Future<void> stop() async {
    _player.stop();
  }

  @override
  Future<void> seek(Duration duration) async {
    _player.seek(duration);
  }

  @override
  Widget makeVideoViewer() => vlc.Video(
        player: _player,
        height: 1920,
        width: 1080,
        showControls: false,
      );
}

extension on MediaSource {
  vlc.Media makeMedia() => when(
        asset: vlc.Media.asset,
        url: (name, uri, mimeType) => vlc.Media.network(uri),
        file: (xFile) => vlc.Media.file(File(xFile.path)),
      );
}
