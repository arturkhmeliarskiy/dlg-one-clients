import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

class MobileCountField extends StatefulWidget {
  const MobileCountField({
    required this.onCount,
    this.count = 0,
    this.onParse,
    this.onClose,
    super.key,
  });

  final int count;
  final ValueSetter<int> onCount;
  final String Function(int count)? onParse;
  final VoidCallback? onClose;

  @override
  State<MobileCountField> createState() => _MobileCountFieldState();
}

class _MobileCountFieldState extends State<MobileCountField> {
  late final TextEditingController _controller;

  int _selectionIndex = 0;

  String get _text =>
      widget.onParse?.call(widget.count) ?? widget.count.toString();

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: _text);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant MobileCountField oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (_text != _controller.text) {
      _controller.text = _text;
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        _controller.selection =
            TextSelection.fromPosition(TextPosition(offset: _selectionIndex));
      });
    }
  }

  String _removeNonDigits(String input) {
    return input.replaceAll(RegExp(r'\D'), '');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(4.r)),
        border: Border.all(color: context.c_grey_stoke),
      ),
      constraints: BoxConstraints(maxWidth: 158.w),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                border: InputBorder.none,
                isDense: true,
                contentPadding: EdgeInsets.only(left: 14.w),
              ),
              keyboardType: TextInputType.number,
              onChanged: (v) {
                v = _removeNonDigits(v);
                final count = int.tryParse(v) ?? 0;
                _selectionIndex = _controller.selection.baseOffset;
                widget.onCount(count);
              },
              style: context.ts_s14h22_4w400.copyWith(
                color: context.c_text,
                height: 1,
              ),
            ),
          ),
          DlsPadding.symmetric(
            horizontal: 8.w,
            child: InkWell(
              onTap: widget.onClose,
              child: SizedBox(
                height: 32.h,
                width: 16.w,
                child: Center(
                  child: Assets.icons.close.svg(color: context.c_text),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
