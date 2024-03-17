import 'package:dls_one/core/core.dart';
import 'package:flutter/widgets.dart';

class FilterFilesCustomButton extends StatelessWidget {
  const FilterFilesCustomButton({
    required this.selectedValue,
    required this.isMenuOpen,
    required this.hint,
    super.key,
  });

  final String? selectedValue;
  final bool isMenuOpen;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 28.h,
      child: Row(
        children: [
          if (selectedValue != null)
            Text(
              selectedValue!,
              style: context.ts_s14h22_4w400.copyWith(
                color: context.c_text,
                overflow: TextOverflow.ellipsis,
              ),
              maxLines: 1,
            )
          else
            Text(
              hint,
              style: context.ts_s14h22_4w400.copyWith(
                color: context.c_text_grey,
              ),
            ),
          const SizedBox(width: 9),
          WebDropdownMenuIcon(
            isIconUp: true,
            isMenuOpen: !isMenuOpen,
          ),
        ],
      ).paddingOnly(
        bottom: 3.w,
        top: 3.w,
        right: 4.h,
        left: 8.h,
      ),
    );
  }
}
