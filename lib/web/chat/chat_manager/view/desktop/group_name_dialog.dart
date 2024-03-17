import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/chat/chat_manager/chat_manager.dart';
import 'package:flutter/material.dart';

Future<SimpleGroup?> groupNameDialog(
  BuildContext context,
  SimpleGroup init,
) {
  final controller = TextEditingController(text: init.name);
  return showDialog<SimpleGroup>(
    barrierColor: context.c_overlay_with_opacity,
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        elevation: 0,
        alignment: Alignment.center,
        insetPadding: EdgeInsets.all(12.r),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10.r),
          ),
        ),
        child: SizedBox(
          width: 400.w,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DLSHeaders.h1(
                S.current.group_adding,
              ).paddingOnly(bottom: 20.h, left: 20.w, right: 20.w),
              const DLSDivider(),
              DLSInput(
                label: S.current.group_name,
                hint: S.current.group_name,
                controller: controller,
                autofocus: true,
              ).paddingSymmetric(horizontal: 20.w, vertical: 20.w),
              _Actions(
                controller: controller,
                init: init,
              ).paddingSymmetric(horizontal: 20.w),
            ],
          ).paddingSymmetric(vertical: 20.h),
        ),
      );
    },
  );
}

class _Actions extends StatefulWidget {
  const _Actions({
    required this.controller,
    required this.init,
  });

  final TextEditingController controller;
  final SimpleGroup init;

  @override
  State<_Actions> createState() => _ActionsState();
}

class _ActionsState extends State<_Actions> {
  @override
  void initState() {
    super.initState();
    widget.controller.addListener(_buttonEnabler);
  }

  void _buttonEnabler() => setState(() {});

  @override
  void dispose() {
    widget.controller.removeListener(_buttonEnabler);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        DLSButton(
          text: widget.init.name.isEmpty ? S.current.add : S.current.rename,
          isShadowEnabled: false,
          color: widget.controller.text.trim().length >= 3
              ? context.c_blue
              : context.c_blue_disabled,
          textColor: context.c_white_text,
          width: 130.w,
          height: 40.h,
          onTap: widget.controller.text.trim().length >= 3
              ? () {
                  final name = widget.controller.text;
                  widget.controller.dispose();
                  Navigator.pop(
                    context,
                    SimpleGroup(
                      name: name,
                      users: widget.init.users,
                      chatId: widget.init.chatId,
                    ),
                  );
                }
              : null,
        ),
        DLSButton(
          text: S.current.cancel,
          isShadowEnabled: false,
          color: context.c_white_text,
          border: Border.all(color: context.c_grey_stoke, width: 1.r),
          width: 130.w,
          height: 40.h,
          onTap: () {
            widget.controller.dispose();
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}
