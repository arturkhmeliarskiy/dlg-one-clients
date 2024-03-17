import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

class SwitchDays extends StatefulWidget {
  const SwitchDays({
    required this.onCount,
    this.count = 0,
    super.key,
  });

  final ValueSetter<int> onCount;
  final int count;

  @override
  State<SwitchDays> createState() => _SwitchDaysState();
}

class _SwitchDaysState extends State<SwitchDays> {
  late final TextEditingController _controller;

  int get _count => int.tryParse(_controller.text) ?? 0;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _controller = TextEditingController(text: '${widget.count}');
  }

  @override
  void didUpdateWidget(covariant SwitchDays oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.count.toString() != _controller.text) {
      _controller.text = widget.count.toString();
    }
  }

  void _changeCount(int add) {
    final count = _count + add;
    if (count < 0) {
      return;
    }
    _controller.text = count.toString();
    widget.onCount(count);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80.w,
      height: 32.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(4.r)),
        border: Border.all(color: context.c_grey_stoke),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                final count = int.tryParse(v) ?? 0;
                widget.onCount(count);
              },
              style: context.ts_s14h22_4w400.copyWith(
                color: _count > 0 ? context.c_text : context.c_placeholder,
                height: 1,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  _changeCount(1);
                },
                child: Transform.translate(
                  offset: const Offset(0, 2),
                  child: Assets.icons.angleUp.svg(
                    width: 15.w,
                    height: 15.h,
                    color: context.c_placeholder,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  _changeCount(-1);
                },
                child: Transform.translate(
                  offset: const Offset(
                    0,
                    -2,
                  ),
                  child: Assets.icons.angleDown.svg(
                    width: 15.w,
                    height: 15.h,
                    color: context.c_placeholder,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
