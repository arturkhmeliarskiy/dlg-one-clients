import 'dart:math';

import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';
import 'package:rest_api/rest_api.dart';

class SprintPerformers extends StatelessWidget {
  const SprintPerformers({this.performers = const [], super.key});

  final List<DlsTasksExecutors> performers;

  @override
  Widget build(BuildContext context) {
    final count = performers.length;
    return Stack(
      children: List.generate(min(count, 2), (index) {
        final imageUrl = performers[index].avatar ?? '';
        final user = performers[index];
        return Align(
          alignment: Alignment.centerLeft,
          child: DlsPadding.only(
            left: index * 16.w,
            child: DLSAvatar(
              size: 24,
              username: user.name ?? '',
              imageUrl: imageUrl,
            ),
          ),
        );
      }),
    );
  }
}
