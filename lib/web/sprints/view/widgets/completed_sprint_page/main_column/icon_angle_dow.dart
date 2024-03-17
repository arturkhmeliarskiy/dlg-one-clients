import 'package:dls_one/core/core.dart';
import 'package:flutter/widgets.dart';

class IconAngleDown extends StatelessWidget {
  final double right;
  final double top;

  const IconAngleDown({
    super.key,
    this.right = 7,
    this.top = 3,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      width: 24,
      margin: EdgeInsets.only(
        right: right,
        top: top,
      ),
      child: Padding(
        padding: const EdgeInsets.all(
          3,
        ),
        child: Assets.icons.angleDown1.svg(
          height: 12.h,
          color: context.c_text_grey,
        ),
      ),
    );
  }
}
