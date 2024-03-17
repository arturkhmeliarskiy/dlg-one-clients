import 'package:dls_one/core/core.dart';
import 'package:dls_one/core/widgets/dls_page_builder.dart';
import 'package:flutter/material.dart';

class DlsTabBar extends StatelessWidget {
  const DlsTabBar({
    required this.labels,
    this.onTap,
    this.controller,
    super.key,
  });

  final List<String> labels;
  final ValueChanged<int>? onTap;
  final TabController? controller;

  List<Tab> get _buildTabs => labels
      .map(
        (label) => Tab(
          text: label,
          height: 28.h,
        ),
      )
      .toList();

  @override
  Widget build(BuildContext context) {
    return DLSPageBuilder(
      wide: DecoratedBox(
        decoration: BoxDecoration(
          color: context.c_grey_stoke,
          borderRadius: BorderRadius.circular(4),
        ),
        child: TabBar(
          padding: const EdgeInsets.all(4),
          controller: controller,
          tabs: _buildTabs,
          onTap: onTap,
        ),
      ),
      narrow: TabBar(
        controller: controller,
        tabs: _buildTabs,
        onTap: onTap,
      ),
    );
  }
}
