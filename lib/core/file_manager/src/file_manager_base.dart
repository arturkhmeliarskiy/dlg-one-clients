import 'dart:async';
import 'dart:typed_data';

import 'package:cross_file/cross_file.dart';
import 'package:dls_one/const/mime_type.dart';
import 'package:mime/mime.dart';

typedef RemoteBytesFetcher = Future<Uint8List> Function(Uri uri);
typedef ErrorLoggerFunc = void Function(dynamic error, StackTrace stack);

abstract class FileManagerBase {
  FileManagerBase({
    required this.storagePath,
    required this.remoteBytesFetcher,
    required this.errorLogger,
  });

  final String storagePath;
  final RemoteBytesFetcher remoteBytesFetcher;
  final ErrorLoggerFunc errorLogger;

  final Map<String, Completer<XFile>> _readingQueue = {};

  /// Собирает файл с именем [fileName] локально в "IO" платформах напрямую из
  /// файловой системы, в "html" платформах из DOM.
  /// Если файл отсутствует или оказывается пустой, загружает контент по
  /// [fileUri] и сохраняет с именем [fileName].
  /// Если [useCache] = false, форсирует загрузку файла из [fileUri].
  /// После загрузки файла, файл сохраняется локально.
  ///
  /// Защищен от многократных АСИНХРОННЫХ запросов файла с одинаковыми
  /// [fileName] и [fileUri].
  /// Еслли сделать несколько асинхронных запросов прочтения файла,
  /// на все запросы вернется одна и та же [Future]. Соответственно будет
  /// осуществлен только один запрос на скачивание файла при необходимости.
  Future<XFile> fetchFile(
    String fileName,
    Uri fileUri, {
    bool useCache = true,
    String? mimeType,
  }) async {
    final completer = _readingQueue[fileName] ??
        (Completer<XFile>()
          ..complete(
            _fetchFile(
              fileName,
              fileUri,
              useCache: useCache,
            ),
          ));

    _readingQueue[fileName] = completer;

    return completer.future;
  }

  Future<XFile> _fetchFile(
    String fileName,
    Uri fileUri, {
    required bool useCache,
    String? mimeType,
  }) async {
    Future<XFile> load() => _loadFile(
          fileName,
          fileUri,
          mimeType: mimeType,
        );

    if (!useCache) {
      return load();
    }

    try {
      final file = XFile(
        _getFilePath(fileName),
        name: fileName,
        mimeType: mimeType,
      );

      final length = await file.length();

      // Пустота файла скорее всего говорит об отсутствии контента и
      // необходимости подгрузить файл снова.
      if (length == 0) {
        return load();
      } else {
        return file;
      }
    } catch (error, stack) {
      errorLogger(error, stack);
      return load();
    }
  }

  Future<XFile> _loadFile(
    String fileName,
    Uri fileUri, {
    String? mimeType,
  }) async {
    final bytes = await remoteBytesFetcher(fileUri);

    final type = mimeType ?? lookupMimeType(fileName, headerBytes: bytes);

    final file = XFile.fromData(
      bytes,
      mimeType: type,
      name: fileName,
      path: _getFilePath(fileName),
    );

    await file.saveTo(_getFilePath(fileName));

    return file;
  }

  /// Сборка файла с контентом [bytes] и именем [fileName] и сохранение
  /// в "IO" платформах в файловой системе, в "html" платформах в DOM.
  Future<XFile> saveData(
    String fileName,
    Uint8List bytes, {
    String? mimeType,
  }) async {
    final type = mimeType ?? lookupMimeType(fileName, headerBytes: bytes);

    final filePath = _getFilePath(fileName);
    final file = XFile.fromData(
      bytes,
      mimeType: type,
      name: fileName,
      path: filePath,
    );
    await file.saveTo(filePath);

    return file;
  }

  @Deprecated('Метод не должен торчать наружу, удалить при первой возможности')
  String getFilePath(String fileName) => _getFilePath(fileName);

  String _getFilePath(String fileName) {
    return '$storagePath/DLS_One/$fileName';
  }

  /// Platform specific implementation
  Future<void> deleteFile(String fileName);

  /// Platform specific implementation
  Future<bool> saveFileSpecifically(
    String name,
    Uri uri, {
    required MimeType mimeType,
  });
}
