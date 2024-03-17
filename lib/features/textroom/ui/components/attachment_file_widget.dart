import 'package:collection/collection.dart';
import 'package:common/common.dart';
import 'package:cross_file/cross_file.dart';
import 'package:dls_matrix_client/dls_matrix_client.dart';
import 'package:dls_one/const/constants.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/textroom/ui/components/components.dart';
import 'package:dls_one/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AttachmentFileWidget extends StatelessWidget {
  ///
  const AttachmentFileWidget({
    required this.attachment,
    required this.index,
    super.key,
  });

  final DlsChatMessageAttachment attachment;
  final int index;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ChatMessageBloc>(
      create: (context) => ChatMessageBloc(
        attachment,
        users: context.read<UsersBloc>(),
        networkFileCache: context.read(),
      ),
      child: FutureBuilder<XFile?>(
        future: DlsPlatform.dlsPlatform == DlsPlatformType.web
            ? null
            : context.read<FileManager>().fetchFile(
                  attachment.fileName,
                  attachment.url,
                ),
        builder: (context, snapshot) {
          if (snapshot.data == null &&
              DlsPlatform.dlsPlatform != DlsPlatformType.web) {
            return const DLSPreloader();
          }

          final fileSize = attachment.fileSize;
          final fileName = attachment.fileName;
          final fileExt = fileName.split('.').lastOrNull ?? '';
          return GestureDetector(
            onTap: () => context.read<ChatMessageBloc>().add(
                  ChatMessageEvent.openFile(context),
                ),
            child: Padding(
              padding: EdgeInsets.only(
                top: index == 0 ? 4.h : 0,
                bottom: 4.h,
                left: 48.w,
              ),
              child: SelectedFileComponent(
                color: fileColor[fileExt] ?? Colors.black38,
                fileName: fileName,
                fileSize: getFileSizeString(bytes: fileSize),
                onTapRightWidget: () {
                  context.read<ChatMessageBloc>().add(
                        ChatMessageEvent.deleteFile(context: context),
                      );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
