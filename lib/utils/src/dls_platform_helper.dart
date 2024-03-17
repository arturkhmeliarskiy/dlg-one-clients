import 'package:common/common.dart';
import 'package:flutter/foundation.dart';

class DlsPlatformHelper {
  DlsPlatformHelper._();

  static DlsPlatformType getRunningPlatform() {
    if (kIsWeb) {
      return DlsPlatformType.web;
    }
    final platform = defaultTargetPlatform;
    if (platform == TargetPlatform.linux ||
        platform == TargetPlatform.macOS ||
        platform == TargetPlatform.windows) {
      return DlsPlatformType.desktop;
    } else if (platform == TargetPlatform.android ||
        platform == TargetPlatform.iOS) {
      return DlsPlatformType.mobile;
    } else {
      return DlsPlatformType.unknown;
    }
  }

  /// определяем каким образом уведомления работают внутри приложения
  /// по факту всегда должно быть DlsPlatformNotificationType.socket
  /// тк в android и ios этого не должно быть вообще
  static DlsPlatformNotificationType getRunningInAppNotificationPlatform() {
    if (kIsWeb) {
      return DlsPlatformNotificationType.socket;
    }
    final platform = defaultTargetPlatform;
    if (platform == TargetPlatform.android) {
      return DlsPlatformNotificationType.android;
    } else if (platform == TargetPlatform.iOS) {
      return DlsPlatformNotificationType.ios;
    } else {
      return DlsPlatformNotificationType.socket;
    }
  }

  /// определяем какой у нас тип платформы для токена firebase сейчас
  static DlsPlatformNotificationType getRunningNotificationPlatform() {
    if (kIsWeb) {
      return DlsPlatformNotificationType.web;
    }
    final platform = defaultTargetPlatform;
    if (platform == TargetPlatform.macOS) {
      return DlsPlatformNotificationType.macOS;
    } else if (platform == TargetPlatform.android) {
      return DlsPlatformNotificationType.android;
    } else if (platform == TargetPlatform.iOS) {
      return DlsPlatformNotificationType.ios;
    } else {
      return DlsPlatformNotificationType.socket;
    }
  }

  static DlsPlatformSubType getRunningSubPlatform() {
    final platform = defaultTargetPlatform;
    if (platform == TargetPlatform.linux) {
      return DlsPlatformSubType.linux;
    } else if (platform == TargetPlatform.macOS) {
      return DlsPlatformSubType.macOS;
    } else if (platform == TargetPlatform.windows) {
      return DlsPlatformSubType.windows;
    } else if (platform == TargetPlatform.android) {
      return DlsPlatformSubType.android;
    } else if (platform == TargetPlatform.iOS) {
      return DlsPlatformSubType.ios;
    } else {
      return DlsPlatformSubType.unknown;
    }
  }
}
