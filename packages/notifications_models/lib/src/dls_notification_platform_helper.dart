import 'dart:convert';
import 'package:common/common.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dls_notification_platform_helper.freezed.dart';

part 'dls_notification_platform_helper.g.dart';

@freezed
class DLSNotificationPlatformHelper with _$DLSNotificationPlatformHelper {

  const factory DLSNotificationPlatformHelper({
    @JsonKey(name: 'platform_type') DlsPlatformNotificationType? platform,
  }) = _DLSNotificationPlatformHelper;

  factory DLSNotificationPlatformHelper.fromStringJson(String string) =>
      DLSNotificationPlatformHelper.fromJson(
          jsonDecode(string) as Map<String, dynamic>);

  const DLSNotificationPlatformHelper._();

  factory DLSNotificationPlatformHelper.fromJson(Map<String, dynamic> json) =>
      _$DLSNotificationPlatformHelperFromJson(json);

  String stringify() =>
      jsonEncode(toJson()
        ..removeWhere((key, dynamic value) => value == null));
}
