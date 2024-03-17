import 'package:dls_one/core/core.dart';
import 'package:dls_one/core/widgets/dls_page_builder.dart';
import 'package:flutter/material.dart';

class DlsTableHeader extends StatelessWidget {
  const DlsTableHeader({
    required this.color,
    required this.text,
    required this.iconColor,
    required this.onPressed,
    this.open = false,
    super.key,
  });

  final String text;
  final Color color;
  final Color iconColor;
  final bool open;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final child = DlsTableHeaderButton(
      text: text,
      color: color,
      iconColor: iconColor,
      onPressed: onPressed,
      open: open,
    );
    return DLSPageBuilder(
      wide: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          child,
          Expanded(
            child: DlsTableUnderline(
              color: color,
              child: const SizedBox(),
            ),
          ),
        ],
      ),
      narrow: child,
    );
  }
}
