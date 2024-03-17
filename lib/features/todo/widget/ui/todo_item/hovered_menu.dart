import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/calendar/widget/common/on_hover_background_container.dart';
import 'package:flutter/material.dart';

class HoveredMenu extends StatefulWidget {
  const HoveredMenu({
    required this.onEdit,
    required this.onDelete,
    required this.child,
    required this.createEvent,
    required this.createTask,
    super.key,
  });

  final Widget child;
  final VoidCallback onEdit;
  final VoidCallback onDelete;
  final VoidCallback createEvent;
  final VoidCallback createTask;

  @override
  State<HoveredMenu> createState() => _HoveredMenuState();
}

class _HoveredMenuState extends State<HoveredMenu> {
  bool _onHover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _onHover = true),
      onExit: (_) => setState(() => _onHover = false),
      child: Container(
        padding: EdgeInsets.all(4.r),
        decoration: BoxDecoration(
          color: _onHover ? context.c_grey_hover : context.c_white_background,
          borderRadius: BorderRadius.circular(4.r),
        ),
        child: Row(
          children: [
            Expanded(child: widget.child),
            if (_onHover) ...[
              SizedBox(
                width: 7.w,
              ),
              PopupMenuButton<int>(
                child: Assets.icons.ellipsisV1
                    .svg(color: context.c_grey_calendar_time),
                itemBuilder: (context) => [
                  PopupMenuItem<int>(
                    value: 0,
                    onTap: widget.createEvent,
                    child: Text(S.current.createTask),
                  ),
                  PopupMenuItem<int>(
                    value: 1,
                    onTap: widget.createTask,
                    child: Text(S.current.createEvent),
                  ),
                ],
              ),
              SizedBox(
                width: 4.w,
              ),
              OnHoverBackgroundTappableContainer(
                onTap: (_) {
                  widget.onEdit();
                },
                backgroundColor: context.c_text.withOpacity(0.1),
                padding: EdgeInsets.all(5.r),
                borderRadius: BorderRadius.circular(5.r),
                child:
                    Assets.icons.pen1.svg(color: context.c_grey_calendar_time),
              ),
              SizedBox(
                width: 4.w,
              ),
              OnHoverBackgroundTappableContainer(
                onTap: (_) {
                  widget.onDelete();
                },
                backgroundColor: context.c_text.withOpacity(0.1),
                padding: EdgeInsets.all(5.r),
                borderRadius: BorderRadius.circular(5.r),
                child: Assets.icons.trashAlt1
                    .svg(color: context.c_grey_calendar_time),
              )
            ],
          ],
        ),
      ),
    );
  }
}
