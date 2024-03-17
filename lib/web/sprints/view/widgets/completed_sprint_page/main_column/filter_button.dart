import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

class FilterButton extends StatelessWidget {
  final VoidCallback onTapFilter;
  const FilterButton({
    Key? key,
    required this.onTapFilter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          onTapFilter();
        },
        borderRadius: const BorderRadius.all(
          Radius.circular(
            5,
          ),
        ),
        hoverColor: context.c_grey_hover,
        child: Container(
          width: 28,
          height: 28,
          alignment: Alignment.center,
          child: Assets.icons.filter.svg(
            height: 15.0.h,
            color: context.c_text_grey,
          ),
        ),
      ),
    );
  }
}
