part of 'chat_message_bloc.dart';

@freezed
class ChatMessageState with _$ChatMessageState {
  const ChatMessageState._();

  const factory ChatMessageState.data({
    required DlsChatMessage event,
    required DLSUser? user,
    String? transaction,
  }) = _DataEvMtxState;

  const factory ChatMessageState.failure({
    required DlsChatMessage event,
    required DLSUser? user,
    required String message,
    String? transaction,
  }) = _FailureEvMtxState;
}
