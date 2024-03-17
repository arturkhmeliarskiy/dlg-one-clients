// ignore_for_file: cascade_invocations

import 'dart:async';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:camera/camera.dart';
import 'package:dls_matrix_client/dls_matrix_client.dart';
import 'package:dls_one/features/textroom/ui/chat_input/src/bloc/recorder_type.dart';
import 'package:dls_one/models/dls_file.dart';
import 'package:dls_one/utils/utils.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:record/record.dart';

///
/// Created by Nightwelf 18.01.2023 10:30
/// Telegram: @nightwelf
///
part 'chat_input_bloc.freezed.dart';
part 'chat_input_event.dart';
part 'chat_input_state.dart';

class ChatInputBloc extends Bloc<ChatInputEvent, ChatInputState> {
  /// логика управления поля ввода
  ChatInputBloc(
    super.initialState,
  ) {
    on<ChatInputEvent>(
      (event, emitter) => event.map<Future<void>>(
        update: (event) => _update(event, emitter),
        attachFiles: (event) => _attachFiles(event, emitter),
        detachFile: (event) => _detachFile(event, emitter),
        reset: (event) => _reset(event, emitter),
        updateRecorderType: (event) => _updateRecorderType(event, emitter),
        audioStartRec: (event) => _audioStartRec(event, emitter),
        audioStopRec: (event) => _audioStopRec(event, emitter),
        audioCancelRec: (event) => _audioCancelRec(event, emitter),
        videoStartRec: (event) => _videoStartRec(event, emitter),
        videoStopRec: (event) => _videoStopRec(event, emitter),
        videoCancelRec: (event) => _videoCancelRec(event, emitter),
        setRecording: (event) => _setRecording(event, emitter),
        showAt: (event) => _showAt(event, emitter),
        showEmoji: (event) => _showEmoji(event, emitter),
        showFormatter: (event) => _showFormatter(event, emitter),
      ),
      transformer: sequential(),
    );
  }

  /// писалка аудио
  final _record = Record();

  /// показать/скрыть панель с поиском пользователей
  Future<void> _showAt(
    _ShowAtChatInputEvent event,
    Emitter<ChatInputState> emitter,
  ) async {
    state.when(
      hasPayload: (_1, _2, _3, _4, _5, _6, _7, _8) =>
          emitter(state.copyWith(atShowing: !state.atShowing)),
      loading: (_1, _2, _3, _4, _5, _6, _7, _8) =>
          emitter(state.copyWith(atShowing: !state.atShowing)),
      failure: (_1, _2, _3, _4, _5, _6, _7, _8, _9) =>
          emitter(state.copyWith(atShowing: !state.atShowing)),
    );
  }

  /// показать/скрыть смайлы
  Future<void> _showEmoji(
    _ShowEmojiChatInputEvent event,
    Emitter<ChatInputState> emitter,
  ) async {
    state.when(
      hasPayload: (_1, _2, _3, _4, _5, _6, _7, _8) =>
          emitter(state.copyWith(emojiShowing: !state.emojiShowing)),
      loading: (_1, _2, _3, _4, _5, _6, _7, _8) =>
          emitter(state.copyWith(emojiShowing: !state.emojiShowing)),
      failure: (_1, _2, _3, _4, _5, _6, _7, _8, _9) =>
          emitter(state.copyWith(emojiShowing: !state.emojiShowing)),
    );
  }

  Future<void> _showFormatter(
    _ShowFormatterChatInputEvent event,
    Emitter<ChatInputState> emitter,
  ) async {
    state.when(
      hasPayload: (_1, _2, _3, _4, _5, _6, _7, _8) =>
          emitter(state.copyWith(formatterShowing: !state.formatterShowing)),
      loading: (_1, _2, _3, _4, _5, _6, _7, _8) =>
          emitter(state.copyWith(formatterShowing: !state.formatterShowing)),
      failure: (_1, _2, _3, _4, _5, _6, _7, _8, _9) =>
          emitter(state.copyWith(formatterShowing: !state.formatterShowing)),
    );
  }

  /// переключение типа рекордера и запросы прав
  Future<void> _updateRecorderType(
    _UpdateRecorderTypeChatInputEvent event,
    Emitter<ChatInputState> emitter,
  ) async {
    /// берем права на запись
    final status =
        kIsWeb ? PermissionStatus.granted : await Permission.camera.status;
    if (!status.isGranted) {
      await Permission.camera.request();
    }
    await _record.hasPermission();

    state.when(
      hasPayload: (_1, _2, _3, _4, _5, _6, _7, _8) =>
          emitter(state.copyWith(recorderType: event.val)),
      loading: (_1, _2, _3, _4, _5, _6, _7, _8) =>
          emitter(state.copyWith(recorderType: event.val)),
      failure: (_1, _2, _3, _4, _5, _6, _7, _8, _9) =>
          emitter(state.copyWith(recorderType: event.val)),
    );
  }

