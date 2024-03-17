import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

class DLSCheckBox extends StatelessWidget {
  const DLSCheckBox({
    required this.val,
    required this.onChanged,
    required this.text,
    super.key,
  });

  final bool? val;
  final ValueChanged<bool?>? onChanged;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Checkbox(
          activeColor: context.c_blue,
          checkColor: context.c_white_text,
          side: BorderSide(color: context.c_grey_hover, width: 1.r),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(5.r),
            ),
          ),
          value: val,
          onChanged: onChanged,
        ),
        Text(
          text,
          style: context.ts_s12h12w400.copyWith(color: context.c_text),
        )
      ],
    );
  }
}
