import 'package:common/common.dart';
import 'package:dls_matrix_client/dls_matrix_client.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/textroom/ui/components/chat_message/view/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MessageCommentsBuilder extends StatelessWidget {
  MessageCommentsBuilder({
    required this.comments,
    required this.onOpenComments,
    super.key,
  });

  final List<DlsChatMessage> comments;
  final VoidCallback onOpenComments;
  final _dateFormat = DateFormat().add_Hm();

  @override
  Widget build(BuildContext context) {
    if (comments.isEmpty) {
      return const SizedBox();
    }

    final isWebDesktop = DlsPlatform.dlsPlatform == DlsPlatformType.web ||
        DlsPlatform.dlsPlatform == DlsPlatformType.desktop;
    final commentColor = isWebDesktop ? context.c_text : context.c_text_grey;
    final child = MouseRegion(
      hitTestBehavior: HitTestBehavior.translucent,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          MessageCommentsAvatarBuilder(
            senderIds: comments.map((e) => e.senderId).toList(),
          ),
          SizedBox(width: 8.w),

          /// количество комментариев
          Text(
            S.current.commentsPlural(comments.length),
            style: context.ts_s12h12w400.copyWith(color: commentColor),
          ),
          if (isWebDesktop)
            Padding(
              padding: EdgeInsets.only(left: 8.w),
              child: Text(
                'Последний в ${_dateFormat.format(comments.first.createdAt)}',
                style:
                    context.ts_s12h12w400.copyWith(color: context.c_text_grey),
              ),
            ),
        ],
      ),
    );

    if (isWebDesktop) {
      return GestureDetector(
        onTap: onOpenComments,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 12.w),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.r),
            border: Border.all(color: context.c_grey_stoke),
          ),
          child: child,
        ),
      );
    }
    return GestureDetector(onTap: onOpenComments, child: child);
  }
}
