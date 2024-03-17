// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sip_repository/sip_repository.dart';
import 'package:socket_api_models/socket_api_models.dart';

///
/// Created by Nightwelf 24.03.2023 13:35
/// Telegram: @nightwelf
///

part 'active_call.freezed.dart';

@freezed
class ActiveCall with _$ActiveCall {
  factory ActiveCall({
    required String? callId,
    required CallMeta callMeta,
  }) = _ActiveCall;
}
