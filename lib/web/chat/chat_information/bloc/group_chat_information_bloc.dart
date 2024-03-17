import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:collection/collection.dart';
import 'package:common/common.dart';
import 'package:dls_matrix_client/dls_matrix_client.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/chat/chat.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:matrix/matrix.dart';
import 'package:rest_api/rest_api.dart';

part 'group_chat_information_bloc.freezed.dart';

part 'group_chat_information_event.dart';

part 'group_chat_information_state.dart';

class GroupChatInformationBloc
    extends Bloc<GroupChatInformationEvent, GroupChatInformationState>
    with MatrixEventListener, SubscriptionMixin {
  /// constructor GroupChatInformation Bloc
  GroupChatInformationBloc({
    required String chatId,
    required DlsRestApi restApi,
    required DlsMatrixClient matrixClient,
  })  : _chatId = chatId,
        _restApi = restApi,
        _matrixClient = matrixClient,
        super(const _InitialGroupChatInformationState()) {
    on<GroupChatInformationEvent>(
      (event, emitter) => event.map<Future<void>>(
        read: (event) => _read(event, emitter),
      ),
      transformer: sequential(),
    );
    _matrixClient.addEventListener(this);
    add(const GroupChatInformationEvent.read());
  }

  final DlsRestApi _restApi;
  final DlsMatrixClient _matrixClient;
  final String _chatId;

  @override
  void onMatrixRoomState(Event event) {
    if ((event.type == EventTypes.RoomMember ||
            event.type == EventTypes.RoomPowerLevels ||
            event.type == EventTypes.RoomName) &&
        event.room.id == _chatId) {
      add(const GroupChatInformationEvent.read());
    }
  }

  @override
  Future<void> close() async {
    _matrixClient.removeEventListener(this);
    await super.close();
  }

  Future<void> _read(
    _ReadGroupChatInformationEvent event,
    Emitter<GroupChatInformationState> emitter,
  ) async {
    emitter(const GroupChatInformationState.loading());
    try {
      final chat = _matrixClient.client.getRoomById(_chatId);
      if (chat == null) {
        GroupChatInformationState.failure(message: S.current.chatNotFound);
        throw Exception(S.current.chatNotFound);
      }
      final matrixUsers = await chat.requestParticipants();
      if (matrixUsers.isEmpty) {
        GroupChatInformationState.failure(
          message: S.current.serverError,
        );
        throw Exception(S.current.serverError);
      }

      final ids = <String>[];
      final adminIds = <String>[];
      final owner = matrixUsers
          .firstWhere((u) => u.powerLevel == ChatGroupAccess.owner.value)
          .id;
      for (var i = 0; i < matrixUsers.length; ++i) {
        ids.add(matrixUsers[i].id);
        if (matrixUsers[i].powerLevel >= ChatGroupAccess.admin.value &&
            matrixUsers[i].powerLevel < ChatGroupAccess.owner.value) {
          adminIds.add(matrixUsers[i].id);
        }
      }
      final users = await _restApi.getUsersByMatrix(ids);
      emitter(
        GroupChatInformationState.data(
          users: users,
          matrixRoom: chat,
          adminIds: adminIds,
          owner: owner,
        ),
      );
    } on ApiError catch (e, stackTrace) {
      emitter(
        GroupChatInformationState.failure(message: S.current.serverError),
      );
      rethrow;
    } catch (e, stackTrace) {
      emitter(
        GroupChatInformationState.failure(message: S.current.appError),
      );
      rethrow;
    }
  }
}
