part of 'chat_choose_forward_bloc.dart';

class ChatChooseForwardState extends Equatable {
  const ChatChooseForwardState({
    required this.chatRooms,
    required this.currentUser,
    this.searchFilter = '',
  });

  final String currentUser;
  final List<Room> chatRooms;
  final String searchFilter;

  @override
  List<Object> get props => [
        currentUser,
        chatRooms,
        searchFilter,
      ];

  ChatChooseForwardState copyWith({
    List<Room>? chatRooms,
    String? searchFilter,
  }) {
    return ChatChooseForwardState(
      currentUser: currentUser,
      chatRooms: chatRooms ?? this.chatRooms,
      searchFilter: searchFilter ?? this.searchFilter,
    );
  }
}
