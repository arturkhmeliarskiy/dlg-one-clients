import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/create_task/create_task.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api/rest_api.dart';

class MobileTaskBottomBar extends StatelessWidget {
  const MobileTaskBottomBar({
    required this.model,
    super.key,
  });

  final SaveTaskModel model;

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<TaskBloc>();
    return SafeArea(
      child: Container(
        height: 60.h,
        decoration: BoxDecoration(
          border: Border(top: BorderSide(color: context.c_grey_stoke)),
        ),
        child: DlsPadding.symmetric(
          horizontal: 16.w,
          child: Row(
            children: [
              if (model.expiredAt != null)
                MobileDeadlineView(date: model.expiredAt!),
              const Spacer(),
              PriorityButton(
                onTapPriority: (value) {
                  bloc
                    ..add(
                      TaskEvent.updateModel(model.copyWith(priority: value)),
                    )
                    ..add(TaskEvent.updateTask(DlsTask(priority: value)));
                },
                isFullButton: false,
                isBackgroundColor: true,
                width: 32.w,
                margin: EdgeInsets.zero,
                priority: model.priority,
              ),
              SizedBox(width: 8.w),
              StatusButton(
                status: model.status,
                border: true,
                onTapStatus: (value) {
                  bloc
                    ..add(
                      TaskEvent.updateModel(model.copyWith(status: value)),
                    )
                    ..add(TaskEvent.updateTask(DlsTask(status: value)));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
