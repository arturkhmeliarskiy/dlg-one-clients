part of 'textroom_bloc.dart';

@Freezed(copyWith: false)
class TextRoomEvent with _$TextRoomEvent {
  /// создать блок управления и прочитать последние 30 сообщений
  const factory TextRoomEvent.createMtx() = _ChatCreate;

  /// прочитать первые сообщения чата
  const factory TextRoomEvent.readMtx({
    required List<DlsChatMessage> messages,
    String? lastReadEventId,
    DlsChatMessageText? threadMessage,
  }) = _ChatRead;

  const factory TextRoomEvent.requestHistory() = _ChatRequestHistory;

  const factory TextRoomEvent.requestNewMessages() = _ChatRequestNewMessages;

  /// добавить сообщению в ленте файл
  const factory TextRoomEvent.addFileToEventMtx(ChatMessageBloc evMtxBloc) =
      _ChatAddFileToEvent;

  /// покинуть чат
  const factory TextRoomEvent.leaveMtx({required Function callback}) =
      _ChatLeave;

  const factory TextRoomEvent.markEditMessage(DlsChatMessageText? event) =
      _ChatMarkEditMessage;

  /// удалить сообщение из ленты
  const factory TextRoomEvent.deleteEvent(List<String> eventIds) =
      _ChatDeleteEvent;

  /// отправить сообщение
  const factory TextRoomEvent.sendMtx({
    /// текст отправляемого сообщения
    required String plainMessage,

    /// форматированный текст отправляемого сообщения
    required DlsChatMessageContent formattedMessage,

    /// файлы отправляемого сообщения
    required List<DLSFile> files,
  }) = _ChatSendMessage;

  /// вкл/выкл уведомления
  const factory TextRoomEvent.enableNotifications({required bool enable}) =
      _ChatEnableNotifications;

  /// список чатов прокрутили
  const factory TextRoomEvent.messageListScrollChanged(List<int> itemIndexes) =
      _ChatMessageListScroll;

  const factory TextRoomEvent.updateReadMarkers() = _ChatUpdateReadMarkers;

  const factory TextRoomEvent.changeSelectMessage(DlsChatMessageText message) =
      _ChangeSelectMessage;

  const factory TextRoomEvent.cleanSelectedMessages() = _CleanSelectedMessages;

  const factory TextRoomEvent.cleanForwardMessages() = _CleanForwardMessages;
}
