import 'package:dls_matrix_client/dls_matrix_client.dart';
import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ChatMessageDateMarker extends StatelessWidget {
  /// Constructor
  ChatMessageDateMarker({
    required this.message,
    super.key,
  });

  final DlsChatMessageDateMarker message;

  final _msgDateFormat = DateFormat().add_yMd();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 8.w),
      child: Row(
        children: [
          Flexible(
            child: Container(
              color: context.c_grey_stoke,
              height: 1.h,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 12.w),
            padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.h),
            decoration: BoxDecoration(
              color: context.c_grey_grey,
              borderRadius: BorderRadius.circular(5.r),
            ),
            child: Text(
              _msgDateFormat.format(message.createdAt),
              style: context.ts_s12h12w400.copyWith(
                color: context.c_text_grey,
              ),
            ),
          ),
          Flexible(
            child: Container(
              color: context.c_grey_stoke,
              height: 1.h,
            ),
          ),
        ],
      ),
    );
  }
}
