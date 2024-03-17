// ignore_for_file: public_member_api_docs

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:collection/collection.dart';
import 'package:dls_one/common/gen/localization/l10n.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rest_api/rest_api.dart';

part 'search_and_select_users_bloc.freezed.dart';

part 'search_and_select_users_event.dart';

part 'search_and_select_users_state.dart';

/// поиск пользователей в нашем апи
/// и выбор их из найденного списка
class SearchAndSelectUsersBloc
    extends Bloc<SearchAndSelectUsersEvent, SearchAndSelectUsersState> {
  SearchAndSelectUsersBloc(
    super.initialState, {
    required DlsRestApi restApi,
    List<String>? suggestedUsersIds,
  }) : _restApi = restApi {
    on<SearchAndSelectUsersEvent>(
      (event, emitter) => event.map<Future<void>>(
        search: (event) => _search(event, emitter),
        searchInGroup: (event) => _searchInGroup(event, emitter),
        getUsersFromPrivateChats: (event) =>
            _getUsersFromPrivateChats(event, emitter),
        select: (event) => _select(event, emitter),
        selectOne: (event) => _selectOne(event, emitter),
        deselect: (event) => _deselect(event, emitter),
      ),
      transformer: sequential(),
    );

    if (suggestedUsersIds != null) {
      add(
        SearchAndSelectUsersEvent.getUsersFromPrivateChats(suggestedUsersIds),
      );
    }
  }

  final DlsRestApi _restApi;

  Future<void> _search(
    _Search event,
    Emitter<SearchAndSelectUsersState> emitter,
  ) async {
    if (event.query.trim().isEmpty) {
      emitter(
        SearchAndSelectUsersState.initial(state.selectedUsers),
      );
      return;
    }
    emitter(SearchAndSelectUsersState.loading(state.selectedUsers));
    try {
      final results = await _restApi.searchUsers(event.query);
      emitter(
        SearchAndSelectUsersState.data(
          state.selectedUsers,

          /// необходимо забрать только тех пользователей
          /// которым можно написать
          results.data
              .where((user) => user.dlsId != null && user.id != null)
              .toList(),
        ),
      );
    } on ApiError catch (e, stackTrace) {
      emitter(
        SearchAndSelectUsersState.failure(
          state.selectedUsers,
          S.current.serverError,
        ),
      );
      rethrow;
    } catch (e, stackTrace) {
      emitter(
        SearchAndSelectUsersState.failure(
          state.selectedUsers,
          S.current.appError,
        ),
      );
      rethrow;
    }
  }

  Future<void> _searchInGroup(
    _SearchInGroup event,
    Emitter<SearchAndSelectUsersState> emitter,
  ) async {
    if (event.query.isEmpty) {
      emitter(
        SearchAndSelectUsersState.initial(state.selectedUsers),
      );
      return;
    }

    final results = event.group.where(
      (user) =>
          user.DLSUserName.toLowerCase().contains(event.query.toLowerCase()),
    );

    emitter(
      SearchAndSelectUsersState.data(
        state.selectedUsers,
        results.toList(),
      ),
    );
  }

  Future<void> _getUsersFromPrivateChats(
    _GetUsersFromPrivateChats event,
    Emitter<SearchAndSelectUsersState> emitter,
  ) async {
    emitter(SearchAndSelectUsersState.loading(state.selectedUsers));
    try {
      final users = await _restApi.getUsersByMatrix(event.usersIds);

      emitter(
        SearchAndSelectUsersState.initial(
          state.selectedUsers,
          suggestedUsers: users,
        ),
      );
    } on ApiError catch (e, _) {
      emitter(
        SearchAndSelectUsersState.failure(
          state.selectedUsers,
          S.current.serverError,
        ),
      );
      rethrow;
    } catch (e, stackTrace) {
      emitter(
        SearchAndSelectUsersState.failure(
          state.selectedUsers,
          S.current.appError,
        ),
      );
      rethrow;
    }
  }

  Future<void> _select(
    _Select event,
    Emitter<SearchAndSelectUsersState> emitter,
  ) async {
    state.whenOrNull(
      initial: (selectedUsers, suggestedUsers) => emitter(
        SearchAndSelectUsersState.initial(
          [
            ...selectedUsers,
            ...suggestedUsers.where((user) => user.dlsId == event.userDlsId)
          ],
          suggestedUsers: suggestedUsers,
        ),
      ),
      data: (selectedUsers, searchResult) => emitter(
        SearchAndSelectUsersState.data(
          [
            ...selectedUsers,
            ...searchResult.where((user) => user.dlsId == event.userDlsId)
          ],
          searchResult,
        ),
      ),
    );
  }

  Future<void> _selectOne(
    _SelectOne event,
    Emitter<SearchAndSelectUsersState> emitter,
  ) async {
    state.whenOrNull(
      initial: (_, suggestedUsers) => emitter(
        SearchAndSelectUsersState.initial(
          suggestedUsers
              .where((user) => user.dlsId == event.userDlsId)
              .toList(),
          suggestedUsers: suggestedUsers,
        ),
      ),
      data: (_, searchResult) => emitter(
        SearchAndSelectUsersState.data(
          searchResult.where((user) => user.dlsId == event.userDlsId).toList(),
          searchResult,
        ),
      ),
    );
  }

  Future<void> _deselect(
    _Deselect event,
    Emitter<SearchAndSelectUsersState> emitter,
  ) async {
    final selectedUsers = state.selectedUsers
        .where((user) => user.dlsId != event.userDlsId)
        .toList();
    if (event.cantDeselectSelfMatrixId != null) {
      final iWasDeleted =
          !selectedUsers.any((u) => u.id == event.cantDeselectSelfMatrixId);

      final me = state.selectedUsers
          .firstWhereOrNull((u) => u.id == event.cantDeselectSelfMatrixId);

      if (iWasDeleted && me != null) {
        selectedUsers.add(me);
      }
    }
    emitter(
      state.copyWith(
        selectedUsers: selectedUsers,
      ),
    );
  }
}
