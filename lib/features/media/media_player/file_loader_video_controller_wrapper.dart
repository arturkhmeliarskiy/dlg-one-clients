import 'dart:async';

import 'package:cross_file/cross_file.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/media/media_player/media_player_controller.dart';
import 'package:dls_one/features/media/media_player/video_player_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FileLoaderVideoControllerWrapper extends VideoPlayerController {
  FileLoaderVideoControllerWrapper({
    required this.fileManager,
    required this.subjectBuilder,
    required this.source,
    required super.id,
  });

  final MediaSource source;
  final FileManager fileManager;
  final VideoPlayerController Function(XFile) subjectBuilder;
  VideoPlayerController? subject;
  bool isDisposed = false;
  bool willPlay = false;

  @override
  Future<void> initialize() async {
    if (subject != null || value.processingState == ProcessingState.loading) {
      return;
    }

    value = const PlayerState(
      position: Duration.zero,
      duration: null,
      processingState: ProcessingState.loading,
      isPlaying: false,
    );

    final file = await source.when<FutureOr<XFile>>(
      asset: (asset) async {
        final name = asset.split('/').last;

        final bytes = await rootBundle.load(asset); //load sound from assets
        final bytesList =
            bytes.buffer.asUint8List(bytes.offsetInBytes, bytes.lengthInBytes);

        final file = await fileManager.saveData(name, bytesList);

        return file;
      },
      url: (name, uri, mimeType) =>
          fileManager.fetchFile(name, uri, mimeType: mimeType),
      file: (xFile) => xFile,
    );

    if (isDisposed) return;

    subject = subjectBuilder(file);
    subject!.addListener(updateValue);
    await subject!.initialize();
    notifyListeners();

    if (willPlay) {
      await subject!.play();
    }
  }

  void updateValue() {
    value = subject!.value;
    notifyListeners();
  }

  @override
  PlayerState get value => subject?.value ?? super.value;

  @override
  set value(PlayerState newValue) {
    if (subject != null) {
      subject?.value = newValue;
    } else {
      super.value = newValue;
    }
  }

  @override
  void dispose() {
    isDisposed = true;
    super.dispose();
    if (subject != null) {
      subject
        ?..removeListener(updateValue)
        ..dispose();
    }
  }

  @override
  Widget makeVideoViewer() =>
      subject?.makeVideoViewer() ??
      const Center(
        child: CircularProgressIndicator(),
      );

  @override
  Future<void> pause() async {
    if (subject != null) {
      await subject?.pause();
    } else {
      willPlay = false;
    }
  }

  @override
  Future<void> play() async {
    if (subject != null) {
      await subject?.play();
    } else {
      willPlay = true;
    }
  }

  @override
  Future<void> seek(Duration duration) async {
    await subject?.seek(duration);
  }

  @override
  Future<void> stop() async {
    if (subject != null) {
      await subject?.stop();
    } else {
      willPlay = false;
    }
  }
}
