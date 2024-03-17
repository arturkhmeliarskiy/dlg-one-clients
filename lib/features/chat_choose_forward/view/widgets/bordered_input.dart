// ignore_for_file: cascade_invocations

import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

class BorderedInput extends StatefulWidget {
  const BorderedInput({
    required this.initialValue,
    required this.onChange,
    required this.onClear,
    this.prefixIcon,
    this.onSubmitted,
    super.key,
  });

  final String initialValue;
  final Widget? prefixIcon;
  final ValueChanged<String> onChange;
  final VoidCallback onClear;
  final ValueChanged<String>? onSubmitted;

  @override
  State<StatefulWidget> createState() {
    return _BorderedInputState();
  }
}

class _BorderedInputState extends State<BorderedInput> {
  final _controller = TextEditingController();

  void _textControllerListener() {
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    _controller.addListener(_textControllerListener);
  }

  @override
  void didUpdateWidget(BorderedInput oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (_controller.text != widget.initialValue) {
      _controller.text = widget.initialValue;
    }
  }

  @override
  void dispose() {
    _controller.removeListener(_textControllerListener);
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: widget.onChange,
      onSubmitted: widget.onSubmitted,
      cursorColor: context.c_text,
      controller: _controller,
      style: context.ts_s14h22_4w400,
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
        hintText: S.current.search,
        isDense: true,
        alignLabelWithHint: true,
        hintStyle: context.ts_s14h22_4w400.copyWith(
          color: context.c_placeholder,
        ),
        contentPadding: EdgeInsets.zero,
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: context.c_grey_stoke,
          ),
          borderRadius: BorderRadius.circular(5.r),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: context.c_grey_stoke,
          ),
          borderRadius: BorderRadius.circular(5.r),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: context.c_grey_stoke,
          ),
          borderRadius: BorderRadius.circular(5.r),
        ),
        errorBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
        prefixIcon: SizedBox(
          width: 18.r,
          height: 18.r,
          child: Align(
            child: widget.prefixIcon,
          ),
        ),
        suffixIcon: _controller.text.isEmpty
            ? null
            : SizedBox(
                width: 18.r,
                height: 18.r,
                child: Align(
                  child: InkWell(
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
}
