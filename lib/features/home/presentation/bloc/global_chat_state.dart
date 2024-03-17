part of 'global_chat_bloc.dart';

class GlobalChatState extends Equatable {
  /// Constructor
  GlobalChatState({
    this.publicRooms = const [],
    this.publicRoomsUnreadCount = 0,
    this.privateRooms = const [],
    this.privateRoomsUnreadCount = 0,
    DateTime? lastTimeUpdate,
    this.roomNames = const {},
  }) : lastTimeUpdate = lastTimeUpdate ?? DateTime.now();

  // final bool loading;
  final List<Room> publicRooms;
  final int publicRoomsUnreadCount;
  final List<Room> privateRooms;
  final int privateRoomsUnreadCount;
  final DateTime lastTimeUpdate;
  final Map<String, String> roomNames;

  GlobalChatState copyWith({
    List<Room>? publicRooms,
    int? publicRoomsUnreadCount,
    List<Room>? privateRooms,
    int? privateRoomsUnreadCount,
    DateTime? lastTimeUpdate,
    Map<String, String>? roomNames,
  }) {
    return GlobalChatState(
      publicRooms: publicRooms ?? this.publicRooms,
      publicRoomsUnreadCount:
          publicRoomsUnreadCount ?? this.publicRoomsUnreadCount,
      privateRooms: privateRooms ?? this.privateRooms,
      privateRoomsUnreadCount:
          privateRoomsUnreadCount ?? this.privateRoomsUnreadCount,
      lastTimeUpdate: lastTimeUpdate ?? DateTime.now(),
      roomNames: roomNames ?? this.roomNames,
    );
  }

  List<Room> get chats => [...publicRooms, ...privateRooms];

  @override
  List<Object?> get props => [
        publicRooms,
        publicRoomsUnreadCount,
        privateRooms,
        privateRoomsUnreadCount,
        lastTimeUpdate,
        roomNames,
      ];
}
