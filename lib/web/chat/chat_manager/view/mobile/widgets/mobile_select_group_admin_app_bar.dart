// ignore_for_file: public_member_api_docs

import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MobileSelectGroupAdminAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const MobileSelectGroupAdminAppBar({
    this.onTapBack,
    required this.onTapNext,
  });

  final VoidCallback? onTapBack;
  final Function onTapNext;

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: preferredSize,
      child: Container(
        height: preferredSize.height,
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: 1.h,
              color: context.c_grey_stoke,
            ),
          ),
        ),
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Row(
                children: [
                  Assets.icons.back
                      .svg(
                        width: 18.w,
                        height: 18.h,
                        colorFilter: context.c_text_grey_color_filter,
                      )
                      .gestureDetector(onTap: onTapBack),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.w),
                      child: DLSHeaders.h1(S.current.selectNewOwner),
                    ),
                  ),
                ],
              ),
            ),
            BlocBuilder<SearchAndSelectUsersBloc, SearchAndSelectUsersState>(
              builder: (context, state) {
                final data = state.maybeWhen(
                  orElse: () => [],
                  data: (selectedUsers, searchResult) => selectedUsers,
                );
                return DLSButtonFlat(
                  text: S.current.done,
                  onTap: () => data.isNotEmpty ? onTapNext(data) : null,
                  isDisabled: data.isEmpty,
                  textStyle: context.ts_s14h14w400.copyWith(
                    color:
                        data.isEmpty ? context.c_blue_disabled : context.c_blue,
                  ),
                  border: Border.all(color: Colors.transparent),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(60.h);
}
