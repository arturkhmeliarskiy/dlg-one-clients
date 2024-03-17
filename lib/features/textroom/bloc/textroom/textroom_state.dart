part of 'textroom_bloc.dart';

enum ChatModeType {
  /// Mean we are in standard chat list mode
  chatModeTypeList,

  /// Mean we are in select messages mode
  chatModeTypeSelect,
}

class TextRoomState extends Equatable {
  const TextRoomState({
    this.loading = false,
    this.events = const [],
    this.readMarkers = const [],
    this.selectedMessages = const [],
    this.forwardMessages = const [],
    this.modeType = ChatModeType.chatModeTypeList,
    this.markedEditMessage,
    this.lastReadEventId,
    this.failure,
    this.transaction,
    this.threadMessageId,
    this.threadMessage,
  });

  final bool loading;
  final List<DlsChatMessage> events;
  final List<RoomReadMarker> readMarkers;
  final ChatModeType modeType;
  final List<DlsChatMessageText> selectedMessages;
  final DlsChatMessageText? markedEditMessage;
  final List<DlsChatMessageText> forwardMessages;
  final String? transaction;
  final String? lastReadEventId;
  final String? failure;
  final String? threadMessageId;
  final DlsChatMessageText? threadMessage;

  @override
  List<Object?> get props => [
        loading,
        events,
        readMarkers,
        markedEditMessage,
        lastReadEventId,
        failure,
        transaction,
        modeType,
        selectedMessages,
        forwardMessages,
        threadMessageId,
        threadMessage,
      ];

  TextRoomState copyWith({
    bool? loading,
    List<DlsChatMessage>? events,
    List<RoomReadMarker>? readMarkers,
    DlsChatMessageText? markedEditMessage,
    String? lastReadEventId,
    String? failure,
    String? transaction,
    ChatModeType? modeType,
    List<DlsChatMessageText>? selectedMessages,
    List<DlsChatMessageText>? forwardMessages,
    DlsChatMessageText? threadMessage,
  }) {
    return TextRoomState(
      loading: loading ?? this.loading,
      events: events ?? this.events,
      readMarkers: readMarkers ?? this.readMarkers,
      modeType: modeType ?? this.modeType,
      selectedMessages: selectedMessages ?? this.selectedMessages,
      forwardMessages: forwardMessages ?? this.forwardMessages,
      markedEditMessage: markedEditMessage,
      lastReadEventId: lastReadEventId,
      failure: failure,
      threadMessageId: threadMessageId,
      transaction: transaction ?? this.transaction,
      threadMessage: threadMessage ?? this.threadMessage,
    );
  }
}
