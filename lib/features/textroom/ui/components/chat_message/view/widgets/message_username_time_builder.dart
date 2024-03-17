import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:dls_one/utils/utils.dart';

class MessageUsernameTimeBuilder extends StatelessWidget {
  const MessageUsernameTimeBuilder({
    required this.userName,
    required this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.opponentLastReadDate,
    super.key,
  });

  final String userName;
  final DateTime createdAt;
  final DateTime? updatedAt;
  final DateTime? deletedAt;
  final ValueNotifier<DateTime>? opponentLastReadDate;

  static final DateFormat _createdDateFormat = DateFormat().add_Hm();
  static final DateFormat _updatedDateFormat = DateFormat().add_yMd().add_Hm();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: Text(
            txt(userName),
            style: context.ts_s14h16_4w500.copyWith(color: context.c_text),
            maxLines: 1,
            softWrap: false,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
          ),
        ),
        SizedBox(width: 8.w),
        if (updatedAt != null && deletedAt == null)
          Padding(
            padding: EdgeInsets.only(right: 4.w),
            child: Tooltip(
              message: S.of(context).chatMessageEditedAt(
                    _updatedDateFormat.format(updatedAt!),
                  ),
              decoration: BoxDecoration(
                color: context.c_text,
                borderRadius: BorderRadius.circular(5.r),
              ),
              textStyle: context.ts_s14h14w400.copyWith(
                color: context.c_white_text,
              ),
              padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 3.h),
              child: Assets.icons.pen3.svg(
                width: 14.w,
                height: 14.h,
                color: context.c_text_grey,
              ),
            ),
          ),
        Text(
          _createdDateFormat.format(createdAt),
          style: context.ts_s12h12w400.copyWith(
            color: context.c_text_grey,
          ),
        ),
        if (opponentLastReadDate != null)
          Padding(
            padding: EdgeInsets.only(left: 8.w),
            child: ValueListenableBuilder(
              valueListenable: opponentLastReadDate!,
              builder: (_, lastRead, __) {
                final isMessageRead = createdAt.compareTo(lastRead) <= 0;
                return SvgPicture.asset(
                  isMessageRead
                      ? Assets.icons.star10.path
                      : Assets.icons.star9.path,
                  width: 18.w,
                  height: 18.h,
                  color: context.c_text_grey,
                );
              },
            ),
          ),
      ],
    );
  }
}
