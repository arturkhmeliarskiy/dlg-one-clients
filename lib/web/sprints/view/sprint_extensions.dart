import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';
import 'package:rest_api/rest_api.dart';

extension SprintStatusExt on SprintStatus {
  String text() {
    switch (this) {
      case SprintStatus.finished:
        return S.current.status_done;
      case SprintStatus.inProgress:
        return S.current.status_in_progress;
      case SprintStatus.newSprint:
        return S.current.status_todo;
    }
  }

  Color color(BuildContext context) {
    switch (this) {
      case SprintStatus.finished:
        return context.c_grey_light;
      case SprintStatus.inProgress:
        return context.c_orange_label;
      case SprintStatus.newSprint:
        return context.c_blue_container;
    }
  }

  Color iconColor(BuildContext context) {
    switch (this) {
      case SprintStatus.finished:
        return context.c_green;
      case SprintStatus.inProgress:
        return context.c_orange;
      case SprintStatus.newSprint:
        return context.c_blue;
    }
  }

  String asset(){
    switch(this){
      case SprintStatus.finished:
        return Assets.icons.webTaskDone.path;
      case SprintStatus.inProgress:
        return Assets.icons.webTaskPlay.path;
      case SprintStatus.newSprint:
        return Assets.icons.webTaskPlus.path;
    }
  }
}

extension DlsSpintModelExt on DlsSprintModel {
  int? get weeks {
    if (expiredAt == null || startAt == null) {
      return null;
    }
    return (expiredAt!.difference(startAt!).inDays / 7).round();
  }
}
