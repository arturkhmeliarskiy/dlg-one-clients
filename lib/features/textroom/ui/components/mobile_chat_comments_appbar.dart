import 'package:auto_route/auto_route.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api/rest_api.dart';

class MobileChatCommentsAppBar extends StatelessWidget
    with PreferredSizeWidget {
  const MobileChatCommentsAppBar({
    required this.userId,
    required this.onTapBack,
    super.key,
  });

  final String userId;
  final VoidCallback onTapBack;

  @override
  Size get preferredSize => Size.fromHeight(60.h);

  @override
  Widget build(BuildContext context) {
    return Container(
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
        children: [
          GestureDetector(
            onTap: onTapBack,
            child: Assets.icons.back.svg(
              width: 18,
              height: 18,
              color: context.c_text_grey,
            ),
          ),
          SizedBox(width: 12.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
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
                      style: context.ts_s14h16_4w500.copyWith(color: context.c_text),
                    );
                  },
                ),
              ),
              Text(
                S.of(context).chatCommentsReplies,
                style: context.ts_s14h16_4w400.copyWith(color: context.c_text),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
