import 'package:auto_route/auto_route.dart';
import 'package:dls_one/core/widgets/dls_page_builder.dart';
import 'package:dls_one/web/home/view/home_page.dart';
import 'package:dls_one/web/sip/sip.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomeRootPage extends StatelessWidget {
  const HomeRootPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DLSPageBuilder(
      wide: const WebHomePage(),
      narrow: AutoRouter(
        builder: (context, content) => CurrentCallBarWrapper(child: content),
      ),
    );
  }
}
