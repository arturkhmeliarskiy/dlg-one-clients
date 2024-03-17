import 'package:cross_file/cross_file.dart';
import 'package:dls_matrix_client/dls_matrix_client.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/textroom/ui/components/components.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GalleryImageListItemWrapper extends StatelessWidget {
  const GalleryImageListItemWrapper({
    required this.attachment,
    required this.onImageTap,
    super.key,
  });

  final DlsChatMessageAttachment attachment;
  final VoidCallback onImageTap;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        return ChatMessageBloc(
          attachment,
          users: context.read<UsersBloc>(),
          networkFileCache: context.read<FileManager>(),
        );
      },
      child: GalleryImageListItem._(
        onImageTap: onImageTap,
      ),
    );
  }
}

class GalleryImageListItem extends StatelessWidget {
  const GalleryImageListItem._({
    required this.onImageTap,
  });

  final VoidCallback onImageTap;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatMessageBloc, ChatMessageState>(
      builder: (context, state) {
        final attachment = state.event as DlsChatMessageAttachment;

        return GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: onImageTap,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5.r),
            child: Image.network(
              attachment.url.toString(),
              fit: BoxFit.cover,
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress?.expectedTotalBytes ==
                    loadingProgress?.cumulativeBytesLoaded) {
                  return child;
                }

                return const DLSPreloader();
              },
              errorBuilder: (_, error, stack) {
                return Text(
                  'Error load image #1:\neventId=${attachment.eventId}\nurl=${attachment.safeCast<DlsChatMessageAttachment>()?.url}',
                  style: context.ts_s10h11_7w400,
                );
              },
            ),
          ),
        );
      },
    );
  }
}
