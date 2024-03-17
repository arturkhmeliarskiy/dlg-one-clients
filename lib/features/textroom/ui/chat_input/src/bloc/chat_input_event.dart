part of 'chat_input_bloc.dart';

@freezed
class ChatInputEvent with _$ChatInputEvent {
  /// обновить текст
  const factory ChatInputEvent.update(Document message) = _UpdateChatInputEvent;

  /// добавить файлы
  const factory ChatInputEvent.attachFiles({required List<DLSFile> files}) =
      _AttachFilesChatInputEvent;

  /// удалить файл
  const factory ChatInputEvent.detachFile(String key) =
      _DetachFileChatInputEvent;

  /// очистить стейт
  const factory ChatInputEvent.reset() = _ResetChatInputEvent;

  /// переключение типа рекордера и запросы прав
  const factory ChatInputEvent.updateRecorderType(RecorderType val) =
      _UpdateRecorderTypeChatInputEvent;

  /// старт записи аудио
  const factory ChatInputEvent.audioStartRec() = _AudioStartRecChatInputEvent;

  /// стоп записи аудио
  const factory ChatInputEvent.audioStopRec() = _AudioStopRecChatInputEvent;

  /// отмена записи аудио
  const factory ChatInputEvent.audioCancelRec() = _AudioCancelRecChatInputEvent;

  /// старт записи видео
  const factory ChatInputEvent.videoStartRec() = _VideoStartRecChatInputEvent;

  /// стоп записи видео
  const factory ChatInputEvent.videoStopRec() = _VideoStopRecChatInputEvent;

  /// отмена записи видео
  const factory ChatInputEvent.videoCancelRec() = _VideoCancelRecChatInputEvent;

  /// запись
  const factory ChatInputEvent.setRecording(bool isRecording) =
      _SetRecordingChatInputEvent;

  /// показать/скрыть панель с поиском пользователей
  const factory ChatInputEvent.showAt() = _ShowAtChatInputEvent;

  /// показать/скрыть смайлы
  const factory ChatInputEvent.showEmoji() = _ShowEmojiChatInputEvent;

  /// показать/скрыть форматирование
  const factory ChatInputEvent.showFormatter() = _ShowFormatterChatInputEvent;
}
