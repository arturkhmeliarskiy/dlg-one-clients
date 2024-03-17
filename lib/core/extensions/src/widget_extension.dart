import 'package:flutter/widgets.dart';

extension WidgetCrossballExt on Widget {
  /// Расширение виджета GestureDetector
  @Deprecated('We should don`t write Widget`s like this.')
  Widget gestureDetector({
    GestureTapCallback? onTap,
    GestureTapCallback? onLongPress,
    GestureTapDownCallback? onTapDown,
    GestureLongPressStartCallback? onLongPressStart,
    GestureLongPressEndCallback? onLongPressEnd,
    GestureDragEndCallback? onVerticalDragEnd,
    HitTestBehavior? behavior = HitTestBehavior.translucent,
  }) =>
      GestureDetector(
        behavior: behavior,
        onTap: onTap,
        onLongPress: onLongPress,
        onTapDown: onTapDown,
        onVerticalDragEnd: onVerticalDragEnd,
        onLongPressStart: onLongPressStart,
        onLongPressEnd: onLongPressEnd,
        child: this,
      );

  /// Расширение виджета Expanded
  @Deprecated('We should don`t write Widget`s like this.')
  Widget expanded([int flex = 1]) => Expanded(
        flex: flex,
        child: this,
      );

  @Deprecated('Use DlsPadding instead.')
  Widget paddingAll(double padding) => Padding(padding: EdgeInsets.all(padding), child: this);

  @Deprecated('Use DlsPadding instead.')
  Widget paddingSymmetric({double horizontal = 0.0, double vertical = 0.0}) => Padding(
        padding: EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical),
        child: this,
      );

  @Deprecated('Use DlsPadding instead.')
  Widget paddingOnly({
    double left = 0.0,
    double top = 0.0,
    double right = 0.0,
    double bottom = 0.0,
  }) =>
      Padding(padding: EdgeInsets.only(top: top, left: left, right: right, bottom: bottom), child: this);
}
