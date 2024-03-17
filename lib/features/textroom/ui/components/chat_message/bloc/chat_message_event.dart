part of 'chat_message_bloc.dart';

@freezed
class ChatMessageEvent with _$ChatMessageEvent {
  const ChatMessageEvent._();

  const factory ChatMessageEvent.openFile(BuildContext context) = _OpenFileReadEvMtxEvent;

  const factory ChatMessageEvent.deleteFile({required BuildContext context}) =
      _DeleteFileEvMtxEvent;

  /// системные события
  const factory ChatMessageEvent.read() = _ReadEvMtxEvent;
}
