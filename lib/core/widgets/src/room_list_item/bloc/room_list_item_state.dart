part of 'room_list_item_bloc.dart';

class RoomListItemState extends Equatable {
  /// Constructor
  const RoomListItemState({
    required this.matrixChatId,
    this.opponentMatrixUserId = '',
    this.displayName = '',
    this.isMuted = false,
    this.lastMessage,
    this.lastUpdateTime,
    this.unreadCount = 0,
  });

  final String matrixChatId;
  final String opponentMatrixUserId;
  final String displayName;
  final bool isMuted;
  final DateTime? lastUpdateTime;
  final String? lastMessage;
  final int unreadCount;

  @override
  List<Object?> get props => [
        matrixChatId,
        opponentMatrixUserId,
        displayName,
        isMuted,
        lastUpdateTime,
        unreadCount,
      ];

  RoomListItemState copyWith({
    String? opponentMatrixUserId,
    String? displayName,
    bool? isMuted,
    String? lastMessage,
    DateTime? lastUpdateTime,
    int? unreadCount,
  }) {
    return RoomListItemState(
      matrixChatId: matrixChatId,
      opponentMatrixUserId: opponentMatrixUserId ?? this.opponentMatrixUserId,
      displayName: displayName ?? this.displayName,
      isMuted: isMuted ?? this.isMuted,
      lastMessage: lastMessage ?? this.lastMessage,
      lastUpdateTime: lastUpdateTime ?? this.lastUpdateTime,
      unreadCount: unreadCount ?? this.unreadCount,
    );
  }
}
