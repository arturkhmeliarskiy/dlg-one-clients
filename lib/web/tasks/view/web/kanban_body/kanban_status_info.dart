import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rest_api/rest_api.dart';

class KanbanStatusInfo extends StatelessWidget {
  const KanbanStatusInfo({
    required this.statusesType,
    super.key,
  });

  final TaskStatusType statusesType;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor(context, statusesType),
        borderRadius: BorderRadius.circular(4),
      ),
      height: 32.h,
      width: width(statusesType),
      child: Row(
        children: [
          SizedBox(
            width: 12.w,
          ),
          SvgPicture.asset(assetName(statusesType)),
          SizedBox(
            width: 4.w,
          ),
          SizedBox(
            height: 30.h,
            child: Text(
              text(statusesType),
              style: context.ts_s14h24_4w400
                  .copyWith(color: textColor(context, statusesType)),
            ),
          ),
        ],
      ),
    );
  }

  double width(TaskStatusType value) {
    switch (value) {
      case TaskStatusType.draft:
        return 113.w;
      case TaskStatusType.inTheQueue:
        return 113.w;
      case TaskStatusType.atWork:
        return 103.w;
      case TaskStatusType.completed:
        return 119.w;
      case TaskStatusType.unknown:
        return 119.w;
    }
  }

  Color backgroundColor(
    BuildContext context,
    TaskStatusType value,
  ) {
    switch (value) {
      case TaskStatusType.draft:
        return context.c_grey_light;
      case TaskStatusType.inTheQueue:
        return context.c_blue_container;
      case TaskStatusType.atWork:
        return context.c_orange_border;
      case TaskStatusType.completed:
        return context.c_grey_light;
      case TaskStatusType.unknown:
        return context.c_grey_light;
    }
  }

  String assetName(TaskStatusType value) {
    switch (value) {
      case TaskStatusType.draft:
        return Assets.icons.webTaskPlus.path;
      case TaskStatusType.inTheQueue:
        return Assets.icons.webTaskPlus.path;
      case TaskStatusType.atWork:
        return Assets.icons.webTaskPlay.path;
      case TaskStatusType.completed:
        return Assets.icons.webTaskDone.path;
      case TaskStatusType.unknown:
        return Assets.icons.webTaskDone.path;
    }
  }

  String text(TaskStatusType value) {
    switch (value) {
      case TaskStatusType.draft:
        return S.current.draft;
      case TaskStatusType.inTheQueue:
        return S.current.status_todo;
      case TaskStatusType.atWork:
        return S.current.status_in_progress;
      case TaskStatusType.completed:
        return S.current.status_done;
      case TaskStatusType.unknown:
        return S.current.status_todo;
    }
  }

  Color textColor(BuildContext context, TaskStatusType value) {
    switch (value) {
      case TaskStatusType.draft:
        return context.c_grey_light;
      case TaskStatusType.inTheQueue:
        return context.c_blue;
      case TaskStatusType.atWork:
        return context.c_orange;
      case TaskStatusType.completed:
        return context.c_green;
      case TaskStatusType.unknown:
        return context.c_green;
    }
  }
}
