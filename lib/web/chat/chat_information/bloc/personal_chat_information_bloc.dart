import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:dls_matrix_client/dls_matrix_client.dart';
import 'package:dls_one/common/gen/localization/l10n.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:matrix/matrix.dart';
import 'package:rest_api/rest_api.dart';

part 'personal_chat_information_bloc.freezed.dart';
part 'personal_chat_information_event.dart';
part 'personal_chat_information_state.dart';

class PersonalChatInformationBloc
    extends Bloc<PersonalChatInformationEvent, PersonalChatInformationState> {
  /// constructor PersonalChatInformation Bloc
  PersonalChatInformationBloc({
    required String chatId,
    required DlsRestApi restApi,
    required DlsMatrixClient matrixClient,
  })  : _chatId = chatId,
        _restApi = restApi,
        _matrixClient = matrixClient,
        super(const _InitialPersonalChatInformationState()) {
    on<PersonalChatInformationEvent>(
      (event, emitter) => event.map<Future<void>>(
        read: (event) => _read(event, emitter),
        update: (event) => _update(event, emitter),
        delete: (event) => _delete(event, emitter),
      ),
      transformer: sequential(),
    );
    add(const PersonalChatInformationEvent.read());
  }

  final DlsRestApi _restApi;
  final DlsMatrixClient _matrixClient;
  final String _chatId;

  Future<void> _read(
    _ReadPersonalChatInformationEvent event,
    Emitter<PersonalChatInformationState> emitter,
  ) async {
    emitter(const PersonalChatInformationState.loading());
    try {
      final chat = _matrixClient.client.getRoomById(_chatId);
      if (chat == null) {
        PersonalChatInformationState.failure(message: S.current.chatNotFound);
        return;
      }
      final users = await chat.requestParticipants();
      if (users.length < 2) {
        PersonalChatInformationState.failure(
          message: S.current.chatContainsOnlyYou,
        );
        return;
      }
      final user = await _restApi.getUser(
        users.firstWhere((user) => user.id != _matrixClient.myId).id,
      );

      emitter(PersonalChatInformationState.data(user: user, matrixRoom: chat));
    } on ApiError catch (e, stackTrace) {
      emitter(
        PersonalChatInformationState.failure(message: S.current.serverError),
      );
      rethrow;
    } catch (e, stackTrace) {
      emitter(
        PersonalChatInformationState.failure(message: S.current.appError),
      );
      rethrow;
    }
  }

  Future<void> _update(
    _UpdatePersonalChatInformationEvent event,
    Emitter<PersonalChatInformationState> emitter,
  ) async {}

  Future<void> _delete(
    _DeletePersonalChatInformationEvent event,
    Emitter<PersonalChatInformationState> emitter,
  ) async {}
}
