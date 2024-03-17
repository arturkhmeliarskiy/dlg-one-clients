import 'package:auto_route/auto_route.dart';
import 'package:dls_one/app/router/app_router.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/home/presentation/bloc/global_chat_bloc.dart';
import 'package:dls_one/features/home/presentation/ui/widgets/bottom_information_bar.dart';
import 'package:dls_one/features/home/presentation/ui/widgets/mobile_dls_chats_page_app_bar.dart';
import 'package:dls_one/utils/utils.dart';
import 'package:dls_one/web/chat/chat_manager/chat_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class ChatsPage extends StatefulWidget {
  const ChatsPage({
    super.key,
  });

  @override
  State<ChatsPage> createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage>
    with SingleTickerProviderStateMixin {
  final Key left = Key(getUuid);
  final Key right = Key(getUuid);
  int _selected = 0;
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
    _selected = _tabController.index;
    _tabController.addListener(_listener);
  }

  void _listener() {
    setState(() => _selected = _tabController.index);
  }

  @override
  void dispose() {
    _tabController
      ..removeListener(_listener)
      ..dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.c_appbar,
      appBar: MobileDLSChatsAppBar(
        onTapBack: context.popRoute,
        onTapSearch: () => context.navigateTo(const ChatsSearchRoute()),
        bottomInformationBar: BottomInformationBar(
          tabController: _tabController,
          selected: _selected,
        ),
      ),
      floatingActionButton: _selected == 1 ? _buildAddGroupChatButton() : null,
      body: TabBarView(
        controller: _tabController,
        children: [
          _buildPrivateChatsTab(),
          _buildPublicChatsTab(),
        ],
      ),
    );
  }

  Widget _buildAddGroupChatButton() {
    return Container(
      decoration: BoxDecoration(
        boxShadow: context.shadow,
        color: context.c_white_text,
        borderRadius: const BorderRadius.all(Radius.circular(100)),
      ),
      alignment: Alignment.center,
      height: 40.r,
      width: 40.r,
      child: Assets.icons.plus1.svg(
        width: 18.w,
        height: 18.h,
        color: context.c_text_grey,
      ),
    ).gestureDetector(
      onTap: () => context.navigateTo(
        GroupRootRoute(
          children: [
            MobileSetGroupNameRoute(init: SimpleGroup(name: '', users: []))
          ],
        ),
      ),
    );
  }

  Widget _buildPrivateChatsTab() {
    return BlocBuilder<GlobalChatBloc, GlobalChatState>(
      key: left,
      buildWhen: (previous, current) =>
          // We need to handle two case:
          // - created new room, list count changed;
          // - new message added to room, list count not changed, but order changed;
          previous.privateRooms != current.privateRooms ||
          previous.privateRoomsUnreadCount != current.privateRoomsUnreadCount,
      builder: (context, state) {
        return MobileRoomsList(
          /// TODO NIGHTWELF
          // key: UniqueKey(),
          rooms: state.privateRooms,
          onItemTap: (id) {
            final items = id.split(':');
            context.pushRoute(
              MobileTextRoomWrapperRoute(
                chatId: items.first,
                server: items.last,
              ),
            );
          },
          emptyPanel: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                S.current.personal_list_is_empty,
                style: context.ts_s14h22_4w400.copyWith(
                  color: context.c_text_grey,
                ),
              ),
              SizedBox(height: 4.h),
              DLSButtonText(
                text: S.current.search_by_people,
                onTap: () => context.navigateTo(const ChatsSearchRoute()),
                iconLeft: Assets.icons.search1.svg(
                  width: 18.w,
                  height: 18.h,
                  color: context.c_blue,
                ),
                alignment: MainAxisAlignment.center,
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildPublicChatsTab() {
    return BlocBuilder<GlobalChatBloc, GlobalChatState>(
      key: right,
      buildWhen: (previous, current) =>
          // We need to handle two case:
          // - created new room, list count changed;
          // - new message added to room, list count not changed, but order changed;
          previous.publicRooms != current.publicRooms ||
          previous.publicRoomsUnreadCount != current.publicRoomsUnreadCount,
      builder: (context, state) {
        return MobileRoomsList(
          /// TODO NIGHTWELF
          // key: UniqueKey(),
          rooms: state.publicRooms,
          onItemTap: (id) {
            final items = id.split(':');
            context.pushRoute(
              MobileTextRoomWrapperRoute(
                chatId: items.first,
                server: items.last,
              ),
            );
          },
          emptyPanel: Center(
            child: Text(
              S.current.group_list_is_empty,
              style: context.ts_s14h22_4w400.copyWith(
                color: context.c_text_grey,
              ),
            ),
          ),
        );
      },
    );
  }
}
