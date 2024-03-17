part of 'global_chat_bloc.dart';

@freezed
class GlobalChatEvent with _$GlobalChatEvent {
  const factory GlobalChatEvent.changes({
    List<Room>? publicRooms,
    int? publicRoomsUnreadCount,
    List<Room>? privateRooms,
    int? privateRoomsUnreadCount,
  }) = GlobalChatChanges;
}
