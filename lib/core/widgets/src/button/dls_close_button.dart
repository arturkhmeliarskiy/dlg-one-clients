import 'package:auto_route/auto_route.dart';
import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

class DlsCloseButton extends StatelessWidget {
  final VoidCallback? onClose;
  final Color? backgroundColor;
  const DlsCloseButton({super.key, this.onClose, this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onClose ?? context.router.pop,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
        shape: const CircleBorder(),
        elevation: 0,
        shadowColor: Colors.transparent,
        backgroundColor: backgroundColor ?? Colors.transparent,
      ),
      child: Assets.icons.times14.svg(),
    );
  }
}
