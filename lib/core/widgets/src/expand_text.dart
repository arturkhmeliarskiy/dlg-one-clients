import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

class ExpandText extends StatelessWidget {
  const ExpandText({
    super.key,
    required this.onChange,
    required this.text,
    this.isOpen = false,
  });

  final VoidCallback onChange;
  final String text;
  final bool isOpen;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onChange();
      },
      child: Row(
        children: [
          Text(
            text,
            style: context.ts_s14h22_4w400.copyWith(
              color: context.c_blue,
            ),
          ),
          Container(
            height: 24,
            width: 24,
            margin: const EdgeInsets.only(
              right: 7,
              top: 3,
            ),
            padding: const EdgeInsets.all(
              3,
            ),
            child: isOpen
                ? Assets.icons.angleDown.svg(
                    height: 12.h,
                    color: context.c_blue,
                  )
                : Assets.icons.angleUp.svg(
                    height: 12.h,
                    color: context.c_blue,
                  ),
          ),
        ],
      ),
    );
  }
}
