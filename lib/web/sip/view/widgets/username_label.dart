import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';

class UsernameLabel extends StatelessWidget {
  const UsernameLabel({
    super.key,
    required this.name,
  });

  final String? name;

  @override
  Widget build(BuildContext context) {
    return (name?.isNotEmpty ?? false)
        ? DecoratedBox(
            decoration: BoxDecoration(
              color: context.c_text,
              borderRadius: BorderRadius.circular(5.r),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 6.w,
                vertical: 5.h,
              ),
              child: DLSBody.smallest(
                name,
                color: Colors.white,
              ),
            ),
          )
        : const SizedBox();
  }
}
