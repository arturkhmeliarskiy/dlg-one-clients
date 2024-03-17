import 'package:flutter/material.dart';

class SubtaskCountView extends StatelessWidget {
  final int count;
  const SubtaskCountView({super.key, this.count = 0});

  @override
  Widget build(BuildContext context) {
    if(count == 0) return const SizedBox();
    return const Placeholder();
  }
}
