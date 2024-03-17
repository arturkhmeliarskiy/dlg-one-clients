import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/textroom/ui/components/chat_message/view/widgets/message_user_avatar_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MessageCommentsAvatarBuilder extends StatelessWidget {
  const MessageCommentsAvatarBuilder({
    required this.senderIds,
    super.key,
  });

  final List<String> senderIds;

  @override
  Widget build(BuildContext context) {
    final uniqueUserIds = senderIds.toSet();
    return Stack(
      children: [
        /// аватарки комментариев
        Stack(
          children: List.generate(
            uniqueUserIds.length > 3 ? 3 : uniqueUserIds.length,
            // TODO(alexsh): There is no loaded user in storage, but we try to get ID for them
            (index) {
              final user = context
                  .read<UsersBloc>()
                  .state
                  .store[uniqueUserIds.elementAt(index)];
              return Padding(
                padding: EdgeInsets.only(left: index * 16.w),
                child: MessageUserAvatarBuilder(
                  user: user,
                  size: 20,
                  onlineVisible: false,
                ),
                // DLSAvatarOnly(
                //   matrixId: userId,
                //   usersBloc: context.read<UsersBloc>(),
                // ),
              );
            },
          ),
        ),

        /// остаток пользвоателй
        if (uniqueUserIds.length > 3)
          Padding(
            padding: EdgeInsets.only(left: 16.w * 3),
            child: Container(
              height: 20.r,
              width: 20.r,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100.r),
                color: context.c_grey_stoke,
              ),
              child: Text(
                uniqueUserIds.length - 3 > 9
                    ? '+9'
                    : '+${uniqueUserIds.length - 3}',
                style:
                    context.ts_s10h11_7w400.copyWith(color: context.c_text_grey),
              ),
            ),
          ),
      ],
    );
  }
}
