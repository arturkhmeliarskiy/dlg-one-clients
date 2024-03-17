import 'dart:math';

import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/company_structure/model/department_node.dart';
import 'package:dls_one/features/company_structure/model/employee.dart';
import 'package:flutter/material.dart';

part 'department_card_body.dart';

class DepartmentCard extends StatelessWidget {
  const DepartmentCard({
    required this.node,
    required this.onTapAdd,
    required this.onTapSettings,
    super.key,
  });

  static final cardWidth = 280.w;
  static final _addIconSize = 24.r;

  final DepartmentNode node;
  final VoidCallback? onTapAdd;
  final VoidCallback? onTapSettings;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      width: cardWidth,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _DepartmentCardBody(
                  node: node,
                  onTapSettings: onTapSettings,
                ),
                if (onTapAdd != null) SizedBox(height: _addIconSize / 2),
              ],
            ),
          ),
          if (onTapAdd != null)
            Positioned(
              left: cardWidth / 2 - _addIconSize / 2,
              bottom: 0,
              child: GestureDetector(
                onTap: onTapAdd,
                child: SizedBox.square(
                  dimension: _addIconSize,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: theme.scaffoldBackgroundColor,
                      border: Border.all(
                        color: context.c_grey_stoke,
                        width: 1.r,
                      ),
                    ),
                    child: Center(
                      child: Assets.icons.plus1.svg(
                        width: _addIconSize * 0.75,
                        height: _addIconSize * 0.75,
                        color: context.c_text_grey,
                      ),
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
