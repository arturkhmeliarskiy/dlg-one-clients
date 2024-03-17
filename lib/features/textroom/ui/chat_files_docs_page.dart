import 'package:auto_route/auto_route.dart';
import 'package:dls_matrix_client/dls_matrix_client.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/features.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ChatFilesDocsPage extends StatelessWidget {
  const ChatFilesDocsPage({
    super.key,
    required this.docs,
    required this.title,
  });

  final List<DlsChatMessageAttachment> docs;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.c_appbar,
      appBar: OldDlsAppBar(
        title: title,
        subtitleWidget: Text(
          '${docs.length} ${docs.length.filePlural()}',
          style: context.ts_s14h16_4w400.copyWith(color: context.c_text_grey),
        ),
        height: 60.h,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(12.r),
        child: Column(
          children: List.generate(
            docs.length,
            (index) {
              return AttachmentFileWidget(
                attachment: docs[index],
                index: index,
                key: Key(docs[index].eventId),
              );
            },
          ),
        ),
      ),
    );
  }
}
