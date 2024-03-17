import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

class LabelButton extends StatefulWidget {
  const LabelButton({
    required this.title,
    this.onTap,
    super.key,
  });

  final String title;
  final VoidCallback? onTap;

  @override
  State<LabelButton> createState() => _LabelButtonState();
}

class _LabelButtonState extends State<LabelButton> {
  bool isActiveInput = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 16,
        left: 17,
      ),
      child: Row(
        children: [
          Text(
            widget.title,
            style: context.ts_s14h22_4w400.copyWith(
              color: context.c_text_grey,
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          if (widget.onTap != null)
            Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () {
                  setState(() {
                    isActiveInput = !isActiveInput;
                  });
                  widget.onTap!();
                },
                borderRadius: const BorderRadius.all(
                  Radius.circular(
                    10,
                  ),
                ),
                hoverColor: context.c_grey_hover,
                child: Container(
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
                    border: Border.all(
                      color: context.c_grey_stoke,
                    ),
                  ),
                  padding: const EdgeInsets.all(1.5),
                  child: Assets.icons.plus1.svg(
                    height: 11.67.h,
                    color: context.c_text_grey,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
