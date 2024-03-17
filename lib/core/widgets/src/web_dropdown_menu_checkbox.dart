import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

class WebDropdownMenuCheckBox extends StatelessWidget {
  const WebDropdownMenuCheckBox({
    super.key,
    required this.isSelected,
  });

  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    if (isSelected) {
      return Assets.icons.webTaskCheckbox.svg();
    } else {
      return Assets.icons.webTaskCheckboxEmpty.svg();
    }
  }
}
