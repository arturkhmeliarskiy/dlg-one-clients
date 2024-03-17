import 'dart:async';

import 'package:dls_one/features/media/media_player/media_player_controller.dart';
import 'package:dls_one/features/media/media_player/video_player_controller.dart';
import 'package:flutter/material.dart';

/// Некоторые плееры, например vlc не подгружают метаинформацию по видео
/// при инициализации. Эта обертка запускает плеер и при первом сдвиге
/// текущей позиции воспроизведения ставит видео на паузу.
class PreloadVideoPlayerWrapper implements VideoPlayerController {
  PreloadVideoPlayerWrapper({
    required this.subject,
  });

  final VideoPlayerController subject;
  bool _playing = false;

  @override
  PlayerState get value => subject.value;

  @override
  set value(PlayerState newValue) {
    subject.value = newValue;
  }

  @override
  bool get hasListeners => subject.hasListeners;

  @override
  String get id => subject.id;

  @override
  Future<void> initialize() async {
    await subject.initialize();
    unawaited(subject.play());
    subject.addListener(_listen);
  }

  @override
  void dispose() {
    subject.dispose();
  }

  void _listen() {
    if (value.position != Duration.zero) {
      subject.removeListener(_listen);
      if (!_playing) {
        subject.stop();
      }
    }
  }

  @override
  void notifyListeners() => subject.notifyListeners();

  @override
  void addListener(VoidCallback listener) => subject.addListener(listener);

  @override
  void removeListener(VoidCallback listener) =>
      subject.removeListener(listener);

  @override
  Future<void> seek(Duration duration) => subject.seek(duration);

  @override
  Future<void> pause() async {
    _playing = false;
    await subject.pause();
  }

  @override
  Future<void> play() async {
    _playing = true;
    await subject.play();
  }

  @override
  Future<void> stop() async {
    _playing = false;
    await subject.stop();
  }

  @override
  Widget makeVideoViewer() => subject.makeVideoViewer();
}
