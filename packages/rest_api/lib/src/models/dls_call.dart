// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

///
/// Created by Nightwelf 24.11.2022 16:15
/// Telegram: @nightwelf
///
part 'dls_call.freezed.dart';
part 'dls_call.g.dart';

@freezed
class DLSCall with _$DLSCall {
  factory DLSCall({
    @JsonKey(name: 'asterisk_room') int? asteriskRoom,
    @JsonKey(name: 'matrix_room') String? matrixRoom,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'created_by') int? createdBy,
  }) = _DLSCall;

  factory DLSCall.fromJson(Map<String, dynamic> json) =>
      _$DLSCallFromJson(json);
}
