import 'package:auto_route/auto_route.dart';
import 'package:dls_matrix_client/dls_matrix_client.dart';
import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ChatLinksPage extends StatelessWidget {
  const ChatLinksPage({
    super.key,
    required this.links,
    required this.title,
  });

  /// сообщения содержащие ссылки
  final List<DlsChatMessageText> links;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.c_appbar,
      appBar: OldDlsAppBar(
        title: title,
        subtitleWidget: Text(
          '${links.length} ${links.length.linkPlural()}',
          style: context.ts_s14h16_4w400.copyWith(color: context.c_text_grey),
        ),
        height: 60.h,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: List.generate(
            links.length,
            (i) {
              var link = '';
              final substrings = links[i].plainText.split(' ');
              for (final item in substrings) {
                final uri = Uri.tryParse(item);
                if (uri != null && uri.scheme == 'https' ||
                    uri?.scheme == 'http') {
                  if (uri!.host.isNotEmpty) {
                    if (uri.host.split('.').length >= 2) {
                      link = item;
                      break;
                    }
                  }
                }
              }
              return SimpleUrlPreview(
                key: Key(link),
                url: link,
                titleLines: 1,
                descriptionLines: 3,
                bgColor: context.c_white_text,
                titleStyle: context.ts_s14h14w500.copyWith(
                  color: context.c_blue,
                ),
                descriptionStyle: context.ts_s14h14w400.copyWith(
                  color: context.c_text,
                ),
                previewContainerPadding: EdgeInsets.zero,
                previewHeight: 82.h,
                isClosable: false,
                onClosed: () {},
              );
            },
          ),
        ),
      ),
    );
  }
}
