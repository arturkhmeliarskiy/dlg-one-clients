import 'package:auto_route/auto_route.dart';
import 'package:dls_one/app/router/app_router.dart';
import 'package:dls_one/app/router/auto_router_observer_mixin.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/core/widgets/src/dls_app_bar.dart';
import 'package:flutter/material.dart';

@immutable
class NavigationTileData {
  const NavigationTileData({
    required this.title,
    required this.routeName,
    this.onTap,
  });

  final String title;
  final String routeName;
  final VoidCallback? onTap;
}

@immutable
class NavigationSection {
  const NavigationSection({
    required this.header,
    required this.items,
  });

  final String header;
  final List<NavigationTileData> items;
}

// THERE
class DLSSettingsNavigationPanel extends StatefulWidget {
  const DLSSettingsNavigationPanel({super.key});

  @override
  State<DLSSettingsNavigationPanel> createState() =>
      _DLSSettingsNavigationPanelState();
}

class _DLSSettingsNavigationPanelState
    extends State<DLSSettingsNavigationPanel> {
  late final _sections = [
    NavigationSection(
      header: S.current.personal_data,
      items: [
        NavigationTileData(
          title: S.current.profile,
          routeName: SettingsProfileRootRoute.name,
          onTap: () {
            context.navigateTo(
              const SettingsProfileRootRoute(),
            );
          },
        ),
        NavigationTileData(
          title: S.current.password,
          routeName: SettingsPasswordRoute.name,
          onTap: () {
            context.navigateTo(
              const SettingsPasswordRoute(),
            );
          },
        ),
        NavigationTileData(
          routeName: SettingsNotificationsRoute.name,
          title: S.current.notifications,
          onTap: () {
            context.navigateTo(
              const SettingsNotificationsRoute(),
            );
          },
        ),
      ],
    ),
    NavigationSection(
      header: S.current.space,
      items: [
        NavigationTileData(
          title: S.current.companyStructure,
          routeName: CompanyStructureRoute.name,
          onTap: () {
            context.navigateTo(const CompanyStructureRoute());
          },
        ),
        // TODO: В разработке
        NavigationTileData(
          title: S.current.employeesList,
          routeName: '',
        ),
        // TODO: В разработке
        NavigationTileData(
          title: S.current.workSchedule,
          routeName: '',
        ),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DLSAppBar(
        automaticallyImplyLeading: false,
        backgroundColor: context.c_grey_grey,
        title: Text(S.current.settings),
      ),
      backgroundColor: context.c_grey_grey,
      body: ListView.builder(
        itemCount: _sections.length,
        itemBuilder: (context, index) {
          return _SectionBody(
            section: _sections[index],
          );
        },
      ),
    );
  }
}

class _SectionBody extends StatelessWidget {
  const _SectionBody({
    required this.section,
  });

  final NavigationSection section;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(height: 4.h),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 20.w),
          child: Text(
            section.header,
            style: context.ts_s14h16_4w500,
          ),
        ),
        ...List.generate(
          section.items.length,
          (index) => Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
            child: _NavigationTile(
              data: section.items[index],
            ),
          ),
        ),
        SizedBox(height: 16.h),
        const Divider(),
      ],
    );
  }
}

class _NavigationTile extends StatefulWidget {
  const _NavigationTile({
    required this.data,
  });
  final NavigationTileData data;

  @override
  State<_NavigationTile> createState() => _NavigationTileState();
}

class _NavigationTileState extends State<_NavigationTile>
    with AutoRouterObserverMixin {
  bool isSelected = false;

  @override
  // ignore: overridden_fields
  late RoutingController router = AutoTabsRouter.of(context);

  @override
  void updateRouteName({required String routeName}) {
    setState(() {
      isSelected = routeName == widget.data.routeName;
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(4.r),
      canRequestFocus: false,
      hoverColor: context.c_grey_hover,
      onTap: widget.data.onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
        decoration: BoxDecoration(
          color: isSelected ? context.c_grey_hover : Colors.transparent,
          borderRadius: BorderRadius.circular(4.r),
        ),
        child: Text(
          widget.data.title,
          style: context.ts_s14h16_4w400
              .copyWith(color: isSelected ? Colors.black : context.c_text_grey),
        ),
      ),
    );
  }
}
