import 'package:dls_matrix_client/dls_matrix_client.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/utils/utils.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api/rest_api.dart';

class ChatMessageRoomMember extends StatelessWidget {
  ///
  const ChatMessageRoomMember({
    required this.message,
    super.key,
  });

  final DlsChatMessageRoomMember message;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 8.w),
      child: DottedBorder(
        borderType: BorderType.RRect,
        radius: Radius.circular(4.r),
        padding: const EdgeInsets.all(12),
        color: context.c_blue,
        child: Row(
          children: [
            Assets.icons.infoCircle.svg(
              width: 16,
              height: 16,
              color: context.c_blue,
            ),
            const SizedBox(width: 8),
            Flexible(
              child: _UserNameBuilder(
                userId: message.senderId,
              ),
            ),
            const SizedBox(width: 4),
            Flexible(
              child: _UserStateBuilder(
                userId: message.stateKey,
                userState: message.getState(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _UserNameBuilder extends StatelessWidget {
  const _UserNameBuilder({
    required this.userId,
  });

  final String userId;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<DLSUser>(
      future: context.read<UsersBloc>().getUser(userId),
      builder: (_, snapshot) {
        if (!snapshot.hasData) {
          return const SizedBox();
        }
        return DLSHeaders.h3(
          txt(snapshot.data!.DLSUserName),
        );
      },
    );
  }
}

class _UserStateBuilder extends StatelessWidget {
  const _UserStateBuilder({
    required this.userId,
    required this.userState,
  });

  final String userId;
  final DlsChatMessageRoomMemberState userState;

  @override
  Widget build(BuildContext context) {
    var event = '';
    switch (userState) {
      case DlsChatMessageRoomMemberState.createdRoom:
        event = S.of(context).chatMessageCreatedChat;
        break;
      case DlsChatMessageRoomMemberState.memberInvited:
        event = S.of(context).chatMessageSendInvite;
        break;
      case DlsChatMessageRoomMemberState.memberJoined:
        event = S.of(context).chatMessageJoinedChat;
        break;
      case DlsChatMessageRoomMemberState.memberLeave:
        event = S.of(context).chatMessageLeaveChat;
        break;
      case DlsChatMessageRoomMemberState.memberRenamed:
        event = S.of(context).chatMessageChangedName;
        break;
      case DlsChatMessageRoomMemberState.unknown:
        event = S.of(context).chatMessageUnknownStatus;
        break;
      case DlsChatMessageRoomMemberState.memberKicked:
        event = S.of(context).chatMessageKickedChat;
    }
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: Text(
            event,
            style: context.ts_s14h16_4w400.copyWith(
              color: context.c_text,
            ),
          ),
        ),
        if (userState == DlsChatMessageRoomMemberState.memberInvited ||
            userState == DlsChatMessageRoomMemberState.memberKicked)
          Flexible(
            child: Padding(
              padding: EdgeInsets.only(left: 4.w),
              child: _UserNameBuilder(userId: userId),
            ),
          ),
      ],
    );
  }
}
