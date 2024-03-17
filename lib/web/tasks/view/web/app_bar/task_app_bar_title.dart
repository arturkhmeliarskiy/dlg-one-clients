import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

class TaskAppBarTitle extends StatelessWidget {
  const TaskAppBarTitle(
      {super.key, required this.title, this.isMobile = false});

  final String title;
  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: isMobile
          ? context.ts_s14h16_4w500.copyWith(
              color: context.c_text,
            )
          : context.ts_s18h21w500.copyWith(
              color: context.c_text,
            ),
    );
  }
}
