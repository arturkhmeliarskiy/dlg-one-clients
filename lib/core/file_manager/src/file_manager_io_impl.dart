// ignore_for_file: avoid_slow_async_io

import 'dart:io';

import 'package:dls_one/const/mime_type.dart';
import 'package:dls_one/core/file_manager/src/file_manager_base.dart';
import 'package:gallery_saver/gallery_saver.dart';

class FileManager extends FileManagerBase {
  FileManager({
    required super.storagePath,
    required super.remoteBytesFetcher,
    required super.errorLogger,
  });

  @override
  Future<void> deleteFile(String fileName) async {
    final filePath = getFilePath(fileName);
    final file = File(filePath);
    final exists = await file.exists();
    if (exists) {
      await File(filePath).delete();
    }
  }

  @override
  Future<bool> saveFileSpecifically(
    String name,
    Uri uri, {
    required MimeType mimeType,
  }) async {
    assert(
      () {
        return MimeType.imageTypes.contains(mimeType);
      }(),
      'Use fetchFile() function instead',
    );

    return _saveImage(uri, mimeType);
  }

  Future<bool> _saveImage(
    Uri uri,
    MimeType mimeType,
  ) async {
    return await GallerySaver.saveImage(
          '${uri.toString()}${mimeType.extension}',
        ) ??
        false;
  }
}
