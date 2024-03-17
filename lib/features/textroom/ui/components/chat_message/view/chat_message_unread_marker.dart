import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

class ChatMessageUnreadMarker extends StatelessWidget {
  ///
  ChatMessageUnreadMarker({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 8.w),
      child: Row(
        children: [
          Flexible(
            child: Container(
              color: context.c_blue,
              height: 1.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            child: Text(
              S.of(context).chatMessageNewMessages,
              style: context.ts_s12h12w400.copyWith(
                color: context.c_blue,
              ),
            ),
          ),
          Flexible(
            child: Container(
              color: context.c_blue,
              height: 1.h,
            ),
          ),
        ],
      ),
    );
  }
}
