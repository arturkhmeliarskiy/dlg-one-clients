// ignore_for_file: invalid_annotation_target

import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:socket_api_models/socket_api_models.dart';

///
/// Created by Nightwelf 24.03.2023 17:20
/// Telegram: @nightwelf
///

part 'call_meta.freezed.dart';

part 'call_meta.g.dart';

/// CallMeta model
@freezed
class CallMeta with _$CallMeta {

  /// freezed factory
  factory CallMeta({
    @JsonKey(name: 'room') required String number,
    @JsonKey(name: 'chat_id') required String chatId,
    @JsonKey(name: 'uniqueid') required String? uniqueId,
    @JsonKey(name: 'start_at') required DateTime? startAt,
    @JsonKey(name: 'callers') required List<Caller> callers,
  }) = _CallMeta;

  // ignore: public_member_api_docs
  factory CallMeta.fromStringJson(String string) =>
      CallMeta.fromJson(jsonDecode(string) as Map<String, dynamic>);
  CallMeta._();

  // ignore: public_member_api_docs
  factory CallMeta.fromJson(Map<String, dynamic> json) =>
      _$CallMetaFromJson(json);

  // ignore: public_member_api_docs
  String stringify() =>
      jsonEncode(toJson()..removeWhere((key, dynamic value) => value == null));
}
