import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

class DlsSwitch extends StatefulWidget {
  const DlsSwitch({
    required this.initialState,
    this.onTap,
    super.key,
  });

  final bool initialState;
  final ValueChanged<bool>? onTap;

  @override
  State<DlsSwitch> createState() => _DlsSwitchState();
}

class _DlsSwitchState extends State<DlsSwitch> {
  @override
  void initState() {
    super.initState();
    isEnabled = widget.initialState;
  }

  @override
  void didUpdateWidget(covariant DlsSwitch oldWidget) {
    super.didUpdateWidget(oldWidget);
    isEnabled = widget.initialState;
  }

  late bool isEnabled;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() => isEnabled = !isEnabled);
        if (widget.onTap != null) widget.onTap!(isEnabled);
      },
      child: isEnabled
          ? Stack(
              alignment: Alignment.centerRight,
              children: [
                DlsSwitchPartBackground(color: context.c_blue),
                const DlsSwitchPartCircle().paddingSymmetric(horizontal: 2.w),
              ],
            )
          : Stack(
              alignment: Alignment.centerLeft,
              children: [
                DlsSwitchPartBackground(color: context.c_grey_hover),
                const DlsSwitchPartCircle().paddingSymmetric(horizontal: 2.w),
              ],
            ),
    );
  }
}
