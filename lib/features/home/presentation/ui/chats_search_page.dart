import 'package:auto_route/auto_route.dart';
import 'package:dls_matrix_client/dls_matrix_client.dart';
import 'package:dls_one/app/router/app_router.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/home/presentation/ui/widgets/bottom_information_bar.dart';
import 'package:dls_one/utils/utils.dart';
import 'package:dls_one/web/chat/chat_manager/chat_manager.dart';
import 'package:dls_one/web/chat/search_chat/search_chat.dart';
import 'package:dls_one/web/sip/sip.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api/rest_api.dart';

@RoutePage()
class ChatsSearchPage extends StatelessWidget {
  const ChatsSearchPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) {
            return SearchChatBloc(
              restApi: context.read<DlsRestApi>(),
              matrixClient: context.read<DlsMatrixClient>(),
            );
          },
        ),
        BlocProvider(
          create: (context) {
            return ChatManagerBloc(
              matrixClient: context.read<DlsMatrixClient>(),
            );
          },
        ),
      ],
      child: const _ChatsSearchLayout(),
    );
  }
}

class _ChatsSearchLayout extends StatefulWidget {
  const _ChatsSearchLayout();

  @override
  State<_ChatsSearchLayout> createState() => _ChatsSearchLayoutState();
}

class _ChatsSearchLayoutState extends State<_ChatsSearchLayout>
    with SingleTickerProviderStateMixin {
  final Key left = Key(getUuid);
  final Key right = Key(getUuid);

  late final TabController _tabController;
  late final TextEditingController _textController;

  int _selected = 0;

  @override
  void dispose() {
    _tabController
      ..removeListener(_listener)
      ..dispose();
    _textController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
    _textController = TextEditingController(text: '');
    _selected = _tabController.index;

    /// изменение стиля выделенной вкладки после нажатия на нее
    _tabController.addListener(_listener);
  }

  void _listener() {
    setState(() => _selected = _tabController.index);
  }

  void _onItemTap(String chatId) {
    final items = chatId.split(':');
    context.pushRoute(
      MobileTextRoomWrapperRoute(
        chatId: items.first,
        server: items.last,
      ),
    );
  }

  void _onNewUserTap(DLSUser user) {
    context.read<ChatManagerBloc>().add(ChatManagerEvent.createPrivate(user));
    context.read<SearchChatBloc>().add(const SearchChatEvent.onClear());
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ChatManagerBloc, ChatManagerState>(
      listener: (context, state) {
        state.whenOrNull(
          created: (chatId, isDirect) {
            if (isDirect) _onItemTap(chatId);
          },
        );
      },
      listenWhen: (previous, current) {
        return current.maybeWhen(
          orElse: () => false,
          created: (chatId, isDirect) {
            return previous.maybeWhen(
              orElse: () => true,
              created: (chatIdPrev, isDirectPrev) => chatIdPrev != chatId,
            );
          },
        );
      },
      child: Scaffold(
        backgroundColor: context.c_appbar,
        appBar: MobileDLSSearchAppBar(
          onChange: (value) => context
              .read<SearchChatBloc>()
              .add(SearchChatEvent.onChangeSearch(value)),
          onSubmitted: (value) => context
              .read<SearchChatBloc>()
              .add(SearchChatEvent.onChangeSearch(value)),
          onClear: () => context
              .read<SearchChatBloc>()
              .add(const SearchChatEvent.onClear()),
          bottomInformationBar: BottomInformationBar(
            tabController: _tabController,
            selected: _selected,
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            BlocBuilder<SearchChatBloc, SearchChatState>(
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () => Center(
                    child: Text(
                      S.current.typeQueryToSearchInput,
                      style: context.ts_s14h22_4w400
                          .copyWith(color: context.c_text_grey),
                    ),
                  ),
                  data: (data) => MobileSearchResultsList(
                    typeUi: SearchResultUiType.personalChatsAndUsers,
                    data: data,
                    onNewUserTap: _onNewUserTap,
                    onItemTap: _onItemTap,
                  ),
                  failure: (message) => DlsFailure(
                    message: message,
                    onTap: () => context
                        .read<SearchChatBloc>()
                        .add(const SearchChatEvent.onClear()),
                    buttonText: S.current.done,
                    borderWidth: 1,
                  ),
                  loading: () => Container(
                    alignment: Alignment.topCenter,
                    padding: EdgeInsets.only(top: 50.h),
                    child: DLSPreloader.notCenter,
                  ),
                );
              },
            ),
            BlocBuilder<SearchChatBloc, SearchChatState>(
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () => Center(
                    child: Text(
                      S.current.typeQueryToSearchInput,
                      style: context.ts_s14h22_4w400
                          .copyWith(color: context.c_text_grey),
                    ),
                  ),
                  data: (data) => MobileSearchResultsList(
                    typeUi: SearchResultUiType.groupChats,
                    data: data,
                    onNewUserTap: (p0) {
                      // todo ?
                    },
                    onItemTap: _onItemTap,
                  ),
                  failure: (message) => DlsFailure(
                    message: message,
                    onTap: () => context
                        .read<SearchChatBloc>()
                        .add(const SearchChatEvent.onClear()),
                    buttonText: S.current.done,
                    borderWidth: 1,
                  ),
                  loading: () => Container(
                    alignment: Alignment.topCenter,
                    padding: EdgeInsets.only(top: 50.h),
                    child: DLSPreloader.notCenter,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
