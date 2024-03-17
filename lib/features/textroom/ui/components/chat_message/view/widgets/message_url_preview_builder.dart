import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart' as quill;
import 'package:url_launcher/url_launcher.dart';

class MessageUrlPreviewBuilder extends StatelessWidget {
  const MessageUrlPreviewBuilder({
    required this.document,
    super.key,
  });

  final quill.Document document;

  @override
  Widget build(BuildContext context) {
    final url = _getUrl();
    if (url.isEmpty) {
      return const SizedBox();
    }
    return GestureDetector(
      onTap: () {
        launchUrl(Uri.parse(url));
      },
      child: SimpleUrlPreview(
        key: Key(url),
        url: url,
        titleLines: 1,
        previewHeight: 78.h,
        bgColor: context.c_white_text,
        titleStyle: context.ts_s12h14w500.copyWith(
          color: context.c_blue,
        ),
        descriptionStyle: context.ts_s12h14w500.copyWith(
          color: context.c_text,
        ),
        previewContainerPadding: EdgeInsets.zero,
        isClosable: false,
        onClosed: () {},
      ),
    );
  }

  String _getUrl() {
    for (final insert in document.toDelta().toJson()) {
      final link = (insert?['attributes'])?['link'];
      if (link != null) {
        return link.toString();
      }
    }
    return '';
  }
}
