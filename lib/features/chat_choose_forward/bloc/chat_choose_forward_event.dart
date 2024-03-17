part of 'chat_choose_forward_bloc.dart';

@freezed
class ChatChooseForwardEvent with _$ChatChooseForwardEvent {
  const factory ChatChooseForwardEvent.search(String filter) =
      _ChatChooseForwardEventSearch;
}
