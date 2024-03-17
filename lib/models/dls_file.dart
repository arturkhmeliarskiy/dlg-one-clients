// ignore_for_file: invalid_annotation_target

import 'dart:typed_data';
import 'package:camera/camera.dart';
import 'package:collection/collection.dart';

class DLSFile {
  const DLSFile({
    required this.key,
    required this.data,
    this.path,
    this.fileName,
  });

  static Future<DLSFile> fromXFile(
    XFile xFile, {
    String? fileName,
  }) async {
    final bytes = await xFile.readAsBytes();
    return DLSFile(
      key: DateTime.now().millisecondsSinceEpoch.toString(),
      data: bytes,
      // Fix iOS/MacOS error "Cannot open file" and remove 'file' from path
      path: xFile.path.replaceAll('file://', ''),
      fileName: fileName ?? xFile.name,
    );
  }

  final String key;
  final Uint8List data;
  final String? path;
  final String? fileName;

  String? get extension => fileName?.split('.').lastOrNull;
  int get length => data.length;
}
