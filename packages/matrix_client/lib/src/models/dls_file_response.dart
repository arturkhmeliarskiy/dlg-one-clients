import 'dart:typed_data';

class DlsFileResponse {
  /// Constructor
  DlsFileResponse({
    this.contentType,
    required this.data,
  });

  String? contentType;
  Uint8List data;
}
