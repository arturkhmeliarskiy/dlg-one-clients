// ignore: avoid_web_libraries_in_flutter
import 'dart:html';

import 'package:dls_one/const/mime_type.dart';
import 'package:dls_one/core/file_manager/src/file_manager_base.dart';

class FileManager extends FileManagerBase {
  FileManager({
    required super.storagePath,
    required super.remoteBytesFetcher,
    required super.errorLogger,
  });

  @override
  Future<void> deleteFile(String fileName) {
    // TODO(alexsh): what to do in Browser?
    return Future.value();
  }

  @override
  Future<bool> saveFileSpecifically(
    String name,
    Uri uri, {
    required MimeType mimeType,
  }) async {
    final bytes = await remoteBytesFetcher(uri);

    final url = Url.createObjectUrlFromBlob(
      Blob([bytes], mimeType.type),
    );

    final htmlDocument = document;
    final anchor = (htmlDocument.createElement('a') as AnchorElement)
      ..href = url
      ..style.display = name
      ..download = name;

    if (document.body == null) {
      return false;
    }

    document.body!.children.add(anchor);
    anchor.click();
    document.body!.children.remove(anchor);

    return true;
  }
}
