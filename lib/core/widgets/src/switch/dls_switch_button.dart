import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

class DlsSwitchButton extends StatefulWidget {
  const DlsSwitchButton({
    required this.value,
    required this.onToggle,
    super.key,
  });

  final bool value;
  final ValueChanged<bool> onToggle;

  @override
  State<DlsSwitchButton> createState() => _DlsSwitchButtonState();
}

class _DlsSwitchButtonState extends State<DlsSwitchButton> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        useMaterial3: true,
      ),
      child: Transform.scale(
        scale: 0.7,
        child: Switch(
          // TODO: переделать на тему
          activeColor: context.c_white_background,
          inactiveThumbColor: context.c_white_background,
          activeTrackColor: context.c_blue,
          inactiveTrackColor: context.c_grey_hover,
          value: widget.value,

          onChanged: (value) {
            widget.onToggle.call(value);
          },
        ),
      ),
    );
  }
}
