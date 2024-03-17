import 'package:auto_route/auto_route.dart';
import 'package:dls_matrix_client/dls_matrix_client.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/core/widgets/dls_page_builder.dart';
import 'package:dls_one/web/chat/chat_manager/chat_manager.dart';
import 'package:dls_one/web/chat/search_chat/search_chat.dart';
import 'package:dls_one/web/chat/view/chat_personal/chat_personal.dart';
import 'package:dls_one/web/chat/view/chat_personal/view/widgets/web_chat_personal_chat_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multi_split_view/multi_split_view.dart';
import 'package:rest_api/rest_api.dart';

@RoutePage()
class WebChatPersonalWrapperPage extends StatelessWidget {
  const WebChatPersonalWrapperPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) {
            return ChatPersonalBloc();
          },
        ),
        BlocProvider(
          create: (context) {
            return ChatManagerBloc(
              matrixClient: context.read<DlsMatrixClient>(),
            );
          },
        ),
        BlocProvider(
          create: (context) {
            return SearchChatBloc(
              restApi: context.read<DlsRestApi>(),
              matrixClient: context.read<DlsMatrixClient>(),
            );
          },
        )
      ],
      child: DLSPageBuilder(
        narrow: const AutoRouter(),
        wide: AutoRouter(
          builder: (context, content) => ColoredBox(
            color: context.c_white_text,
            child: MultiSplitView(
              dividerBuilder: (
                axis,
                index,
                resizable,
                dragging,
                highlighted,
                themeData,
              ) {
                return DlsVerticalPanelSplitter();
              },
              initialAreas: [
                Area(weight: 0.3, minimalSize: 312.w),
                Area(weight: 0.7, minimalSize: 624.w),
              ],
              children: [
                const WebChatPersonalChatList(),
                if (context.topRoute.path == 'personal')
                  Center(
                    child: Text(
                      S.current.select_chat,
                      style: context.ts_s14h14w500,
                    ),
                  )
                else
                  content,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
