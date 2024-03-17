part of 'search_chat_bloc.dart';

@freezed
class SearchChatEvent with _$SearchChatEvent {
  const factory SearchChatEvent.onChangeSearch(
    String query, {
    @Default(false) bool isOnlyGroups,
  }) = _OnChangeSearch;
  const factory SearchChatEvent.onClear() = _OnClear;
}
