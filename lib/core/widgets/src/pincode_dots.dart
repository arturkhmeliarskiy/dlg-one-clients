import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

/// виджет точек и текста над ними
class PinCodeDots extends StatelessWidget {
  const PinCodeDots({
    Key? key,
    required this.count,
    required this.text,
    required this.activeColor,
  }) : super(key: key);

  final int count;
  final String text;
  final Color activeColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text,
          style: context.ts_s14h22_4w400.copyWith(color: context.c_text),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        SizedBox(height: 20.h),
        Center(
          child: SizedBox(
            width: 4 * 12.h + 12.w * 3,
            height: 12.h,
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              padding: EdgeInsets.zero,
              itemBuilder: (context, i) {
                return Padding(
                  padding: EdgeInsets.only(right: i < 3 ? 12.w : 0),
                  child: Container(
                    alignment: Alignment.center,
                    height: 12.h,
                    width: 12.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(100.r)),
                      color: count - 1 >= i ? activeColor : context.c_grey_grey,
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
