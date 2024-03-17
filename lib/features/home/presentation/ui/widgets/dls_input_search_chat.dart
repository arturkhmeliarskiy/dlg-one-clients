import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

class DlsInputSearchChat extends StatefulWidget {
  const DlsInputSearchChat({
    Key? key,
    required this.controller,
    this.onSubmitted,
    this.hintStyle,
    this.hint,
    this.radius,
    this.width,
    this.autofocus,
    this.onChange,
    this.clearButtonCallback,
    this.backButtonCallback,
    this.focusNode,
  }) : super(key: key);
  final TextEditingController controller;
  final Function? onChange;
  final Function? onSubmitted;
  final String? hint;
  final TextStyle? hintStyle;
  final double? radius;
  final double? width;
  final bool? autofocus;
  final GestureTapCallback? clearButtonCallback;
  final GestureTapCallback? backButtonCallback;
  final FocusNode? focusNode;

  @override
  State<DlsInputSearchChat> createState() => DlsInputSearchChatState();
}

class DlsInputSearchChatState extends State<DlsInputSearchChat> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.c_grey_grey,
        borderRadius: BorderRadius.circular(widget.radius ?? 5.r),
      ),
      height: 32.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            alignment: Alignment.center,
            child: Assets.icons.back
                .svg(width: 18.w, height: 18.h, color: context.c_text_grey),
          ).paddingSymmetric(horizontal: 8.w, vertical: 8.h).gestureDetector(
              onTap: () {
            widget.backButtonCallback != null
                ? widget.backButtonCallback!()
                : null;
            setState(() {});
          }),
          TextField(
            focusNode: widget.focusNode,
            onChanged: (val) {
              widget.onChange != null ? widget.onChange!(val) : null;
              setState(() {});
            },
            maxLines: 1,
            autofocus: widget.autofocus ?? false,
            cursorColor: context.c_text,
            controller: widget.controller,
            style: context.ts_s14h22_4w400,
            decoration: InputDecoration(
              hintText: widget.hint,
              hintStyle: widget.hintStyle ??
                  context.ts_s14h22_4w400.copyWith(color: context.c_placeholder),
              contentPadding: EdgeInsets.zero,
              isDense: true,
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
            ),
          ).expanded(),
          if (widget.controller.text.isNotEmpty)
            Container(
              alignment: Alignment.center,
              child: Assets.icons.times1
                  .svg(width: 18.w, height: 18.h, color: context.c_text_grey),
            ).paddingSymmetric(horizontal: 8.w, vertical: 8.h).gestureDetector(
                onTap: () {
              widget.clearButtonCallback != null
                  ? widget.clearButtonCallback!()
                  : null;
              setState(() {});
            }),
        ],
      ),
    );
  }
}
