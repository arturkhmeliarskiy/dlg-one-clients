import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

class CommonError extends StatelessWidget {
  const CommonError({
    this.label,
    super.key,
  });

  final String? label;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        label ?? S.current.loadingDataError,
        style: context.ts_s18h21w500.copyWith(color: context.c_text_grey),
      ),
    );
  }
}
