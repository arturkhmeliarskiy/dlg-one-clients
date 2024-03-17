part of 'chat_input_bloc.dart';

@freezed
class ChatInputState with _$ChatInputState {
  const ChatInputState._();

  const factory ChatInputState.hasPayload({
    required bool atShowing,
    required bool emojiShowing,
    required bool formatterShowing,
    required bool isRecording,
    required RecorderType recorderType,
    required Document message,
    required List<DLSFile> files,
    String? transaction,
  }) = _HasPayloadChatInputState;

  const factory ChatInputState.loading({
    required bool atShowing,
    required bool emojiShowing,
    required bool formatterShowing,
    required bool isRecording,
    required RecorderType recorderType,
    required Document message,
    required List<DLSFile> files,
    String? transaction,
  }) = _LoadingChatInputState;

  const factory ChatInputState.failure({
    required bool atShowing,
    required bool emojiShowing,
    required bool formatterShowing,
    required bool isRecording,
    required RecorderType recorderType,
    required String failureMessage,
    required Document message,
    required List<DLSFile> files,
    String? transaction,
  }) = _FailureChatInputState;

  String get plainMessage {
    return message.toPlainText();
  }

  DlsChatMessageContent get formattedMessage {
    return DlsChatMessageContent.buildContent(
      message.toDelta().toJson().cast<Map<String, dynamic>>(),
    );
  }

  /// получить первую ссылку в сообщении
  String get url {
    for (final insert in message.toDelta().toJson()) {
      if (insert?['attributes']?['link'] != null) {
        return insert['attributes']['link'].toString();
      }
    }
    return '';
  }

  /// сообщение можно отправить
  bool get canSend => maybeWhen(
        orElse: () => false,
        hasPayload: (
          atShowing,
          emojiShowing,
          formatterShowing,
          isRecording,
          recorderType,
          message,
          files,
          transaction,
        ) {
          return message.toPlainText().isNotEmpty || files.isNotEmpty;
        },
      );

  /// можно записывать аудио/видео сообщение
  bool get canRecord => maybeWhen(
        orElse: () => false,
        hasPayload: (
          atShowing,
          emojiShowing,
          formatterShowing,
          isRecording,
          recorderType,
          message,
          files,
          transaction,
        ) {
          return !canSend;
        },
      );

  /// показывать или нет панель файлов
  bool get filesPanelShowing => maybeWhen(
        orElse: () => false,
        hasPayload: (
          atShowing,
          emojiShowing,
          formatterShowing,
          isRecording,
          recorderType,
          message,
          files,
          transaction,
        ) {
          return files.isNotEmpty;
        },
      );

  /// все аудио
  List<DLSFile> get audios => _selectAudios(files);

  ///все видео
  List<DLSFile> get videos => _selectVideos(files);

  /// все картинки
  List<DLSFile> get images => _selectImages(files);

  /// все документы
  List<DLSFile> get docs => _selectDocs(files);

  /// Оставляет только документы
  List<DLSFile> _selectDocs(List<DLSFile> files) {
    return files
        .where(
          (e) =>
              // TODO(alexsh): use [MimeType] implemented by @DmitryDimov
              e.extension != null &&
              (e.extension!.toLowerCase().endsWith('xlsx') ||
                  e.extension!.toLowerCase().endsWith('pdf') ||
                  e.extension!.toLowerCase().endsWith('doc') ||
                  e.extension!.toLowerCase().endsWith('docx') ||
                  e.extension!.toLowerCase().endsWith('xls') ||
                  e.extension!.toLowerCase().endsWith('xlsx') ||
                  e.extension!.toLowerCase().endsWith('ppt') ||
                  e.extension!.toLowerCase().endsWith('pptx') ||
                  e.extension!.toLowerCase().endsWith('txt') ||
                  e.extension!.toLowerCase().endsWith('zip') ||
                  e.extension!.toLowerCase().endsWith('rar') ||
                  e.extension!.toLowerCase().endsWith('fb2') ||
                  e.extension!.toLowerCase().endsWith('epub') ||
                  e.extension!.toLowerCase().endsWith('mobi')),
        )
        .toList();
  }

  /// Оставляет только видеофайлы
  List<DLSFile> _selectVideos(List<DLSFile> files) {
    return files
        .where(
          (e) =>
              // TODO(alexsh): use [MimeType] implemented by @DmitryDimov
              e.extension != null &&
              (e.extension!.toLowerCase().endsWith('mp4') ||
                  e.extension!.toLowerCase().endsWith('avi') ||
                  e.extension!.toLowerCase().endsWith('mov') ||
                  e.extension!.toLowerCase().endsWith('mkv') ||
                  e.extension!.toLowerCase().endsWith('3gp') ||
                  e.extension!.toLowerCase().endsWith('mpeg') ||
                  e.extension!.toLowerCase().endsWith('mpg') ||
                  e.extension!.toLowerCase().endsWith('swf') ||
                  e.extension!.toLowerCase().endsWith('asf') ||
                  e.extension!.toLowerCase().endsWith('mp2') ||
                  e.extension!.toLowerCase().endsWith('wmv') ||
                  e.extension!.toLowerCase().endsWith('mts') ||
                  e.extension!.toLowerCase().endsWith('flv')),
        )
        .toList();
  }

  /// Оставляет в списке файлы изображений
  List<DLSFile> _selectImages(List<DLSFile> files) {
    return files
        .where(
          (e) =>
              // TODO(alexsh): use [MimeType] implemented by @DmitryDimov
              e.extension != null &&
              (e.extension!.toLowerCase().endsWith('jpeg') ||
                  e.extension!.toLowerCase().endsWith('jpg') ||
                  e.extension!.toLowerCase().endsWith('png')),
        )
        .toList();
  }

  /// Оставляет только аудио файлы
  List<DLSFile> _selectAudios(List<DLSFile> files) {
    return files
        .where(
          (e) =>
              // TODO(alexsh): use [MimeType] implemented by @DmitryDimov
              e.extension != null &&
              (e.extension!.toLowerCase().endsWith('m4a') ||
                  e.extension!.toLowerCase().endsWith('opus') ||
                  e.extension!.toLowerCase().endsWith('wav') ||
                  e.extension!.toLowerCase().endsWith('mp3')),
        )
        .toList();
  }
}
