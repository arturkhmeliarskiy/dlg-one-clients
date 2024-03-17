import 'package:dls_one/core/core.dart';
import 'package:dls_one/core/widgets/dls_page_builder.dart';
import 'package:flutter/material.dart';

class DlsTitledSwitch extends StatelessWidget {
  const DlsTitledSwitch({
    required this.onChanged,
    this.info = '',
    this.value = false,
    super.key,
  });
  final String info;
  final bool value;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    final child = DlsSwitch(initialState: value, onTap: onChanged);
    return DLSPageBuilder(
      wide: Row(
        children: [
          child,
          SizedBox(width: 8.w),
          Text(info, style: context.ts_s14h14w400),
        ],
      ),
      narrow: child,
    );
  }
}
