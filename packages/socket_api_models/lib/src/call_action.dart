import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';

///
/// Created by Nightwelf 14.04.2023 16:05
/// Telegram: @nightwelf
///

part 'call_action.freezed.dart';

part 'call_action.g.dart';

/// CallAction model
@Freezed(unionKey: 'action')
class CallAction with _$CallAction {
  factory CallAction.room_list() = _RoomListCallAction;

  /// пользователь положил трубку
  factory CallAction.hangup({
    @JsonKey(name: 'room') required String number,
  }) = _HangupCallAction;

  /// пользователь отклонил звонок
  factory CallAction.reject({
    @JsonKey(name: 'room') required String number,
  }) = _RejectCallAction;

  /// пользователь занят
  factory CallAction.busy({
    @JsonKey(name: 'room') required String number,
  }) = _BusyCallAction;

  /// я говорю
  factory CallAction.speak({
    @JsonKey(name: 'speak') required bool speak,
    @JsonKey(name: 'room') required String number,
  }) = _SpeakCallAction;

  factory CallAction.fromStringJson(String string) =>
      CallAction.fromJson(jsonDecode(string) as Map<String, dynamic>);

  CallAction._();

  factory CallAction.fromJson(Map<String, dynamic> json) =>
      _$CallActionFromJson(json);

  String stringify() =>
      jsonEncode(toJson()..removeWhere((key, dynamic value) => value == null));
}