  /// запись
  Future<void> _setRecording(
    _SetRecordingChatInputEvent event,
    Emitter<ChatInputState> emitter,
  ) async =>
      state.when(
        hasPayload: (_1, _2, _3, _4, _5, _6, _7, _8) =>
            emitter(state.copyWith(isRecording: event.isRecording)),
        loading: (_1, _2, _3, _4, _5, _6, _7, _8) =>
            emitter(state.copyWith(isRecording: event.isRecording)),
        failure: (_1, _2, _3, _4, _5, _6, _7, _8, _9) =>
            emitter(state.copyWith(isRecording: event.isRecording)),
      );

  /// очистить стейт
  Future<void> _reset(
    _ResetChatInputEvent event,
    Emitter<ChatInputState> emitter,
  ) async {
    emitter(
      state.maybeWhen(
        orElse: () => state,
        hasPayload: (_1, _2, _3, _4, _5, _6, _7, _8) {
          return (state as _HasPayloadChatInputState).copyWith(
            message: Document(),
            files: [],
          );
        },
      ),
    );
  }

  /// добавить файлы
  Future<void> _attachFiles(
    _AttachFilesChatInputEvent event,
    Emitter<ChatInputState> emitter,
  ) async {
    await state.maybeWhen(
      orElse: () {},
      hasPayload: (_1, _2, _3, _4, _5, _6, _7, _8) async {
        final newFiles = state.files.toList()..addAll(event.files);

        /// кинуть событие что получен файл
        emitter(
          (state as _HasPayloadChatInputState).copyWith(
            files: newFiles,
          ),
        );
      },
    );
  }

  /// удалить файл
  Future<void> _detachFile(
    _DetachFileChatInputEvent event,
    Emitter<ChatInputState> emitter,
  ) async {
    state.maybeWhen(
      orElse: () {},
      hasPayload: (_1, _2, _3, _4, _5, _6, files, _8) {
        final res = files.toList();
        res.removeWhere((e) => e.key == event.key);
        emitter(
          (state as _HasPayloadChatInputState).copyWith(
            files: res,
          ),
        );
      },
    );
  }

  /// обновить текст
  Future<void> _update(
    _UpdateChatInputEvent event,
    Emitter<ChatInputState> emitter,
  ) async {
    state.maybeWhen(
      orElse: () {},
      hasPayload: (_1, _2, _3, _4, _5, _6, _7, _8) {
        emitter(
          (state as _HasPayloadChatInputState).copyWith(
            message: event.message,
            transaction: getRandomString,
          ),
        );
      },
    );
  }

  /// старт записи аудио
  Future<void> _audioStartRec(
    _AudioStartRecChatInputEvent event,
    Emitter<ChatInputState> emitter,
  ) async {
    if (!(await _record.isRecording())) {
      add(const ChatInputEvent.setRecording(true));
      if (await _record.hasPermission()) {
        await _record.start();
      }
    }
  }

  /// стоп записи аудио
  Future<void> _audioStopRec(
    _AudioStopRecChatInputEvent event,
    Emitter<ChatInputState> emitter,
  ) async {
    if (await _record.isRecording()) {
      /// для веба это blob
      final pathOrBlob = await _record.stop();
      if (pathOrBlob != null) {
        final key = getRandomString;
        final fileName = 'audio_message_$key.m4a';
        final xFile = XFile(
          pathOrBlob.replaceAll('file://', ''),
          name: fileName,
        );
        final file = await DLSFile.fromXFile(
          xFile,
          fileName: fileName,
        );
        add(ChatInputEvent.attachFiles(files: [file]));
      }
      add(const ChatInputEvent.setRecording(false));
    }
  }

  /// отмена записи аудио
  Future<void> _audioCancelRec(
    _AudioCancelRecChatInputEvent event,
    Emitter<ChatInputState> emitter,
  ) async {
    if (await _record.isRecording()) {
      await _record.stop();
    }
    add(const ChatInputEvent.setRecording(false));
  }

  /// старт записи видео
  Future<void> _videoStartRec(
    _VideoStartRecChatInputEvent event,
    Emitter<ChatInputState> emitter,
  ) async {
    add(const ChatInputEvent.setRecording(true));
  }

  /// стоп записи видео
  Future<void> _videoStopRec(
    _VideoStopRecChatInputEvent event,
    Emitter<ChatInputState> emitter,
  ) async {
    add(const ChatInputEvent.setRecording(false));
  }

  /// отмена записи видео
  Future<void> _videoCancelRec(
    _VideoCancelRecChatInputEvent event,
    Emitter<ChatInputState> emitter,
  ) async {
    add(const ChatInputEvent.setRecording(false));
  }
}
