part of 'search_chat_bloc.dart';

@freezed
class SearchChatState with _$SearchChatState {
  const factory SearchChatState.initial() = _Initial;
  const factory SearchChatState.loading() = _Loading;
  const factory SearchChatState.data(List<Object> data) = _Data;
  const factory SearchChatState.failure(String message) = _Failure;
}
