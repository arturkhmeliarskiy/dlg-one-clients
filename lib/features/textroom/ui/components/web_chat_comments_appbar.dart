import 'package:dls_one/core/core.dart';
import 'package:dls_one/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api/rest_api.dart';

class WebChatCommentsAppBar extends StatelessWidget with PreferredSizeWidget {
  ///
  const WebChatCommentsAppBar({
    required this.userId,
    required this.onCloseCommentsPanel,
    super.key,
  });

  final String userId;
  final VoidCallback onCloseCommentsPanel;

  @override
  Size get preferredSize => Size.fromHeight(52.h);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: preferredSize.height,
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 1.h,
            color: context.c_grey_stoke,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Flexible(
                  child: FutureBuilder<DLSUser>(
                    future: context.read<UsersBloc>().getUser(userId),
                    builder: (context, snapshot) {
                      if (!snapshot.hasData) {
                        return const SizedBox();
                      }
                      return Text(
                        txt(snapshot.data!.DLSUserName),
                        maxLines: 1,
                        softWrap: false,
                        overflow: TextOverflow.ellipsis,
                        style: context.ts_s14h16_4w500
                            .copyWith(color: context.c_text),
                      );
                    },
                  ),
                ),
                SizedBox(width: 8.w),
                Text(
                  S.of(context).chatCommentsReplies,
                  style:
                      context.ts_s14h16_4w400.copyWith(color: context.c_text),
                ),
              ],
            ),
          ),
          WebButtonIconWithTooltip(
            icon: Assets.icons.times1.path,
            onTap: onCloseCommentsPanel,
            tooltip: S.of(context).chatCommentsCloseTooltip,
          ),
        ],
      ),
    );
  }
}
