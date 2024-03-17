import 'package:dls_one/core/core.dart';
import 'package:dls_one/core/widgets/src/switch/dls_switch_button.dart';
import 'package:flutter/material.dart';

class TaskAppBar extends StatelessWidget {
  const TaskAppBar({
    required this.finishedIsHided,
    required this.setFinishedIsHided,
    super.key,
  });

  final bool finishedIsHided;
  final void Function(bool) setFinishedIsHided;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.c_appbar,
      height: 51.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(
                width: 20.w,
              ),
              DLSHeaders.h2(S.current.affairs),
            ],
          ),
          Row(
            children: [
              DlsSwitchButton(
                value: finishedIsHided,
                onToggle: setFinishedIsHided,
              ),
              Text(
                S.current.hideFinished,
                style: context.ts_s14h14w400,
              ),
              SizedBox(
                width: 20.w,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
