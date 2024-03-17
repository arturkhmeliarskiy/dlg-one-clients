import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

class SprintDescription extends StatelessWidget {
  const SprintDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20.0, top: 14.5, bottom: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            S.current.sprint_sample,
            style: context.ts_s24h28w400.copyWith(color: context.c_text),
          ),
          SizedBox(height: 7.5.h),
          Text(
            S.current.sprint_description,
            style: context.ts_s14h22_4w400.copyWith(color: context.c_text),
          ),
          SizedBox(height: 17.h),
        ],
      ),
    );
  }
}
