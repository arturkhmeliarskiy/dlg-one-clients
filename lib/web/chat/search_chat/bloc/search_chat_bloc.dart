import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:collection/collection.dart';
import 'package:dls_matrix_client/dls_matrix_client.dart';
import 'package:dls_one/core/core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:matrix/matrix.dart';
import 'package:rest_api/rest_api.dart';

part 'search_chat_bloc.freezed.dart';

part 'search_chat_event.dart';

part 'search_chat_state.dart';

class SearchChatBloc extends Bloc<SearchChatEvent, SearchChatState> {
  // ignore: public_member_api_docs
  SearchChatBloc({
    required DlsRestApi restApi,
    required DlsMatrixClient matrixClient,
  })  : _restApi = restApi,
        _matrixClient = matrixClient,
        super(const SearchChatState.initial()) {
    on<SearchChatEvent>(
      (event, emitter) => event.map<Future<void>>(
        onChangeSearch: (event) => _onChangeSearch(event, emitter),
        onClear: (event) => _onClear(event, emitter),
      ),
      transformer: sequential(),
    );
  }

  final DlsRestApi _restApi;
  final DlsMatrixClient _matrixClient;

  Future<void> _onChangeSearch(
    _OnChangeSearch event,
    Emitter<SearchChatState> emitter,
  ) async {
    if (event.query.trim().isEmpty) {
      add(const SearchChatEvent.onClear());
      return;
    }

    try {
      emitter(const SearchChatState.loading());
      final results = <Object>[
        /// получим комнаты, отфильтруем и добавим их
        ..._matrixClient.rooms.where(
          (room) => room
              .getLocalizedDisplayname()
              .toUpperCase()
              .contains(event.query.toUpperCase()),
        )
      ];

      if (!event.isOnlyGroups) {
        /// получим пользователей из rest, из результатов исключим тех, с которыми есть чаты
        final resultsRestApi =
            List<DLSUser>.from((await _restApi.searchUsers(event.query)).data)
              ..removeWhere(
                (element) =>
                    _matrixClient.privateRooms.firstWhereOrNull(
                      (element2) => element2.directChatMatrixID == element.id,
                    ) !=
                    null,
              );

        /// добавим их к результатам
        results.addAll(resultsRestApi);
      }

      /// не делаем сортировку
      for (final e in results) {
        if (e is DLSUser) {
          print(e.name);
        }
        if (e is Room) {
          print(e.name);
        }
      }
      emitter(SearchChatState.data(results));
    } on ApiError catch (e, stackTrace) {
      emitter(SearchChatState.failure(S.current.error));
      rethrow;
    } catch (e, stackTrace) {
      emitter(SearchChatState.failure(S.current.error));
      rethrow;
    }
  }

  Future<void> _onClear(
    _OnClear event,
    Emitter<SearchChatState> emitter,
  ) async {
    emitter(const SearchChatState.initial());
  }
}
