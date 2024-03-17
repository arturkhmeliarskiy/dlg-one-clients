import 'package:dls_one/common/gen/localization/l10n.dart';
import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

/// выпадающее меню при длительном нажатии на сообщение
class MessageMenuCreateTasks extends PopupMenuEntry<int> {
  const MessageMenuCreateTasks({
    this.onTapTask,
    this.onTapEvent,
    this.onTapCase,
    super.key,
  });

  final VoidCallback? onTapTask;
  final VoidCallback? onTapEvent;
  final VoidCallback? onTapCase;

  @override
  MessageMenuCreateTasksState createState() => MessageMenuCreateTasksState();

  @override
  double get height => throw UnimplementedError();

  @override
  bool represents(int? value) {
    throw UnimplementedError();
  }
}

class MessageMenuCreateTasksState extends State<MessageMenuCreateTasks> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: context.shadow,
        color: context.c_white_text,
        borderRadius: BorderRadius.all(
          Radius.circular(5.r),
        ),
      ),
      margin: EdgeInsets.symmetric(
        horizontal: 20.h,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          if (widget.onTapTask != null)
            Padding(
              padding: const EdgeInsets.only(
                top: 8,
                left: 8,
                right: 8,
              ),
              child: Material(
                child: InkWell(
                  onHover: (value) {},
                  hoverColor: context.c_grey_grey,
                  radius: 5.r,
                  onTap: () {
                    Navigator.pop(context);
                    widget.onTapTask!();
                  },
                  child: Container(
                    height: 32.h,
                    padding: EdgeInsets.only(
                      left: 8.w,
                    ),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      S.current.create_task,
                      style: context.ts_s14h22_4w400
                          .copyWith(overflow: TextOverflow.fade),
                    ),
                  ),
                ),
              ),
            ),
          if (widget.onTapEvent != null)
            Padding(
              padding: const EdgeInsets.only(
                top: 8,
                left: 8,
                right: 8,
              ),
              child: Material(
                child: InkWell(
                  onHover: (value) {},
                  hoverColor: context.c_grey_grey,
                  radius: 5.r,
                  onTap: () {
                    Navigator.pop(context);
                    widget.onTapEvent!();
                  },
                  child: Container(
                    height: 32.h,
                    padding: EdgeInsets.only(
                      left: 8.w,
                    ),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      S.current.create_event,
                      style: context.ts_s14h22_4w400
                          .copyWith(overflow: TextOverflow.fade),
                    ),
                  ),
                ),
              ),
            ),
          if (widget.onTapCase != null)
            Padding(
              padding: const EdgeInsets.only(
                top: 8,
                left: 8,
                right: 8,
                bottom: 8,
              ),
              child: Material(
                child: InkWell(
                  onHover: (value) {},
                  hoverColor: context.c_grey_grey,
                  radius: 5.r,
                  onTap: () {
                    Navigator.pop(context);
                    widget.onTapCase!();
                  },
                  child: Container(
                    height: 32.h,
                    padding: EdgeInsets.only(
                      left: 8.w,
                    ),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      S.current.create_case,
                      style: context.ts_s14h22_4w400
                          .copyWith(overflow: TextOverflow.fade),
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
