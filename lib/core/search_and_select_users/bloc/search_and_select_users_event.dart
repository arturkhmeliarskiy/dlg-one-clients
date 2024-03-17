part of 'search_and_select_users_bloc.dart';

@freezed
class SearchAndSelectUsersEvent with _$SearchAndSelectUsersEvent {
  const SearchAndSelectUsersEvent._();

  const factory SearchAndSelectUsersEvent.search(String query) = _Search;

  const factory SearchAndSelectUsersEvent.searchInGroup(
    String query,
    List<DLSUser> group,
  ) = _SearchInGroup;

  const factory SearchAndSelectUsersEvent.getUsersFromPrivateChats(List<String> usersIds) =
      _GetUsersFromPrivateChats;

  const factory SearchAndSelectUsersEvent.select(int userDlsId) = _Select;

  const factory SearchAndSelectUsersEvent.selectOne(int userDlsId) = _SelectOne;

  const factory SearchAndSelectUsersEvent.deselect(
    int userDlsId,
    String? cantDeselectSelfMatrixId,
  ) = _Deselect;
}
