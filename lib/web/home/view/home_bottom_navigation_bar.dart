import 'package:auto_route/auto_route.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/home/view/main_nav_panel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeBottomNavigationBar extends StatelessWidget {
  const HomeBottomNavigationBar({
    super.key,
  });

  static const _tabs = [
    MainTab.chat,
    MainTab.tasks,
    MainTab.notifications,
    MainTab.calendar,
    MainTab.todo,
    MainTab.settings,
  ];

  @override
  Widget build(BuildContext context) {
    final currentIndex = context.tabsRouter.activeIndex;
    return DecoratedBox(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: context.c_grey_stoke,
            width: 1.h,
          ),
        ),
      ),
      child: SafeArea(
        child: Row(
          children: List.generate(_tabs.length, (index) {
            final tab = _tabs[index];
            final checked = index == currentIndex;
            return Expanded(
              child: Container(
                height: 52,
                width: 52,
                decoration: !checked
                    ? null
                    : BoxDecoration(
                        border: Border(
                          bottom: BorderSide(width: 2.h, color: context.c_blue),
                        ),
                      ),
                child: IconButton(
                  onPressed: () => context.tabsRouter.setActiveIndex(index),
                  icon: SvgPicture.asset(
                    tab.tileIconAsset,
                    color: checked ? context.c_blue : context.c_placeholder,
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
