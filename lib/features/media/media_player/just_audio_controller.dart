import 'dart:async';

import 'package:cross_file/cross_file.dart';
import 'package:dls_one/core/file_manager/file_manager.dart';
import 'package:dls_one/features/media/media_player/media_player_controller.dart';
import 'package:flutter/foundation.dart';
import 'package:just_audio/just_audio.dart' as ja;
import 'package:rest_api/rest_api.dart';
import 'package:rxdart/rxdart.dart';

class JustAudioController extends MediaPlayerController {
  JustAudioController({
    required MediaSource source,
    required FileManager fileManager,
    required DlsRestApi api,
    required super.id,
    AudioLoopMode audioLoopMode = AudioLoopMode.one,
  })  : _player = ja.AudioPlayer(),
        _jaSource = source.buildSource(fileManager, api) {
    switch (audioLoopMode) {
      case AudioLoopMode.off:
        _player.setLoopMode(ja.LoopMode.off);
        break;
      case AudioLoopMode.one:
        _player.setLoopMode(ja.LoopMode.one);
        break;
      case AudioLoopMode.all:
        _player.setLoopMode(ja.LoopMode.all);
        break;
    }
    _player.setAudioSource(_jaSource);

    sub = Rx.combineLatest4(
      _player.positionStream.doOnData((event) async {
        if (event == _player.duration) {
          await Future.delayed(Duration.zero);
          await _player.stop();
        }
      }),
      _player.durationStream,
      _player.processingStateStream.map((state) => state.playerState),
      _player.playingStream,
      (position, duration, state, isPlaying) => PlayerState(
        position: position,
        duration: duration,
        processingState: state,
        isPlaying: isPlaying,
      ),
    ).listen((state) {
      value = state;
    });
  }

  final ja.AudioPlayer _player;
  final ja.AudioSource _jaSource;

  late StreamSubscription<PlayerState> sub;

  @override
  Future<void> play() {
    return _player.play();
  }

  @override
  Future<void> pause() {
    return _player.pause();
  }

  @override
  Future<void> stop() {
    return _player.stop();
  }

  @override
  Future<void> seek(Duration duration) {
    return _player.seek(duration);
  }

  @override
  Future<void> dispose() async {
    super.dispose();
    await sub.cancel();
    await _player.stop();
    await _player.dispose();
  }
}

extension on MediaSource {
  ja.AudioSource buildSource(
    FileManager fileManager,
    DlsRestApi api,
  ) =>
      when(
        asset: ja.AudioSource.asset,
        url: (name, uri, mimeType) => kIsWeb
            ? LazyBytesAudioSource(
                () => api.getBytes(uri).then(
                      (value) => FileData(
                        mimeType: mimeType,
                        content: value,
                      ),
                    ),
              )
            : XFileAudioSource(
                () => fileManager.fetchFile(
                  name,
                  uri,
                ),
              ),
        file: (xFile) => ja.AudioSource.file(xFile.path),
      );
}

extension on ja.ProcessingState {
  ProcessingState get playerState {
    switch (this) {
      case ja.ProcessingState.idle:
        return ProcessingState.idle;
      case ja.ProcessingState.loading:
        return ProcessingState.loading;
      case ja.ProcessingState.buffering:
        return ProcessingState.buffering;
      case ja.ProcessingState.ready:
        return ProcessingState.ready;
      case ja.ProcessingState.completed:
        return ProcessingState.completed;
    }
  }
}

class XFileAudioSource extends LazyBytesAudioSource {
  XFileAudioSource(AsyncValueGetter<XFile> fileFetcher)
      : super(
          () => fileFetcher().then((value) async {
            final bytes = await value.readAsBytes();
            return FileData(
              mimeType: value.mimeType ?? 'audio/mpeg',
              content: bytes,
            );
          }),
        );
}

@immutable
class FileData {
  const FileData({
    required this.mimeType,
    required this.content,
  });

  final String mimeType;
  final Uint8List content;
}

class LazyBytesAudioSource extends ja.StreamAudioSource {
  LazyBytesAudioSource(this.contentFetcher);

  final AsyncValueGetter<FileData> contentFetcher;

  Completer<FileData>? _contentCompleter;

  FutureOr<FileData> get _data {
    _contentCompleter ??= Completer<FileData>()..complete(contentFetcher());

    return _contentCompleter!.future;
  }

  @override
  Future<ja.StreamAudioResponse> request([int? start, int? end]) async {
    final data = await _data;
    final bytes = data.content;

    start ??= 0;
    end ??= bytes.length;
    return ja.StreamAudioResponse(
      sourceLength: bytes.length,
      contentLength: end - start,
      offset: start,
      stream: Stream.value(bytes.sublist(start, end)),
      contentType: data.mimeType,
    );
  }
}
