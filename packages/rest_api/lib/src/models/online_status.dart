// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

///
/// Created by Nightwelf 28.09.2022 18:36
/// Telegram: @nightwelf
///
part 'online_status.freezed.dart';
part 'online_status.g.dart';

@freezed
class OnlineStatus with _$OnlineStatus {
  factory OnlineStatus({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'last_active') required DateTime? lastActive,
    @JsonKey(name: 'is_online') required bool isOnline,
  }) = _OnlineStatus;
  OnlineStatus._();

  factory OnlineStatus.fromJson(Map<String, dynamic> json) =>
      _$OnlineStatusFromJson(json);
}
