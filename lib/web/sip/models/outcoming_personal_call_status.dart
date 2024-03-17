import 'package:freezed_annotation/freezed_annotation.dart';

///
/// Created by Nightwelf 17.04.2023 16:04
/// Telegram: @nightwelf
///

part 'outcoming_personal_call_status.freezed.dart';

/// OutcomingPersonalStatus model
@freezed
class OutcomingPersonalCallStatus with _$OutcomingPersonalCallStatus {

  /// freezed factory
  factory OutcomingPersonalCallStatus({
    required String message,
    required Status status,
  }) = _OutcomingPersonalCallStatus;
}

enum Status {
  hangUp,
  rejected,
  busy,
}
