import 'package:auto_route/auto_route.dart';
import 'package:dls_one/app/router/app_router.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/core/widgets/dls_page_builder.dart';
import 'package:dls_one/web/settings/view/dls_settings_appbar.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SettingsRootPage extends StatelessWidget {
  const SettingsRootPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DLSPageBuilder(
      wide: AutoTabsRouter(
        routes: const [
          SettingsProfileRootRoute(),
          SettingsPasswordRoute(),
          SettingsNotificationsRoute(),
          CompanyStructureRoute(),
        ],
        builder: (context, child) => Row(
          children: [
            SizedBox(
              width: 200.w,
              child: const DLSSettingsNavigationPanel(),
            ),
            Expanded(
              child: child,
            ),
          ],
        ),
      ),
      narrow: const AutoRouter(),
    );
  }
}
