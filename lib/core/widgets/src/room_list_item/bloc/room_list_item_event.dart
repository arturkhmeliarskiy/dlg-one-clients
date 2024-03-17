part of 'room_list_item_bloc.dart';

@freezed
class RoomListItemEvent with _$RoomListItemEvent {
  const factory RoomListItemEvent.init() = _RoomListItemInit;

  const factory RoomListItemEvent.changes({
    String? opponentUserId,
    String? displayName,
    bool? isMuted,
    DateTime? lastUpdateTime,
    String? lastMessage,
    int? unreadCount,
  }) = _RoomListItemChanges;
}
