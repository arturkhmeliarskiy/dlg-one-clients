import 'package:dls_one/common/gen/localization/l10n.dart';
import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

/// выпадающее меню при длительном нажатии на сообщение
class MessageMenu extends PopupMenuEntry<int> {
  const MessageMenu({
    this.onTapForward,
    this.onTapReplyInThread,
    this.onTapImportant,
    this.onTapCopy,
    this.onTapEdit,
    this.onTapDelete,
    this.onTapStar,
    this.onTapQuote,
    this.onTapSelect,
    super.key,
  });

  final VoidCallback? onTapForward;
  final VoidCallback? onTapReplyInThread;
  final VoidCallback? onTapImportant;
  final VoidCallback? onTapCopy;
  final VoidCallback? onTapEdit;
  final VoidCallback? onTapDelete;
  final VoidCallback? onTapStar;
  final VoidCallback? onTapQuote;
  final VoidCallback? onTapSelect;

  @override
  MessageMenuState createState() => MessageMenuState();

  @override
  double get height => throw UnimplementedError();

  @override
  bool represents(int? value) {
    throw UnimplementedError();
  }
}

class MessageMenuState extends State<MessageMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: context.shadow,
        color: context.c_white_text,
        borderRadius: BorderRadius.all(
          Radius.circular(5.r),
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          if (widget.onTapForward != null)
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8.h),
              child: DLSButtonText(
                text: S.current.share,
                iconLeft: Assets.icons.share1
                    .svg(height: 18.h, width: 18.w, color: context.c_text_grey),
                textStyle:
                    context.ts_s14h22_4w400.copyWith(color: context.c_text),
                onTap: () {
                  Navigator.pop(context);
                  widget.onTapForward!();
                },
              ),
            ),
          if (widget.onTapReplyInThread != null)
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8.h),
              child: DLSButtonText(
                text: S.current.reply,
                iconLeft: Assets.icons.commentLines
                    .svg(height: 18.h, width: 18.w, color: context.c_text_grey),
                textStyle:
                    context.ts_s14h22_4w400.copyWith(color: context.c_text),
                onTap: () {
                  Navigator.pop(context);
                  widget.onTapReplyInThread!();
                },
              ),
            ),
          if (widget.onTapQuote != null)
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8.h),
              child: DLSButtonText(
                text: S.current.chatMessageQuote,
                iconLeft: Assets.icons.commentAltLines
                    .svg(height: 18.h, width: 18.w, color: context.c_text_grey),
                textStyle:
                    context.ts_s14h22_4w400.copyWith(color: context.c_text),
                onTap: () {
                  Navigator.pop(context);
                  widget.onTapQuote!();
                },
              ),
            ),
          if (widget.onTapImportant != null)
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8.h),
              child: DLSButtonText(
                text: S.current.add_to_important,
                iconLeft: Assets.icons.star1
                    .svg(height: 18.h, width: 18.w, color: context.c_text_grey),
                textStyle:
                    context.ts_s14h22_4w400.copyWith(color: context.c_text),
                onTap: () {
                  Navigator.pop(context);
                  widget.onTapImportant!();
                },
              ),
            ),
          if (widget.onTapStar != null)
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8.h),
              child: DLSButtonText(
                text: S.current.add_to_important,
                iconLeft: Assets.icons.star1
                    .svg(height: 18.h, width: 18.w, color: context.c_text_grey),
                textStyle:
                    context.ts_s14h22_4w400.copyWith(color: context.c_text),
                onTap: () {
                  Navigator.pop(context);
                  widget.onTapCopy!();
                },
              ),
            ),
          if (widget.onTapCopy != null)
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8.h),
              child: DLSButtonText(
                text: S.current.copy,
                iconLeft: Assets.icons.copy1
                    .svg(height: 18.h, width: 18.w, color: context.c_text_grey),
                textStyle:
                    context.ts_s14h22_4w400.copyWith(color: context.c_text),
                onTap: () {
                  Navigator.pop(context);
                  widget.onTapCopy!();
                },
              ),
            ),
          if (widget.onTapEdit != null)
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8.h),
              child: DLSButtonText(
                text: S.current.edit,
                iconLeft: Assets.icons.pen1
                    .svg(height: 18.h, width: 18.w, color: context.c_text_grey),
                textStyle:
                    context.ts_s14h22_4w400.copyWith(color: context.c_text),
                onTap: () {
                  Navigator.pop(context);
                  widget.onTapEdit!();
                },
              ),
            ),
          if (widget.onTapSelect != null)
            DlsPadding.symmetric(
              vertical: 8.h,
              child: DLSButtonText(
                text: S.current.chatMessageMenuSelect,
                iconLeft: Assets.icons.checkSquare.svg(
                  height: 18.h,
                  width: 18.w,
                  colorFilter: context.c_text_grey_color_filter,
                ),
                textStyle:
                    context.ts_s14h22_4w400.copyWith(color: context.c_text),
                onTap: () {
                  Navigator.pop(context);
                  widget.onTapSelect?.call();
                },
              ),
            ),
          if (widget.onTapDelete != null)
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8.h),
              child: DLSButtonText(
                text: S.current.delete,
                iconLeft: Assets.icons.trashAlt1
                    .svg(height: 18.h, width: 18.w, color: context.c_red),
                textStyle:
                    context.ts_s14h22_4w400.copyWith(color: context.c_red),
                onTap: () {
                  Navigator.pop(context);
                  widget.onTapDelete!();
                },
              ),
            ),
        ],
      ),
    );
  }
}
