import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:dls_one/app/router/app_router.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/utils/utils.dart';
import 'package:dls_one/web/sip/sip.dart';
import 'package:flutter/material.dart';

class CurrentCallBarWrapper extends StatelessWidget {
  const CurrentCallBarWrapper({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: context.c_appbar,
      // TODO Убрать SafeArea так как все дочерние виджеты в него обернуты
      child: SafeArea(
        bottom: false,
        left: false,
        right: false,
        child: Column(
          children: [
            CallBarBuilder.builder(
              onTapBar: (chatId) async {
                if (DlsPlatform.dlsPlatform == DlsPlatformType.mobile) {
                  unawaited(hideKeyboard());
                }
                await context.navigateTo(const CallRoute());
              },
            ),
            Expanded(child: child),
          ],
        ),
      ),
    );
  }
}
