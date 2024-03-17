import 'package:auto_route/auto_route.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/core/widgets/dls_page_builder.dart';
import 'package:dls_one/web/chat/view/chat_nav_panel.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ChatsRootPage extends StatelessWidget {
  const ChatsRootPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DLSPageBuilder(
      narrow: const AutoRouter(),
      wide: AutoRouter(
        builder: (context, content) => Row(
          children: [
            SizedBox(
              width: 200.w,
              child: const ChatNavPanel(),
            ),
            Expanded(child: content),
          ],
        ),
      ),
    );
  }
}
