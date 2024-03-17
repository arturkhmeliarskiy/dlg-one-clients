import 'package:collection/collection.dart';
import 'package:dls_one/features/media/media_player/just_audio_controller.dart';
import 'package:dls_one/features/media/media_player/media_player_controller.dart';
import 'package:dls_one/features/media/media_player/video_player_controller.dart';
import 'package:dls_one/features/media/media_player/video_player_maker/stub_video_player_maker.dart'
    if (dart.library.io) 'package:dls_one/features/media/media_player/video_player_maker/io_video_player_maker.dart'
    if (dart.library.html) 'package:dls_one/features/media/media_player/video_player_maker/html_video_player_maker.dart'
    as maker;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MediaPlayerScope extends StatefulWidget {
  const MediaPlayerScope({
    required this.child,
    super.key,
  });

  static MediaPlayerScopeState of(BuildContext context) {
    // Ошибки отсутствия в дереве решатся на этапе разработки.
    return context.findAncestorStateOfType<MediaPlayerScopeState>()!;
  }

  final Widget child;

  @override
  State<MediaPlayerScope> createState() => MediaPlayerScopeState();
}

class MediaPlayerScopeState extends State<MediaPlayerScope>
    with WidgetsBindingObserver {
  final List<MediaPlayerController> _controllers = [];

  MediaPlayerController? _focusedController;

  /// Состояние воспроизведение активного плеера в неактивном сотоянии
  /// приложения. Когда приложение активно или в фокусе, по умолчанию false;
  bool _focusedControllerWasPlaying = false;

  MediaPlayerController configureController(
    String id,
    MediaSource source, {
    bool forceRequestFocus = false,
    AudioLoopMode audioLoopMode = AudioLoopMode.one,
  }) {
    final MediaPlayerController result;
    final controller =
        _controllers.firstWhereOrNull((element) => element.id == id);
    if (controller != null) {
      result = controller;
    } else {
      result = UnfocusPlaySecurityPlayer(
        requestFocus: requestFocus,
        rejectFocus: rejectFocus,
        subject: JustAudioController(
          id: id,
          source: source,
          fileManager: context.read(),
          api: context.read(),
          audioLoopMode: audioLoopMode,
        ),
      );
      _controllers.add(result);
    }

    if (forceRequestFocus) {
      requestFocus(result);
    }

    return result;
  }

  VideoPlayerController configureVideoController(
    String id,
    MediaSource source, {
    bool forceRequestFocus = false,
  }) {
    final result = UnfocusPlaySecurityVideoPlayer(
      requestFocus: requestFocus,
      rejectFocus: rejectFocus,
      subject: maker.makeController(
        id,
        source,
        context.read(),
      ),
    );

    if (forceRequestFocus) {
      requestFocus(result);
    }

    return result;
  }

  Future<void> stopController(String id) async {
    final controller =
        _controllers.firstWhereOrNull((element) => element.id == id);
    // TODO(alexsh): we need possibility to de-initialize controller and
    //  close resource because it's (file) can be removed physically
    await controller?.stop();
  }

  Future<void> requestFocus(MediaPlayerController controller) async {
    if (controller != _focusedController) {
      await _focusedController?.pause();
    }

    _focusedController = controller;
  }

  void rejectFocus(MediaPlayerController controller) {
    if (controller == _focusedController) {
      controller.pause();
      _focusedController = null;
    }
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    final activeController = _focusedController;
    if (activeController == null) {
      return;
    }

    switch (state) {
      case AppLifecycleState.resumed:
        if (_focusedControllerWasPlaying) {
          activeController.play();
        }
        _focusedControllerWasPlaying = false;
        break;
      case AppLifecycleState.inactive:
      case AppLifecycleState.paused:
      case AppLifecycleState.detached:
        // Если приложение ушло в инактив, запоминаем состояние воспроизведение
        // плеера.
        // [didChangeAppLifecycleState] может дергаться с разными состояниями
        // подряд, которые мы воспринимаем как неактивное.
        if (activeController.value.isPlaying) {
          _focusedControllerWasPlaying = true;
          activeController.pause();
        }
        break;
    }
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    super.dispose();
    WidgetsBinding.instance.removeObserver(this);
    for (final element in _controllers) {
      element
        ..stop()
        ..dispose();
    }
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}

class UnfocusPlaySecurityPlayer implements MediaPlayerController {
  UnfocusPlaySecurityPlayer({
    required this.requestFocus,
    required this.rejectFocus,
    required this.subject,
  });

  final AsyncValueSetter<MediaPlayerController> requestFocus;
  final ValueSetter<MediaPlayerController> rejectFocus;
  final MediaPlayerController subject;

  @override
  String get id => subject.id;

  @override
  PlayerState get value => subject.value;

  @override
  set value(PlayerState newValue) {
    subject.value = newValue;
  }

  @override
  void addListener(VoidCallback listener) {
    subject.addListener(listener);
  }

  @override
  bool get hasListeners => subject.hasListeners;

  @override
  void notifyListeners() {
    subject.notifyListeners();
  }

  @override
  void removeListener(VoidCallback listener) {
    subject.removeListener(listener);
  }

  @override
  Future<void> pause() => subject.pause();

  @override
  Future<void> play() {
    requestFocus(this);

    return subject.play();
  }

  @override
  Future<void> seek(Duration duration) => subject.seek(duration);

  @override
  Future<void> stop() => subject.stop();

  @override
  void dispose() {
    rejectFocus(this);
    subject.dispose();
  }
}
