import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

class DlsInputSearch extends StatefulWidget {
  const DlsInputSearch({
    Key? key,
    required this.controller,
    this.onSubmitted,
    this.focusNode,
    this.hintStyle,
    this.hint,
    this.radius,
    this.width,
    this.height,
    this.borderColor,
    this.autofocus,
    this.onChange,
    this.enabled,
  }) : super(key: key);
  final TextEditingController controller;
  final ValueChanged<String>? onChange;
  final Function? onSubmitted;
  final FocusNode? focusNode;
  final String? hint;
  final TextStyle? hintStyle;
  final double? radius;
  final double? width;
  final double? height;
  final Color? borderColor;
  final bool? autofocus;
  final bool? enabled;

  @override
  State<DlsInputSearch> createState() => DlsInputSearchState();
}

class DlsInputSearchState extends State<DlsInputSearch> {
  late FocusNode focusNode;

  @override
  void initState() {
    super.initState();
    widget.focusNode == null
        ? focusNode = FocusNode()
        : focusNode = widget.focusNode!;
    focusNode.addListener(_listener);
  }

  void _listener() {
    setState(() {});
  }

  @override
  void dispose() {
    focusNode
      ..removeListener(_listener)
      ..dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: BorderSide(
        color: widget.borderColor ?? context.c_grey_stoke,
        width: 1.w,
      ),
      borderRadius: BorderRadius.circular(widget.radius ?? 5.r),
    );
    final decoration = InputDecoration(
      isDense: true,
      hintText: widget.hint,
      hintStyle: widget.hintStyle ??
          context
              .ts_s14h22_4w400 // TODO по дизайну ts_s14h22_4w400, но сползает
              .copyWith(color: context.c_placeholder),
      contentPadding: EdgeInsets.zero,
      prefixIcon: SizedBox(
        height: 20.h,
        width: 20.w,
        child: Center(
          child: Assets.icons.search1.svg(
            width: 18.w,
            height: 18.h,
            color: context.c_text_grey,
          ),
        ),
      ),
      fillColor:
          focusNode.hasFocus ? context.c_grey_grey : context.c_white_text,
      filled: true,
      border: border,
      focusedBorder: border,
      enabledBorder: border,
      errorBorder: border,
      disabledBorder: border,
    );
    return SizedBox(
      width: widget.width ?? 288.w,
      height: widget.height ?? 44.h,
      child: TextField(
        enabled: widget.enabled,
        onChanged: (val) =>
            widget.onChange != null ? widget.onChange!.call(val) : null,
        maxLines: 1,
        autofocus: widget.autofocus ?? false,
        cursorColor: context.c_text,
        focusNode: focusNode,
        controller: widget.controller,
        // TODO по дизайну ts_s14h22_4w400, но сползает
        style: context.ts_s14h22_4w400,
        decoration: decoration,
        onSubmitted: (val) =>
            widget.onSubmitted != null ? widget.onSubmitted!(val) : null,
      ),
    );
    // TODO remove old config if it's not necessary
    return Stack(
      alignment: Alignment.centerLeft,
      children: [
        Container(
          width: widget.width ?? 288.w,
          height: widget.height ?? 44.h,
          decoration: BoxDecoration(
            color:
                focusNode.hasFocus ? context.c_grey_grey : context.c_white_text,
            borderRadius: BorderRadius.circular(widget.radius ?? 5.r),
            border: Border.all(
              color: widget.borderColor ?? context.c_grey_stoke,
              width: 1.w,
            ),
          ),
          child: TextField(
            enabled: widget.enabled,
            onChanged: (val) =>
                widget.onChange != null ? widget.onChange!(val) : null,
            maxLines: 1,
            autofocus: widget.autofocus ?? false,
            cursorColor: context.c_text,
            focusNode: focusNode,
            controller: widget.controller,
            style: context.ts_s14h22_4w400,
            // todo по дизайну ts_s14h22_4w400, но сползает
            decoration: InputDecoration(
              hintText: widget.hint,
              hintStyle: widget.hintStyle ??
                  context
                      .ts_s14h22_4w400 // todo по дизайну ts_s14h22_4w400, но сползает
                      .copyWith(color: context.c_placeholder),
              contentPadding: EdgeInsets.only(
                top: 11.h,
                bottom: 11.h,
                left: 34.w,
                right: 8.w,
              ),
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
            ),
            onSubmitted: (val) =>
                widget.onSubmitted != null ? widget.onSubmitted!(val) : null,
          ),
        ),
        Container(
          width: 34.w,
          height: 44.h,
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(vertical: 13.h, horizontal: 8.w),
          child: Assets.icons.search1.svg(
            width: 18.w,
            height: 18.h,
            color: context.c_text_grey,
          ),
        ),
      ],
    );
  }
}
