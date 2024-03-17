part of 'search_and_select_users_bloc.dart';

@freezed
class SearchAndSelectUsersState with _$SearchAndSelectUsersState {
  /// инициализация
  const factory SearchAndSelectUsersState.initial(
    List<DLSUser> selectedUsers, {
    @Default([]) List<DLSUser> suggestedUsers,
  }) = _InitialSearchAndSelectUsersState;

  /// загрузка
  const factory SearchAndSelectUsersState.loading(List<DLSUser> selectedUsers) =
      _LoadingSearchAndSelectUsersState;

  /// данные
  const factory SearchAndSelectUsersState.data(
    List<DLSUser> selectedUsers,
    List<DLSUser> searchResult,
  ) = _DataSearchAndSelectUsersState;

  /// ошибка
  const factory SearchAndSelectUsersState.failure(
    List<DLSUser> selectedUsers,
    String message,
  ) = _FailureSearchAndSelectUsersState;
}
