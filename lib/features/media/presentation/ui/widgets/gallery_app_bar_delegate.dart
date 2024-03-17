import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

class GalleryAppBarDelegate extends MultiChildLayoutDelegate {
  @override
  Size getSize(BoxConstraints constraints) => Size(constraints.maxWidth, 58.h);

  @override
  void performLayout(Size size) {
    final l1 = layoutChild(1, BoxConstraints.loose(size));
    Size? l3;
    if (hasChild(3)) {
      l3 = layoutChild(3, BoxConstraints.loose(size));
    }
    Size? l4;
    if (hasChild(4)) {
      l4 = layoutChild(4, BoxConstraints.loose(size));
    }
    Size? l5;
    if (hasChild(5)) {
      l5 = layoutChild(5, BoxConstraints.loose(size));
    }
    final l2 = layoutChild(
      2,
      BoxConstraints.loose(
        Size(
          size.width -
              l1.width -
              (l3?.width ?? 0) -
              (l4?.width ?? 0) -
              (l5?.width ?? 0) -
              (l3 != null ? 8.w : 0) -
              (l4 != null ? 8.w : 0) -
              8.w -
              8.w -
              8.w,
          size.height,
        ),
      ),
    );

    if (hasChild(1)) {
      positionChild(
        1,
        Offset(
          0,
          size.height / 2 - l1.height / 2,
        ),
      );
    }
    if (hasChild(2)) {
      positionChild(
        2,
        Offset(
          l1.width + 8.w,
          size.height / 2 - l2.height / 2,
        ),
      );
    }
    if (hasChild(3)) {
      positionChild(
        3,
        Offset(
          l1.width + 8.w + l2.width + 8.w,
          size.height / 2 - (l3?.height ?? 0) / 2,
        ),
      );
    }
    if (hasChild(5)) {
      positionChild(
        5,
        Offset(
          size.width - 16.w,
          size.height / 2 - (l5?.height ?? 0) / 2,
        ),
      );
    }
    if (hasChild(4)) {
      positionChild(
        4,
        Offset(
          size.width - 16.w - (l5?.width ?? 0) - (l5 != null ? 14.w : 0),
          size.height / 2 - (l4?.height ?? 0) / 2,
        ),
      );
    }
  }

  @override
  bool shouldRelayout(covariant MultiChildLayoutDelegate oldDelegate) {
    return true;
  }
}
