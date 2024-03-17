import 'dart:convert';

import 'package:flutter_quill/flutter_quill.dart' as quill;

class QuillEditorHelper {
  QuillEditorHelper._();

  static quill.Document buildDocument(String actualText) {
    final text = actualText.replaceAll(r'\[', '[').replaceAll(r'\]', ']');
    if (text.isNotEmpty &&
        text.startsWith('[') &&
        text.endsWith(']') &&
        text.contains('insert')) {
      return buildFromList(jsonDecode(text) as List<dynamic>);
    }
    return quill.Document()..insert(0, text);
  }

  static quill.Document buildFromList(List<dynamic> value) {
    return quill.Document()
      ..compose(
        quill.Delta.fromJson(value),
        quill.ChangeSource.LOCAL,
      );
  }
}
