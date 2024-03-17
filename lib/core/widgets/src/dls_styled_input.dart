// ignore_for_file: public_member_api_docs

import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

/// стилизованное для веба/десктопа поле поиска
class DLSStyledInput extends StatefulWidget {
  const DLSStyledInput({
    required this.controller,
    required this.focusNode,
    this.onSubmitted,
    this.hint,
    this.onChange,
    this.onClear,
    this.prefixIcon,
    this.autofocus = false,
    this.revertFocusColor = false,
    super.key,
  });

  final TextEditingController controller;
  final ValueChanged<String>? onChange;
  final ValueChanged<String>? onSubmitted;
  final VoidCallback? onClear;
  final FocusNode focusNode;
  final String? hint;
  final Widget? prefixIcon;
  final bool autofocus;
  final bool revertFocusColor;

  @override
  State<DLSStyledInput> createState() => _DLSStyledInputState();
}

class _DLSStyledInputState extends State<DLSStyledInput> {
  @override
  void initState() {
    super.initState();
    widget.focusNode.addListener(_focusedFunc);
    widget.controller.addListener(_textControllerListener);
  }

  @override
  void dispose() {
    widget.controller.removeListener(_textControllerListener);
    widget.focusNode.removeListener(_focusedFunc);
    super.dispose();
  }

  void _focusedFunc() => setState(() {});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32.h,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: (widget.revertFocusColor
                ? !widget.focusNode.hasFocus
                : widget.focusNode.hasFocus)
            ? context.c_grey_grey
            : context.c_white_background,
        borderRadius: BorderRadius.circular(5.r),
      ),
      child: DlsPadding.only(
        left: 12.w,
        right: 8.w,
        child: TextField(
          autofocus: widget.autofocus,
          onChanged: widget.onChange,
          onSubmitted: widget.onSubmitted,
          cursorColor: context.c_text,
          focusNode: widget.focusNode,
          controller: widget.controller,
          style: context.ts_s14h22_4w400,
          textAlignVertical: TextAlignVertical.center,
          decoration: InputDecoration(
            hintText: widget.hint,
            isDense: true,
            alignLabelWithHint: true,
            hintStyle: context.ts_s14h22_4w400.copyWith(
              color: context.c_placeholder,
            ),
            contentPadding: EdgeInsets.zero,
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            icon: widget.prefixIcon,
            constraints: BoxConstraints(maxHeight: 32.h),
            suffixIconConstraints: BoxConstraints(
              maxWidth: 18.w,
              maxHeight: 18.h,
            ),
            suffixIcon: widget.controller.text.isEmpty
                ? null
                : InkWell(
                    onTap: widget.onClear,
                    borderRadius: BorderRadius.circular(500),
                    child: Assets.icons.times1.svg(
                      width: 18.w,
                      height: 18.h,
                      colorFilter: context.c_text_grey_color_filter,
                    ),
                  ),
          ),
        ),
      ),
    );
  }

  void _textControllerListener() {
    setState(() {});
  }
}
