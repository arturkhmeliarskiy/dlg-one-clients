import 'package:flutter/cupertino.dart';

class DlsPadding extends Padding {
  const DlsPadding({
    required super.padding,
    super.key,
    super.child,
  });

  DlsPadding.all(
    double all, {
    super.key,
    super.child,
  }) : super(padding: EdgeInsets.all(all));

  DlsPadding.symmetric({
    super.key,
    super.child,
    double horizontal = 0,
    double vertical = 0,
  }) : super(
          padding: EdgeInsets.symmetric(
            horizontal: horizontal,
            vertical: vertical,
          ),
        );

  DlsPadding.only({
    super.key,
    super.child,
    double left = 0,
    double top = 0,
    double right = 0,
    double bottom = 0,
  }) : super(
          padding: EdgeInsets.only(
            left: left,
            top: top,
            right: right,
            bottom: bottom,
          ),
        );
}
