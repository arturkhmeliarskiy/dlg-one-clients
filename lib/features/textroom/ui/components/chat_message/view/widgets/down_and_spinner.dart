import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

class DownAndSpinner extends StatelessWidget {
  const DownAndSpinner({
    Key? key,
    required this.progress,
  }) : super(key: key);
  final int? progress;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 36.r,
      height: 36.r,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(5.r),
        ),
      ),
      child: Center(
        child: progress != null
            ? Stack(
                alignment: Alignment.center,
                children: [
                  Assets.icons.spinnerAlt1.svg(
                    color: context.c_blue,
                    height: 32.r,
                    width: 32.r,
                  ),
                  Text(
                    '$progress',
                    style: context.ts_s10h11_7w400,
                    textAlign: TextAlign.center,
                  ),
                ],
              )
            : Assets.icons.cloudDownload.svg(
                color: context.c_blue,
                height: 20.r,
                width: 20.r,
              ),
      ),
    );
  }
}
