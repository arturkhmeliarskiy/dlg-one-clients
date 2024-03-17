import 'package:common/common.dart';
import 'package:dls_one/core/widgets/dls_layout_item_builder.dart';
import 'package:flutter/material.dart';

/// Враппер над версткой экранов, смотрит на тип девайса и рисует
/// соответствующий виджет на экране.
class DLSPageBuilder extends StatelessWidget {
  /// Враппер над версткой экранов, смотрит на тип девайса и рисует
  /// соответствующий виджет на экране.
  /// Для [DlsPlatformType.mobile] - [narrow], для всех остальных типов - [wide].
  const DLSPageBuilder({
    required this.wide,
    required this.narrow,
    super.key,
  });

  /// Виджет для широких экранов.
  final Widget wide;

  /// Виджет для узких экранов
  final Widget narrow;

  @override
  Widget build(BuildContext context) => DLSLayoutItemBuilder<Widget>(
        wide: () => wide,
        narrow: () => narrow,
      ).call();
}
