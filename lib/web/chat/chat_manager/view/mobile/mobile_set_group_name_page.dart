import 'package:auto_route/auto_route.dart';
import 'package:dls_one/app/router/app_router.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/chat/chat_manager/chat_manager.dart';
import 'package:dls_one/web/chat/chat_manager/view/mobile/widgets/widgets.dart';
import 'package:dls_one/web/sip/sip.dart';
import 'package:flutter/material.dart';

@RoutePage()
class MobileSetGroupNamePage extends StatefulWidget {
  const MobileSetGroupNamePage({super.key, required this.init});

  final SimpleGroup init;

  @override
  State<MobileSetGroupNamePage> createState() => _MobileSetGroupNamePageState();
}

class _MobileSetGroupNamePageState extends State<MobileSetGroupNamePage> {
  final controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    controller
      ..text = widget.init.name
      ..addListener(_buttonEnabler);
  }

  void _buttonEnabler() => setState(() {});

  @override
  void dispose() {
    controller
      ..removeListener(_buttonEnabler)
      ..dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.c_appbar,
      appBar: MobileSetGroupNameAppBar(
        onTapBack: context.popRoute,
        onTapNext: controller.text.trim().length < 3
            ? null
            : () {
                context.pushRoute(
                  MobileSelectGroupUsersRoute(
                    init: SimpleGroup(
                      name: controller.text,
                      users: widget.init.users,
                      chatId: widget.init.chatId,
                    ),
                  ),
                );
              },
      ),
      body: DLSInput(
        label: S.current.group_name,
        hint: S.current.group_name,
        controller: controller,
        autofocus: true,
      ).paddingSymmetric(horizontal: 20.w, vertical: 20.w),
    );
  }
}
