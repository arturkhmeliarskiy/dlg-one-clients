import 'package:auto_route/auto_route.dart';
import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

class MobileEnterTextSheet extends StatefulWidget {
  const MobileEnterTextSheet({super.key});

  @override
  State<MobileEnterTextSheet> createState() => _MobileEnterTextSheetState();

  static Future<String?> show(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(12.r)),
      ),
      builder: (context) {
        return const MobileEnterTextSheet();
      },
    );
  }
}

class _MobileEnterTextSheetState extends State<MobileEnterTextSheet> {
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(
          left: 16.w,
          right: 16.w,
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: SizedBox(
          height: 56.h,
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _controller,
                  autofocus: true,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    suffix: InkWell(
                      onTap: _controller.clear,
                      child: Assets.icons.close.svg(color: context.c_text),
                    ),
                  ),
                  style:
                      context.ts_s14h22_4w400.copyWith(color: context.c_text),
                ),
              ),
              SizedBox(width: 16.w),
              SizedBox(
                width: 32.w,
                height: 32.h,
                child: DLSButtonFlat(
                  onTap: () {
                    context.router.pop(_controller.text);
                  },
                  color: context.c_blue,
                  icon: Assets.icons.check.svg(color: context.c_white_text),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
