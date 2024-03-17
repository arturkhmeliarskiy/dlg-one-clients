import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

class DlsMenuButton extends StatefulWidget {
  const DlsMenuButton({
    Key? key,
    required this.menu,
    this.icon,
    this.preAction,
  }) : super(key: key);
  final PopupMenuEntry<int> menu;
  final Widget? icon;

  /// Действие (любое), которое нужно сделать перед открытием меню
  final VoidCallback? preAction;

  @override
  State<DlsMenuButton> createState() => _DlsMenuButtonState();
}

class _DlsMenuButtonState extends State<DlsMenuButton> {
  bool isMenuShowed = false;
  Offset? _tapPosition;

  void _showCustomMenu() async {
    if (widget.preAction != null) {
      widget.preAction!();
    }

    final overlay = context.findRenderObject() as RenderBox;
    setState(() => isMenuShowed = true);
    final relativeRect = RelativeRect.fromRect(
        _tapPosition! & const Size(0, 0), Offset.zero & overlay.size);

    showMenu(
      color: Colors.transparent,
      elevation: 0,
      context: context,
      items: <PopupMenuEntry<int>>[widget.menu],
      position: relativeRect,
    ).then((value) {
      mounted ? setState(() => isMenuShowed = false) : null;
    });
  }

  void _storePosition(TapDownDetails details) {
    _tapPosition = details.globalPosition;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 28.h,
      width: 28.w,
      decoration: BoxDecoration(
        color: isMenuShowed ? context.c_grey_grey : Colors.transparent,
        borderRadius: BorderRadius.all(Radius.circular(5.r)),
      ),
      alignment: Alignment.center,
      child: widget.icon ??
          Assets.icons.ellipsisV1
              .svg(height: 18.h, width: 18.w, color: context.c_text_grey),
    ).gestureDetector(onTap: _showCustomMenu, onTapDown: _storePosition);
  }
}
