import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:collection/collection.dart';
import 'package:common/common.dart';
import 'package:dls_matrix_client/dls_matrix_client.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/utils/src/quill_editor_helper.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:matrix/matrix.dart';

part 'room_list_item_bloc.freezed.dart';

part 'room_list_item_event.dart';

part 'room_list_item_state.dart';

class RoomListItemBloc extends Bloc<RoomListItemEvent, RoomListItemState>
    with MatrixEventListener, SubscriptionMixin {
  /// Constructor
  RoomListItemBloc({
    required String roomId,
    required DlsMatrixClient matrixClient,
    required UsersBloc users,
  })  : _matrixClient = matrixClient,
        _users = users,
        super(RoomListItemState(matrixChatId: roomId)) {
    on<RoomListItemEvent>(
      (event, emitter) => event.map(
        init: (event) => _onRoomListItemInit(event, emitter),
        changes: (event) => _onRoomListItemChanges(event, emitter),
      ),
      transformer: sequential(),
    );
    _matrixClient.addDirectEventListener(state.matrixChatId, this);
    _users.add(
      UsersEvent.readRoom(
        roomId: state.matrixChatId,
      ),
    );
    addSubscription(
      _users.stream.listen((event) {
        final room = _matrixClient.client.getRoomById(state.matrixChatId);
        if (room == null) {
          return;
        }
        final opponents = room
            .getParticipants()
            .where((e) => e.id != _matrixClient.myId)
            .map((e) => e.id);
        add(
          RoomListItemEvent.changes(
            displayName: room.isDirectChat
                ? (_users
                        .state
                        .store[opponents.lastOrNull ?? state.matrixChatId]
                        ?.name ??
                    room.getLocalizedDisplayname())
                : room.getLocalizedDisplayname(),
          ),
        );
      }),
    );
    add(const RoomListItemEvent.init());
  }

  final DlsMatrixClient _matrixClient;
  final UsersBloc _users;

  @override
  void onMatrixRoomState(Event event) {
    _updateRoom();
  }

  @override
  void onMatrixEventUpdate(EventUpdate event) {
    _updateRoom();
  }

  @override
  Future<void> close() async {
    _matrixClient.removeDirectEventListener(state.matrixChatId, this);
    await cancelAllSubscriptions();
    return super.close();
  }

  Future<void> _updateRoom() async {
    final room = _matrixClient.client.getRoomById(state.matrixChatId);
    if (room == null) {
      return;
    }
    final lastMessage = await _matrixClient.getRoomLastMessage(room.id);
    final lastMessageText = await _buildLastMessageText(lastMessage);

    final opponents = room
        .getParticipants()
        .where((e) => e.id != _matrixClient.myId)
        .map((e) => e.id);
    if (!isClosed) {
      add(
        RoomListItemEvent.changes(
          opponentUserId: opponents.lastOrNull ?? '',
          lastMessage: lastMessageText,
          lastUpdateTime: lastMessage?.updatedAt ?? lastMessage?.createdAt,
          unreadCount: room.notificationCount,
        ),
      );
    }
  }

  Future<void> _onRoomListItemInit(
    _RoomListItemInit event,
    Emitter<RoomListItemState> emitter,
  ) async {
    final room = _matrixClient.client.getRoomById(state.matrixChatId);
    if (room == null) {
      return;
    }

    final lastMessage = await _matrixClient.getRoomLastMessage(room.id);
    final lastMessageText = await _buildLastMessageText(lastMessage);

    final opponents = room
        .getParticipants()
        .where((e) => e.id != _matrixClient.myId)
        .map((e) => e.id);

    add(
      RoomListItemEvent.changes(
        isMuted: room.pushRuleState == PushRuleState.dontNotify,
        opponentUserId: opponents.lastOrNull ?? '',
        displayName: room.isDirectChat
            ? (_users.state.store[opponents.lastOrNull]?.name ??
                room.getLocalizedDisplayname())
            : room.getLocalizedDisplayname(),
        lastMessage: lastMessageText,
        lastUpdateTime: lastMessage?.updatedAt ?? lastMessage?.createdAt,
        unreadCount: room.notificationCount,
      ),
    );
  }

  void _onRoomListItemChanges(
    _RoomListItemChanges event,
    Emitter<RoomListItemState> emitter,
  ) {
    emitter(
      state.copyWith(
        isMuted: event.isMuted ?? state.isMuted,
        opponentMatrixUserId: event.opponentUserId,
        displayName: event.displayName ?? state.displayName,
        lastMessage: event.lastMessage ?? state.lastMessage,
        lastUpdateTime: event.lastUpdateTime ?? state.lastUpdateTime,
        unreadCount: event.unreadCount ?? state.unreadCount,
      ),
    );
  }

  Future<String> _buildLastMessageText(DlsChatMessage? lastMessage) async {
    final isLastMessageMy = lastMessage?.senderId == _matrixClient.myId;
    late final String lastMessageText;
    if (lastMessage is DlsChatMessageText) {
      lastMessageText =
          QuillEditorHelper.buildDocument(lastMessage.plainText).toPlainText();
    } else if (lastMessage is DlsChatMessageAttachment) {
      if (lastMessage.type == DlsChatMessageType.file) {
        lastMessageText = S.current.chatLastMessageFile;
      } else if (lastMessage.type == DlsChatMessageType.audio) {
        lastMessageText = S.current.chatLastMessageAudio;
      } else if (lastMessage.type == DlsChatMessageType.video) {
        lastMessageText = S.current.chatLastMessageVideo;
      } else if (lastMessage.type == DlsChatMessageType.image) {
        lastMessageText = S.current.chatLastMessageImage;
      } else {
        lastMessageText = '';
      }
    } else if (lastMessage is DlsChatMessageUnsupported) {
      if (lastMessage.event?.messageType == MessageTypes.Notice) {
        lastMessageText = S.current.chatLastMessageNotice;
      } else {
        lastMessageText = '';
      }
    } else {
      lastMessageText = '';
    }
    return isLastMessageMy
        ? S.current.chatLastMessageMeFormat(lastMessageText)
        : lastMessageText;
  }
}
