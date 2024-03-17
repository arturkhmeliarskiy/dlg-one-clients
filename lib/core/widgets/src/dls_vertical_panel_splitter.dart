import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

class DlsVerticalPanelSplitter extends SizedBox {
  DlsVerticalPanelSplitter({
    double width = 3,
    super.key,
  }) : super(
          width: width,
          height: double.infinity,
        );

  @override
  final Widget child = Builder(
    builder: (context) {
      return Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            left: 0,
            top: 51.h,
            right: 0,
            child: Container(
              color: context.c_grey_stoke,
              width: double.infinity,
              height: 1.h,
            ),
          ),
          Align(
            child: Container(
              alignment: Alignment.center,
              color: context.c_grey_stoke,
              width: 1.w,
              height: double.infinity,
            ),
          ),
        ],
      );
    },
  );
}

//TODO refactor this widgets
class DlsVerticalBackgroundSplitter extends DlsVerticalPanelSplitter {
  DlsVerticalBackgroundSplitter({
    super.width,
  });

  @override
  final Widget child = Builder(
    builder: (context) {
      return Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            left: 0,
            top: 51.h,
            right: 0,
            child: SizedBox(
              width: double.infinity,
              height: 1.h,
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: 1.w,
            height: double.infinity,
          ),
        ],
      );
    },
  );
}
