import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

class WebDlsHintField extends StatelessWidget {
  const WebDlsHintField({
    super.key,
    this.hintText = '',
    this.hintStyle,
    this.onChanged,
    this.controller,
    this.style,
    this.onEditingComplete,
    this.validation = false,
    this.maxLines = 1,
  });

  final String hintText;
  final TextStyle? style;
  final TextStyle? hintStyle;
  final ValueChanged<String>? onChanged;
  final TextEditingController? controller;
  final VoidCallback? onEditingComplete;
  final bool validation;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Focus(
          onFocusChange: (focus){
            if(!focus){
              onEditingComplete?.call();
            }
          },
          child: TextField(
            maxLines: maxLines,
            decoration: InputDecoration(
              hintText: hintText,
              border: InputBorder.none,
              hintStyle: hintStyle ??
                  context.ts_s24h28w400.copyWith(
                    color: context.c_placeholder,
                  ),
              contentPadding: EdgeInsets.zero,
              isDense: true,
              prefixIconConstraints: const BoxConstraints(maxWidth: 10),
            ),
            onChanged: onChanged,
            onEditingComplete: onEditingComplete,
            controller: controller,
            style: style ?? context.ts_s24h28w400,
          ),
        ),
        if (validation)
          Positioned(
            top: 0,
            bottom: 0,
            left: -8.w,
            child: Center(
              child: SizedBox(
                width: 10.w,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    width: 4.w,
                    height: 4.h,
                    decoration: BoxDecoration(
                      color: context.c_red,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
