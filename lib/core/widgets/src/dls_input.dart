import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DLSInput extends StatefulWidget {
  /// Constructor
  const DLSInput({
    this.controller,
    this.onSubmitted,
    this.focusNode,
    this.isObscure,
    this.label,
    this.hintStyle,
    this.hint,
    this.radius,
    this.width,
    this.borderColor,
    this.autofocus,
    this.onChanged,
    this.keyboardType,
    this.height,
    this.maxLength,
    this.errorMessage,
    this.bgColor,
    this.labelIcon,
    this.enabled = true,
    this.prefixIcon,
    this.labelTooltip,
    this.textInputAction,
    this.inputFormatters,
    super.key,
  });

  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onSubmitted;
  final List<TextInputFormatter>? inputFormatters;
  final FocusNode? focusNode;
  final bool? isObscure;
  final bool enabled;
  final String? label;
  final String? errorMessage;
  final String? hint;
  final String? labelTooltip;
  final TextStyle? hintStyle;
  final double? radius;
  final double? width;
  final double? height;
  final Color? borderColor;
  final Color? bgColor;
  final bool? autofocus;
  final Widget? prefixIcon;
  final TextInputType? keyboardType;
  final int? maxLength;
  final Widget? labelIcon;
  final TextInputAction? textInputAction;

  @override
  State<DLSInput> createState() => _DLSInputState();
}

class _DLSInputState extends State<DLSInput> {
  FocusNode? _innerFocusNode;

  bool isObscure = false;

  FocusNode get focusNode =>
      widget.focusNode ?? (_innerFocusNode ??= FocusNode());

  @override
  void initState() {
    super.initState();
    isObscure = widget.isObscure ?? false;

    focusNode.addListener(_focusListener);
  }

  @override
  void didUpdateWidget(DLSInput oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.focusNode == widget.focusNode) {
      return;
    }

    oldWidget.focusNode?.removeListener(_focusListener);

    _innerFocusNode?.removeListener(_focusListener);
    _innerFocusNode?.dispose();
    _innerFocusNode = null;

    focusNode.addListener(_focusListener);
  }

  void _focusListener() {
    if (mounted) setState(() {});
  }

  @override
  void dispose() {
    widget.focusNode?.removeListener(_focusListener);
    _innerFocusNode
      ?..removeListener(_focusListener)
      ..dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.bgColor,
      // height: 72.h, // todo тут должно быть 72, но переполнение
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (widget.label != null)
            DLSLabelIcon(
              label: widget.label,
              labelIcon: widget.labelIcon,
              tooltip: widget.labelTooltip,
            ).paddingOnly(bottom: 12.h),
          Stack(
            children: [
              Stack(
                alignment: Alignment.centerRight,
                children: [
                  Container(
                    width: widget.width,
                    height: widget.height ?? 44.h,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: focusNode.hasFocus
                          ? context.c_grey_grey
                          : context.c_white_text,
                      borderRadius: BorderRadius.circular(widget.radius ?? 5.r),
                      border: Border.all(
                        color: widget.borderColor ?? context.c_grey_stoke,
                        width: 1.w,
                      ),
                    ),
                    child: TextField(
                      enabled: widget.enabled,
                      maxLength: widget.maxLength,
                      autofocus: widget.autofocus ?? false,
                      keyboardType: widget.keyboardType,
                      cursorColor: context.c_text,
                      obscuringCharacter: '*',
                      obscureText: isObscure,
                      inputFormatters: widget.inputFormatters,
                      focusNode: _innerFocusNode,
                      controller: widget.controller,
                      style: context.ts_s14h22_4w400,
                      textInputAction: widget.textInputAction,
                      decoration: InputDecoration(
                        hintText: widget.hint,
                        hintStyle: widget.hintStyle ??
                            context.ts_s14h22_4w400
                                .copyWith(color: context.c_placeholder),
                        isDense: true,
                        contentPadding: EdgeInsets.only(
                          bottom: 4.h,
                          left: widget.prefixIcon != null ? 38.w : 12.w,
                        ),
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                      ),
                      onChanged: (val) => widget.onChanged?.call(val),
                      onSubmitted: (val) => widget.onSubmitted?.call(val),
                    ),
                  ),
                  Visibility(
                    visible: widget.isObscure ?? false,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 12.w,
                        vertical: 13.h,
                      ),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isObscure = !isObscure;
                          });
                        },
                        child: Container(
                          color: Colors.transparent,
                          height: 18.h,
                          width: 18.w,
                          child: isObscure
                              ? Assets.icons.eye1.svg(
                                  color: context.c_text_grey,
                                  height: 18.h,
                                  width: 18.w,
                                )
                              : Assets.icons.eyeSlash1.svg(
                                  color: context.c_text_grey,
                                  height: 18.h,
                                  width: 18.w,
                                ),
                        ),
                      ),
                    ),
                  ),
                  if (!widget.enabled)
                    Container(
                      width: widget.width ?? 288.w,
                      height: widget.height ?? 44.h,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: context.c_grey_grey.withOpacity(0.5),
                        borderRadius:
                            BorderRadius.circular(widget.radius ?? 5.r),
                      ),
                    ),
                ],
              ),
              if (widget.prefixIcon != null)
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 12.w,
                    vertical: 13.h,
                  ),
                  child: Container(
                    color: Colors.transparent,
                    height: 18.h,
                    width: 18.w,
                    child: widget.prefixIcon,
                  ),
                ),
            ],
          ),
          if (widget.errorMessage != null) SizedBox(height: 12.h),
          if (widget.errorMessage != null)
            Text(
              widget.errorMessage!,
              style: context.ts_s12h14w400.copyWith(color: context.c_red),
            ),
        ],
      ),
    );
  }
}
