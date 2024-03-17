import 'dart:typed_data';

import 'package:cross_file/cross_file.dart';
import 'package:dls_one/const/mime_type.dart';

import 'package:dls_one/core/file_manager/src/file_manager_base.dart';

class FileManager extends FileManagerBase {
  FileManager({
    required super.storagePath,
    required super.remoteBytesFetcher,
    required super.errorLogger,
  });

  @override
  Future<XFile> fetchFile(
    String fileName,
    Uri fileUri, {
    bool useCache = true,
    String? mimeType,
  }) {
    throw UnimplementedError();
  }

  @override
  Future<XFile> saveData(
    String fileName,
    Uint8List bytes, {
    String? mimeType,
  }) {
    throw UnimplementedError();
  }

  @override
  Future<bool> saveFileSpecifically(
    String name,
    Uri uri, {
    required MimeType mimeType,
  }) {
    throw UnimplementedError();
  }

  @override
  Future<void> deleteFile(String fileName) {
    throw UnimplementedError();
  }

  @override
  String getFilePath(String fileName) {
    throw UnimplementedError();
  }
}
