part of 'group_chat_information_bloc.dart';

@freezed
class GroupChatInformationState with _$GroupChatInformationState {
  const GroupChatInformationState._();

  /// инициализация
  const factory GroupChatInformationState.initial() =
      _InitialGroupChatInformationState;

  /// загрузка
  const factory GroupChatInformationState.loading() =
      _LoadingGroupChatInformationState;

  /// данные
  const factory GroupChatInformationState.data({
    required List<DLSUser> users,
    required List<String> adminIds,
    required String owner,
    required Room matrixRoom,
  }) = _DataGroupChatInformationState;

  /// ошибка
  const factory GroupChatInformationState.failure({
    required String message,
  }) = _FailureGroupChatInformationState;

  bool isAdmin(String? id) => maybeWhen(
        orElse: () => false,
        data: (users, adminIds, owner, matrixRoom) =>
            adminIds.firstWhereOrNull(
              (adminId) => id == adminId,
            ) !=
            null,
      );
}
