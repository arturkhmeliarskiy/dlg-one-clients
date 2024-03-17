import 'package:dls_matrix_client/dls_matrix_client.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/media/presentation/ui/widgets/dls_video_thumbnail.dart';
import 'package:dls_one/features/textroom/ui/components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GalleryVideoListItemWrapper extends StatelessWidget {
  const GalleryVideoListItemWrapper({
    required this.attachment,
    required this.onOpenVideo,
    super.key,
  });

  final DlsChatMessageAttachment attachment;
  final ValueChanged<DlsChatMessageAttachment> onOpenVideo;

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
      child: GalleryVideoListItem._(
        onOpenVideo: onOpenVideo,
      ),
    );
  }
}

class GalleryVideoListItem extends StatelessWidget {
  const GalleryVideoListItem._({
    required this.onOpenVideo,
  });

  final ValueChanged<DlsChatMessageAttachment> onOpenVideo;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatMessageBloc, ChatMessageState>(
      builder: (context, state) {
        final attachment = state.event as DlsChatMessageAttachment;
        return Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.r),
            color: context.c_grey_hover,
          ),
          child: DlsVideoThumbnail(
            attachment: attachment,
            openVideo: () {
              onOpenVideo(attachment);
            },
          ),
        );
      },
    );
  }
}
