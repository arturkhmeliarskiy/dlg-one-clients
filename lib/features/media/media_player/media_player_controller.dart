import 'package:cross_file/cross_file.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'media_player_controller.freezed.dart';

@freezed
class MediaSource with _$MediaSource {
  const factory MediaSource.asset(String asset) = AssetMediaSource;

  const factory MediaSource.url(
    String name,
    Uri uri,
    String mimeType,
  ) = UrlMediaSource;

  /// Только для "IO" платформ.
  const factory MediaSource.file(XFile file) = FileMediaSource;
}

enum ProcessingState {
  idle,
  loading,
  buffering,
  ready,
  completed,
  error,
}

enum AudioLoopMode {
  off,
  one,
  all,
}

@immutable
class PlayerState {
  const PlayerState({
    required this.position,
    required this.duration,
    required this.processingState,
    required this.isPlaying,
  });

  final Duration position;
  final Duration? duration;
  final ProcessingState processingState;
  final bool isPlaying;

  @override
  String toString() =>
      'PlayerState(position: $position, duration: $duration, processingState: $processingState, isPlaying: $isPlaying)';
}

abstract class MediaPlayerController extends ValueNotifier<PlayerState> {
  MediaPlayerController({
    required this.id,
    PlayerState? initialValue,
  }) : super(
          initialValue ??
              const PlayerState(
                position: Duration.zero,
                duration: null,
                processingState: ProcessingState.idle,
                isPlaying: false,
              ),
        );

  final String id;

  Future<void> play();

  Future<void> pause();

  Future<void> stop();

  Future<void> seek(Duration duration);
}
