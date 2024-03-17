import 'package:common/common.dart';
import 'package:flutter/foundation.dart';

class DLSLayoutItemBuilder<T extends Object?> {
  /// Для [DlsPlatformType.mobile] - [narrow], для всех остальных типов - [wide].
  const DLSLayoutItemBuilder({
    required this.wide,
    required this.narrow,
  });

  factory DLSLayoutItemBuilder.values({
    required T wide,
    required T narrow,
  }) =>
      DLSLayoutItemBuilder(wide: () => wide, narrow: () => narrow);

  /// Виджет для широких экранов.
  final ValueGetter<T> wide;

  /// Виджет для узких экранов
  final ValueGetter<T> narrow;

  T call() {
    // TODO: Сделать зависимость от размеров экрана.
    final isMobile = DlsPlatform.dlsPlatform == DlsPlatformType.mobile;

    return isMobile ? narrow() : wide();
  }
}
