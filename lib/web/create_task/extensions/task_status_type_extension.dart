import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';
import 'package:rest_api/rest_api.dart';

extension TaskStatusTypeExtension on TaskStatusType {
  Color backgroundColor(BuildContext context) {
    switch (this) {
      case TaskStatusType.draft:
        return context.c_text_grey.withOpacity(0.1);
      case TaskStatusType.inTheQueue:
        return context.c_blue_container;
      case TaskStatusType.atWork:
        return context.c_orange_border;
      case TaskStatusType.completed:
        return context.c_green_light;
      case TaskStatusType.unknown:
        return context.c_grey_light;
    }
  }

  Color color(BuildContext context) {
    switch (this) {
      case TaskStatusType.draft:
        return context.c_text_grey;
      case TaskStatusType.inTheQueue:
        return context.c_blue;
      case TaskStatusType.atWork:
        return context.c_orange;
      case TaskStatusType.completed:
        return context.c_green;
      case TaskStatusType.unknown:
        return context.c_text_grey;
    }
  }

  String get text {
    switch (this) {
      case TaskStatusType.draft:
        return S.current.draft;
      case TaskStatusType.inTheQueue:
        return S.current.status_todo;
      case TaskStatusType.atWork:
        return S.current.status_in_progress;
      case TaskStatusType.completed:
        return S.current.status_done;
      case TaskStatusType.unknown:
        return S.current.unknown;
    }
  }
}
