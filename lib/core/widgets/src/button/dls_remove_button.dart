import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

class DlsRemoveButton extends StatelessWidget {
  const DlsRemoveButton({required this.onTap, super.key});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24.h,
      width: 24.w,
      child: TextButton(
        onPressed: onTap,
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
          foregroundColor: context.c_red,
          shape: const CircleBorder(),
        ),
        child: Icon(
          Icons.close,
          color: context.c_red,
          size: 12.r,
        ),
      ),
    );
  }
}
