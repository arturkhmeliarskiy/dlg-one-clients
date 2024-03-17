import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timeago/timeago.dart' as timeago;

class LastOnline extends StatelessWidget {
  const LastOnline({super.key, required this.matrixUserId});
  final String matrixUserId;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UsersBloc, UsersState>(
      builder: (context, state) {
        if (state.store[matrixUserId]?.currentlyActive ?? false) {
          return Text(
            S.current.online,
            style: context.ts_s14h22_4w400.copyWith(color: context.c_green),
          );
        }
        if (state.store[matrixUserId]?.lastActiveAgo != null) {
          return Text(
            '${S.current.wasOnline} ${timeago.format(
              DateTime.now().subtract(
                Duration(
                  milliseconds: state.store[matrixUserId]!.lastActiveAgo!,
                ),
              ),
            )}',
            style: context.ts_s14h22_4w400.copyWith(color: context.c_text_grey),
          );
        }
        return Text(
          S.of(context).userLastOnline,
          style: context.ts_s14h22_4w400.copyWith(color: context.c_text_grey),
        );
      },
    );
  }
}
