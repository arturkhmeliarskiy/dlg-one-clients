/// типы платформ
enum DlsPlatformType {
  /// веб
  web,

  /// лин/мак/вин
  desktop,

  /// андр/иос
  mobile,

  /// неизвестно
  unknown,
}

enum DlsPlatformSubType {
  windows,
  macOS,
  linux,
  android,
  ios,
  unknown,
}

enum DlsPlatformNotificationType {
  web,
  macOS,
  android,
  ios,
  socket,
}

class DlsPlatform {
  DlsPlatform._();

  static DlsPlatformType dlsPlatform = DlsPlatformType.unknown;
  static DlsPlatformSubType dlsSubPlatform = DlsPlatformSubType.unknown;
}
