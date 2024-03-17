import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/home/presentation/bloc/global_chat_bloc.dart';
import 'package:dls_one/utils/utils.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomInformationBar extends StatelessWidget {
  const BottomInformationBar({
    required this.tabController,
    required this.selected,
    super.key,
  });

  final TabController tabController;
  final int selected;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      child: TabBar(
        controller: tabController,
        indicatorColor: context.c_blue,
        tabs: [
          Tab(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  txt(S.current.personal),
                  style: tabTextStyle(context, selected == 0),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
                BlocBuilder<GlobalChatBloc, GlobalChatState>(
                  buildWhen: (previous, current) =>
                      previous.privateRoomsUnreadCount !=
                      current.privateRoomsUnreadCount,
                  builder: (context, state) {
                    if (state.privateRoomsUnreadCount <= 0) {
                      return const SizedBox();
                    }
                    return DlsNotificationsCounter(
                      count: state.privateRoomsUnreadCount.toString(),
                    ).paddingOnly(
                      left: 8.w,
                      top: 5.h,
                    );
                  },
                ),
              ],
            ),
          ),
          Tab(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  txt(S.current.groups),
                  style: tabTextStyle(context, selected == 1),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
                BlocBuilder<GlobalChatBloc, GlobalChatState>(
                  buildWhen: (previous, current) =>
                      previous.publicRoomsUnreadCount !=
                      current.publicRoomsUnreadCount,
                  builder: (context, state) {
                    if (state.publicRoomsUnreadCount <= 0) {
                      return const SizedBox();
                    }
                    return DlsNotificationsCounter(
                      count: state.publicRoomsUnreadCount.toString(),
                    ).paddingOnly(
                      left: 8.w,
                      top: 5.h,
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  TextStyle tabTextStyle(BuildContext context, bool isActive) {
    return kIsWeb
        ? context.ts_s14h14w400.copyWith(
            color: isActive ? context.c_text : context.c_placeholder,
          )
        : context.ts_s14h22_4w400.copyWith(
            color: isActive ? context.c_text : context.c_placeholder,
          );
  }
}
