//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <dart_vlc/dart_vlc_plugin.h>
#include <emoji_picker_flutter/emoji_picker_flutter_plugin.h>
#include <flutter_secure_storage_linux/flutter_secure_storage_linux_plugin.h>
#include <flutter_webrtc/flutter_web_r_t_c_plugin.h>
#include <pasteboard/pasteboard_plugin.h>
#include <record_linux/record_linux_plugin.h>
#include <url_launcher_linux/url_launcher_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) dart_vlc_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "DartVlcPlugin");
  dart_vlc_plugin_register_with_registrar(dart_vlc_registrar);
  g_autoptr(FlPluginRegistrar) emoji_picker_flutter_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "EmojiPickerFlutterPlugin");
  emoji_picker_flutter_plugin_register_with_registrar(emoji_picker_flutter_registrar);
  g_autoptr(FlPluginRegistrar) flutter_secure_storage_linux_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "FlutterSecureStorageLinuxPlugin");
  flutter_secure_storage_linux_plugin_register_with_registrar(flutter_secure_storage_linux_registrar);
  g_autoptr(FlPluginRegistrar) flutter_webrtc_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "FlutterWebRTCPlugin");
  flutter_web_r_t_c_plugin_register_with_registrar(flutter_webrtc_registrar);
  g_autoptr(FlPluginRegistrar) pasteboard_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "PasteboardPlugin");
  pasteboard_plugin_register_with_registrar(pasteboard_registrar);
  g_autoptr(FlPluginRegistrar) record_linux_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "RecordLinuxPlugin");
  record_linux_plugin_register_with_registrar(record_linux_registrar);
  g_autoptr(FlPluginRegistrar) url_launcher_linux_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "UrlLauncherPlugin");
  url_launcher_plugin_register_with_registrar(url_launcher_linux_registrar);
}
