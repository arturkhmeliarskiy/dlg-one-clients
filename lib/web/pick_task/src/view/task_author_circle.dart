import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';
import 'package:rest_api/rest_api.dart';

class TaskAuthorCircle extends StatelessWidget {
  const TaskAuthorCircle({super.key, this.author});

  final DlsTasksExecutors? author;

  @override
  Widget build(BuildContext context) {
    return DLSAvatar(
      size: 24.r,
      username: author?.name,
      imageUrl: author?.avatar ?? '',
    );
  }
}
