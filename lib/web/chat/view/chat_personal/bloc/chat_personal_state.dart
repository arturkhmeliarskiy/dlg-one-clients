part of 'chat_personal_bloc.dart';

@immutable
class ChatPersonalState extends Equatable {
  /// Constructor
  const ChatPersonalState({
    this.selectedMessage,
  });

  final DlsChatMessageText? selectedMessage;

  ChatPersonalState copyWith({
    DlsChatMessageText? selectedMessage,
  }) {
    return ChatPersonalState(
      selectedMessage: selectedMessage,
    );
  }

  @override
  List<Object?> get props => [
        selectedMessage,
      ];
}
