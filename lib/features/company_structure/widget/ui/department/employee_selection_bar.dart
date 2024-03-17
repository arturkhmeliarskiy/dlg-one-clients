import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/todo/widget/ui/todo_item/todo_checkbox.dart';
import 'package:flutter/material.dart';

class EmployeeSelectionBar extends StatelessWidget {
  const EmployeeSelectionBar({
    required this.onClose,
    required this.onSelectAll,
    required this.onMove,
    required this.onBlock,
    required this.onDelete,
    required this.selectedCount,
    required this.isAllSelected,
    super.key,
  });

  final VoidCallback onClose;
  final VoidCallback onSelectAll;
  final VoidCallback onMove;
  final VoidCallback onBlock;
  final VoidCallback onDelete;
  final int selectedCount;
  final bool isAllSelected;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: onClose,
          child: Assets.icons.close.svg(color: context.c_gray),
        ),
        SizedBox(width: 6.w),
        GestureDetector(
          onTap: onSelectAll,
          child: TodoCheckBox(
            isChecked: isAllSelected,
            size: 20.r,
          ),
        ),
        SizedBox(width: 6.w),
        Text('($selectedCount)'),
        Expanded(child: Text(S.current.selectAll)),
        ElevatedButton(
          onPressed: onMove,
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 12.w),
          ),
          child: Text(S.current.move),
        ),
        SizedBox(width: 14.w),
        GestureDetector(
          onTap: onSelectAll,
          child: Assets.icons.padlock1.svg(color: context.c_gray),
        ),
        SizedBox(width: 14.w),
        GestureDetector(
          onTap: onSelectAll,
          child: Assets.icons.trash.svg(color: context.c_gray),
        ),
      ],
    );
  }
}
