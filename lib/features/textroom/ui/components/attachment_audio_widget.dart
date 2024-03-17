import 'package:dls_matrix_client/dls_matrix_client.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/media/media.dart';
import 'package:dls_one/features/media/media_player/media_player_scope.dart';
import 'package:dls_one/features/textroom/ui/components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AttachmentAudioWidget extends StatelessWidget {
  ///
  const AttachmentAudioWidget({
    required this.attachment,
    super.key,
  });

  final DlsChatMessageAttachment attachment;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) {
            return ChatMessageBloc(
              attachment,
              users: context.read<UsersBloc>(),
              networkFileCache: context.read<FileManager>(),
            );
          },
        ),
      ],
      child: _AttachmentAudioPlayerBuilder(
        event: attachment,
        key: key,
      ),
    );
  }
}

class _AttachmentAudioPlayerBuilder extends StatelessWidget {
  const _AttachmentAudioPlayerBuilder({
    required this.event,
    super.key,
  });

  final DlsChatMessageAttachment event;

  @override
  Widget build(BuildContext context) {
    return AudioPlayer(
      key: Key('${event.eventId}_Player'),
      data: AudioData(
        id: event.eventId,
        fileName: event.fileName,
        url: event.url,
        mimeType: event.mimeType,
      ),
      onDelete: () {
        MediaPlayerScope.of(context).stopController(event.eventId);
        context
            .read<ChatMessageBloc>()
            .add(ChatMessageEvent.deleteFile(context: context));
      },
      width: 110.w,
    );
  }
}

class _AttachmentAudioLoader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44.h,
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(
          width: 1.r,
          color: context.c_grey_hover,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(5.r),
        ),
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 4.w,
              right: 7.w,
              top: 4.h,
            ),
            child: const DownAndSpinner(progress: 99),
          ),
          Assets.soundR.image(
            width: 240.w,
            height: 31.h,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
