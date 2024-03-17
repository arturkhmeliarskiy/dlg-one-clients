import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

class SprintTabBarNavigation extends StatefulWidget {
  final Widget firstListWidgets;
  final Widget secondListWidgets;
  const SprintTabBarNavigation({
    super.key,
    required this.firstListWidgets,
    required this.secondListWidgets,
  });

  @override
  State<SprintTabBarNavigation> createState() => _SprintTabBarNavigationState();
}

class _SprintTabBarNavigationState extends State<SprintTabBarNavigation> {
  final List<Tab> myTabs = <Tab>[
    Tab(text: S.current.details),
    Tab(text: S.current.tab_comments)
  ];

  int selectedTabbar = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: DecoratedBox(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(4),
          ),
        ),
        child: Column(
          children: <Widget>[
            Container(
              height: 36,
              margin: const EdgeInsets.only(
                top: 12,
                left: 12,
                right: 12,
              ),
              decoration: BoxDecoration(
                color: context.c_grey_stoke,
                borderRadius: const BorderRadius.all(
                  Radius.circular(4),
                ),
              ),
              child: TabBar(

                tabs: myTabs,
                onTap: (index) {
                  setState(() {
                    selectedTabbar = index;
                  });
                },
                dividerColor: Colors.red,
                padding: const EdgeInsets.all(4),
                labelColor: context.c_text,
                unselectedLabelColor: context.c_text_grey,
                unselectedLabelStyle: context.ts_s14h22_4w400.copyWith(
                  color: context.c_text,
                ),
                labelStyle: context.ts_s14h22_4w400.copyWith(
                  color: context.c_text,
                ),
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: context.c_appbar,
                ),
              ),
            ),
            Expanded(
              child: selectedTabbar == 0
                  ? widget.firstListWidgets
                  : widget.secondListWidgets,
            ),
          ],
        ),
      ),
    );
  }
}
