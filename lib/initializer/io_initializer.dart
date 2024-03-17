import 'dart:io';

import 'package:dart_vlc/dart_vlc.dart';

void initialize() {
  if (Platform.isLinux || Platform.isWindows) {
    DartVLC.initialize();
  }
}
