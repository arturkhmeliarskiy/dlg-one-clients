import 'package:dls_one/core/core.dart';
import 'package:dls_one/utils/utils.dart';
import 'package:flutter/material.dart';

class DisplayNameBuilder extends StatelessWidget {
  const DisplayNameBuilder({
    required this.displayName,
    super.key,
  });

  final String displayName;

  @override
  Widget build(BuildContext context) {
    return Text(
      txt(displayName),
      softWrap: false,
      style: context.ts_s14h16_4w500.copyWith(color: context.c_text),
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }
}
