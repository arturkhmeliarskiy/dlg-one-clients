import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

class DlsTableUnderline extends StatelessWidget {
  const DlsTableUnderline({super.key, this.child, this.color});

  final Widget? child;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: color ?? context.c_orange_label,
            width: 4,
          ),
        ),
      ),
      child: child ?? const SizedBox.expand(),
    );
  }
}
