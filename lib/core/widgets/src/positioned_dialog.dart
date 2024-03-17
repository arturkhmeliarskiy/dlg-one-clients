import 'package:flutter/material.dart';

class PositionedDialog extends StatelessWidget {
  const PositionedDialog({
    required this.parentKey,
    required this.child,
    this.shift = Offset.zero,
    super.key,
  });

  // для показа диалога рядом с кнопкой вызывающий этот календарь
  final GlobalKey parentKey;
  final Offset shift;
  final Widget child;

  Offset _parentWidgetInfo(BuildContext context) {
    // для того чтобы показать диалог рядом с кнопкой dates
    // нужно передать значение x, y в формате шкалы
    // то есть, (-1, -0.8 ... 0.8, 1)

    final renderBox = parentKey.currentContext?.findRenderObject();

    if (renderBox == null || renderBox is! RenderBox) {
      throw Exception("Couldn't find RenderBox by parentKey");
    }

    final offset = renderBox.localToGlobal(Offset.zero);

    final width = MediaQuery.of(context).size.width;

    // сначала получаем среднее значение высоты - то есть точку 0 по шкале
    final height = MediaQuery.of(context).size.height / 2;

    // далее делим на среднюю высоту и вычитаем 1
    // чтобы получить точные координаты
    return Offset(
      offset.dx / width + shift.dx,
      offset.dy / height + shift.dy,
    );
  }

  @override
  Widget build(BuildContext context) {
    final coordinates = _parentWidgetInfo(context);
    return Dialog(
      alignment: Alignment(
        coordinates.dx,
        coordinates.dy,
      ),
      backgroundColor: Colors.transparent,
      insetPadding: EdgeInsets.zero,
      child: child,
    );
  }
}
