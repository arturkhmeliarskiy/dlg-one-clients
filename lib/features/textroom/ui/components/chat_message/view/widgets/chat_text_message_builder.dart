import 'package:dls_one/core/core.dart';
import 'package:dls_one/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_quill/flutter_quill.dart' as quill;
import 'package:intl/intl.dart';

class ChatTextMessageBuilder extends StatelessWidget {
  const ChatTextMessageBuilder({
    required this.document,
    required this.focusNode,
    required this.scrollController,
    required this.isForwardedMessage,
    this.forwardedMessageSender,
    this.forwardedMessageDate,
    this.deletedAt,
    super.key,
  });

  final FocusNode focusNode;
  final ScrollController scrollController;
  final quill.Document document;
  final bool isForwardedMessage;
  final String? forwardedMessageSender;
  final DateTime? forwardedMessageDate;
  final DateTime? deletedAt;
  static final DateFormat _createdDateFormat = DateFormat().add_Hm();
  static final DateFormat _deletedDateFormat = DateFormat().add_yMd().add_Hm();

  @override
  Widget build(BuildContext context) {
    if (deletedAt == null) {
      if (isForwardedMessage) {
        final usersBloc = context.read<UsersBloc>();
        return DlsPadding.only(
          left: 8.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Assets.icons.paperclip2.svg(
                    width: 18.w,
                    height: 18.h,
                    color: context.c_text_grey,
                  ),
                  SizedBox(width: 4.w),
                  Flexible(
                    child: Text(
                      txt(
                        usersBloc.state.store[forwardedMessageSender!]
                                ?.DLSUserName ??
                            '',
                      ),
                      style: context.ts_s12h14w400
                          .copyWith(color: context.c_text_grey),
                      maxLines: 1,
                      softWrap: false,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                    ),
                  ),
                  SizedBox(width: 4.w),
                  Text(
                    _createdDateFormat.format(forwardedMessageDate!),
                    style: context.ts_s12h14w400.copyWith(
                      color: context.c_text_grey,
                    ),
                  ),
                ],
              ),
              quill.QuillEditor(
                controller: quill.QuillController(
                  document: document,
                  selection: const TextSelection.collapsed(offset: 0),
                ),
                showCursor: false,
                readOnly: true,
                focusNode: focusNode,
                scrollController: scrollController,
                scrollable: false,
                padding: EdgeInsets.zero,
                autoFocus: false,
                expands: false,
              )
            ],
          ),
        );
      }
      return quill.QuillEditor(
        controller: quill.QuillController(
          document: document,
          selection: const TextSelection.collapsed(offset: 0),
        ),
        showCursor: false,
        readOnly: true,
        focusNode: focusNode,
        scrollController: scrollController,
        scrollable: false,
        padding: EdgeInsets.zero,
        autoFocus: false,
        expands: false,
      );
    }
    return Tooltip(
      message: S.of(context).chatMessageDeletedAt(
            _deletedDateFormat.format(deletedAt!),
          ),
      decoration: BoxDecoration(
        color: context.c_text,
        borderRadius: BorderRadius.circular(5.r),
      ),
      textStyle: context.ts_s14h14w400.copyWith(
        color: context.c_white_text,
      ),
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 3.h),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Assets.icons.times8.svg(
            width: 16,
            height: 16,
            color: context.c_text_grey,
          ),
          SizedBox(width: 4.w),
          Text(
            S.of(context).chatMessageDeleted,
            style: context.ts_s12h12w400.copyWith(color: context.c_text_grey),
          ),
        ],
      ),
    );
  }
}
